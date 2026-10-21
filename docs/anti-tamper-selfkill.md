# The boot wall: a native self-SIGKILL (SOLVED 2026-10-21)

For several sessions the game died a few hundred ms after the InApp
"Checking your billing information..." dialog. It left nothing in `logcat -b crash`,
no tombstone and no Java exception, so it read as a deliberate, clean exit.

## What it actually was

Not the engine's quit command, and nothing to do with billing or the mock server.

`libgame.so` kills itself:

```
Protection::nativeFinish(int n)            @0x198ee8
    pthread_create(&t, NULL, Protection::threadExitApplication, (void *) n)

Protection::threadExitApplication(void *n) @0x19904c
    sleep(n)
    kill(getpid(), 9)        <-- SIGKILL
    pthread_detach(pthread_self())
    pthread_exit(0)
```

A SIGKILL to your own pid produces exactly the observed signature: the process
vanishes, ActivityManager only reports `has died` / `app died, no saved state`
afterwards, and `Zygote: Process <pid> exited due to signal 9 (Killed)` is the single
line that gives it away. Grep for that line first next time.

Callers are the two anti-tamper gates:

| caller | guard that reaches `nativeFinish(5)` |
|---|---|
| `Java_..._nativeStartClet`  @0x19874c | `Protection::isRunningMemoryHack()`, or `jWD_GetIsTerminateIfCracked() && Protection::isRooted()` |
| `Java_..._nativeResumeClet` @0x1987e0 | same two |

## The fix

`kill` is imported by `libgame.so` and has **exactly one call site** in the whole
library (`tools/analyze/xref.py <lib> 0x45b84`). `libCom2uSAndroid.so` and
`libc2scommon.so` do not import it, and there is no JNI route either — the strings
`killProcess`, `myPid` and `android/os/Process` do not occur in the binary. So
neutering the `kill` PLT stub closes every self-kill path at once, whichever check
fires:

```
.plt entry for kill @0x45b84 (ARM mode, 12 bytes)
    add ip, pc, #0x1000000 / add ip, ip, #0xb5000 / ldr pc, [ip, #0xfec]!
->  mov r0, #0 / bx lr / nop
```

`tools/patch_native.py` does this as `PLT_RET0_TARGETS`. PLT stubs are **ARM**, not
Thumb, so the encodings are `e3a00000` / `e12fff1e` — not the `00207047` used for the
Thumb function stubs.

With that one patch the game boots through the billing stage to the title screen and
on into the game.

## What this rules out

The previous session's hypothesis — that the engine's own quit command (`d$b->s`,
ordinal 0x12 = native command 18, `CWrapperKernel$b.a()` -> `activity.finish()` +
`System.exit(0)`) was doing it — is **wrong**. That was a static inference and it was
never confirmed on device.

To settle it, `d.a(Ld$b;)V` (the single dispatcher that drains the native command
queue into the Java handlers) was patched to `Log.i("KNSPROBE", "cmd ordinal=<n>
name=<NAME>")` before dispatch. The live trace is:

```
1 NATIVE_START   2 WAIT_UNLOCK_STARTCLET  3 NATIVE_STARTCLET  4 RUNNING
5 ACTIVITY_PAUSE 7 NATIVE_PAUSECLET       8 NATIVE_PAUSE      9 PAUSED
10 ACTIVITY_RESUME 11 NATIVE_RESUME 12 NATIVE_WAIT_UNLOCK_SCREEN
13 NATIVE_RESUMECLET  4 RUNNING
```

Command 18 never appears — before the death or after it. The quit path is not
involved at all.

That trace patch is cheap and worth keeping around: it is the only view of what the
native side is telling Java, and the enum names (`d$b` is obfuscated to single
letters `a`..`t`, ordinals 0..19) are otherwise invisible.

## Already ruled out, do not revisit

- The `DefaultBilling$3` license patch (force `0x64` = AUTHORIZE_LICENSE_SUCCESS)
  uses the right constant, confirmed at `Java_..._InApp_resultPostLicense`@0x18a498.
  It is simply not what was killing the game.
- `Protection::verify()` returning 0. Both callers (`save`@0x199128,
  `initialize`@0x1997e8) treat non-zero as success, but the original also returns 0
  when its table is empty (tail at 0x1990de), so the stub mirrors fresh-state
  behaviour.
- `Protection::initialize()` does spawn a thread at 0x1997cc, but its GOT slot
  (0x1fd190) holds `Protection::threadDownloadHackAppData`, not the kill thread.
- `startCheckSpeedHack` / `stopCheckSpeedHack` are already `movs r0,#1 ; bx lr` stubs
  in the **pristine** library — Com2uS shipped them disabled.

## Reading the trap in the tooling

`xref.py` reports Thumb `BL`/`BLX` call sites. GCC Thumb-1 also uses `BL` as a long
*branch* inside a function (LR is already saved), so an unnamed `BL` to an address
inside the same function is a jump, not a call. That is why `threadExitApplication`
was found by xref'ing the **PLT stub** of `kill` rather than by walking callers.
