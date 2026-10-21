# Phase 9 — Dungeon combat: enemies don't spawn / nothing happens but side-scrolling

## Context

KnS-Reloaded: preserving Knights N Squires 1.4.0 (Com2uS) via a local mock server.
Project root: `E:\Codes\Project\KnS-Reloaded`. Branch: `feat/v0.1_SkeletonApp`.
**Always read `memory/kns-checkpoint.md` first** — it has the full state, including the
session-7 asset-bundle fix and the KNS_BREAK_AU requirement.

## Where we are (session 7 end)

The game boots to the fully-rendered main town and is durably playable even after a full
data wipe: the 1.4.0 resources are now **bundled into the APK** as
`assets/common/game_res/<name>.jpg`, so the broken extractor no longer matters. See
`docs/asset-bundle-resources.md`.

Installed build: debuggable, URL-redirect → `192.168.68.115:8080`, 356 MB (asset-bundled).
Rebuild from `%TEMP%/kns_decode_test` (+ `tools/bundle_resources.py`). `work/pristine_lib/
libgame.so` matches the installed lib (same addresses).

Server: **`KNS_BREAK_AU=1 python -u server/app.py 8080`** (required for fresh boots).
Device: Samsung Galaxy Tab S8 (gts8, Android 16). USB this session; serial `R52TA01GPBR`
(if `-s R52TA01GPBR` says "not found", run `adb devices` and use whatever it lists —
it may appear as an IP:port over wireless).

## ADB tap mapping — read before any `input tap` (CHANGED from phase-8)

This session `adb shell input tap <x> <y>` used **DIRECT landscape/screencap coords**
(2560×1600), NOT the portrait transform the phase-8 prompt describes. If a tap misses,
get exact bounds and tap the centre as-is:

```sh
adb -s <serial> shell uiautomator dump /sdcard/ui.xml
adb -s <serial> shell cat /sdcard/ui.xml | tr '>' '\n' | grep -i "<label text>"
# bounds="[x1,y1][x2,y2]" -> tap ((x1+x2)/2) ((y1+y2)/2) directly
```

Known: Guest Play ≈ `input tap 900 1094`. After `pm clear`, first launch shows a system
permission dialog (perms all ON) → tap **Continue** (`input tap 2492 1521`), then relaunch.

## The issue to solve

Entering a Dungeon starts the stage, the background **side-scrolls**, but **enemies never
spawn / nothing moves** — no combat happens. The hero exists (LV.1 knight with weapon).

## Hypotheses (most likely first)

1. **A dungeon/stage-entry protocol returns empty**, so no wave/spawn list is handed to
   the client. The combat is client-simulated but driven by stage/wave data. Candidate
   protocols: the ones that fire when a stage starts (watch the server log). These may be
   currently answered with a bare `{errno:0}` when they need a real `Result` payload
   (monster list, wave timings, stage config).
2. **Master-data stage/monster tables are present but the server tells the client stage 0
   is empty.** `dt_stage_pkg_140.dat`, `dt_monster_lvup_140.dat`, `dt_st_*` are bundled
   assets now, so the client HAS them — the gap is likely the per-run server response, not
   the data files.
3. **The hero's stats/skills are degenerate** (our fabricated proto-60 hero) so it can't
   act and the stage never advances past spawn — but enemies also not appearing points
   more at #1.

## What to do this session

### Step 1 — Capture the dungeon-entry protocol flow

```sh
# server running with KNS_BREAK_AU=1; mark the log, enter a dungeon, read new lines
wc -l < work/srv.out                      # note the line number N
# in-game: tap Dungeons, pick the first stage, start it
tail -n +N work/srv.out | grep -E "protocol=|POST|GET"
```

Identify every protocol that fires on stage entry/start. For each one currently answered
with bare `errno=0`, check whether it has a REAL case in `JanssonParser` (meaning the
client expects a payload):

```sh
# JanssonParser dispatch fn: 0x15a298, size 31032. Scan for the protocol id (little-endian u16).
python - <<'EOF'
import struct
d=open("work/pristine_lib/libgame.so","rb").read()
s,n=0x15a298,31032; b=d[s:s+n]
for pid in (<ids seen on stage entry>):
    for i in range(len(b)-1):
        if struct.unpack_from("<H",b,i)[0]==pid:
            print(f"0x{pid:02X}({pid}) case @ {hex(s+i)}"); break
    else: print(f"{pid}: NO case (bare errno=0 is correct)")
EOF
```

### Step 2 — Derive the fields of the stage/battle protocol(s)

```sh
python tools/analyze/walk_fields.py work/pristine_lib/libgame.so <case_addr>
```

Build the response in `server/gamegw.py` (follow the existing proto-60/61 handlers as the
model). The monster/wave values come from the `dt_stage_*` / `dt_monster_*` master data —
decode them if needed with `tools/analyze/decrypt_dt.py` (note: the `.dat.jpg` master
format is a 12-byte header `[BE32 size][LE 0x9000][0]` + AES payload; see
`docs/data-format.md`).

### Step 3 — Trace the client's spawn path (if the protocol flow looks complete)

If no server response is missing, the spawn is purely client-side and something in the
stage init is failing silently. Trace from the stage/battle scene init:

```sh
# find battle/stage/spawn symbols
python - <<'EOF'
from elftools.elf.elffile import ELFFile
e=ELFFile(open("work/pristine_lib/libgame.so","rb"))
for sec in e.iter_sections():
    if sec.name in (".dynsym",".symtab"):
        for s in sec.iter_symbols():
            if any(k in s.name for k in ("Stage","Battle","Spawn","Monster","Wave","Dungeon","SC_BATTLE","Enemy")):
                print(hex(s['st_value']), s.name)
EOF
python tools/analyze/annot_thumb.py work/pristine_lib/libgame.so <addr> <len>   # run WITHOUT -I
```

Check logcat during the stuck stage for KNSPROBE cmds, native prints, and any silent
errors:
```sh
adb -s <serial> logcat -d --pid $(adb -s <serial> shell pidof <pkg>) | grep -iE "stage|battle|spawn|monster|KNSPROBE|C2S|error"
```

## Protocols implemented so far

| proto | handler    | notes                                   |
|-------|------------|-----------------------------------------|
| 48    | version    | addition list + 0x44 trailer            |
| 51    | login      | user_no, session_key, sha1_key=0        |
| 52/53 | hub uid/did|                                         |
| 59    | event_info | empty array, case @0x15b036             |
| 60    | load_user  | hero w/ weapon(200k)+armor(400k)        |
| 61    | inventory  | same two items as proto 60              |
| 140/141 | —        | have cases, NOT derived (may matter here)|

No-case (bare errno=0 is correct): 330, 501, 601, 701, 1000.
**Stage/battle protocols: unknown — discover them in Step 1.**

## Key files

- `server/gamegw.py` — mock responses; `server/app.py` — HTTP server/routes
- `tools/analyze/{annot_thumb,walk_fields,xref}.py` — RE tools (run WITHOUT `-I`)
- `tools/analyze/decrypt_dt.py` — master-data decryptor; `docs/data-format.md`
- `work/pristine_lib/libgame.so` — pristine lib (installed-build addresses)
- `docs/protocol-gamegw.md` — protocol reference
- `docs/asset-bundle-resources.md` — the session-7 resource-bundle fix
