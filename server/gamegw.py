#!/usr/bin/env python3
"""Native game gateway (/1mhero/gateway.php) protocol.

CRYPTO (cracked -- embedded constants, no key recovery needed):
  - body = base64( AES-128-CBC( json ) )
  - key  = b'1m!1HUB2@hero#Re'            (embedded string @0x1cbd54 in libgame.so)
  - IV   = bytes.fromhex('de295106d3872f949783942fdc9f01e2')  (const @0x1D2594)
  - request  json: {"params": {...}, "protocol": <int>}      (built by `Request`)
  - response json: FLAT -- {"protocol": N, "errno": 0, <fields...>}

ENVELOPE (reversed from `JanssonParser`@0x15a298 in libgame.so):
  JanssonParser does json_loads(body), reads "protocol" and "errno" from the ROOT
  object, then switches on protocol and reads every payload field from the ROOT too.
  There is no "params"/"Result" wrapper on the response -- nesting the payload (as an
  earlier revision of this file did) makes every json_object_get return NULL, so the
  client parses a user whose every field is zero.
  errno == 0 is the success path in NetworkEvent@0x150f18; a non-zero value routes
  into the error-popup chain.

Every field is optional: ParsingJsonObjectToInt32/Int64/String and all the
ParsingDataTo* aggregates NULL-check their json argument and leave the destination
zeroed, so a missing key is safe -- it just yields 0 / "" / an empty array.

PROTOCOL HANDLERS (case addresses inside JanssonParser, for re-deriving the field
lists with `tools/analyze/walk_fields.py <lib> <addr>`):
  48 (0x30) @0x15cfb0  version / addition-file check
  49 (0x31) @0x15ce8c  download link
  50 (0x32) @0x15d090  patch list
  51 (0x33) @0x15f9a2  GAME LOGIN   -> user_no + session + client toggles
  52 (0x34) @0x15f986  hub_uid echo
  53 (0x35) @0x15f942  hub did/uid echo
  59 (0x3b) @0x15b036  event info   -> event_info[]
  60 (0x3c) @0x15bc2c  LOAD USER    -> the full user snapshot
  61 (0x3d) @0x15bb7c  inventory    -> inventory_count, item_infos[]
  62 (0x3e) @0x15be26  friend list
  NOTE: 140 (0x8c) and 141 (0x8d) have NO case in JanssonParser — the binary
  search falls through to default for both; bare errno=0 is the correct response.
"""
from __future__ import annotations

import base64
import json
import sqlite3
import time
from pathlib import Path

from Crypto.Cipher import AES

KEY = b"1m!1HUB2@hero#Re"
IV = bytes.fromhex("de295106d3872f949783942fdc9f01e2")  # const @0x1D2594
BLOCK = 16

DB = Path("work") / "kns.sqlite"

# Archived "additional data" (the 239MB the live CDN used to serve). Layout mirrors
# the device's own external dir: <root>/<version>/<file>, e.g. files/1.4.0/bgm_menu.ogg.
PKG = "com.com2us.imhero.normal.freefull.google.global.android.common"
ADDITION_ROOT = Path("original") / PKG / "files"
SERVER_VERSION = "1.01.10"   # what the client echoes back in protocol 50

P_VERSION = 48
P_DOWNLOAD = 49
P_PATCH = 50
P_LOGIN = 51
P_HUB_UID = 52
P_HUB_DID = 53
P_LOAD_USER = 60
P_INVENTORY = 61
P_EVENT_INFO = 59
P_STAGE_START = 71

# --- new-user template -------------------------------------------------------
# Fields the client has no master-data cross-check for are plain defaults. The ones
# that index into the still-encrypted dt_* master data (hero_pcid, fellow_id,
# item_id) stay at 1 / empty so nothing dangles. Tune these live: the server picks
# them up on restart.
START_GOLD = 10_000
START_CASH = 100
START_LEVEL = 1
START_MAX_EXP = 100
START_STAMINA = 50
START_INVENTORY = 50
HERO_PCID = 1          # which hero row in the dt_* master data
# A brand-new account may be expected to have NO hero yet, so the client runs its
# character-creation flow (protocol 54 / formal_user_info) instead of loading one.
# KNS_EMPTY_HERO=1 sends `hero_info: []`; the default fabricates a single hero.
EMPTY_HERO = bool(__import__("os").environ.get("KNS_EMPTY_HERO"))
MUTE = bool(__import__("os").environ.get("KNS_MUTE"))
HERO_ATTACK = 10
HERO_DEFENCE = 10
HERO_HP = 100

