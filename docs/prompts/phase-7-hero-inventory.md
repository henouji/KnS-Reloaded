# Phase 7 — hero + inventory data (get past the character popup)

You are working on KnS-Reloaded, a game-preservation project that revives the dead
mobile game Knights N Squires 1.4.0 (Com2uS, 2015, pkg
`com.com2us.imhero.normal.freefull.google.global.android.common`) by mocking its
shut-down backend. This is legitimate reverse engineering of an APK the owner holds;
the original servers are permanently offline.

Read these first, in order, and do not re-derive what they already settle:

1. The memory checkpoint `kns-checkpoint.md` — read the **SESSION 4 HEADLINE** and
   **CURRENT FRONTIER** sections. They hold the full crash chain, every patch, the adb
   survival guide, the build pipeline, and the device state.
2. `docs/protocol-gamegw.md` — the gateway protocol (flat envelope, `errno==0`
   success, missing fields are safe, protocol→case addresses, the 60 field map).

## Where things stand (do not re-establish any of this)

The game boots to the title screen, auto-logs-in as a guest, runs the post-login
protocol burst, and then **draws the character popup `SC_POPUP_CHAR` and SIGSEGVs**:

```
SIGSEGV fault 0x4  DrawUICharInfo+494 (@0x8fa9e: ldr r1,[r0,#4])
  <- Scene_Draw_SC_POPUP_CHAR <- Scene_Process_SC_POPUP_CHAR
```

`r0 = GetItemNodeByUniqueItemID(uid)` returns **NULL** because the fabricated hero has
`hero_item_infos: []`, so its equipped-weapon unique id (hero struct +0xc10) is 0, and
`GetItemNodeByUniqueItemID`@0xf6918 returns NULL for uid 0 / not-found. `DrawUICharInfo`
then derefs `[NULL+4]`. **The draw code assumes every drawn hero has a resolvable
equipped weapon.**

### Already solved / already ruled out — do NOT redo or revisit

- The post-login death is **not** a system-lib C++ throw and **not** the engine QUIT.
  It was `jCheckSHA1` (signing-cert check) calling `exit(0)`; it is patched in
  `tools/patch_native.py` and committed. The `libc++abi … mutex lock failed` line was
  teardown noise. Do not chase it.
- The `fseek(NULL)` resource-load crash is fixed by having the addition files present
  in `<externalFilesDir>/1.4.0/`. They are already `adb push`ed there (1505 files).
  The game's own download pipeline does **not** persist them (broken extract/store);
  do not try to fix the extractor — just keep the files pushed. Direct
  `adb push` into that dir **works** on the debuggable build (old note saying it fails
  is wrong).
- **`KNS_EMPTY_HERO=1` is a dead end** — it SIGSEGVs earlier in `NetworkEvent+7756`
  (`ResponseServer`). The client requires ≥1 hero. Keep EMPTY_HERO off.
- `330`, `501`, `601`, `1000` have **no** parser case — leave them as bare
  `{"protocol": N, "errno": 0}`.

## Your task — make the hero's equipment self-consistent

Goal: get `SC_POPUP_CHAR` to draw without the NULL deref, i.e. the hero must carry a
real equipped weapon whose UNIQUE id resolves through `GetItemNodeByUniqueItemID`.

1. **Derive the field layouts** against the pristine lib (`work/pristine_lib/libgame.so`),
   with plain `python` (not `-I` — capstone is in user site-packages):
   - `python tools/analyze/walk_fields.py work/pristine_lib/libgame.so 0x15bb7c`
     (protocol **61**, inventory — response has `inventory_count`, `item_infos`).
   - `python tools/analyze/annot_thumb.py work/pristine_lib/libgame.so 0x14cdd0 532`
     (`ParsingDataToCharacterInfo` — how `hero_item_infos` populates the hero struct,
     esp. the equipped-weapon slot that ends up at hero+0xc10).
   - `python tools/analyze/annot_thumb.py work/pristine_lib/libgame.so 0x14cca4 196`
     (`ParsingDataToItem` = `{item_no (UNIQUE instance id), item_id (master), value}`).
   The key question to answer from the disasm: **what creates the item nodes that
   `GetItemNodeByUniqueItemID` walks** — protocol 61's `item_infos`, `item_etc_info`,
   or `hero_item_infos` itself? Node fields seen: `+0x04` master id (the field
   DrawUICharInfo reads), `+0x40/+0x44` and `+0x18/+0x1c` id pairs, `+0x78` unique id,
   `+0x8c` next-ptr.

2. **In `server/gamegw.py`:** give `load_user` (protocol 60) hero `hero_item_infos`
   containing at least an equipped weapon, and implement **protocol 61** so the same
   unique id(s) exist as item nodes. The `item_id` (master id) must be one the
   `dt_*` master data knows for the character `HERO_PCID` — if unsure which, read the
   starting-equipment entry for that pcid, or try a known-valid weapon id. Keep the
   flat-envelope convention (fields at root) and remember missing fields are safe.

3. **Also implement 140, 141, 59** while here (140/141 have real cases; 59 = event
   info). Derive with `walk_fields` at the case addresses in `docs/protocol-gamegw.md`.

## Verify on device (fast loop, data already present)

- Build: `java -jar $TEMP/kns_tools/apktool.jar b $TEMP/kns_decode_test -o ...` then
  uber-apk-signer; install `-r --bypass-low-target-sdk-block`. (Only needed if you
  change the APK; a server-only change needs just a restart + relaunch.)
- Server: `KNS_BREAK_AU=1 python -u server/app.py 8080 > work/srv.out 2>&1` (NOT
  EMPTY_HERO). Kill the old listener on 8080 first.
- Relaunch: `adb -s R52TA01GPBR shell am start -n <pkg>/.MainActivity`; the guest is
  saved so it auto-logs-in and reaches the popup in a few seconds.
- A clean run = pid stays alive, no `exited due to signal`, no new tombstone. Pull the
  tombstone/stack for any new SIGSEGV and name the next frontier.

## Ground rules

- Keep `kns-checkpoint.md` current as you go — it is what makes the next session cheap.
- Report what actually happened, including failures and anything skipped. A blocker
  reported plainly beats a hopeful summary; if a hypothesis fails, strike it off.
- `adb` over wireless is flaky. **Pin the serial `adb -s R52TA01GPBR`**, never a
  transport id. An install that fails with an **empty** error means a dialog is on the
  device screen — screenshot before retrying.
- In Git-Bash, prefix adb commands that take a `/data/...` or `/sdcard/...` path with
  `MSYS_NO_PATHCONV=1 MSYS2_ARG_CONV_EXCL='*'` or MSYS rewrites the path and it fails.
- Smali is CRLF; a patcher that normalises to LF silently matches nothing. (Not needed
  for this phase unless you touch smali.)
