# Phase 11 — Chest-opening regression, then polish

## Model

**Start this session on Opus 5.5** (`/model` → Opus 5.5 before pasting this prompt): task 1 is
a diagnosis (reading the result/chest code in `libgame.so`, comparing replies).
**Switch to Sonnet 5.5** (`/model` → Sonnet 5.5) once the cause is known and only mechanical
work is left (changing a handler, seed tables, docs). Tell the user at that point.

## Context

KnS-Reloaded: preserving Knights N Squires 1.4.0 (Com2uS) via a local mock server.
Project root: `E:\Codes\Project\KnS-Reloaded`. Branch: `feat/v0.1_SkeletonApp` (not pushed).
**Read `memory/kns-checkpoint.md` first** (session 9 section), then `docs/protocol-gamegw.md`
(sections from "Heroes, potions and the wallet" onwards).

## Where we are (end of session 9)

Device-verified: hero buy (201) / switch (202), gold, gems and active hero persisted, potion
drops (CommoditiesItemProb 20), nickname on the result screen (user_hub_id), exp and level-ups
(72 user_info), empty protocol 48 list, stage progress persisted (protocol 70 + `stage_clear`).

Server: **`KNS_BREAK_AU=1 python -u server/app.py 8080`**. SQLite `work/kns.sqlite`: `gameuser`
(gold, cash, hero_pcid, level, exp), `user_hero`, `item`, `hero_equip`, `stage_clear`, and master
tables `master_item`, `master_hero`, `master_etc_item`, `master_level`, `master_stage`,
`master_stage_area` (seeded from `server/seed/*.csv`, dumped by `tools/dump_master_items.py` /
`tools/dump_master_tables.py`). Backup from before session 9: `work/kns.sqlite.bak-phase10`.
Device: Galaxy Tab S8, serial `R52TA01GPBR`, debuggable build.

## Working rules (the user asked for these)

1. **The user debugs with you. Do NOT tap the device yourself.** Give numbered steps. Passive
   screenshots (`adb exec-out screencap -p`), logs and memory reads are fine.
2. **Never run tests against `work/kns.sqlite`.** Copy it to the scratchpad and set `KNS_DB`.
3. **Save every discovered value in the database** (seed CSV in `server/seed/` + table loaded
   by `_db()`), not in code.
4. Restart the server after every `gamegw.py` change.
5. Announce model-change points (analysis → Opus 5.5, mechanical → Sonnet 5.5).
6. Commit only when the user asks.

## Tasks, in order

### 1. Chest opening is bugged again (regression)

The user reported, right after the stage-progress fix: "a stage is cleared and persisted but
the chest opening is bugged again". **First ask the user what exactly happens** (chest screen
skipped? chest shows no items? freeze/crash? wrong items?) and capture
`adb logcat -d -b crash` if it crashed. Then compare with session 8, when it worked.

Changes to the 72 reply since the chest screen last worked (suspects, most likely first):
- `stage_attainment_info` was added to the 72 reply (one area record; post-handler
  Net_SetStageAreaInfo). Area rewards (`stage_attainment_reward_infos` in 70) are sent empty —
  an area-reward chest may now trigger with no reward data.
- Protocol 70 now returns `clear_stage_infos` / `stage_attainment_infos` (before: bare reply).
- `user_info` in 72 now carries real `user_level` / `user_exp` / `user_max_exp` (level-up popup
  may run before or instead of the chest screen).
- `user_hub_id` now carries the nickname.
Last 72 in `work/srv22.out`: stage 3000003, reward_items [2129, 2130] were claimed and returned in
`item_infos` — so the item side of the reply looked normal.
Quick bisect: comment out `stage_attainment_info` in `stage_result()` (restart server, user
replays a stage) before reading assembly. Relevant code: DrawResult@0xe7790, DrawStageClear@0xe9548,
CheckAreaClear@0xe7350, the 72 case @0x15fcd0 and its NetworkEvent post-handler
(Net_SetStageAreaInfo call @0x154d98).

### 2. Smaller open items

- Confirm the stage exp column (`STAGE_EXP_COLUMN = "c87"` in `gamegw.py`): ask the user what
  exp the result screen / stage info shows and compare with `master_stage`.
- Area rewards: track claimed `stage_attainment_reward_infos` (find the claim protocol).
- Unhandled protocols seen: 121, 122 (lobby), 140, 141 (141 = daily quests:
  `daily_quest_infos[{quest_id, quest_count, complete}]`), 501, 601, 701.
- `MONSTER_STATS` stays hand-tuned: the client has no dungeon-monster master table.

## Reading game memory

`tools/dump_master_tables.py` has a reusable `Mem` class (pid, libgame base, `read`, `u32`). The
master-data owner pointer is the GOT slot libgame+0x1fd2c4; stage packages at owner+0x2228.
gameInfo = libgame base + 0x61f730 (gold +0xAEC, gems +0xAF0, main hero +0xB90, player name
+0xA08, level +0xACC, exp +0xAE0).
