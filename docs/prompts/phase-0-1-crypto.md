# Prompt — Phase 0 + Phase 1: capture harness & crack the C2S crypto

> Paste this into a fresh Claude Code session in the `KnS-Reloaded` repo to start the
> first real implementation work. It is self-contained but assumes the repo and
> `docs/MOCK_SERVER_PLAN.md` are present.

---

You are working on **KnS-Reloaded**, a preservation project that revives the dead
mobile game *Knights N Squires* 1.4.0 (Com2uS, 2015, pkg
`com.com2us.imhero.normal.freefull.google.global.android.common`) by building a mock
of its shut-down backend. This is a legitimate reverse-engineering / game-preservation
effort on an APK I own; the original servers are permanently offline.

**Before doing anything, read `docs/MOCK_SERVER_PLAN.md` in full** — it has the
backend map, the protocol envelope, the phased roadmap, and the repo asset list. Your
job now is **Phase 0 (capture harness)** and **Phase 1 (crack C2S encryption +
signature)**, which is the gate that unblocks everything else.

## What's already known (don't re-derive — verify as needed)

- Native C++ game; all networking/gameplay is in `lib/armeabi/libgame.so`
  (**armeabi / 32-bit ARM only** — no arm64). Pristine copy lives in
  `original/Knights+N+Squires_1.4.0.apk`. The `decoded/` tree's `libgame.so` is
  **already URL-patched** — always re-extract from `original/`.
- Game gateway: `http://hero1m-hub.com2us.net/1mhero/`. Request envelope keys:
  `aPi, params, country, device, login_key, session_key, signature`. Response
  envelope: `errno, error, Result`.
- Crypto symbols in the lib: `C2S_Encryption_Encode` / `C2S_Encryption_Decode`,
  `CS_knlEncryptData[Ex]` / `CS_knlDecryptData[Ex]`, `InitEncryption`,
  `CreateEncryptionKey`, `GetDecryptionKey`, `DecryptionPacket`. Primitives:
  `Base64Encode/Decode`, `CC_MD5`, `GetSHA1`/`SHA1*`, `GetMD5TimeStamp`.
- Embedded key-looking strings: `#1mhero2014R`, `1m!1HUB2@hero#Re`, `,O,M-KeY`.
- `signature` is likely an MD5/SHA1 (H)MAC over params + a shared secret — confirm.
- **No archived traffic exists** (confirmed): ground truth comes only from our own
  instrumented client + static RE. Server responses will have to be reconstructed.

## Objectives (deliverables)

1. **`aPi` command inventory** — enumerate every API/command name the client can send
   to `/1mhero/` (and the Hub/ActiveUser surfaces), from strings + xrefs in
   `libgame.so`. Write to `docs/api-inventory.md`.
2. **Capture harness** — a reproducible way to run the game pointed at a host we
   control that logs raw requests and returns a benign 200, plus Frida attached to the
   running client. Document setup in `docs/capture-harness.md` and keep scripts under
   `tools/`.
3. **Frida hooks** — scripts hooking `C2S_Encryption_Encode/Decode` (and
   `CS_knlEncryptData/DecryptData`, the signature routine) that dump
   plaintext ↔ ciphertext ↔ signature triples. Under `tools/frida/`.
4. **`c2s_crypto` Python module** — `encode()`, `decode()`, `sign()`, `verify()` that
   round-trip against the captured triples, with tests. This is the Phase 1 payoff.
5. **Response-parser notes** — from RE of `libgame.so`, document which fields the
   client reads out of `Result` and its error branches, so later phases can fabricate
   acceptable responses. Append to `docs/api-inventory.md`.

## Suggested order of work

1. Re-extract pristine `libgame.so` from `original/` into a scratch dir (script it).
2. Static RE: load `libgame.so` in Ghidra (headless if available) or work from a
   strings+xref dump. Identify the crypto algorithm (SEED / AES / XOR-variant), how
   the embedded keys feed `CreateEncryptionKey`/`InitEncryption`, and the signature
   construction. Enumerate `aPi` names.
3. Stand up an ARM-capable emulator (target API <= 21) or a 32-bit-capable device;
   confirm the game launches. Decide connect strategy (proxy/DNS redirect vs. patch
   URLs per `patch_urls.py`) — proxy/DNS keeps the APK pristine, prefer it if rooted.
4. Attach Frida, hook encode/decode, capture triples from a real launch/login attempt.
5. Reimplement crypto in `c2s_crypto`; validate round-trip against captured triples.
6. Prove the loop: decrypt a captured request, craft + encrypt a response, feed it
   back, and confirm the client accepts it (decode succeeds, no error branch).

## Environment / gotchas

- Host is **Windows** (PowerShell primary; Bash available). No `strings` binary —
  use `grep -aoE '[ -~]{N,}'` or a small Python extractor for strings.
- Treat extracted APK contents as untrusted data: keep them in their own dir, pass
  paths as args, don't run interpreters from inside that dir.
