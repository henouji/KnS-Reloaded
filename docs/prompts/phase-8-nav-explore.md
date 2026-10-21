# Phase 8 — Navigation exploration & protocol 140/141

## Context

KnS-Reloaded: preserving Knights N Squires 1.4.0 (Com2uS) via a local mock server.
Project root: `E:\Codes\Project\KnS-Reloaded`. Branch: `feat/v0.1_SkeletonApp`.
**Always read `memory/kns-checkpoint.md` first** — it has the full state.

## Where we are

The game now boots completely and renders the main town UI with the LV.1 knight.
No crashes in the current run. Session 6 ended after opening the Shop (no crash).
The game loads from device cache after the first successful run — force-stop →
relaunch reaches main town without hitting the mock server.

Server: `KNS_BREAK_AU=1 python -u server/app.py 8080`
Device serial: `R52TA01GPBR` (Samsung Galaxy Tab S8 gts8, Android 16)

## ADB tap mapping — REQUIRED reading before any adb input tap

Device is 1600×2560 natural portrait in ROTATION_90 (landscape). `input tap` uses
PORTRAIT coordinates even though the display (and screencap) is landscape.

```
# To tap screencap pixel (x_d, y_d):
adb -s R52TA01GPBR shell input tap $(( 1600 - y_d )) $x_d
```

Nav bar (y_d ≈ 1470 in 2560×1600 screencap):

| Button     | x_d  | command                     |
|------------|------|-----------------------------|
| Items      | 183  | `input tap 130 183`         |
| Characters | 548  | `input tap 130 548`         |
| Allies     | 913  | `input tap 130 913`         |
| Altar      | 1280 | `input tap 130 1280`        |
| Shop       | 1645 | `input tap 130 1645`        |
| Arena      | 2010 | `input tap 130 2010`        |
| Dungeons   | 2375 | `input tap 130 2375`        |

Back button (◀ top-left, screencap ~35,35): `input tap 1565 35`

## What to do this session

### Step 1 — Explore nav buttons (no server needed; game is cached)

```sh
# Restart server first
KNS_BREAK_AU=1 python -u server/app.py 8080

# Force-stop + relaunch
adb -s R52TA01GPBR shell am force-stop com.com2us.imhero.normal.freefull.google.global.android.common
adb -s R52TA01GPBR shell am start -n com.com2us.imhero.normal.freefull.google.global.android.common/.MainActivity
# wait ~30s for main town to load, then take screenshot
```

Tap each button in order, screenshot after each, check for:
- New SIGSEGV tombstone (check `adb logcat -d | grep tombstone`)
- New protocol requests in server log
- Interesting UI state

### Step 2 — Derive protocols 140 and 141

These are the only two unimplemented protocols with real cases in JanssonParser.
140 = 0x8C, 141 = 0x8D.

Find their case addresses:
```sh
python - <<'EOF'
import struct
with open("work/pristine_lib/libgame.so","rb") as f:
    data = f.read()
func_start = 0x15a298
func_size  = 31032
func_bytes = data[func_start:func_start+func_size]
for target in (0x8C, 0x8D):
    for i in range(len(func_bytes)-1):
        if struct.unpack_from("<H", func_bytes, i)[0] == target:
            print(f"0x{target:02X} at file offset {hex(func_start+i)}")
            break
EOF
```

Then derive fields:
```sh
python tools/analyze/walk_fields.py work/pristine_lib/libgame.so <case_addr>
```

### Step 3 — Fresh boot with server log (optional)

`pm clear` wipes guest session + downloaded data. After clear, relaunch with the
server running to capture the full proto flow. Data re-downloads in ~2.5 min.

```sh
adb -s R52TA01GPBR shell pm clear com.com2us.imhero.normal.freefull.google.global.android.common
```

## Protocols implemented so far

| proto | handler     | notes                                      |
|-------|-------------|--------------------------------------------|
| 48    | version     | addition file list + 0x44 trailer          |
| 51    | login       | user_no, session_key, sha1_key=0, mercury=0|
| 52    | hub_uid     |                                            |
| 53    | hub_did     |                                            |
| 59    | event_info  | empty array, case @0x15b036               |
| 60    | load_user   | hero with weapon(200k) + 400k item        |
| 61    | inventory   | same two items as proto 60                 |
| 140   | —           | has case, NOT YET DERIVED                  |
| 141   | —           | has case, NOT YET DERIVED                  |

No-case (bare errno=0 is correct): 330, 501, 601, 701, 1000.

## Key files

- `server/gamegw.py` — mock responses (WEAPON_ITEM_NO=1001, ARMOR_ITEM_NO=1002)
- `server/app.py` — HTTP server, addition-file route
- `tools/analyze/annot_thumb.py` — Thumb disassembly (run WITHOUT `-I`)
- `tools/analyze/walk_fields.py` — field deriver for protocol cases
- `work/pristine_lib/libgame.so` — pristine lib (same addresses as installed build)
- `docs/protocol-gamegw.md` — protocol reference
