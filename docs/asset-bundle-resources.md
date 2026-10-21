# Bundling 1.4.0 resources into the APK (durable fix for the broken extractor)

## The problem

On modern Android the client's **download → extract → store** pipeline is broken.
After the game downloads all 1505 addition files (~239 MB), the extraction step
produces nothing usable:

- `/sdcard/Android/data/<pkg>/files/1.4.0/` is **empty**
- `texture.store` is **0 bytes**
- the temp `patch/` dir is consumed and deleted

The extractor allocates a huge buffer and fails (`calloc(1, ~1GB) failed`) — a 2015
32-bit routine that does not survive the modern allocator. At lobby time the loader
does `fopen("<files>/1.4.0/<name>", "rb")` → NULL → `fseek(NULL)` → **SIGABRT**.

We already possess the exact files the extractor is supposed to produce
(`original/<pkg>/files/1.4.0/`, 1505 files / 298 MB), so the fix is to place them
where the game reads them — **without** relying on the broken pipeline.

## The mechanism: the native APK-asset fallback

`C2S_NBCMng_Util_OpenResourceFile` @0x17ca49 opens `<jGetPatchPath>/1.4.0/<name>`
first; **on NULL it falls back to an APK asset**:

```
OpenResourceFile
  -> jGetFileDescriptor (@0x19388c)
  -> jGetFileDescriptorFromAsset(name) (@0x193764)
  -> CResource.getFullPathName(name, EResourcePathType.ASSETS)
  -> AssetManager.openFd(path)            # requires a STORED (uncompressed) entry
```

`getFullPathName(..., ASSETS)` searches these folders (built from locale):
`<lang>_r<country>/game_res/`, `<lang>/game_res/`, and **`common/game_res/`**, with
the filename suffix `CWrapperData.b` appended — which for this game is **`.jpg`**.

So the asset path is **`assets/common/game_res/<name>.jpg`**, stored uncompressed.
This is the exact scheme the game already uses for its 1347 base assets (the
`dt_*.dat.jpg` master data etc.). The `.jpg` suffix is a compression-evasion trick:
`apktool.yml` lists `jpg` under `doNotCompress`, so aapt stores it verbatim, and
`AssetManager.openFd()` (which hands back a raw fd + offset into the APK) works.

## What to bundle

| set | count | action |
|---|---|---|
| `dt_*` data tables | 48 | **already** base assets → leave alone. Their `/1.4.0/` form has a +108-byte download trailer; the base asset is the clean form. |
| addition-only | 1455 | bundle as `common/game_res/<name>.jpg`. These are clean raw resources (`.ogg` = Ogg streams, `_gl.dat` = PNG ending in `IEND`) with no trailer. |

`tools/bundle_resources.py` does exactly this (skips the 48, copies the 1455).

## Build steps

```sh
# tree already carries URL-redirect + native + smali patches for the CORRECT PC IP
# (patch_urls.py <http://PC_IP:8080> ; patch_native.py ; patch_smali_debug.py)
python tools/bundle_resources.py "$TEMP/kns_decode_test"      # stage ~308MB of assets
java -Xmx4g -jar "$TEMP/kns_tools/apktool.jar" b "$TEMP/kns_decode_test" -o "$TEMP/kns_bundle_unsigned.apk"
java -jar "$TEMP/kns_tools/uber-apk-signer.jar" -a "$TEMP/kns_bundle_unsigned.apk" --allowResign -o "$TEMP/kns_bundle_signed"
adb -s <serial> install -r --bypass-low-target-sdk-block \
    "$TEMP/kns_bundle_signed/kns_bundle_unsigned-aligned-debugSigned.apk"
```

Result: ~356 MB APK with 2802 `game_res` assets, all stored (compress_type 0).

## Verified

Full `pm clear` → fresh boot → 239 MB re-download → extraction fails (`/1.4.0/`
stays **empty**) → Guest Play → login burst → **main town renders fully from the
bundled assets**. No adb push, survives a data wipe.

## Notes / follow-ups

- The mock server must still run with **`KNS_BREAK_AU=1`** for fresh boots (a fresh
  boot goes through ActiveUser; answering it "normally" wedges the splash).
- A fresh boot still **re-downloads 239 MB** then discards it. Harmless but slow;
  suppress **protocol 48** server-side to skip it (assets serve regardless).
- After `pm clear`, first launch shows a system permission-review dialog (perms all
  ON) — tap **Continue**, then relaunch (the app does not auto-start after it).