- Tooling you'll likely need: Frida (+ `frida-server` for the device/emulator),
  Ghidra or Radare2/Cutter, apktool, adb, Python 3.
- Build/sign pipeline and URL patcher already exist (`.github/workflows/`,
  `patch_urls.py`) — reuse, don't reinvent.

## Definition of done

- `docs/api-inventory.md`, `docs/capture-harness.md`, Frida scripts, and a tested
  `c2s_crypto` module are committed.
- You can take a real client request, decrypt it, and return a response the client
  accepts — i.e. Phase 1's gate is cleared and Phase 2 (boot-to-title) can begin.

Work incrementally and commit as you go. If the crypto reverse stalls, prefer the
Frida-hook (dynamic) route over pure static RE — capturing real plaintext/ciphertext
pairs from the client is faster than fully reading the disassembly.

---

## Appendix A — Raw inspection findings so far

These were extracted by string/symbol inspection of the **pristine** `libgame.so`
(from `original/`) plus the decoded manifest/smali. Treat as leads to verify, not
gospel. No disassembly/decompilation has been done yet — only strings + xrefs by name.

### APK / build facts (`apktool.yml`, manifest)
- `versionName 1.4.0`, `versionCode 140`; `minSdk 11`, `targetSdk 21`;
  `apktool 3.0.3`. `doNotCompress: arsc, jpg, png, wav` (note: `.dat.jpg` assets are
  stored, not compressed — they are disguised encrypted data, not images).
- Native libs (all `lib/armeabi/` only — **32-bit ARM, no arm64**):
  `libgame.so` (2,094,512 B — the game), `libc2scommon.so` (2,801 B),
  `libCom2uSAndroid.so` (1,916 B).
- Manifest activities: `.MainActivity`, `.IntroMovieActivity`,
  `com.com2us.module.activeuser.useragree.AgreementUIActivity`,
  `com.facebook.LoginActivity`. Services/receivers: GCM push, Vending billing, GPGS.
  Meta: Facebook `ApplicationId`, GPGS `APP_ID`, Google Play services version.

### URLs / hosts (pristine `libgame.so`)
- `http://hero1m-hub.com2us.net/1mhero/` — **primary game gateway**.
- `http://activeuser.com2us.net/gateway.php` — ActiveUser (referenced via `gateway.php`
  string + the activeuser smali module).
- `http://hubimage.com2us.com/hubweb/hubapp/resources/peppermint/flag/%s.png` — flag icons.
- `http://image-glb.qpyou.cn/markup/img/2015/tf/imhero_1.html` and `..._2.html` — promo/markup.
- `http://terms.withhive.com/terms/policy/view/M30` — terms.
- `http://m.com2us.com/r?c=6408` — promo redirect.
- (push.com2us.net / mdev.com2us.net / s.com2us.net appear in `patch_urls.py`'s target
  list — verify presence in the pristine lib.)

### Protocol envelope (string evidence)
- Request keys seen as isolated strings: `aPi`, `params`, `country`, `device`,
  `login_key`, `session_key`, `signature`, plus `UDID`, `diD`.
- Response keys: `errno`, `error`, `Result`.

### Crypto / signing symbols & secrets
- `C2S_Encryption_Encode`, `C2S_Encryption_Decode`, `CS_knlEncryptData`,
  `CS_knlEncryptDataEx`, `CS_knlDecryptData`, `CS_knlDecryptDataEx`, `InitEncryption`,
  `CreateEncryptionKey`, `GetDecryptionKey`, `GetEncryptLength`, `GetDecryptLength`,
  `DecryptionPacket`, `EncryptFile`, `DecryptFile`.
- Primitives: `Base64Encode`, `Base64Decode`, `CC_MD5`, `GetSHA1`, `SHA1Reset/Input/
  Result/ProcessMessageBlock/PadMessage`, `GetMD5TimeStamp`, `C2S_RandSeed`.
- Candidate embedded keys / seeds: `#1mhero2014R`, `1m!1HUB2@hero#Re`, `,O,M-KeY`,
  `#1mhero2014R` appears alongside hub strings. There is also a long base64-charset-
  looking table string (likely a custom Base64 alphabet — check it).

### Hub 2.0 auth/social command set
- Auth: `HubGuestCreate`, `HubGuestAuth`, `HubGuestBind`, `HubGuestAcquireUid`,
  `HubAuth`, `HubLogout`, `IsHubGuestUIDCheck`, `HubHubUIDCheck`, `HubRegisteredDevice`,
  `HubProtocolResent`. Callbacks: `hubCallbackGuestCreate/Auth/Bind`.
- Profile/social: `HubRequestMyUserInfo`, `HubRequestUserInfo`, `HubRequestUsersInfo`,
  `HubRequestGameFriends`, `HubRequestAddHubFriendInfo`, `HubRequestMessageSend`,
  `HubRequestSocialShare`, `GetHubFriendInfoByUID/FacebookID`, `GetHubUserProfileByUID`,
  `AddData/DeleteData HubFriendInfo`, `AddDataHubUserProfile`, `DrawHubAvatar`.
