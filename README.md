# KnS-Reloaded

Reviving *Knights N Squires* 1.4.0 (Com2uS, Android) after official server shutdown.
The game's every Com2uS backend is replaced by a local Python mock server; a patched
APK redirects all traffic to your PC on the LAN.

## Prerequisites

| Tool | Where |
|---|---|
| JRE 8+ | `java` on PATH |
| apktool | `%TEMP%\kns_tools\apktool.jar` |
| uber-apk-signer | `%TEMP%\kns_tools\uber-apk-signer.jar` |
| platform-tools (adb) | `%USERPROFILE%\platform-tools\adb.exe` |
| Python 3 + pycryptodome | `pip install pycryptodome` |

The tools are kept in `%TEMP%\kns_tools\` — they survive reboots but are lost on a
full OS reinstall. Re-download them if missing:

- apktool: https://apktool.org (grab the `.jar`)
- uber-apk-signer: https://github.com/patrickfav/uber-apk-signer/releases

---

## Rebuilding the APK (required when the server IP changes)

The IP address of your PC is **baked into the APK** during the build step. Any time
your PC gets a new LAN IP (DHCP lease change, new Wi-Fi network, etc.) you must
rebuild and reinstall the APK.

### 1 — Find your current PC IP

```powershell
ipconfig | findstr "IPv4"
```

Note the address shown (e.g. `192.168.68.115`). The S8 and PC must be on the same
Wi-Fi network.

### 2 — Fresh decode + patch + build

Run all four steps from the **repo root** in Git Bash:

```bash
TEMP_MSYS=$(cmd //c echo %TEMP% | tr -d '\r')
PRISTINE="E:/Codes/Project/KnS-Reloaded/original/Knights+N+Squires_1.4.0.apk"
DECODED="$TEMP_MSYS/kns_decode_fresh"
NEW_URL="http://192.168.68.115:8080"   # <-- update this to your current IP

# 1. decode pristine APK
java -jar "$TEMP_MSYS/kns_tools/apktool.jar" d -f "$PRISTINE" -o "$DECODED"

# 2. redirect all com2us hosts → your mock server
python patch_urls.py "$NEW_URL" "$DECODED"

# 3. apply native patches (anti-cheat, kill PLT, scudo-free fix, jCheckSHA1)
python tools/patch_native.py "$DECODED"

# 4. apply smali debug probes + GetFilePath cache
python tools/patch_smali_debug.py "$DECODED"
```

> **Why a fresh decode?** `patch_urls.py` replaces `*.com2us.com`/`.net` host strings.
> Once patched, those strings become your old IP and the patcher can't find them again.
> Always start from the pristine APK when the IP changes.

### 3 — Rebuild and sign

```bash
TEMP_MSYS=$(cmd //c echo %TEMP% | tr -d '\r')
DECODED="$TEMP_MSYS/kns_decode_fresh"

java -jar "$TEMP_MSYS/kns_tools/apktool.jar" b "$DECODED" \
     -o "$TEMP_MSYS/kns_probe_unsigned.apk"

java -jar "$TEMP_MSYS/kns_tools/uber-apk-signer.jar" \
     -a "$TEMP_MSYS/kns_probe_unsigned.apk" \
     --allowResign \
     -o "$TEMP_MSYS/kns_probe_signed"
```

Build takes ~40 s, signing ~2 s.

### 4 — Install on the S8

Connect via wireless ADB first (see **ADB tips** below), then:

```bash
TEMP_MSYS=$(cmd //c echo %TEMP% | tr -d '\r')
MSYS_NO_PATHCONV=1 "$USERPROFILE/platform-tools/adb.exe" \
  -s R52TA01GPBR install -r --bypass-low-target-sdk-block \
  "$TEMP_MSYS/kns_probe_signed/kns_probe_unsigned-aligned-debugSigned.apk"
```

Install takes ~3 min over wireless ADB. If it fails with a blank error message a
dialog is blocking the screen — take a screenshot first (`adb exec-out screencap -p >
screen.png`), then dismiss the dialog on the device.

---

## Running the mock server

```bash
KNS_BREAK_AU=1 python -u server/app.py 8080 > work/srv.out 2>&1
```

Kill any stale listener first:

```powershell
Get-NetTCPConnection -LocalPort 8080 | Select-Object -ExpandProperty OwningProcess | ForEach-Object { Stop-Process -Id $_ -Force }
```

`KNS_BREAK_AU=1` is **required** — without it the boot stalls at the title art
(root cause not yet diagnosed). Other knobs (all default off):

| Env var | Effect |
|---|---|
| `KNS_BREAK_AU=1` | Skip ActiveUser hub, go straight to game gateway |
| `KNS_GW_DELAY=0.2` | Add 200 ms latency to gateway responses |
| `KNS_EMPTY_HERO=1` | Send empty hero list (causes earlier crash — don't use) |
| `KNS_MUTE=1` | Disable BGM / SFX in game-data response |

---

## Boot flow (session 6 — stable)

```
boot → title → auto-login (guest) → proto 51 → 60 → 61 → 330 → 501/601
     → 140/141 → 59 → TEXTREL dialog (2× ENTER) → lobby "Tap!" → tap
     → 501 → 59 → 701 (repeat) → main town UI renders
```

The game loads fully from cache after the first run. Force-stop + relaunch reaches the
main town with zero server requests.

---

## ADB tips

- **Always pin the serial** `R52TA01GPBR` — transport IDs are renumbered on every
  reconnect, so `-t 1` breaks mid-session.
- Connection drops every few minutes. Recover:
  ```bash
  "$USERPROFILE/platform-tools/adb.exe" mdns services
  "$USERPROFILE/platform-tools/adb.exe" connect 192.168.68.118:<port>
  ```
  Tick **"Always allow on this network"** in the wireless-debugging dialog to prevent
  future drops.
- On Git Bash, prefix any command with an `/sdcard/` or `/data/` path with
  `MSYS_NO_PATHCONV=1 MSYS2_ARG_CONV_EXCL='*'` — otherwise MSYS rewrites the path to
  `C:/Program Files/Git/...` and the command silently fails.

---

## Patches in the APK

| # | Patch | How applied |
|---|---|---|
| 1 | URL redirect — all `*.com2us.com`/`.net` → mock server | `patch_urls.py` |
| 2 | Anti-cheat — `isRunningMemoryHack`, `isRooted`, `verify` → return 0 | `patch_native.py` |
| 3 | Scudo-safe delete — skip free() for 8-aligned ptrs (Android 11+ compat) | `patch_native.py` |
| 4 | `kill` PLT neutered @0x45b84 — stops the self-SIGKILL boot wall | `patch_native.py` |
| 5 | `jCheckSHA1` cert check stubbed @0x4767c — stops post-login `exit(0)` | `patch_native.py` |
| 6 | License forced SUCCESS — `DefaultBilling$3.smali` | `patch_smali_debug.py` |
| 7 | `GetFilePath()` cached — kills thousands of binder calls per file op | `patch_smali_debug.py` |
| 8 | Debug probes — `KNSPROBE: cmd ordinal=N` before dispatch | `patch_smali_debug.py` |
| 9 | `android:debuggable="true"` in manifest | `patch_smali_debug.py` |

---

## Project layout

```
original/          pristine APK + game files (do not modify)
server/            mock server (app.py, gamegw.py, activeuser.py, c2s_crypto.py)
tools/             patch scripts + RE analysis tools
  patch_urls.py    (at repo root — redirects all com2us hosts)
  patch_native.py  binary patches to libgame.so
  patch_smali_debug.py  smali patches (idempotent)
  analyze/         RE scripts (xref.py, annot_thumb.py, walk_fields.py)
docs/              protocol notes, RE findings, build guides
work/              server logs, request captures, screenshots (gitignored)
```

---

## Quick reference

| Task | Command |
|---|---|
| Find PC IP | `ipconfig \| findstr IPv4` |
| Kill port 8080 | `Get-NetTCPConnection -LocalPort 8080 \| ...` (see above) |
| Start server | `KNS_BREAK_AU=1 python -u server/app.py 8080` |
| Screenshot S8 | `adb -s R52TA01GPBR exec-out screencap -p > work/screen.png` |
| Tap nav button | `adb -s R52TA01GPBR shell input tap <X> <Y>` (portrait coords) |
| Force-stop game | `adb -s R52TA01GPBR shell am force-stop com.com2us.imhero.normal.freefull.google.global.android.common` |
| Push 1.4.0 data | `MSYS_NO_PATHCONV=1 adb -s R52TA01GPBR push original/com.com2us.imhero.normal.freefull.google.global.android.common/files/1.4.0/. /sdcard/Android/data/com.com2us.imhero.normal.freefull.google.global.android.common/files/1.4.0/` |
