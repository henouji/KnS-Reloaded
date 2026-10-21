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
import random
import json
import sqlite3
import time
from pathlib import Path

from Crypto.Cipher import AES

KEY = b"1m!1HUB2@hero#Re"
IV = bytes.fromhex("de295106d3872f949783942fdc9f01e2")  # const @0x1D2594
BLOCK = 16

# KNS_DB points tests at a scratch database so they never touch real saved progress.
DB = Path(__import__("os").environ.get("KNS_DB", str(Path("work") / "kns.sqlite")))
MASTER_ITEMS_CSV = Path(__file__).with_name("seed") / "master_items.csv"

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
P_STAGE_RESULT = 72
P_EQUIP_ITEM = 80

# --- new-user template -------------------------------------------------------
# Fields the client has no master-data cross-check for are plain defaults. The ones
# that index into the still-encrypted dt_* master data (hero_pcid, fellow_id,
# item_id) stay at 1 / empty so nothing dangles. Tune these live: the server picks
# them up on restart.
START_GOLD = 99_999
START_CASH = 9_999
START_LEVEL = 3
START_MAX_EXP = 100
START_STAMINA = 100
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
# 300k range → parse-struct+0x20 → gameInfo+0xC18. DrawResult looks this slot up with no
# null check, so an empty slot crashes the dungeon result screen.
SHIELD_ITEM_NO = 1003
SHIELD_ITEM_ID = 300001


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
    # Every item id the client's master data knows, dumped from a running game
    # (tools/dump_master_items.py). Seeded from the CSV so the server serves ids from the
    # database rather than from code.
    conn.execute("""CREATE TABLE IF NOT EXISTS master_item(
        item_id INTEGER PRIMARY KEY, category INTEGER)""")
    # Items a user owns (claimed=1) or was offered by the current stage start (claimed=0).
    # item_no = rowid + ITEM_NO_BASE keeps clear of the fixed starter gear (1001..1003).
    conn.execute("""CREATE TABLE IF NOT EXISTS item(
        rowid_alias INTEGER PRIMARY KEY AUTOINCREMENT,
        user_no INTEGER, item_id INTEGER, claimed INTEGER DEFAULT 0,
        upgrade INTEGER DEFAULT 0, attack INTEGER DEFAULT 0,
        defence INTEGER DEFAULT 0, hp INTEGER DEFAULT 0)""")
    # Which item a user's hero wears in each equipment range (200000 = weapon, ...). A
    # missing row means the starter item for that range.
    conn.execute("""CREATE TABLE IF NOT EXISTS hero_equip(
        user_no INTEGER, hero_no INTEGER, category INTEGER, item_no INTEGER,
        PRIMARY KEY(user_no, hero_no, category))""")
    have = {r[1] for r in conn.execute("PRAGMA table_info(item)")}
    for col in ("upgrade", "attack", "defence", "hp"):
        if col not in have:
            conn.execute("ALTER TABLE item ADD COLUMN %s INTEGER DEFAULT 0" % col)
    if conn.execute("SELECT COUNT(*) FROM master_item").fetchone()[0] == 0             and MASTER_ITEMS_CSV.exists():
        with conn, MASTER_ITEMS_CSV.open(encoding="utf-8") as f:
            rows = [tuple(map(int, line.split(","))) for line in f.read().split()[1:]]
            conn.executemany("INSERT OR IGNORE INTO master_item VALUES(?,?)", rows)
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


# Who protocol 60 last loaded. Stage start (71) carries no user_no, but its reply must
# still repeat user_info: the client runs UpdateUserInfo/UpdateUserGoods on every stage
# reply and a missing user_info copies zero gold/gems over the real balance.
_LAST_USER: dict = {}


# Currency balances travel as item_etc_info rows, not in user_info: ParsingDataToUserGoods
# resets the parse struct's gold/cash slots to -1 and refills them from rows keyed by these
# master item ids, which is what UpdateUserGoods then copies into the game state.
GOLD_ITEM_ID = 1900008
CASH_ITEM_ID = 1900009


# Running balance for this server process; stage rewards are credited here.
_BALANCE = {"gold": START_GOLD, "cash": START_CASH}


def _goods() -> list:
    return [{"item_id": GOLD_ITEM_ID, "count": _BALANCE["gold"]},
            {"item_id": CASH_ITEM_ID, "count": _BALANCE["cash"]}]


