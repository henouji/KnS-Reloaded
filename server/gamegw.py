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
  201 (0xc9) @0x15a8c0 hero buy     -> user_info, update_item_etc_info, hero_info
  202 (0xca) @0x15e65e hero change  -> hero_no, hero_pcid
  140 (0x8c) and 141 (0x8d) DO have cases (see docs/protocol-gamegw.md); they are not
  implemented yet and get a bare errno=0, which the client accepts.
"""
from __future__ import annotations

import base64
import csv
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
SEED_DIR = Path(__file__).with_name("seed")
MASTER_ITEMS_CSV = SEED_DIR / "master_items.csv"
# Other master tables dumped from game memory by tools/dump_master_tables.py:
# {table: seed csv}; the first CSV column is the primary key.
MASTER_TABLES = {"master_hero": SEED_DIR / "master_heroes.csv",
                 "master_etc_item": SEED_DIR / "master_etc_items.csv",
                 "master_level": SEED_DIR / "master_levels.csv",
                 "master_stage": SEED_DIR / "master_stages.csv",
                 "master_stage_area": SEED_DIR / "master_stage_areas.csv"}
# master_stage column taken as the exp a cleared stage awards. Unconfirmed: it is the only
# per-stage field that grows like a reward (20/24/28 for stages 3000001-3).
STAGE_EXP_COLUMN = "c87"

# Archived "additional data" (the 239MB the live CDN used to serve). Layout mirrors
# the device's own external dir: <root>/<version>/<file>, e.g. files/1.4.0/bgm_menu.ogg.
PKG = "com.com2us.imhero.normal.freefull.google.global.android.common"
ADDITION_ROOT = Path("original") / PKG / "files"
SERVER_VERSION = "1.01.10"   # what the client echoes back in protocol 50
SERVE_ADDITION = bool(__import__("os").environ.get("KNS_SERVE_ADDITION"))

P_VERSION = 48
P_DOWNLOAD = 49
P_PATCH = 50
P_LOGIN = 51
P_HUB_UID = 52
P_HUB_DID = 53
P_LOAD_USER = 60
P_INVENTORY = 61
P_EVENT_INFO = 59
P_STAGE_INFO = 70
P_STAGE_START = 71
P_STAGE_RESULT = 72
P_EQUIP_ITEM = 80
P_HERO_BUY = 201
P_HERO_CHANGE = 202

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
    # Wallet (gold, gems) and the hero the user plays (user_info.user_hero_pcid).
    have = {r[1] for r in conn.execute("PRAGMA table_info(gameuser)")}
    for col, default in (("gold", START_GOLD), ("cash", START_CASH), ("hero_pcid", HERO_PCID),
                         ("level", START_LEVEL), ("exp", 0)):
        if col not in have:
            conn.execute("ALTER TABLE gameuser ADD COLUMN %s INTEGER DEFAULT %d" % (col, default))
    # Heroes a user owns. hero_no is the per-user hero id the client echoes back (we use the
    # hero_pcid); the default hero is added on first read by _heroes().
    conn.execute("""CREATE TABLE IF NOT EXISTS user_hero(
        user_no INTEGER, hero_no INTEGER, hero_pcid INTEGER,
        PRIMARY KEY(user_no, hero_no))""")
    # Stages a user has cleared (stage_mode 1 normal, 2 hard), recorded by protocol 72 and
    # sent back by protocol 70.
    conn.execute("""CREATE TABLE IF NOT EXISTS stage_clear(
        user_no INTEGER, stage_id INTEGER, stage_mode INTEGER, clear_count INTEGER,
        PRIMARY KEY(user_no, stage_id, stage_mode))""")
    for table, path in MASTER_TABLES.items():
        _seed(conn, table, path)
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


def _seed(conn: sqlite3.Connection, table: str, path: Path) -> None:
    """Create `table` from a seed CSV's header and load the rows if the table is empty."""
    if not path.exists():
        return
    with path.open(encoding="utf-8", newline="") as f:
        rows = list(csv.reader(f))
    cols = rows[0]
    conn.execute("CREATE TABLE IF NOT EXISTS %s(%s PRIMARY KEY, %s)"
                 % (table, cols[0], ", ".join(cols[1:])))
    if conn.execute("SELECT COUNT(*) FROM %s" % table).fetchone()[0]:
        return
    with conn:
        conn.executemany("INSERT OR IGNORE INTO %s VALUES(%s)"
                         % (table, ",".join("?" * len(cols))),
                         [[int(v) if v.lstrip("-").isdigit() else v for v in r]
                          for r in rows[1:]])


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

    Serving nothing here is what left the game with no addition data at all -- for an APK
    without the bundled assets. The current build bundles them (tools/bundle_resources.py),
    and a fresh boot re-downloads the 239MB only to discard it, so the list is empty unless
    KNS_SERVE_ADDITION=1 (needed again for an unbundled APK).
    """
    ver = str(params.get("strClientVersion") or "1.4.0")
    names = []
    d = ADDITION_ROOT / ver
    if not SERVE_ADDITION:
        print("[gamegw] protocol 48: assets are bundled in the APK -- empty addition list")
    elif d.is_dir():
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


def _account(user_no: int) -> dict:
    """The user's wallet and active hero, as stored on their gameuser row."""
    conn = _db()
    row = conn.execute("SELECT gold, cash, hero_pcid, level, exp FROM gameuser"
                       " WHERE user_no=?", (user_no,)).fetchone()
    conn.close()
    gold, cash, pcid, level, exp = row if row else (START_GOLD, START_CASH, HERO_PCID,
                                                    START_LEVEL, 0)
    return {"gold": gold, "cash": cash, "hero_pcid": pcid, "level": level, "exp": exp,
            "max_exp": _exp_to_next(level)}


