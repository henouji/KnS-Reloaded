# Phase 6 — the post-login lobby crash

You are working on KnS-Reloaded, a game-preservation project that revives the dead
mobile game Knights N Squires 1.4.0 (Com2uS, 2015, pkg
`com.com2us.imhero.normal.freefull.google.global.android.common`) by mocking its
shut-down backend. This is legitimate reverse engineering of an APK the owner holds;
the original servers are permanently offline.

Read these first, in order, and do not re-derive what they already settle:

1. The memory checkpoint `kns-checkpoint.md` — current state, every patch, the adb
   survival guide, and the build pipeline.
2. `docs/protocol-gamegw.md` — the game-gateway protocol, including protocol 48 and
   the 0x44 addition-file trailer.
3. `docs/anti-tamper-selfkill.md` — how the boot wall was found and killed.

## Where things stand

The game now boots all the way to the **title screen with "Guest Play" / "Log In"**
and sits there stable indefinitely. It downloads all 1505 addition files from the mock
server, extracts them, and draws real UI with real art. Protocols 51 and 60 are
verified against the real client.

Tapping Guest Play runs `51 -> 60 -> 61 -> 330 -> 601 -> 141 -> 501 -> 140 -> 141 ->
140` and then the process dies:

```
E libc++abi: terminating with uncaught exception of type
            NSt3__112system_errorE: mutex lock failed: Device or resource busy
I Zygote  : Process <pid> exited cleanly (0)
```

The `libc++abi` line is **intermittent** in logcat (it races the process death); the
`exited cleanly (0)` is always present. No tombstone, no Java exception, no engine
QUIT command.

Note: on later boots the guest account is saved, so the game auto-logs-in and dies
~1s after `RUNNING` without ever showing the menu. `pm clear` is the only way back to
the title menu; it also wipes the addition data, but that re-downloads from the mock
in ~2.5 min.

## Already established — do not re-derive or re-test

- **The crash is not in the game's own code.** `NSt3__1` (the libc++ namespace) and
  the string `mutex lock failed` appear in **none** of `libgame.so`,
  `libCom2uSAndroid.so` or `libc2scommon.so` — those are STLport builds
  (`_ZNSt4priv...`, `_ZNSs...`). A system/vendor library loaded into the process
  throws it.
- **The trigger is lobby entry**, not the title screen — the game sits on the title
  screen for minutes without crashing.
- Four fixes were tried and **none** of them changed the outcome:
  `KNS_GW_DELAY=0.2` (artificial gateway latency), `KNS_EMPTY_HERO=1`
  (`hero_info: []` to force character creation), `KNS_MUTE=1` (`bgm_on` /
  `sound_effect_on` = 0), and caching `GetFilePath()` to kill thousands of binder
  calls per boot. All four knobs are still in the code, defaulted off.
- The engine QUIT command (`d$b->s`, ordinal 18) is **not** involved in any death in
  this project. That was disproven with a live Java trace. Do not revisit it.

## Phase A — commit first (do this before anything else)

Nothing from the last two sessions is committed; the branch is still at `f289bb9`,
and the decoded smali/lib tree lives in `%TEMP%\kns_decode_test`, which Windows can
clear at any time. The patches are reproducible from `tools/patch_urls.py`,
`tools/patch_native.py` and `tools/patch_smali_debug.py` — but only if those are
committed. See the checkpoint's working-tree section.

## Phase B — identify the throwing library (the main line)

Four blind guesses have now failed, each costing a build/install cycle. Stop guessing
and get the library's name.

Set `android:debuggable="true"` in `AndroidManifest.xml` in the decoded tree (one
attribute, one rebuild). That unlocks `run-as <pkg>`, and then:

1. **`run-as <pkg> cat /proc/<pid>/maps`** while the game sits on the title screen
   lists every loaded library. Grep each one for `NSt3__1` / `mutex lock failed`.
   That names the thrower in minutes, with no debugger. **Do this first.**
2. `run-as` also makes the app's private internal storage readable — that is where
   the extracted 298MB of addition data ends up, and it is currently a blind spot.
   (After extraction `<ext>/files/1.4.0/` is empty and `patch/` is gone; that is
   normal, the data was consumed into private storage.)
3. If the library name alone is not enough, push `lldb-server` from the NDK to
   `/data/local/tmp` and catch the throw for a real backtrace.

Once you know the library, the fix is likely to be one of: avoid the API that reaches
it, or make the game take a different path into the lobby.

## Phase C — implement the remaining protocols

Needed for a working lobby regardless of the crash, and if the crash turns out to be
downstream of empty data, this is also the fix.

- **To implement: `61` (inventory), `140`, `141`, `59`.**
- **`330`, `501`, `601` and `1000` have NO case in `JanssonParser`** — this was
  verified by scanning the dispatch constants across the whole function at `0x15a298`
  (31032 bytes). They fall through to `default`, so the bare
  `{"protocol": N, "errno": 0}` reply the mock already sends is correct. Do not spend
  time on them.
- Derive the field lists with `python tools/analyze/walk_fields.py <lib> 0x<case>`
  against `work/pristine_lib/libgame.so`.

## Ground rules

- Keep the memory checkpoint current as you go — it is what makes the next session
  cheap.
- Report what actually happened, including failures and anything you skipped. A
  blocker reported plainly is worth more than a hopeful summary. In particular, if a
  hypothesis fails, say so and strike it off rather than reporting it as progress.
- `adb` over wireless is flaky. **Pin the serial (`adb -s R52TA01GPBR`), never a
  transport id** — ids are renumbered on every reconnect. An install that fails with
  an **empty** error message means a dialog is on the device screen; screenshot
  before retrying. The usual culprit is "Allow wireless debugging on this network?".
- Run the RE tools with plain `python`, not `python -I` (capstone lives in user
  site-packages).
- Smali files are CRLF; a patcher that normalises to LF silently matches nothing.