# Starting weapon item: item_no is the UNIQUE instance id (must be non-zero so the hero
# has a resolvable equipped weapon), item_id is the master catalog id (weapons are in the
# 200000-299999 range per the engine's item_id dispatch in ParsingDataToCharacterInfo).
# Protocol 61's item_infos must contain the same item_no so GetItemNodeByUniqueItemID
# (searches node+0x78 = equip_node+0x68 = item_no lo) can find it.
WEAPON_ITEM_NO = 1001   # unique instance id — any non-zero value
WEAPON_ITEM_ID = 200001  # master catalog id — weapon range 200000-299999
# DrawUICharInfo+544 reads hero+0xC20. The uid storage offsets in
# ParsingDataToCharacterInfo are 8 bytes apart per range (0x18=200k, 0x20=300k,
# 0x28=400k), and DrawUICharInfo reads at +0xC10 and +0xC20 (16 bytes apart),
# which skips 300k and corresponds to the 400k range at parse-struct+0x28.
ARMOR_ITEM_NO  = 1002
ARMOR_ITEM_ID  = 400001  # 400k range → parse-struct+0x28 → context+0xC20


def _unpad(b: bytes) -> bytes:
    n = b[-1] if b else 0
    return b[:-n] if 1 <= n <= BLOCK and len(b) >= n else b


def _pad(b: bytes) -> bytes:
    n = BLOCK - (len(b) % BLOCK)
    return b + bytes([n]) * n


def decrypt(body: bytes) -> dict:
    ct = base64.b64decode(body)
    pt = _unpad(AES.new(KEY, AES.MODE_CBC, IV).decrypt(ct))
    return json.loads(pt.decode("utf-8", "replace"))


def encrypt(obj: dict) -> bytes:
    pt = _pad(json.dumps(obj).encode("utf-8"))
    return base64.b64encode(AES.new(KEY, AES.MODE_CBC, IV).encrypt(pt))


# --------------------------------------------------------------------------- store
def _db() -> sqlite3.Connection:
    DB.parent.mkdir(exist_ok=True)
    conn = sqlite3.connect(DB)
    conn.execute("""CREATE TABLE IF NOT EXISTS gameuser(
        rowid_alias INTEGER PRIMARY KEY AUTOINCREMENT,
        user_no INTEGER, hub_did TEXT UNIQUE, hub_uid TEXT,
        nickname TEXT, created REAL)""")
    return conn


def _user(params: dict) -> dict:
    """Issue (or look up) a game user_no for this device/hub identity.

    Post-login requests (60, 61, 501, 601, ...) carry only `user_no` -- no hub_did --
    so resolve by user_no first. Without this the hub_did fallback ("guest") selects a
    different row and protocol 60 reports a user_no that disagrees with the one
    protocol 51 just issued, which is how the client ends up loading a stranger.
    """
    try:
        want_no = int(params.get("user_no") or 0)
    except (TypeError, ValueError):
        want_no = 0
    if want_no:
        conn = _db()
        row = conn.execute("SELECT user_no, hub_uid, nickname FROM gameuser"
                           " WHERE user_no=?", (want_no,)).fetchone()
        conn.close()
        if row is not None:
            return {"user_no": row[0], "hub_uid": row[1],
                    "nickname": row[2] or "Squire%d" % row[0]}
    did = str(params.get("hub_did") or params.get("did") or "guest")
    uid = str(params.get("hub_uid") or params.get("hub_sessionkey") or did)
    conn = _db()
    with conn:
        row = conn.execute("SELECT user_no, hub_uid, nickname FROM gameuser"
                           " WHERE hub_did=?", (did,)).fetchone()
        if row is None:
            cur = conn.execute(
                "INSERT INTO gameuser(user_no,hub_did,hub_uid,nickname,created)"
                " VALUES(?,?,?,?,?)", (0, did, uid, "", time.time()))
            # Keep user_no well clear of 0 -- the client sends 0 for "not logged in yet".
            user_no = 10_000 + int(cur.lastrowid)
            conn.execute("UPDATE gameuser SET user_no=? WHERE rowid_alias=?",
                         (user_no, cur.lastrowid))
            row = (user_no, uid, "")
    conn.close()
    nick = row[2] or "Squire%d" % row[0]
    return {"user_no": row[0], "hub_uid": row[1], "nickname": nick}