def _exp_to_next(level: int) -> int:
    """Exp needed to leave `level` (master_level.exp_to_next; GetUserDataByLv row +4)."""
    conn = _db()
    row = conn.execute("SELECT exp_to_next FROM master_level WHERE level=?",
                       (level,)).fetchone()
    conn.close()
    return row[0] if row else START_MAX_EXP


def _gain_exp(user_no: int, stage_id: int) -> int:
    """Award a cleared stage's exp, levelling up while the bar is full. Returns the gain."""
    conn = _db()
    row = conn.execute("SELECT %s FROM master_stage WHERE stage_id=?" % STAGE_EXP_COLUMN,
                       (stage_id,)).fetchone()
    need = dict(conn.execute("SELECT level, exp_to_next FROM master_level"))
    conn.close()
    gain = row[0] if row and row[0] > 0 else 0
    acct = _account(user_no)
    level, exp = acct["level"], acct["exp"] + gain
    while level + 1 in need and exp >= need[level]:   # the last level never fills
        exp -= need[level]
        level += 1
    conn = _db()
    with conn:
        conn.execute("UPDATE gameuser SET level=?, exp=? WHERE user_no=?",
                     (level, exp, user_no))
    conn.close()
    return gain


def _credit(user_no: int, gold: int = 0, cash: int = 0) -> None:
    """Add (or with negative amounts, deduct) currency on the user's wallet."""
    conn = _db()
    with conn:
        conn.execute("UPDATE gameuser SET gold=gold+?, cash=cash+? WHERE user_no=?",
                     (gold, cash, user_no))
    conn.close()


