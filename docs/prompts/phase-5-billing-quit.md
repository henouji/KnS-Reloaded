# Prompt — Phase 5: break the billing quit, then verify protocols 51/60

> Paste this into a fresh Claude Code session in the `KnS-Reloaded` repo. It is
> self-contained but assumes the repo, a connected S8, and the memory checkpoint are
> present. Recommended model: Opus — phase B is native reverse engineering where a
> plausible-but-wrong answer is expensive to detect.

---

You are working on **KnS-Reloaded**, a game-preservation project that revives the dead
mobile game *Knights N Squires* 1.4.0 (Com2uS, 2015, pkg
`com.com2us.imhero.normal.freefull.google.global.android.common`) by mocking its
shut-down backend. This is legitimate reverse engineering of an APK the owner holds;
the original servers are permanently offline.

**Read these first, in order, and do not re-derive what they already settle:**

1. The memory checkpoint `kns-checkpoint.md` — current state and every patch.
2. `docs/protocol-gamegw.md` — the game-gateway protocol, fully reversed.

## Where things stand

The mock server answers ActiveUser, Hive guest login, Mercury and the game gateway.
Protocols 51 (game login) and 60 (load user) are **implemented and self-tested
offline**, but have **never run against the real client**, because the game dies
before it ever reaches `/1mhero/`.

That death is the only thing in the way. It is **not** server-related — this was
established on device on 2026-10-21 with three experiments:

- Stalling the `check2.c2s` reply 15s (`KNS_BILLING_DELAY=15`) did not move the death.
- With the mock server **fully stopped**, it dies at the same boot stage.
- `pm clear` then relaunch: identical.

It is also not a crash: nothing in `logcat -b crash`, no tombstone, no Java exception.
It is the engine's own **quit command** —

```
CWrapperKernel$b.a()  ->  activity.finish()
                      ->  CWrapperKernel$b$1  (sleep, System.exit(0))
```

— which is enum `d$b->s`, **ordinal 0x12 = native command id 18**, pushed from native
into the queue that `nativeCheckQueueEvent` drains. It fires ~250ms after
`com.com2us.module.inapp.SelectTarget` puts up its "Checking your billing
information..." dialog.

Already ruled out, do not revisit:

- The `DefaultBilling$3` license patch uses the **right** constant.
  `Java_..._InApp_resultPostLicense`@`0x18a498` confirms `0x64` = SUCCESS, `0x65` =
  fail. It simply is not sufficient.
- `Protection::verify` returning 0. Both callers (`save`@`0x199128`,
  `initialize`@`0x1997e8`) treat non-zero as success, but the original also returns 0
  when its table is empty (tail at `0x1990de`), so the patch mirrors fresh-state
  behaviour.
- The installed APK is not stale. Its `base.apk` was pulled and byte-checked: all
  three `Protection` stubs are `00207047`, both `operator delete` patches are
  `0407`/`01d1`, the redirect is baked in, `hero1m-hub.com2us.net` is gone.

## Phase A — probe the quit (do this first, it is cheap)

Patch `CWrapperKernel$b.a()` in the smali tree to drop the `finish()` + exit-thread
and just `return-void`, rebuild, install, launch. The question you are answering is
narrow: **is the quit spurious, or is the game genuinely unable to continue?**

- Smali tree: `C:\Users\david\AppData\Local\Temp\kns_decode_test\smali`
- Rebuild: apktool build + uber-apk-signer (JRE8); tools in `$TEMP/kns_tools`
- Pipeline order: re-decode pristine → `patch_urls` → `patch_native` → apktool b →
  sign → install. See `docs/build-redirected-apk.md`.
- Install is ~50MB over wireless adb and slow; run it in the background.

If the game carries on past the billing stage, go straight to Phase C. If it hangs,
black-screens, or dies differently, the native side needed that quit — go to Phase B.

## Phase B — find what pushes command 18 (only if Phase A fails)

Hunt for the native site that enqueues command id 18. Useful starting points:

- `InAppCallBack`@`0x16ef39` is the game's own IAP handler.
- `Java_..._InApp_resultPostTarget`@`0x18a4fc` dispatches `0xc8` (ok) / `0xc9` (fail)
  into it; `resultPostLicense`@`0x18a498` dispatches `0x64` / `0x65`.
- `tools/analyze/xref.py <lib> 0xTARGET` finds Thumb BL/BLX call sites and names the
  enclosing symbol.
- `tools/analyze/annot_thumb.py <lib> <symbol|0xaddr> [len]` disassembles with
  pc-relative string refs resolved (it tracks `mov` copies between the `ldr` and the
  `add rX, pc`, which GCC interleaves).

**Trap that will bite you:** GCC Thumb-1 uses `BL` as a long *branch* inside a
function, because LR is already saved on the stack. Capstone reports those as calls.
Any unnamed `BL` to an address inside the same function is a **jump**, not a call —
treating it as a call silently walks you into unrelated code and yields
confident-looking nonsense. This already corrupted one field extraction before it was
caught. `walk_fields.py` handles it correctly; copy its logic rather than rewriting.

Work from the **pristine** lib, extracted from `original/Knights+N+Squires_1.4.0.apk`
— `decoded/kns-apktool-probe/libgame.so` is already URL-patched.

## Phase C — the actual goal: verify protocols 51 and 60

Once the game boots past billing:

1. Start the server: `python -u server/app.py 8080` from the project root.
   `KNS_BREAK_AU=1` forces the direct `/1mhero/` login path if the Hub path stalls.
2. `adb shell am force-stop <pkg>` then
   `adb shell monkey -p <pkg> -c android.intent.category.LAUNCHER 1`.
3. Tap Guest Play (~908,1094 on 2560x1600).
   Screenshot with `adb exec-out screencap -p > work/screen.png`.
4. Watch `work/srv.out` for `[gamegw] protocol=51` and `=60`.

Note: multiple stale mdns entries list the same device, so pin a transport id
(`adb -t <id>`) or adb will refuse with "more than one device".

What to look for:

- `[gamegw] no handler for protocol N` names the next protocol to implement. The case
  table in `docs/protocol-gamegw.md` tells you where to read its fields from.
- If the game reaches a lobby but it draws blank or wrong, the suspects are
  `HERO_PCID` / `fellow_id` / `item_id` in `server/gamegw.py` — they index the
  still-encrypted `dt_*` master data, and the top-of-file constants are meant to be
  varied.
- Open question worth testing: a new user may need `hero_info: []` (to trigger
  character creation) rather than the single hero currently fabricated. Protocol 54
  (`formal_user_info`) may be the creation step.

## Ground rules

- Keep the memory checkpoint current as you go — it is what makes the next session
  cheap.
- Report what actually happened, including failures and anything you skipped. A
  blocker reported plainly is worth more than a hopeful summary.
- Nothing from the previous session is committed yet; branch is still at `f289bb9`.
  See the checkpoint's working-tree section before you change those files.