# --------------------------------------------------------------------------- 48
def version_check(params: dict, headers=None) -> dict:
    """Protocol 48 -- version + addition-file list. Case @0x15cfb0.

    Request: {strBundleIdentifier, strClientVersion}. The case reads, off the root:
      server_version             string
      addition_file_download_url string
      additionfile_filelist      array -> json_array_get(i) -> {PatchFileName,
                                  PatchFileVersion}, both ParsingJsonObjectToString

    The Java side (`patch/DownloadFile`) then fetches each file from
        addition_file_download_url + PatchFileVersion + "/" + PatchFileName
    and learns its size from the response Content-Length (`maxContentSize` <-
    HttpURLConnection.getContentLength()), so no size belongs in the list. Files the
    device already has are skipped by the client, so listing everything is fine.

    Serving nothing here is what left the game with no addition data at all.
    """
    ver = str(params.get("strClientVersion") or "1.4.0")
    names = []
    d = ADDITION_ROOT / ver
    if d.is_dir():
        names = sorted(p.name for p in d.iterdir() if p.is_file())
    else:
        print("[gamegw] WARNING: no addition data at %s -- client gets an empty list" % d)
    host = (headers or {}).get("Host") or "127.0.0.1:8080"
    print("[gamegw] protocol 48: offering %d addition files for version %s" % (len(names), ver))
    return {
        "server_version": SERVER_VERSION,
        # DownloadFile concatenates straight onto this, so it must end with "/".
        "addition_file_download_url": "http://%s/addition/" % host,
        "additionfile_filelist": [
            {"PatchFileName": n, "PatchFileVersion": ver} for n in names
        ],
    }


# --------------------------------------------------------------------------- 51
def login(params: dict) -> dict:
    """Protocol 51 -- game-server login. Case @0x15f9a2.

    mercury and sha1_key are read as ints and kept as flags; 0 leaves the Mercury
    (CMS notice) fetch and the request signing we have not cracked switched off.
    """
    u = _user(params)
    return {
        "user_no": u["user_no"],
        "session_key": "sk%d" % u["user_no"],
        "device_change": 0,      # 1 raises the "played on another device" prompt
        "push_on": 1,
        # KNS_MUTE=1 turns the client's own audio off. The lobby is the first thing
        # that plays BGM/SFX, and the post-login crash is a std::__1::system_error
        # ("mutex lock failed") -- a libc++ type that appears in NONE of the three
        # bundled libs (they use STLport), so it is thrown by a system library, with
        # the Android audio stack the prime suspect for a 32-bit app this old.
        "bgm_on": 0 if MUTE else 1,
        "sound_effect_on": 0 if MUTE else 1,
        "mercury": 0,
        "sha1_key": 0,
    }


def hub_uid(params: dict) -> dict:
    """Protocol 52 -- echo the hub uid back. Case @0x15f986."""
    return {"hub_uid": _user(params)["hub_uid"]}


def hub_did(params: dict) -> dict:
    """Protocol 53 -- echo the hub identity back. Case @0x15f942."""
    u = _user(params)
    return {"hub_did": str(params.get("hub_did") or "guest"),
            "strHubGuestUid": u["hub_uid"], "hub_uid": u["hub_uid"]}


