# Phase 10 — Character select, potion drops, and saving discovered data in the database

## Context

KnS-Reloaded: preserving Knights N Squires 1.4.0 (Com2uS) via a local mock server.
Project root: `E:\Codes\Project\KnS-Reloaded`. Branch: `feat/v0.1_SkeletonApp`
(latest commit `098f9e5`, not pushed).
**Read `memory/kns-checkpoint.md` first** (sessions 7-8 sections), then
`docs/protocol-gamegw.md` (protocol 71/72 and "Items, drops and equipping" sections).

## Where we are (end of session 8)

The dungeon loop works end to end on the device and persists:
enter dungeon (protocol 71) → fight (monster stat rows) → result screen (72) → gold and item
rewards credited → items appear in the inventory with stats → equip (protocol 80) survives a
restart. Gold starts at 99,999 and gems at 9,999 (sent as `item_etc_info` rows, ids
1900008/1900009 — NOT in `user_info`).

Server: **`KNS_BREAK_AU=1 python -u server/app.py 8080`** (required for fresh boots).
SQLite: `work/kns.sqlite` — tables `gameuser`, `master_item` (seeded from
`server/seed/master_items.csv`), `item`, `hero_equip`.
Device: Galaxy Tab S8, serial `R52TA01GPBR`, debuggable build, landscape 2560×1600.
`work/pristine_lib/libgame.so` matches the installed lib (addresses in notes are valid).

## Working rules (the user asked for these)

1. **The user debugs with you. Do NOT tap the device on your own.** Give the user numbered
   steps ("tap X, then tell me Y"). You may take passive screenshots (`adb exec-out screencap -p`)
   and read logs/memory. Blind taps in session 8 hit the Characters screen, sent an unhandled
   protocol 201 and crashed the game.
2. **Never run tests against `work/kns.sqlite`.** Set `KNS_DB=<scratch path>`. A test cleanup
   once deleted the user's real items.
3. **Save every value you discover in the database, not in code.** Item ids, hero data,
   monster stats, potion ids, prices: dump them into SQLite tables seeded from a CSV in
   `server/seed/` (pattern: `tools/dump_master_items.py` → `server/seed/master_items.csv` →
   `master_item` table loaded by `_db()` in `server/gamegw.py`). The server then serves them
   from the DB.
4. Restart the server after every `gamegw.py` change; the game does not need relaunching
   unless the login data (60/61) changed.
5. Notify the user at a model-change point: analysis/diagnosis (reading assembly, deciding
   what a protocol needs) suits Opus 5.5; mechanical work (writing handlers, seed tables,
   docs) suits Sonnet 5.5.

## Tasks, in order

### 1. Potion drops: set `CommoditiesItemProb` to 20

`MONSTER_STATS` in `server/gamegw.py` currently sends `CommoditiesItemProb: 0` (it was 50 for
one test, then reverted; the user confirmed it is the **potion** drop chance and wants **20**).
- Set it to 20 and find out what a potion drop needs: the potion item ids, and what the client
  expects in `reward_items` / `item_infos` / `update_item_etc_info` for a consumable.
  Consumables travel as `item_etc_info`-style `{item_id, count}` rows, not equipment items.
- Find the potion item ids from the running game and **store them in a DB table** (the
  master data is decrypted in memory; see "Reading game memory" below).

### 2. Character select

Today the Characters screen shows 4 heroes; only the first is unlocked, the others have a lock
and a gem price (50 gems shown for "Seira the Knight"). Tapping a locked hero sent
**protocol 201** `{user_no, hero_pcid: 3}`, which we answer with a bare `errno=0`, and the game
crashed (`SIGSEGV`, fault address 0, around `01:09:43` on 2026-10-22; capture the backtrace
with `adb logcat -d -b crash`).
- Find the case for protocol 201 (`tools/analyze/xref.py` for `Scene_PointerReleaseEvent_SC_POPUP_STORECHAR`
  uses opcode 201 at +0x594; the response case is in `JanssonParser` @0x15a298, use
  `findcase.py`-style search for `cmp r3,#0xc9`) and derive its response fields with
  `tools/analyze/walk_fields.py`.
- Implement unlocking a hero: deduct the gem price from the balance, record the hero as owned,
  return what the client parses. Persist owned heroes in the DB.
