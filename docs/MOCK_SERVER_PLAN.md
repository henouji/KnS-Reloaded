# Knights & Squires — Mock Server Plan

> Goal: make *Knights N Squires* `1.4.0` (Com2uS, 2015, pkg
> `com.com2us.imhero.normal.freefull.google.global.android.common`) playable again
> on a modern Android device by standing up a mock of its now-dead backend, built
> incrementally one feature at a time.

Status: **planning**. Current repo has a v0.1 proof-of-concept (`mock_server.py`,
`patch_urls.py`, `public/`) that is a useful scaffold but is built on an incorrect
model of the protocol (see [Corrections to v0.1](#corrections-to-v01)).

---

## 1. What the APK actually does (reverse-engineering map)

The game is a **native C++ title** on the Com2uS mobile engine ("C2S"). Almost all
gameplay and networking lives in `lib/armeabi/libgame.so`; the Java/smali side is
thin glue (activity, Hub SDK, ActiveUser, push, IAP).

### Server surfaces (three distinct backends)

| Surface | Original URL | Purpose |
|---|---|---|
| **ActiveUser gateway** | `http://activeuser.com2us.net/gateway.php` | Device registration, DID issuance, app-version check, terms/agreement, session check |
| **Com2uS Hub 2.0** | (Hub SDK endpoints) | Account system: guest create/auth/bind, acquire UID, login → issues `login_key` / `session_key`; friends & social |
| **Game gateway ("1mhero")** | `http://hero1m-hub.com2us.net/1mhero/` | The actual gameplay API: load/save user data (cloud save), shop, daily quests, achievements, rewards, chat, rankings |

Other hosts referenced (mostly ignorable / stub): `push.com2us.net` (GCM push),
`hubimage.com2us.com` (flag icons), `image-glb.qpyou.cn` + `terms.withhive.com`
(terms HTML), `m.com2us.com/r?c=6408` (promo redirect), Mercury (notices/events),
Offerwall (ads).

### Request / response envelope

Native strings reveal the game-gateway packet shape:

- **Request body keys:** `aPi` (API/command name), `params`, `country`, `device`,
  `login_key`, `session_key`, `signature`
- **Response body keys:** `errno`, `error`, `Result`

### Crypto (the gate for everything)

Bodies are **encrypted and signature-checked** — this is why a plaintext JSON mock
cannot work past the first call. Relevant native symbols & embedded secrets:

- `C2S_Encryption_Encode` / `C2S_Encryption_Decode`, `CS_knlEncryptData[Ex]` /
  `CS_knlDecryptData[Ex]`, `InitEncryption`, `CreateEncryptionKey`,
  `GetDecryptionKey`, `DecryptionPacket`
- Primitives present: `Base64Encode/Decode`, `CC_MD5`, `GetSHA1`/`SHA1*`,
  `GetMD5TimeStamp`
- Embedded key-looking strings: `#1mhero2014R`, `1m!1HUB2@hero#Re`, `,O,M-KeY`
- `signature` is almost certainly an MD5/SHA1 (H)MAC over the params + a shared secret.

### Hub auth command set (from `libgame.so`)

`HubGuestCreate`, `HubGuestAuth`, `HubGuestBind`, `HubGuestAcquireUid`, `HubAuth`,
`HubRequestMyUserInfo`, `HubRequestUserInfo`/`UsersInfo`, `HubRequestGameFriends`,
`HubRequestAddHubFriendInfo`, `HubRequestMessageSend`, `HubRequestSocialShare`,
`HubLogout`. Callbacks: `hubCallbackGuestCreate/Auth/Bind`.

### Save model

Game state is **client-authoritative with cloud sync**: `LoadSystemSaveData`,
`SaveSystemSaveData`, `SaveDataFile`, local `Com2usProtection.sav`. The server
stores and returns the player's save blob per-UID; it does not simulate gameplay.

### Master data is local (not served)

`dt_*.dat.jpg` in `assets/common/game_res/` are the master tables (characters,
items, stages, quests, shop…). The `.jpg` extension is a disguise; they are
decrypted at runtime via `CS_knlDecryptData`. **The server does not need to
reconstruct game content** — a big scope reduction. (Decrypting them is still
useful for crafting correct responses — e.g. valid item IDs for the shop.)

---

## 2. Corrections to v0.1

The existing scaffold encodes a few wrong assumptions worth fixing before building further:

1. **Static GitHub Pages cannot serve this API.** The game gateway needs dynamic,
   stateful, POST handling with per-user data and encrypted/signed bodies. Pages
   serves static files only. → The API must be a **dynamic server**. Pages can
   still host *static* assets (terms HTML, flag PNGs) if we want, nothing more.
2. **A single generic JSON blob won't be accepted.** Responses must be the correct
   `{errno, error, Result}` envelope, encrypted/signed the way the client expects,
   or `C2S_Encryption_Decode` fails and the client errors out.
3. **The guessed endpoints are wrong** (`guest/create`, `status`, invented
   `user_info`/`starter_items` schema). Real surfaces are the ActiveUser
   `gateway.php`, the Hub endpoints, and the `/1mhero/` gateway with the
   `aPi/params/signature` envelope above.
4. **`decoded/.../libgame.so` is already patched** (`hero1m-hub.com2us.net` was
   replaced with `https://testowner.github.io/`). Always re-derive from the pristine
   `original/Knights+N+Squires_1.4.0.apk`. In-place binary URL patching is
   length-limited and fragile; prefer routing by DNS/hosts or a proxy where possible
   (see Phase 0).
5. **ABI risk:** the APK ships **`armeabi` (32-bit ARM) only** — no `arm64-v8a`.
   Newer 64-bit-only devices (e.g. Pixel 7+) cannot run it at all. Target an
   emulator or a device/OS with 32-bit support, or plan a compatibility shim.

---

## 3. Target architecture

```
   ┌─────────────────────┐        ┌──────────────────────────────────────┐
   │ Patched KnS APK      │  HTTP  │ Mock backend (dynamic, stateful)      │
   │ (URLs → mock host)   │──────▶ │                                       │
   │  libgame.so / smali  │        │  /gateway.php   ActiveUser (DID,terms)│
   └─────────────────────┘        │  /hub/...       Hub 2.0 auth/social    │
                                   │  /1mhero/       game gateway (aPi…)    │
                                   │  crypto: C2S encode/decode + signature │
                                   │  store: per-UID save blobs (SQLite)    │
                                   └──────────────────────────────────────┘
```

**Stack recommendation:** a single small Python service (FastAPI or Flask) — keeps
continuity with the existing `mock_server.py`, easy to iterate, trivial to run
locally. Persistence: SQLite (one row per UID holding the save blob + metadata).
The C2S crypto/signature gets its own module so every surface shares it.

**How the client reaches it (Phase 0 decides):** options, best→worst for fidelity:
- (a) **Local proxy / DNS override** that maps the original `*.com2us.net` hosts to
  our server — no binary patching, pristine APK. Good for a rooted device/emulator.
- (b) **Patch the URLs** in `libgame.so` + smali (current `patch_urls.py` approach),
  rebuild & re-sign. Needed for an unrooted device. Mind the length limit.

---

## 4. Incremental roadmap

Each phase is independently testable and gets the client one step further into the
game. **Phase 1 is the hard gate** — nothing stateful works until the crypto is solved.

### Phase 0 — Foundations & capture harness
> **The original servers are dead.** There is no live backend to observe, so we get
> **no ground-truth request/response exchanges** from the real server. All capture is
> **client-side**: we instrument our own copy of the game. This is fine for *requests*
> (the client still builds and encrypts them locally even when nothing answers) but
> means *responses* must be **reconstructed from scratch** — see Phase 1/4.

- Clean re-decode from the pristine APK; script extraction of `libgame.so` so we
  never work from an already-patched copy.
- Stand up emulator (ARM-capable, API ≤ 21 target) **and** confirm a 32-bit-capable
  path for a real device.
- **Committed route: full client-side reconstruction.** No known archived traffic or
  community private-server exists for this title ("imhero"/"1mhero"), so we do not
  depend on any reference exchange — everything is derived from our own instrumented
  client + static RE. (If an archive ever surfaces it's a bonus, not a prerequisite.)
- Build a **client-side capture harness** (Frida on the running game, pointed at a
  host we control that just logs + 200s) to record what the client *emits*; pair
  with static RE of `libgame.so`.
- Decide connection strategy (proxy/DNS vs. patch) from §3.
- **Done when:** we can launch the APK pointed at a host we control and log its raw
  requests.

### Phase 1 — Crack C2S encryption + signature  ⛔ *gate*
- Reverse `C2S_Encryption_Encode/Decode` and `CS_knlEncryptData` (Ghidra/IDA on
  `libgame.so`), identify algorithm (likely SEED/AES/XOR variant) and how the
  embedded keys (`#1mhero2014R`, `1m!1HUB2@hero#Re`, `,O,M-KeY`) are used.
- Reverse the `signature` construction (MD5/SHA1 HMAC over which fields + secret).
- **Frida is our ground truth here** (servers are dead): hook `C2S_Encryption_Encode/
  Decode` and `CS_knlEncryptData` on the running client to dump plaintext ↔ ciphertext
  ↔ signature triples. This works despite dead servers because it's all client-side.
- Deliver a Python `c2s_crypto` module: `encode/decode/sign/verify` with round-trip
  tests against the Frida-captured triples.
  - **Progress (static RE done):** cipher confirmed **AES-256 (Rijndael)**; mode
    dispatcher + key strings + hook points mapped in `docs/crypto-findings.md`;
    scaffold at `server/c2s_crypto.py` (marked UNVALIDATED); hooks at
    `tools/frida/hook_crypto.js`. Remaining = dynamic validation on a device.
- **Because there are no real responses to copy**, also reverse the client's
  **response parser** — which fields it reads out of `Result` and what it does on
  error — so Phase 4+ can fabricate responses the client will accept. This parser RE
  is the main consequence of the dead servers.
- **Done when:** we can decrypt a client request, re-encrypt a crafted response, and
  the client accepts it (decode succeeds + no error branch).

### Phase 2 — Boot to title screen
- Implement ActiveUser `gateway.php`: issue a DID, return app-version "up to date",
  serve/ack terms agreement, session check.
- Satisfy Hub `Initialize` + any version/notice gate.
- Stub push registration so it fails gracefully (no crash).
- **Progress:** skeleton in `server/app.py` (routed ActiveUser + Hub guest-auth with
  SQLite persistence) is up and smoke-tested; response *shapes* are best-guess and need
  confirming against real client logs from Track A (`docs/emulator-setup.md`).
- **Done when:** app gets past splash/terms to the title/login screen without network errors.

### Phase 3 — Guest login & session
- Implement Hub guest flow: `HubGuestCreate` → `HubGuestAuth` → `HubGuestAcquireUid`
  (and `HubGuestBind`), returning a stable `uid`, `login_key`, `session_key`.
- Persist the guest account (SQLite).
- **Done when:** a new guest logs in and the client holds a valid session.

### Phase 4 — First gameplay load (new user)
- Implement the `/1mhero/` gateway dispatch on `aPi`.
- Implement user-info / `LoadSystemSaveData` load: for a new UID, return a valid
  **starter save state** the client accepts (needs correct field schema — derive
  from decrypted `dt_*` tables + save format RE).
- **Done when:** the client enters the actual game world as a fresh player.

### Phase 5 — Cloud save (persistence)
- Implement `SaveSystemSaveData` / save-upload: accept the client's save blob,
  store per-UID, return it on next load.
- Handle versioning/conflict fields the client sends.
- **Done when:** progress survives an app restart.

### Phase 6 — Social & live content
- Friends (`HubRequestGameFriends`, add/list/user-info), with mock/seeded friends.
- Daily quests, achievements, reward claims.
- Chat (`dt_chat`), rankings/leaderboards.
- Notices/events via Mercury (return empty or canned notices).
- **Done when:** social/live menus open and function without errors.

### Phase 7 — Commerce stubs
- IAP: stub license/receipt validation so purchases either are disabled cleanly or
  grant items locally (offline "free" mode). Offerwall/ads: disabled.
- **Done when:** the shop opens and non-IAP economy works; IAP paths don't crash.

### Phase 8 — Packaging & distribution
- Finalize the rebuild pipeline: patch → `apktool b` → `zipalign` → sign (the
  GitHub Actions workflow is a starting point; fix it to produce a correct APK).
- Document: how to run the server (local + hosted), how to point the game at it.
- **Decide:** replace the static-Pages API workflow with a deployable dynamic
  server (container / small VM / Fly.io-style host). Keep Pages only for static assets.

---

## 5. Open questions / next investigations

- Exact C2S cipher + key schedule and the `signature` formula (Phase 1).
- Save-blob binary format and minimal valid starter state (Phase 4).
- Full `aPi` command list under `/1mhero/` (enumerate from `libgame.so`).
- Whether Hub auth can be short-circuited (offline/guest-only) to reduce scope.
- Decrypting `dt_*.dat.jpg` tables (`CS_knlDecryptData`) for correct IDs/schema.
- 32-bit runtime plan for 64-bit-only modern devices.

---

## 6. Current repo assets

- `mock_server.py` — v0.1 PoC (wrong protocol model; reuse as the Flask/FastAPI shell).
- `patch_urls.py` — URL patcher for smali + `libgame.so` (Phase 0/8; mind length limit).
- `public/` — static stub responses (only useful for static assets, not the API).
- `.github/workflows/` — build+sign APK and deploy Pages (rework per Phase 8).
- `decoded/kns-apktool-probe/` — apktool output (**already URL-patched**; re-derive from `original/`).
