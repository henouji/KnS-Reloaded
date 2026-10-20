# Capture harness (Phase 0) — how to observe the client

The original servers are dead, so all ground truth comes from **our own running
client**. This sets up a device/emulator, points the game at a host we control, and
captures both the HTTP traffic and the in-process crypto.

> Requires a machine with an Android device/emulator + `frida-tools` + `adb`.
> None of this runs in CI; it's a local RE loop.

## 1. Get the game running

- The APK is **armeabi (32-bit ARM) only** (`targetSdk 21`). Use an **ARM-capable
  emulator** (e.g. an API 19–21 ARM image, or an Android Studio x86 image with ARM
  translation) or a 32-bit-capable physical device.
- Install the APK from `original/`. For Frida, either run `frida-server` on a rooted
  device/emulator, or repackage with a gadget.

## 2. Point the game at our host

Two options (see `docs/MOCK_SERVER_PLAN.md` §3):

- **Proxy / DNS (keeps APK pristine, preferred if rooted):** redirect
  `hero1m-hub.com2us.net`, `activeuser.com2us.net` (and push/mercury hosts) to the
  capture host — via `/etc/hosts`, a local DNS, or an mitmproxy transparent proxy.
- **Patch URLs (needed if unrooted):** run `python patch_urls.py http://<host>:8080`,
  rebuild with apktool, zipalign, sign. Mind the in-place length limit in `libgame.so`.

Then run the Phase-0 logger:

```sh
python tools/capture/log_server.py 8080      # writes work/http-captures.jsonl
```

## 3. Capture the crypto (the important part)

Attach Frida with the crypto hooks while you interact with the game:

```sh
PKG=com.com2us.imhero.normal.freefull.google.global.android.common
frida -U -f $PKG -l tools/frida/hook_crypto.js --no-pause | tee work/crypto-captures.jsonl
# in another shell, or combine scripts:
frida -U -f $PKG -l tools/frida/hook_http.js  --no-pause | tee work/http-trace.log
```

What each hook gives you:
- `hook_crypto.js` → `rijndaelSetup*` **dumps the real AES key**, and
  `C2S_Encryption_Encode/Decode` dump plaintext↔ciphertext with the `mode`. These are
  the pairs that validate `server/c2s_crypto.py`.
- `hook_http.js` → the cleartext request incl. the **`aPi` command string** (at
  `C2S_Network_EncodePacket`) and the parsed `Result` (at `C2S_Network_DecodePacket`).

## 4. Validate the reimplementation

Convert the crypto captures to the `{op,key,input_hex,output_hex}` JSONL the harness
expects (one `aes_encrypt`/`aes_decrypt` record per captured block), then:

```sh
python server/c2s_crypto.py validate work/crypto-captures.jsonl
```

Phase 1 is **done** when this reports `0 mismatched` and you can hand the client an
encrypted response it accepts. At that point the open items in
`docs/crypto-findings.md` (AES key, mode per surface, signature order) are closed and
Phase 2 (boot-to-title) begins.

## Reference
- Static RE tooling: `tools/analyze/` (works with no device — capstone + pyelftools).
- Findings so far: `docs/crypto-findings.md`.
- Field vocabulary for responses: `docs/reference/result-fields.txt`.