def _current_user(params: dict) -> dict:
    """The user a request belongs to. Stage start (71) carries no user_no, so after a
    server restart (before the client logs in again) use the newest registered user."""
    if _LAST_USER:
        return _LAST_USER
    if not params.get("user_no"):
        conn = _db()
        row = conn.execute("SELECT user_no, hub_uid, nickname FROM gameuser"
                           " WHERE user_no>0 ORDER BY user_no DESC LIMIT 1").fetchone()
        conn.close()
        if row:
            return {"user_no": row[0], "hub_uid": row[1],
                    "nickname": row[2] or "Squire%d" % row[0]}
    return _user(params)


def _user_info(u: dict) -> dict:
    now = int(time.time())
    return {
        "user_no": u["user_no"],
        "user_hub_id": u["hub_uid"],
        "user_nickname": u["nickname"],
        "user_level": START_LEVEL,
        "user_exp": 0,
        "user_max_exp": START_MAX_EXP,
        "user_gold": _BALANCE["gold"],
        "user_cash": _BALANCE["cash"],
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
    }


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
    _LAST_USER.update(u)
    now = int(time.time())
    return {
        "user_info": _user_info(u),
        # consumables / currencies keyed by master-data item id; none for a new user.
        "item_etc_info": _goods(),
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
            "hero_item_infos": [] if EMPTY_HERO else _worn_json(u["user_no"]),
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


def _worn_json(user_no: int) -> list:
    """The hero's equipped items as protocol 60's hero_item_infos entries."""
    worn = _equipped(user_no)
    starter_ids = {no: iid for no, iid in STARTER_ITEMS.values()}
    conn = _db()
    out = []
    for item_no in worn.values():
        if item_no in starter_ids:
            out.append({"item_no": item_no, "item_id": starter_ids[item_no],
                        "hero_no": HERO_NO})
            continue
        row = conn.execute("SELECT item_id, upgrade, attack, defence, hp FROM item"
                           " WHERE rowid_alias=? AND user_no=? AND claimed=1",
                           (item_no - ITEM_NO_BASE, user_no)).fetchone()
        if row:
            out.append(_item_json(item_no, *row, hero_no=HERO_NO))
    conn.close()
    return out


# --------------------------------------------------------------------------- 80
def equip_item(params: dict) -> dict:
    """Protocol 80 -- equip an item on a hero. Case @0x15e1de.

    Request {user_no, hero_no, item_no, achievement_list}. The reply must echo hero_no and
    item_no: the post-reply handler reads them back from the response to run ChangeEquip, so
    an empty reply equips nothing. update_achievement_info is parsed too.
    """
    user_no = int(params.get("user_no") or _current_user(params)["user_no"])
    hero_no = int(params.get("hero_no") or HERO_NO)
    item_no = int(params.get("item_no") or 0)
    item_id = None
    for no, iid in STARTER_ITEMS.values():
        if no == item_no:
            item_id = iid
    if item_id is None:
        conn = _db()
        row = conn.execute("SELECT item_id FROM item WHERE rowid_alias=? AND user_no=?"
                           " AND claimed=1", (item_no - ITEM_NO_BASE, user_no)).fetchone()
        conn.close()
        item_id = row[0] if row else None
    if item_id is not None:
        conn = _db()
        with conn:
            conn.execute("INSERT OR REPLACE INTO hero_equip VALUES(?,?,?,?)",
                         (user_no, hero_no, _category(item_id), item_no))
        conn.close()
    print("[gamegw] equip: hero %s item_no %s item_id %s" % (hero_no, item_no, item_id))
    return {"hero_no": hero_no, "item_no": item_no, "update_achievement_info": []}


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
    user_no = _current_user(params)["user_no"]
    items = [] if EMPTY_HERO else _starter_json(set(_equipped(user_no).values()))
    items += _owned_items(user_no)
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
# Per-pile gold cap for stage drops; the client rolls the actual piles and reports the
# total back as reward_gold in protocol 72.
DROP_GOLD_MAX = 100
DROP_COUNT = 10
# Few timed respawns (BornTime/BornProb) so the stage stays sparse. Tunable on device; units of Sight/MoveSpeed/Cooldown are inferred from column names.
MONSTER_STATS = {
    "Attack1 Value": 5, "Defence": 0, "MaxHP": 10,
    "Cooldown(millisec)": 1500, "Sight": 600, "AtkProb": 50,
    "BornTime(sec)": 20, "BornProb": 10, "MoveSpeed(pixel/ms)": 100,
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


ITEM_NO_BASE = 2000        # item_no = item.rowid_alias + ITEM_NO_BASE
DROP_LISTS = ("1", "4")    # the two drop_item_list arrays the client parses
DROP_PER_LIST = 4          # the client reads at most 4 per list
DROP_ITEMS_TOTAL = 3       # items offered per stage, filled into the lists in order
DROP_TIER_ROWS = 3         # offer only the first N ids (lowest tier) of each category
DROP_CATEGORIES = (200000, 300000, 400000)   # weapon / 300k slot / armor ranges


# Starter gear every hero begins with, by equipment range (item_no is fixed and below
# ITEM_NO_BASE; item_id is a catalog id the client can draw).
STARTER_ITEMS = {200000: (WEAPON_ITEM_NO, WEAPON_ITEM_ID),
                 300000: (SHIELD_ITEM_NO, SHIELD_ITEM_ID),
                 400000: (ARMOR_ITEM_NO, ARMOR_ITEM_ID)}
HERO_NO = 1


def _category(item_id: int) -> int:
    return item_id // 100000 * 100000


def _equipped(user_no: int) -> dict:
    """{category: item_no} the user's hero currently wears."""
    worn = {cat: no for cat, (no, _) in STARTER_ITEMS.items()}
    conn = _db()
    for cat, no in conn.execute("SELECT category, item_no FROM hero_equip"
                                " WHERE user_no=? AND hero_no=?", (user_no, HERO_NO)):
        worn[cat] = no
    conn.close()
    return worn


def _starter_json(worn: set) -> list:
    return [{"item_no": no, "item_id": iid, "hero_no": HERO_NO if no in worn else 0}
            for no, iid in STARTER_ITEMS.values()]


# Per-instance stats the client reads for an equipment item (item_attack / item_defence /
# item_hp, shown on top of the master-data base). Real values are rolled by the live
# server; these are placeholders by category: (attack, defence, hp).
DROP_STATS = {200000: (12, 0, 0), 300000: (0, 6, 0), 400000: (0, 4, 30)}


def _item_stats(item_id: int) -> tuple:
    return DROP_STATS.get(item_id // 100000 * 100000, (0, 0, 0))


def _item_json(item_no: int, item_id: int, upgrade=0, attack=0, defence=0, hp=0,
               hero_no=0) -> dict:
    return {"item_no": item_no, "item_id": item_id, "hero_no": hero_no, "item_upgrade": upgrade,
            "item_attack": attack, "item_defence": defence, "item_hp": hp, "item_lock": 0,
            "item_option_count": 0, "item_options": []}


def _offer_drops(user_no: int) -> dict:
    """Roll this stage's drop lists from master_item and record them unclaimed."""
    conn = _db()
    with conn:
        conn.execute("DELETE FROM item WHERE user_no=? AND claimed=0", (user_no,))
        pool = []
        for cat in DROP_CATEGORIES:
            pool += [r[0] for r in conn.execute(
                "SELECT item_id FROM master_item WHERE category=? ORDER BY item_id LIMIT ?",
                (cat, DROP_TIER_ROWS))]
        lists = {}
        left = DROP_ITEMS_TOTAL
        for key in DROP_LISTS:
            offered = []
            take = min(DROP_PER_LIST, left, len(pool))
            left -= take
            for item_id in random.sample(pool, take):
                atk, dfn, hp = _item_stats(item_id)
                cur = conn.execute("INSERT INTO item(user_no,item_id,claimed,attack,defence,hp)"
                                   " VALUES(?,?,0,?,?,?)", (user_no, item_id, atk, dfn, hp))
                offered.append({"item_id": item_id,
                                "item_no": cur.lastrowid + ITEM_NO_BASE})
            lists[key] = offered
    conn.close()
    return lists


def _claim_items(user_no: int, reward_items) -> list:
    """Turn the offered items the client reports as dropped into owned ones."""
    wanted = set()
    for r in reward_items or []:
        no = r.get("item_no") if isinstance(r, dict) else r
        try:
            wanted.add(int(no) - ITEM_NO_BASE)
        except (TypeError, ValueError):
            pass
    conn = _db()
    claimed = []
    with conn:
        for rowid in wanted:
            cur = conn.execute("UPDATE item SET claimed=1 WHERE rowid_alias=? AND user_no=?",
                               (rowid, user_no))
            if cur.rowcount:
                row = conn.execute("SELECT item_id, upgrade, attack, defence, hp FROM item"
                                   " WHERE rowid_alias=?", (rowid,)).fetchone()
                claimed.append(_item_json(rowid + ITEM_NO_BASE, *row))
    conn.close()
    return claimed


def _owned_items(user_no: int) -> list:
    worn = set(_equipped(user_no).values())
    conn = _db()
    rows = conn.execute("SELECT rowid_alias, item_id, upgrade, attack, defence, hp FROM item"
                        " WHERE user_no=? AND claimed=1 ORDER BY rowid_alias",
                        (user_no,)).fetchall()
    conn.close()
    return [_item_json(r[0] + ITEM_NO_BASE, *r[1:],
                       hero_no=HERO_NO if r[0] + ITEM_NO_BASE in worn else 0) for r in rows]


def stage_start(params: dict) -> dict:
    """Protocol 71 -- dungeon stage start. Case @0x15e324.

    Request: {friend_type, stage_id, stage_mode, friend_user_no}.
    Without stage_info.monster_info_* the client's 13 monster stat slots stay
    all-zero: monsters spawn (from client-side stage data) but are dead-on-spawn
    (MaxHP 0), never attack and never move.
    """
    stage_id = int(params.get("stage_id", 0) or 0)
    user = _current_user(params)
    rows = _monster_rows(stage_id)
    stage_info = {
        "stage_no": stage_id,
        "rand_key": 1,
        "drop_count": DROP_COUNT,
        "drop_gold_max": DROP_GOLD_MAX,
        "gold_gain_bonus": 0,
    }
    stage_info["monster_info_%d" % stage_id] = rows
    stage_info["monster_info_%d" % (stage_id + 1)] = rows
    return {
        "user_info": _user_info(user),
        "update_item_etc_info": _goods(),
        "stage_info": stage_info,
        "verify_info": {"verify_type": 0, "attack": HERO_ATTACK,
                        "defence": HERO_DEFENCE, "hp": HERO_HP},
        "drop_item_list": _offer_drops(user["user_no"]),
        "drop_event_item_list": [],
    }


# --------------------------------------------------------------------------- 72
def stage_result(params: dict) -> dict:
    """Protocol 72 -- dungeon stage result. Case @0x15fcd0.

    Response fields (all off the root): stage_result, user_info, update_item_etc_info,
    item_infos[] (drops shown on the result screen, <=10), drop_fellow_infos[],
    fellow_info[], update_achievement_info, stage_attainment_info, fellow_book_info[],
    daily_quest_info, max_item_infos[], story_info.
    No drops yet. The result screen (DrawResult) crashes unless every equipped slot the
    hero has resolves to an inventory node, see SHIELD_ITEM_* above.
    """
    try:
        _BALANCE["gold"] += max(0, int(params.get("reward_gold") or 0))
    except (TypeError, ValueError):
        pass
    print("[gamegw] stage result: reward_gold=%s gold now %d"
          % (params.get("reward_gold"), _BALANCE["gold"]))
    print("[gamegw] stage result drops: reward_items=%s event_items=%s max_damage=%s"
          % (json.dumps(params.get("reward_items")), json.dumps(params.get("event_items")),
             params.get("max_damage")))
    user = _current_user(params)
    dropped = _claim_items(user["user_no"], params.get("reward_items"))
    print("[gamegw] stage result: dropped items %s" % dropped)
    return {
        "stage_result": params.get("stage_result", 1),
        "user_info": _user_info(user),
        "update_item_etc_info": _goods(),
        "item_infos": dropped,
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
    P_STAGE_RESULT: stage_result,
    P_EQUIP_ITEM: equip_item,
}


def handle(headers, body: bytes) -> bytes:
    try:
        req = decrypt(body)
    except Exception as e:  # noqa: BLE001
        print("[gamegw] decrypt failed: %s" % e)
        return encrypt({"protocol": 0, "errno": -1, "error": "decrypt failed"})
    proto = req.get("protocol")
    params = req.get("params", {})
    if params.get("user_no"):
        _LAST_USER.update(_user(params))
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
