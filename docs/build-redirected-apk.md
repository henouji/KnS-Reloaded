# Build a redirected APK (test the mock on your S8)

Goal: produce a signed KnS APK whose every Com2uS host points at your mock server,
install it on the Galaxy Tab S8 (which runs the game), and see it get **past the
"service discontinued" gate** — that popup comes from the still-live
`m.mercury.com2us.com`, so once the app talks to our mock (which returns "no notice"),
it should proceed to the title/login.

No root needed: redirection is baked into the APK (`patch_urls.py`), not the device.

## What gets redirected

`patch_urls.py <base_url> <decoded_dir>` rewrites **all** `*.com2us.com` / `*.com2us.net`
hosts to `base_url`, in both the smali (Mercury, Hub, Wall, member, ActiveUser) and
`libgame.so` (game gateway, native URLs). The app's package name and non-com2us hosts
(Google, Facebook) are left untouched.

`base_url` = where the S8 can reach your PC, e.g. `http://192.168.1.50:8080`
(your PC's LAN IP + the mock port). Find your PC IP with `ipconfig`. The S8 and PC
must be on the same Wi-Fi. **Keep it short** — the native-lib URLs are length-limited;
a LAN IP fits, a long public URL may not (the patcher warns and skips any that don't).

## Build path A — GitHub Actions (no local tools) — recommended

You have no local apktool/build-tools, so let CI build it:

1. Push this repo to GitHub.
2. Actions tab → **Build Redirected APK** → **Run workflow** → set `server_url` to your
   LAN URL (e.g. `http://192.168.1.50:8080`) → Run.
3. Download the **KnS-redirected** artifact (a signed APK) from the finished run.

The workflow re-decodes the pristine APK, runs `patch_urls.py`, rebuilds, and signs.

## Build path B — local

Needs `apktool`, `zipalign` + `apksigner` (Android SDK build-tools), and `keytool`
(a full JDK) on PATH. Then:

```sh
tools/build_patched_apk.sh http://192.168.1.50:8080
# -> build/KnS-redirected.apk
```

Install hints if you go local:
- apktool: https://apktool.org (a `.jar` + wrapper), or `choco install apktool`.
- zipalign/apksigner: Android SDK `build-tools` (Android Studio SDK Manager, or
  `cmdline-tools`).
- keytool: a JDK (you have `java`; make sure it's a JDK so `keytool` is present).

## Install on the S8

```sh
adb install -r build/KnS-redirected.apk
# if Android refuses the old target sdk:
adb install -r --bypass-low-target-sdk-block build/KnS-redirected.apk
```

(Uninstall the original first if the signature clashes: `adb uninstall
com.com2us.imhero.normal.freefull.google.global.android.common`.)

## Run the mock + watch

On your PC, on the IP/port you baked in:

```sh
python server/app.py 8080        # writes work/server.log and work/kns.sqlite
```

Launch the game on the S8. Watch the server console — **every request the game makes
is logged** (method, path, body length). This is your HTTP-level capture, no root
needed: you'll see exactly which endpoints it hits and in what order.

## What to expect

- **Best case:** the discontinuation popup is gone and you reach the title/login — the
  Mercury redirect worked. That's Phase 2 cleared on real hardware.
- **Still stuck / new error:** the server log tells us which endpoint it's unhappy
  with. The response *shapes* are first guesses (`TODO(capture)` in `server/app.py`),
  so we iterate them against what the log shows. Send me the log.
- **Login/gameplay:** will not work yet — the `/1mhero/` gateway needs the AES key
  (Track A capture or static reversal). Getting to the title screen is the milestone
  for now.

## Notes

- Always build from a **fresh** `decoded/kns-clean` (the scripts re-decode the pristine
  APK). The old `decoded/kns-apktool-probe` tree is already partially patched — don't
  build from it.
- The S8 is unrooted, so Frida's native AES-key hook won't run on it; this redirect
  path is for HTTP capture + reaching the title screen, which don't need the key.