# --------------------------------------------------------------------------- 60
def load_user(params: dict) -> dict:
    """Protocol 60 -- the full user snapshot. Case @0x15bc2c.

    Sub-object shapes come from the ParsingDataTo* helpers the case calls:
      user_info          ParsingDataToUserInfo@0x14c354
      item_etc_info      ParsingDataToUserGoods@0x14c878
                                 [{item_id, count, user_last_stamina_gain_time}]
      fellow_active_info ParsingDataToUserFellowSetting@0x14c790
                                 [{type, fellow_position, fellow_no}]
      server_date_time   ParsingDataToWTime@0x14bed4 -- a string split on "- :"
      hero_info[]        ParsingDataToCharacterInfo@0x14cdd0
      fellow_info        ParsingDataToFellowInfoArray@0x14d2b4
      fellow_book_info   ParsingDataToFellowBookInfoArray@0x14c728
                                 [{fellow_id, recv_reward, exp, level}]
      daily_reward_info  also fed to ParsingDataToFriendShipRewardInfo@0x14af84
      buff_etc_info[]    {type, end_date_timestamp}
    """
    u = _user(params)
    now = int(time.time())
    return {
        "user_info": {
            "user_no": u["user_no"],
            "user_hub_id": u["hub_uid"],
            "user_nickname": u["nickname"],
            "user_level": START_LEVEL,
            "user_exp": 0,
            "user_max_exp": START_MAX_EXP,
            "user_gold": START_GOLD,
            "user_cash": START_CASH,
            "user_friendship_point": 0,
            "user_fellow_ticket": 0,
            "user_item_ticket": 0,
            "user_pvp_point": 0,
            "user_stamina": START_STAMINA,
            "user_max_stamina": START_STAMINA,
            "user_max_stamina_buff": 0,
            "user_stamina_time_buff": 0,
            "user_remind_time_stamina": 0,
            "user_new_mail": 0,
            "user_inventory_size": START_INVENTORY,
            "user_inventory_size_cash": 0,
            "user_fellow_inventory_size_cash": 0,
            "user_fellow_item_inventory_size_cash": 0,
            "user_hero_pcid": HERO_PCID,
            "hero_attack": HERO_ATTACK,
            "hero_defence": HERO_DEFENCE,
            "hero_hp": HERO_HP,
            "user_next_shop_update_time": now + 3600,
        },
        # consumables / currencies keyed by master-data item id; none for a new user.
        "item_etc_info": [],
        # the three active fellow slots (type 1/2/3, position 0..2); none equipped.
        "fellow_active_info": [],
        "server_time": now,
        "last_grade": 0,
        "server_date_time": time.strftime("%Y-%m-%d %H:%M:%S", time.localtime(now)),
        "hero_info": [] if EMPTY_HERO else [{
            "hero_no": 1,
            "hero_pcid": HERO_PCID,
            "hero_perfect_guard_bonus": 0,
            "hero_booster_bonus": 0,
            "hero_item_bonus": 0,
            "hero_gold_bonus": 0,
            "hero_potion_bonus": 0,
            # item_no is the unique instance id; item_id must be in the weapon range
            # (200000-299999) so the engine's ParsingDataToCharacterInfo fills the
            # weapon slot and sets the equipped-weapon uid in the hero object.
            # Protocol 61 item_infos must carry the same item_no.
            "hero_item_infos": [] if EMPTY_HERO else [
                {"item_no": WEAPON_ITEM_NO, "item_id": WEAPON_ITEM_ID, "hero_no": 1},
                {"item_no": ARMOR_ITEM_NO,  "item_id": ARMOR_ITEM_ID,  "hero_no": 1},
            ],
        }],
        "fellow_info": [],               # ParsingDataToFellowInfo elements
        "fellow_book_info": [],
        "daily_reward_info": {
            "daily_reward_time": 0,
            "daily_reward_count": 0,
            "daily_reward_reset_time": 0,
            "invite_count": 0,
            "invite_time": 0,
            "send_count": 0,
            "recv_count": 0,
            "friendship_date": "",
        },
        "buff_etc_info": [],
        "master_pvp_recovery_info": {"PvpRecoveryValue": 0},
    }


# --------------------------------------------------------------------------- 59
def event_info(params: dict) -> dict:
    """Protocol 59 — event info. Case @0x15b036.

    Response: event_info array of {item_id, value, No, ...}.  Empty is safe.
    """
    return {"event_info": []}


# --------------------------------------------------------------------------- 61
def inventory(params: dict) -> dict:
    """Protocol 61 — item inventory. Case @0x15bb7c.

    Response: inventory_count (int), item_infos (array parsed by
    ParsingDataToItemArray -> ParsingDataToItem -> ParsingDataToEquipItem).

    Each element: {item_no (unique instance id, int64), item_id (master id, int32),
                   hero_no, ...}.  ParsingDataToEquipItem stores item_no lo at
    equip_node+0x68 = slot+0x78, which is what GetItemNodeByUniqueItemID searches
    (node+0x78) when looking up the hero's equipped weapon uid.  The item_no here
    MUST match the item_no in protocol 60's hero_item_infos weapon entry.
    """
    items = [] if EMPTY_HERO else [
        {"item_no": WEAPON_ITEM_NO, "item_id": WEAPON_ITEM_ID, "hero_no": 1},
        {"item_no": ARMOR_ITEM_NO,  "item_id": ARMOR_ITEM_ID,  "hero_no": 1},
    ]
    return {
        "inventory_count": len(items),
        "item_infos": items,
    }