- Make protocol 60's `hero_info[]` list every owned hero, each with its own equipment
  (`hero_equip` is already keyed by `hero_no`; `STARTER_ITEMS` / `HERO_NO` in `gamegw.py` assume
  one hero) and its `hero_pcid`.
- Switching the active hero: find which protocol/field carries it (`user_hero_pcid` in
  `user_info` is the likely field).
- Dump the hero master data (names, base stats, price) from memory into a DB table.

### 3. Persist the currency balance

`_BALANCE` (gold, gems) lives in server memory and resets to 99,999 / 9,999 on restart. Move it
into the database (a column on `gameuser` or a `wallet` table), credit stage rewards there, and
deduct hero prices from it.

### 4. Remaining smaller items

- Result screen header shows "-1": it is the player-name string (gameInfo+0xA08), initialised
  from the Hub login. Find where it should come from and send a proper nickname.
- Experience gain is not implemented (`user_exp` stays 0; the 72 reply has no exp fields).
- Replace the guessed `MONSTER_STATS` with real monster rows if they can be dumped from memory
  (`GetMonsterDataByStage` slots; unit of `MoveSpeed` etc. is unconfirmed) and store them in a
  `master_monster` table.
- Suppress protocol 48 so fresh boots skip the discarded 239 MB re-download.
- Fix the stale docstring note in `gamegw.py` saying protocols 140/141 have no case (they do).

### Already resolved — no work needed

- **Unequip:** the game does not offer it (user confirmed).
- **Chest-opening screen:** it is present in the game (user confirmed). Earlier suspicion that
  it was skipped was wrong; item drops come from chests and the result screen lists them.

## Reading game memory (live, read-only)

The build is debuggable, so memory can be read as the app's uid:

```sh
P=com.com2us.imhero.normal.freefull.google.global.android.common
PID=$(adb shell pidof $P)
adb shell run-as $P cat /proc/$PID/maps | grep "r-xp 00000000.*libgame"   # libgame load base (changes per launch)
adb exec-out run-as $P dd if=/proc/$PID/mem bs=4096 skip=<addr/4096> count=<pages>
```

- `gameInfo` = libgame base + `0x61f730` (e.g. hero weapon uid at +0xC10, 300k slot at +0xC18,
  armor at +0xC20; gold at +0xAEC, gems at +0xAF0).
- Master tables are decrypted in memory. Equipment rows are 0xA8 bytes with the item id as the
  first int; `tools/dump_master_items.py` finds them by scanning writable memory for each
  category's first id and checking the next row. Do the same for other tables.
- The app must be in the lobby or a stage for the data to be loaded.

## Key protocol facts learned in session 8

- Stage start **71** reply: `user_info` + `update_item_etc_info` (must repeat on every stage
  reply or the client zeroes the balances), `stage_info` with `monster_info_<stage_id>` and
  `monster_info_<stage_id+1>`, `drop_item_list` {"1","4"}, `drop_count` (must be >0 for gold),
  `drop_gold_max`, `verify_info`.
- Stage result **72**: the client reports `reward_gold` and `reward_items` (a list of the
  `item_no` ints it picked up); the reply carries `item_infos` (claimed items),
  `user_info`, `update_item_etc_info`.
- Equip **80** `{user_no, hero_no, item_no}`: the reply must echo `hero_no` and `item_no`.
- The result screen crashes unless the hero has an item in the 300000-399999 range equipped
  (`SHIELD_ITEM_*`); every equipment range slot must resolve to an inventory node.
- Items need per-instance stats (`item_attack`, `item_defence`, `item_hp`, `item_upgrade`).
- `ParsingDataToUserGoods` resets gold/gems to -1 before refilling from `item_etc_info`; gold is
  item id **1900008**, gems **1900009**.

## ADB tap coordinates (direct landscape coords, for telling the user where things are)

Title screen tap `1280 1000`; town Characters ≈ `510 1510`, Items ≈ `198 1510`,
Dungeons `2304 1472`; Explore screen Enter `1869 1308`; in-stage attack `2410 1420`;
top-left back arrow `58 58`. Give the user screen *names*, not just coordinates.

## Key files

`server/gamegw.py` (all handlers), `server/seed/master_items.csv`,
`tools/dump_master_items.py`, `tools/analyze/{walk_fields,annot_thumb,xref}.py`
(run with plain `python`; `annot_thumb.py` takes a decimal length),
`docs/protocol-gamegw.md`, `memory/kns-checkpoint.md`.