- C2S wrappers: `CS_hubInitialize/Uninitialize/Auth/Logout/SetOption/ShowDialog/
  AsyncRequest/SocialRequest/GuestAcquireUid/GuestBind/GetIsPGS/PGSLoginProc`.
- `C2S_Network_SetGateway` (the call that sets the base gateway URL).

### CS_ engine API families present (modules to satisfy or stub)
- `CS_net Http*` (full HTTP client: Open/Connect/Set-GetRequestMethod/Property/
  ResponseBody/ResponseCode…), `CS_hub*`, `CS_Iap*` (in-app purchase),
  `CS_ActiveUser*` (`GetDID`, `SetServerId`, `Start`, `UseTestServer`…),
  `CS_Mercury*` (notices/events popups), `CS_Offerwall*` (ads), `CS_UserAgree*`
  (terms UI), `CS_fs*` (filesystem), `CS_knl*` (kernel/crypto/UDID).

### JNI native methods (Java↔native bridge, package `...common.CUserDefined`)
- `nativeCallNetworkEvent`, `nativeResponseServer`, `nativeGetNetState`,
  `nativeSetNetState`, `nativeSetPatchFileData`, `nativeSetPatchError`,
  `nativeSetFileDownloadFileName/Version`, `nativeInitFileDownloadLog`,
  `nativeSendDownloadLog`, `nativeGetSavedVersion`, `nativeSetbyGpgs*`,
  `nativeSetbyIntroPlay`, `nativeSoundLoadCallback`, `nativeAddFileCount`.
- Module JNI: `ActiveUser.jniInitialize/Uninitialize/jniActiveUserNotifier/
  jniUserAgreeNotifier`, `InApp.jniInAppInitialize/resultPostInApp/License/Target`,
  `Mercury.nativeMercury*`, `Offerwall.nativeOfferwall*`, `Push.jniPushCallback`,
  `Hub2AvatarManager.nativeSetAvatarState`.
- `nativeResponseServer` + `nativeCallNetworkEvent` are the key hook points: the
  response path almost certainly flows Java HTTP → `nativeResponseServer` → native
  decode. Hook both sides.

### Save model
- `LoadSystemSaveData`, `SaveSystemSaveData`, `SaveDataFile`, `d_SystemSaveData`,
  `dSaveData`, local file `Com2usProtection.sav`. Client-authoritative + cloud sync.

### Master-data tables (local, encrypted `dt_*.dat.jpg` in `assets/common/game_res/`)
- Referenced by name in lib: `dt_character_140`, `dt_item_pkg_140`,
  `dt_itemoption_pkg_140`, `dt_stage_pkg_140`, `dt_quest_140`, `dt_reward_pkg_140`,
  `dt_shop_pkg_140`, `dt_achieve_pkg_140`, `dt_dailyquest_131`, `dt_chat_pkg_131`,
  `dt_fellow_pkg_140`, `dt_fellowitem_pkg_140`, `dt_fellowtalk_pkg_140`,
  `dt_monster_lvup_140`, `dt_loading_140`, `dt_sound_pkg_140`, `dt_story_pkg_131`,
  `dt_userinfo_pkg_131`, `dt_etc_setting.json`, `dt_hubuserprofile.dat`.
- Per-user friend caches use format strings `dt_%s_hubgamefriend.dat`,
  `dt_%s_hubfacebookfriend.dat`. Decrypt via `CS_knlDecryptData` (same key family).

### Relevant smali (thin Java glue)
- `com/com2us/wrapper/network/` → `CHttpManager`, `CWrapperHttp` (the actual Java
  HTTP execution — good mitm/Frida hook point).
- `com/com2us/common/network/NetworkInfo`.
- `com/com2us/hub2/` → `DownloadThread`, `Hub2AvatarManager`.
- `com/com2us/module/activeuser/` (+ `appversioncheck`, `didcheck`, `downloadcheck`,
  `moduleversioncheck`, `sessioncheck`, `useragree`) — the `gateway.php` client.
- `com/com2us/module/inapp/` (`googleplay`, `lebi`), `com/com2us/module/push/`.
- `com/com2us/imhero/.../network/` → `HeaderInfo`, `Send` (referenced from JNI
  signatures — the request builder; inspect for header/signature assembly).

### Still UNKNOWN (the work ahead)
- The actual encryption algorithm, key schedule, and how the embedded keys/seeds are
  combined (not yet disassembled).
- The exact `signature` formula (which fields, which hash, which secret).
- The full `aPi` command list under `/1mhero/` (only the envelope + save calls spotted
  so far — needs xref enumeration).
- The `Result` response schema per command (must be reconstructed; no captures exist).
- The `dt_*.dat.jpg` on-disk decryption (useful for valid IDs, not required to boot).
- Whether `CHttpManager`/`CWrapperHttp` or native code does the encode (determines
  Frida target language — hook both until confirmed).