# --------------------------------------------------------------------------- 71
# Monster row keys, in the order ParsingDataToMonsterData@0x14b2ec reads them
# (master-table column names). Every row carries all 47; the client copies each
# row with key>0 into slot key%100.
MONSTER_KEYS = [
    "key", "Stage",
    "Attack1 Attribute", "Attack1 Value", "Attack1 Attribute Value",
    "Attack1 Mez", "Attack1 Mez Value", "Attack1 Mez Time",
    "Attack2 Attribute", "Attack2 Value", "Attack2 Attribute Value",
    "Attack2 Mez", "Attack2 Mez Value", "Attack2 Mez Time",
    "Attack3 Attribute", "Attack3 Value", "Attack3 Attribute Value",
    "Attack3 Mez", "Attack3 Mez Value", "Attack3 Mez Time",
    "Defence",
    "Fire Registance", "Lightning Registance", "Poison Registance",
    "Physics Immune", "Fire Immune", "Lightning Immune", "Poison Immune",
    "Bloodsucking Immune", "Frozen Immune",
    "Stun Immune", "Atk Debuff Immune", "Def Debuff Immune",
    "MaxHP", "Cooldown(millisec)", "Sight", "AttackNuckback", "IdlePoint(Pixel)",
    "ReflexProb", "AtkProb", "BulletSpd(Sec)", "BulletAttackNum",
    "CommoditiesItemProb", "BornTime(sec)", "BornProb", "MoveSpeed(pixel/ms)",
    "ExplosionTime(sec)",
]
MONSTER_SLOTS = 13
# Tunable on device; units of Sight/MoveSpeed/Cooldown are inferred from column names.
MONSTER_STATS = {
    "Attack1 Value": 5, "Defence": 0, "MaxHP": 60,
    "Cooldown(millisec)": 1500, "Sight": 600, "AtkProb": 50,
    "BornTime(sec)": 5, "BornProb": 40, "MoveSpeed(pixel/ms)": 100,
}
# The case reads monster_info_<N> and monster_info_<N+1> where N = mapMng[0], which the
# lobby handler @0x73e10 sets to the selected stage's id (== request stage_id).


def _monster_rows(stage_id: int) -> list:
    rows = []
    for slot in range(MONSTER_SLOTS):
        row = {k: 0 for k in MONSTER_KEYS}
        row.update(MONSTER_STATS)
        row["key"] = 1000 + slot
        row["Stage"] = stage_id
        rows.append(row)
    return rows


def stage_start(params: dict) -> dict:
    """Protocol 71 -- dungeon stage start. Case @0x15e324.

    Request: {friend_type, stage_id, stage_mode, friend_user_no}.
    Without stage_info.monster_info_* the client's 13 monster stat slots stay
    all-zero: monsters spawn (from client-side stage data) but are dead-on-spawn
    (MaxHP 0), never attack and never move.
    """
    stage_id = int(params.get("stage_id", 0) or 0)
    rows = _monster_rows(stage_id)
    stage_info = {
        "stage_no": stage_id,
        "rand_key": 1,
        "drop_count": 0,
        "drop_gold_max": 0,
        "gold_gain_bonus": 0,
    }
    stage_info["monster_info_%d" % stage_id] = rows
    stage_info["monster_info_%d" % (stage_id + 1)] = rows
    return {
        "stage_info": stage_info,
        "verify_info": {"verify_type": 0, "attack": HERO_ATTACK,
                        "defence": HERO_DEFENCE, "hp": HERO_HP},
        "drop_item_list": {"1": [], "4": []},
        "drop_event_item_list": [],
    }


PROTOCOL_HANDLERS = {
    P_VERSION: version_check,
    P_EVENT_INFO: event_info,
    P_LOGIN: login,
    P_HUB_UID: hub_uid,
    P_HUB_DID: hub_did,
    P_LOAD_USER: load_user,
    P_INVENTORY: inventory,
    P_STAGE_START: stage_start,
}


def handle(headers, body: bytes) -> bytes:
    try:
        req = decrypt(body)
    except Exception as e:  # noqa: BLE001
        print("[gamegw] decrypt failed: %s" % e)
        return encrypt({"protocol": 0, "errno": -1, "error": "decrypt failed"})
    proto = req.get("protocol")
    params = req.get("params", {})
    print("[gamegw] protocol=%s params=%s" % (proto, json.dumps(params)[:200]))
    fn = PROTOCOL_HANDLERS.get(proto)
    if fn is None:
        print("[gamegw] no handler for protocol %s -- replying bare errno=0" % proto)
    # Handlers that need the request host (to build absolute download URLs) take a
    # second `headers` argument; the rest keep the plain (params) signature.
    if fn is None:
        fields = {}
    elif fn.__code__.co_argcount > 1:
        fields = fn(params, headers)
    else:
        fields = fn(params)
    # Flat envelope: the client reads every payload field straight off the root object.
    resp = {"protocol": proto, "errno": 0, "error": "", **fields}
    print("[gamegw] -> %s" % json.dumps(resp)[:240])
    return encrypt(resp)