def _goods(user_no: int) -> list:
    acct = _account(user_no)
    return [{"item_id": GOLD_ITEM_ID, "count": acct["gold"]},
            {"item_id": CASH_ITEM_ID, "count": acct["cash"]}]


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
    acct = _account(u["user_no"])
    return {
        "user_no": u["user_no"],
        # UpdateUserInfo strcpy's a non-empty user_hub_id to gameInfo+0xa08, the player name
        # the result screen header shows. Guest logins store hub_uid "-1", so send the name.
        "user_hub_id": u["nickname"],
        "user_nickname": u["nickname"],
        # UpdateUserInfo skips the whole update while user_level <= 0. It keeps the previous
        # level/exp (gameInfo+0xae4/+0xae8) so the result screen can animate the gain.
        "user_level": acct["level"],
        "user_exp": acct["exp"],
        "user_max_exp": acct["max_exp"],
        "user_gold": acct["gold"],
        "user_cash": acct["cash"],
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
        # UpdateUserInfo copies this to gameInfo+0xb90, the hero the town and stages use.
        "user_hero_pcid": acct["hero_pcid"],
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
        "item_etc_info": _goods(u["user_no"]),
        # the three active fellow slots (type 1/2/3, position 0..2); none equipped.
        "fellow_active_info": [],
        "server_time": now,
        "last_grade": 0,
        "server_date_time": time.strftime("%Y-%m-%d %H:%M:%S", time.localtime(now)),
        # Every owned hero: the client switches heroes with ChangeMainCharacter, which looks
        # the pcid up in this list and crashes on a hero it was never given.
        "hero_info": [] if EMPTY_HERO else [_hero_json(u["user_no"], no, pcid)
                                            for no, pcid in _heroes(u["user_no"])],
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


def _worn_json(user_no: int, hero_no: int = 1) -> list:
    """A hero's equipped items as hero_info.hero_item_infos entries.

    item_no is the unique instance id; protocol 61's item_infos must carry the same item_no
    so the client can resolve each equipped slot to an inventory node.
    """
    worn = _equipped(user_no, hero_no)
    starter_ids = {no: iid for no, iid in STARTER_ITEMS.values()}
    conn = _db()
    out = []
    for item_no in worn.values():
        if item_no in starter_ids:
            out.append({"item_no": item_no, "item_id": starter_ids[item_no],
                        "hero_no": hero_no})
            continue
        row = conn.execute("SELECT item_id, upgrade, attack, defence, hp FROM item"
                           " WHERE rowid_alias=? AND user_no=? AND claimed=1",
                           (item_no - ITEM_NO_BASE, user_no)).fetchone()
        if row:
            out.append(_item_json(item_no, *row, hero_no=hero_no))
    conn.close()
    return out


def _heroes(user_no: int) -> list:
    """[(hero_no, hero_pcid)] the user owns; everyone owns the default hero."""
    conn = _db()
    with conn:
        conn.execute("INSERT OR IGNORE INTO user_hero VALUES(?,?,?)",
                     (user_no, HERO_NO, HERO_PCID))
        rows = conn.execute("SELECT hero_no, hero_pcid FROM user_hero WHERE user_no=?"
                            " ORDER BY hero_no", (user_no,)).fetchall()
    conn.close()
    return rows


def _hero_json(user_no: int, hero_no: int, hero_pcid: int) -> dict:
    """One hero_info element, parsed by ParsingDataToCharacterInfo@0x14cdd0."""
    return {
        "hero_no": hero_no,
        "hero_pcid": hero_pcid,
        "hero_perfect_guard_bonus": 0,
        "hero_booster_bonus": 0,
        "hero_item_bonus": 0,
        "hero_gold_bonus": 0,
        "hero_potion_bonus": 0,
        "hero_item_infos": _worn_json(user_no, hero_no),
    }


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
            # An item is worn by one hero at a time.
            conn.execute("DELETE FROM hero_equip WHERE user_no=? AND item_no=? AND hero_no!=?",
                         (user_no, item_no, hero_no))
            conn.execute("INSERT OR REPLACE INTO hero_equip VALUES(?,?,?,?)",
                         (user_no, hero_no, _category(item_id), item_no))
        conn.close()
    print("[gamegw] equip: hero %s item_no %s item_id %s" % (hero_no, item_no, item_id))
    return {"hero_no": hero_no, "item_no": item_no, "update_achievement_info": []}


# --------------------------------------------------------------------------- 201
HERO_GEAR_COLUMNS = ("weapon_id", "slot300_id", "armor_id")   # master_hero default gear


def hero_buy(params: dict) -> dict:
    """Protocol 201 -- unlock a hero on the Characters screen. Case @0x15a8c0.

    Request {user_no, hero_pcid}. The client has already checked the gem price
    (master_hero.price_gems) against its balance. The reply's post-handler runs
    Net_AddDataCharacterInfo(hero_info) -- adding the hero and inserting its
    hero_item_infos into the inventory -- then Net_HeroBuy(hero_info.hero_pcid), and closing
    the popup switches the main hero to that pcid. A reply without hero_info switches to
    pcid 0, which has no master row: ChangeMainCharacter memcpy's from NULL (SIGSEGV).
    The new hero gets its master default gear; every equipped range must resolve to an
    inventory item or the result screen crashes (see SHIELD_ITEM_*).
    """
    user = _current_user(params)
    user_no = user["user_no"]
    pcid = int(params.get("hero_pcid") or 0)
    conn = _db()
    row = conn.execute("SELECT price_gems, %s FROM master_hero WHERE hero_pcid=?"
                       % ", ".join(HERO_GEAR_COLUMNS), (pcid,)).fetchone()
    owned = conn.execute("SELECT hero_no FROM user_hero WHERE user_no=? AND hero_pcid=?",
                         (user_no, pcid)).fetchone()
    conn.close()
    if row is None:
        print("[gamegw] hero buy: unknown hero_pcid %s" % pcid)
        return {"errno": 1, "error": "unknown hero"}
    price, gear = row[0], row[1:]
    if owned is None:
        if _account(user_no)["cash"] < price:
            print("[gamegw] hero buy: pcid %s costs %d gems, not enough" % (pcid, price))
            return {"errno": 1, "error": "not enough gems"}
        conn = _db()
        with conn:
            conn.execute("INSERT INTO user_hero VALUES(?,?,?)", (user_no, pcid, pcid))
            for item_id in gear:
                cur = conn.execute("INSERT INTO item(user_no,item_id,claimed) VALUES(?,?,1)",
                                   (user_no, item_id))
                conn.execute("INSERT OR REPLACE INTO hero_equip VALUES(?,?,?,?)",
                             (user_no, pcid, _category(item_id),
                              cur.lastrowid + ITEM_NO_BASE))
            conn.execute("UPDATE gameuser SET cash=cash-?, hero_pcid=? WHERE user_no=?",
                         (price, pcid, user_no))
        conn.close()
        print("[gamegw] hero buy: pcid %s for %d gems, gear %s" % (pcid, price, gear))
    hero_no = owned[0] if owned else pcid
    return {
        "user_info": _user_info(user),
        "update_item_etc_info": _goods(user_no),
        "hero_info": _hero_json(user_no, hero_no, pcid),
        "update_achievement_info": [],
    }


# --------------------------------------------------------------------------- 202
def hero_change(params: dict) -> dict:
    """Protocol 202 -- play an owned hero. Case @0x15e65e.

    Request carries the owned hero's hero_no. The reply's hero_pcid goes to Net_HeroChange,
    and closing the Characters popup switches the main hero to it. The choice is stored as
    gameuser.hero_pcid and sent back as user_info.user_hero_pcid at the next login.
    """
    user_no = _current_user(params)["user_no"]
    hero_no = int(params.get("hero_no") or 0)
    # _heroes() also creates the default hero's row, which may not exist yet right after a
    # server restart (the client can switch back to it before reloading protocol 60).
    pcid = dict(_heroes(user_no)).get(hero_no)
    if pcid is None:
        print("[gamegw] hero change: user %s has no hero_no %s" % (user_no, hero_no))
        return {"errno": 1, "error": "unknown hero"}
    conn = _db()
    with conn:
        conn.execute("UPDATE gameuser SET hero_pcid=? WHERE user_no=?", (pcid, user_no))
    conn.close()
    print("[gamegw] hero change: hero_no %s pcid %s" % (hero_no, pcid))
    return {"hero_no": hero_no, "hero_pcid": pcid}


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
    worn = _worn_by(user_no)
    items = [] if EMPTY_HERO else _starter_json(worn)
    items += _owned_items(user_no, worn)
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
    # Chance (%) a killed monster drops a potion (master_etc_item 1900001/1900002). Potions
    # are used on pickup inside the stage; nothing about them reaches the server.
    "CommoditiesItemProb": 20,
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


def _equipped(user_no: int, hero_no: int = HERO_NO) -> dict:
    """{category: item_no} a hero currently wears. The default hero starts in the fixed
    starter gear; bought heroes get hero_equip rows for their gear when bought."""
    worn = {cat: no for cat, (no, _) in STARTER_ITEMS.items()} if hero_no == HERO_NO else {}
    conn = _db()
    for cat, no in conn.execute("SELECT category, item_no FROM hero_equip"
                                " WHERE user_no=? AND hero_no=?", (user_no, hero_no)):
        worn[cat] = no
    conn.close()
    return worn


def _worn_by(user_no: int) -> dict:
    """{item_no: hero_no} for every item any of the user's heroes wears."""
    return {item_no: hero_no for hero_no, _ in _heroes(user_no)
            for item_no in _equipped(user_no, hero_no).values()}


def _starter_json(worn: dict) -> list:
    return [{"item_no": no, "item_id": iid, "hero_no": worn.get(no, 0)}
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


def _owned_items(user_no: int, worn: dict) -> list:
    conn = _db()
    rows = conn.execute("SELECT rowid_alias, item_id, upgrade, attack, defence, hp FROM item"
                        " WHERE user_no=? AND claimed=1 ORDER BY rowid_alias",
                        (user_no,)).fetchall()
    conn.close()
    return [_item_json(r[0] + ITEM_NO_BASE, *r[1:], hero_no=worn.get(r[0] + ITEM_NO_BASE, 0))
            for r in rows]


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
        "update_item_etc_info": _goods(user["user_no"]),
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
    user = _current_user(params)
    try:
        _credit(user["user_no"], gold=max(0, int(params.get("reward_gold") or 0)))
    except (TypeError, ValueError):
        pass
    print("[gamegw] stage result: reward_gold=%s gold now %d"
          % (params.get("reward_gold"), _account(user["user_no"])["gold"]))
    print("[gamegw] stage result drops: reward_items=%s event_items=%s max_damage=%s"
          % (json.dumps(params.get("reward_items")), json.dumps(params.get("event_items")),
             params.get("max_damage")))
    dropped = _claim_items(user["user_no"], params.get("reward_items"))
    print("[gamegw] stage result: dropped items %s" % dropped)
    stage_id = int(params.get("stage_no") or 0)
    if params.get("stage_result", 1) == 1:
        gain = _gain_exp(user["user_no"], stage_id)
        acct = _account(user["user_no"])
        print("[gamegw] stage result: +%d exp -> Lv.%d %d/%d"
              % (gain, acct["level"], acct["exp"], acct["max_exp"]))
        _record_clear(user["user_no"], stage_id, int(params.get("stage_mode") or 1))
    area = _area_of(stage_id)
    return {
        "stage_result": params.get("stage_result", 1),
        "user_info": _user_info(user),
        "update_item_etc_info": _goods(user["user_no"]),
        "item_infos": dropped,
        # Net_SetStageAreaInfo replaces the client's counts for this area with these.
        "stage_attainment_info": _attainment(user["user_no"]).get(area, {}) if area else {},
    }


# --------------------------------------------------------------------------- 70
def _area_of(stage_id: int):
    conn = _db()
    row = conn.execute("SELECT area_id FROM master_stage_area WHERE stage_id=?",
                       (stage_id,)).fetchone()
    conn.close()
    return row[0] if row else None


def _record_clear(user_no: int, stage_id: int, stage_mode: int) -> None:
    conn = _db()
    with conn:
        conn.execute("INSERT INTO stage_clear VALUES(?,?,?,1) ON CONFLICT(user_no, stage_id,"
                     " stage_mode) DO UPDATE SET clear_count=clear_count+1",
                     (user_no, stage_id, stage_mode))
    conn.close()


def _attainment(user_no: int) -> dict:
    """{area_id: stage_attainment_info} -- distinct stages cleared per area and mode."""
    conn = _db()
    rows = conn.execute(
        "SELECT a.area_id, SUM(c.stage_mode=1), SUM(c.stage_mode!=1) FROM stage_clear c"
        " JOIN master_stage_area a ON a.stage_id=c.stage_id WHERE c.user_no=?"
        " GROUP BY a.area_id", (user_no,)).fetchall()
    conn.close()
    return {area: {"area_id": area, "normal_user_clear_count": normal,
                   "hard_user_clear_count": hard} for area, normal, hard in rows}


def stage_info(params: dict) -> dict:
    """Protocol 70 -- the user's stage progress, requested when the world map opens.
    Case @0x15abca.

    Request {user_no}. The post-handler wipes the client's stage-clear bits and area counts
    and rebuilds them from this reply, so a bare reply forgets every cleared stage:
      clear_stage_infos              [{stage_id, stage_mode}] -> SetStageClear(id, mode != 1)
      stage_attainment_infos         [{area_id, normal_user_clear_count,
                                       hard_user_clear_count}] -> Net_SetStageAreaInfo
      stage_attainment_reward_infos  [{area_id, stage_mode}] -> Net_SetStageAreaReward
                                     (area rewards claimed; not tracked yet)
    """
    user_no = _current_user(params)["user_no"]
    conn = _db()
    clears = conn.execute("SELECT stage_id, stage_mode FROM stage_clear WHERE user_no=?"
                          " ORDER BY stage_id", (user_no,)).fetchall()
    conn.close()
    print("[gamegw] stage info: %d cleared stages" % len(clears))
    return {
        "clear_stage_infos": [{"stage_id": s, "stage_mode": m} for s, m in clears],
        "stage_attainment_infos": list(_attainment(user_no).values()),
        "stage_attainment_reward_infos": [],
    }


PROTOCOL_HANDLERS = {
    P_VERSION: version_check,
    P_EVENT_INFO: event_info,
    P_LOGIN: login,
    P_HUB_UID: hub_uid,
    P_HUB_DID: hub_did,
    P_LOAD_USER: load_user,
    P_INVENTORY: inventory,
    P_STAGE_INFO: stage_info,
    P_STAGE_START: stage_start,
    P_STAGE_RESULT: stage_result,
    P_EQUIP_ITEM: equip_item,
    P_HERO_BUY: hero_buy,
    P_HERO_CHANGE: hero_change,
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
