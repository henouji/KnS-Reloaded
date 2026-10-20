# Track A — capture environment setup (step by step)

Goal: get *Knights N Squires* running under an instrument you can hook with Frida, so
you can capture the real AES key + protocol (Phase 1). This is a **reverse-engineering
lab**, not the final play target — an old/slow ARM environment is exactly right here.

Two paths. **Path 1 (ARM emulator)** needs no hardware. **Path 2 (old phone)** is
faster and easier if you have a 2014–2021 device lying around. Do whichever is less
friction.

---

## Before you start: confirm 32-bit

The APK is `armeabi` (32-bit ARM) only. Any device/emulator you use MUST support it:

```sh
adb shell getprop ro.product.cpu.abilist
```

The output must contain `armeabi-v7a` (or `armeabi`). If it's only `arm64-v8a`, that
target can't run the game — pick another. (This is why the Galaxy Tab S8 / Snapdragon
8 Gen 1 won't work.)

---

## Path 1 — ARM emulator via Android Studio (no hardware)

### 1. Install Android Studio + SDK command-line tools
- Install Android Studio (includes the SDK + emulator).
- Note your SDK path (Settings → Languages & Frameworks → Android SDK), e.g.
  `C:\Users\<you>\AppData\Local\Android\Sdk`. Add `platform-tools` and `emulator` to
  PATH so `adb` and `emulator` work from a terminal.

### 2. Install an AOSP ARM system image, API 21
Use the SDK Manager (GUI: Tools → SDK Manager → "SDK Platforms" → check "Show Package
Details") or the CLI:

```sh
sdkmanager --list | grep "system-images;android-21"
# install the AOSP ARM image (NOT a google_apis / google_apis_playstore image):
sdkmanager "system-images;android-21;default;armeabi-v7a"
```

> Why these choices:
> - **API 21** matches the game's `targetSdk 21`.
> - **`default` (AOSP), not `google_apis_playstore`** — only AOSP images allow
>   `adb root`, which you need to install `frida-server`.
> - **`armeabi-v7a`** runs the native lib *natively* (clean Frida hooks). An
>   `arm64-v8a` API-21 image also runs 32-bit apps and is an alternative.

### 3. Create and launch the AVD

```sh
avdmanager create avd -n kns_arm -k "system-images;android-21;default;armeabi-v7a" -d "pixel"
emulator -avd kns_arm -no-snapshot -writable-system
```

ARM-on-x86 is emulated and slow — give it a few minutes to boot. You only need it alive
long enough for a few login/save round-trips.

### 4. Root + writable system

```sh
adb root          # AOSP images allow this
adb remount       # writable /system (needed by some Frida setups)
adb shell id      # should show uid=0(root)
```

### 5. Install the game

```sh
adb install "original/Knights+N+Squires_1.4.0.apk"
```

If a newer host SDK refuses the old target, add `--bypass-low-target-sdk-block`.

### 6. Install frida-server (match the image arch = arm)
- Find your host Frida version: `frida --version` (install client with
  `pip install --user frida-tools` if needed).
- Download the **matching** `frida-server` for **android-arm** from the Frida GitHub
  releases (same version as the client), unpack it, then:

```sh
adb push frida-server-<ver>-android-arm /data/local/tmp/frida-server
adb shell "chmod 755 /data/local/tmp/frida-server"
adb shell "/data/local/tmp/frida-server &"     # run as root; leave it running
```

Verify from the host: `frida-ps -U` should list processes.

Skip to **"Run the capture"** below.

---

## Path 2 — old physical phone (faster if you have one)

1. Any 2014–2021 Android phone (Snapdragon 4xx/6xx/7xx/8xx up to ~845/855, or
   Exynos/MediaTek of that era) is almost certainly 32-bit-capable. Confirm with the
   `getprop` check above.
2. Enable Developer Options → USB debugging; connect; `adb devices` shows it.
3. **Root it** (method depends on the model — Magisk is the usual route). Root is
   required for `frida-server`. If you can't root, you can repackage the APK with a
   Frida *gadget* instead, but root is far simpler.
4. `adb install "original/Knights+N+Squires_1.4.0.apk"`.
5. Install `frida-server` for **android-arm** (or `android-arm64` if the phone is
   64-bit but still lists `armeabi-v7a`) exactly as in Path 1 step 6.

---

## Point the game at your PC

The game must talk to your capture server instead of the dead `*.com2us.net` hosts.
Pick one (details in `docs/MOCK_SERVER_PLAN.md` §3):

- **Rooted (preferred):** add host redirects on the device so
  `hero1m-hub.com2us.net` and `activeuser.com2us.net` resolve to your PC's LAN IP:
  ```sh
  adb shell "echo '<your-PC-ip> hero1m-hub.com2us.net'  >> /system/etc/hosts"
  adb shell "echo '<your-PC-ip> activeuser.com2us.net'  >> /system/etc/hosts"
  ```
  (emulator can reach the host PC at `10.0.2.2`; a phone uses your PC's LAN IP).
- **Can't edit hosts:** run `python patch_urls.py http://<your-PC-ip>:8080`, rebuild
  with apktool, zipalign, sign, and install that APK instead.

---

## Run the capture

On your PC:

```sh
python tools/capture/log_server.py 8080           # terminal 1: logs requests
```

Then, with the device/emulator up and frida-server running:

```sh
PKG=com.com2us.imhero.normal.freefull.google.global.android.common
frida -U -f $PKG -l tools/frida/hook_crypto.js --no-pause | tee work/crypto-captures.jsonl
```

In a second Frida (or merge the scripts) also run `tools/frida/hook_http.js` to grab
the `aPi` command strings. Launch the game and get to/through the login; the hooks
print the AES key and plaintext↔ciphertext pairs.

## Validate (declares Phase 1 done)

```sh
python server/c2s_crypto.py validate work/crypto-captures.jsonl
```

`0 mismatched` = the crypto is solved. Then hand me `work/crypto-captures.jsonl` and
the `hook_http.js` output and we fill in the real key/mode/signature and move to
Phase 2. See `docs/capture-harness.md` for the troubleshooting notes.
