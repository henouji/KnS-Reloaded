# Game gateway protocol (`/1mhero/gateway.php`)

Reversed statically from `lib/armeabi/libgame.so` (pristine, extracted from
`original/Knights+N+Squires_1.4.0.apk`). No device or Frida needed for any of this.

## Transport

| | |
|---|---|
| body | `base64( AES-128-CBC( json ) )` |
| key | `b"1m!1HUB2@hero#Re"` (string @`0x1cbd54`) |
| IV | `de295106d3872f949783942fdc9f01e2` (const @`0x1D2594`) |
| padding | PKCS#7 |
| headers | `USERNO`, `SESSIONKEY`, `TIMESTAMP`, `TIMESIGNATURE` (SHA1; formula not cracked, and not needed — see `sha1_key` below) |

**Request** (built by `Request`@`0x14d4b1`) is nested:

```json
{"params": { ... }, "protocol": 51}
```

**Response** (parsed by `JanssonParser`@`0x15a298`) is **flat** — there is no
`params`/`Result` wrapper:

```json
{"protocol": 51, "errno": 0, "user_no": 10001, "session_key": "...", ...}
```

`JanssonParser` does `DecryptionPacket` → `json_loads` → `json_object_get(root,
"protocol")` → `json_object_get(root, "errno")` → switch on protocol, reading every
payload field off the **root** object. Nesting the payload under `params` makes every
lookup return `NULL`, so the client parses a user whose every field is zero.

`errno == 0` is the success path in `NetworkEvent`@`0x150f18`; a non-zero value falls
into the error-popup chain.

### Missing fields are safe

`ParsingJsonObjectToInt32`@`0x14996c`, `ParsingJsonObjectToInt64`@`0x149918`,
`ParsingJsonObjectToString`@`0x1499b4` and every `ParsingDataTo*` aggregate
NULL-check their json argument and leave the destination zeroed. An absent key
yields `0` / `""` / an empty array — it never faults. (So the crash that used to
follow protocol 60 was *not* a missing-field crash; it was the anti-cheat and Scudo
problems, both since patched.)

## Protocol → case address

Protocol ids dispatch through a compiler-generated binary search inside
`JanssonParser`. Case entry points, for re-deriving field lists:

| protocol | case | meaning |
|---|---|---|
| 48 `0x30` | `0x15cfb0` | version / addition-file check |
| 49 `0x31` | `0x15ce8c` | download link |
| 50 `0x32` | `0x15d090` | patch list |
| **51 `0x33`** | **`0x15f9a2`** | **game login** |
| 52 `0x34` | `0x15f986` | hub_uid echo |
| 53 `0x35` | `0x15f942` | hub did/uid echo |
| 54 `0x36` | `0x15de02` | formal user info |
| **60 `0x3c`** | **`0x15bc2c`** | **load user** |
| 61 `0x3d` | `0x15bb7c` | inventory |
| 62 `0x3e` | `0x15be26` | friend list |
| 59 `0x3b` | `0x15b05e` | event info |

To re-derive any of them:

```sh
python tools/analyze/walk_fields.py <libgame.so> 0x15bc2c
```

`walk_fields.py` follows basic blocks (GCC Thumb-1 uses `BL` as a long *branch*
inside a function, which capstone reports as a call) and prints the `json_object_get`
keys and `Parsing*` helpers in address order.

## Protocol 51 — game login

Request params: `hub_did`, `hub_sessionkey`, `bundle_identifier`, …

Response (all at root):

| field | type | notes |
|---|---|---|
| `user_no` | int | the game-side user id; the client sends `0` before it has one |
| `session_key` | string | |
| `device_change` | int | `1` raises the "played on another device" prompt |
| `push_on` | int | |
| `bgm_on` | int | |
| `sound_effect_on` | int | |
| `mercury` | int | flag; `0` suppresses the Mercury (CMS notice) fetch |
| `sha1_key` | int | stored with `strb` as a byte flag; `0` leaves request signing off |

`sha1_key = 0` is why the uncracked `TIMESIGNATURE` formula never became a blocker.

## Protocol 60 — load user

Request params: `{"user_no": N}` (`0` = not logged in yet).

Response (all at root):

| field | parser | shape |
|---|---|---|
| `user_info` | `ParsingDataToUserInfo`@`0x14c354` | object, 27 fields (below) |
| `item_etc_info` | `ParsingDataToUserGoods`@`0x14c878` | `[{item_id, count, user_last_stamina_gain_time}]` |
| `fellow_active_info` | `ParsingDataToUserFellowSetting`@`0x14c790` | `[{type (1-3), fellow_position (0-2), fellow_no (i64)}]` |
| `server_time` | int32 | |
| `last_grade` | int32 | |
| `server_date_time` | `ParsingDataToWTime`@`0x14bed4` | **string**, split on `- :` → `"YYYY-MM-DD HH:MM:SS"` |
| `hero_info` | `ParsingDataToCharacterInfo`@`0x14cdd0` | array (below) |
| `fellow_info` | `ParsingDataToFellowInfoArray`@`0x14d2b4` | array (below) |
| `fellow_book_info` | `ParsingDataToFellowBookInfoArray`@`0x14c728` | `[{fellow_id, recv_reward, exp, level}]` |
| `daily_reward_info` | inline + `ParsingDataToFriendShipRewardInfo`@`0x14af84` | `{daily_reward_time (i64), invite_count, recv_count, send_count, invite_time (i64)}` |
| `buff_etc_info` | inline | `[{type, end_date_timestamp (i64)}]`; types 2 and 5 are special-cased |
| `master_pvp_recovery_info` | inline | `{PvpRecoveryValue}` |

`user_info` fields:

```
user_no user_hub_id user_nickname user_level user_exp user_max_exp
user_gold user_cash user_friendship_point user_fellow_ticket user_item_ticket
user_pvp_point user_stamina user_max_stamina user_max_stamina_buff
user_stamina_time_buff user_remind_time_stamina user_new_mail
user_inventory_size user_inventory_size_cash user_fellow_inventory_size_cash
user_fellow_item_inventory_size_cash user_hero_pcid
hero_attack hero_defence hero_hp user_next_shop_update_time
```

`hero_info[]` element (`ParsingDataToCharacterInfo`):

```
hero_no hero_pcid hero_perfect_guard_bonus hero_booster_bonus
hero_item_bonus hero_gold_bonus hero_potion_bonus
hero_item_infos[]   -> ParsingDataToItem: {item_no, item_id, value}
```

`fellow_info[]` element (`ParsingDataToFellowInfo`):

```
fellow_no fellow_equip_weapon fellow_equip_accessory01 fellow_equip_accessory02
fellow_id fellow_upgrade fellow_exp fellow_level fellow_max_level
fellow_fail_count fellow_awaken_level fellow_attack_bonus
fellow_passive_skill_level fellow_mission_skill01 fellow_mission_skill02
fellow_lock next_fellow_attribute_reset_info: {AttributeResetValue}
```

## Other protocols' response fields

Derived the same way, for when the boot flow reaches them:

- **48**: `server_version`, `additionfile_filelist`, `addition_file_download_url`,
  `PatchFileName`, `PatchFileVersion`
- **49**: `download`, `link`
- **50**: `server_version`, `patch_filelist`, `patch_file_download_url`,
  `client_market_url`, `start_time`, `end_time`, `PatchLog`
- **52**: `hub_uid`
- **53**: `hub_did`, `strHubGuestUid`, `hub_uid`
- **54**: `formal_user_info`, `user_info`, `item_etc_info`, `hero_info`
- **61**: `inventory_count`, `item_infos`
- **62**: `type`, `max_friend_count`, `count`, `page`, `friend_info`

48 and 50 are deliberately left empty in `server/gamegw.py`: every field is optional,
and populating `patch_filelist` / `additionfile_filelist` would send the client off
to download patches that do not exist.

## Tools added for this

- `tools/analyze/annot_thumb.py <lib> <symbol|0xaddr> [len]` — Thumb disassembly with
  `ldr rX,[pc,#n]` + `add rX,pc` string refs resolved inline (tracks `mov` copies
  between the two, which GCC interleaves).
- `tools/analyze/walk_fields.py <lib> 0xentry [lo hi]` — basic-block walk from a
  switch case, reporting json keys and `Parsing*` calls.

## LIVE VERIFICATION 2026-10-21 — 51 and 60 confirmed against the real client

With the native self-SIGKILL neutered (see `anti-tamper-selfkill.md`) the game boots
all the way into the gateway. Captured with `KNS_BREAK_AU=1 python -u server/app.py
8080`, server at `192.168.68.103:8080`, on the S8:

```
POST /gateway.php            x4   ActiveUser + Hive + Hub
POST /device/registered
POST /common/billing/check2.c2s
POST /1mhero/gateway.php   protocol=48    version / addition-file check
POST /1mhero/gateway.php   protocol=50    patch list
   -- client shows "Additional data will be downloaded automatically (239MB)" --
POST /guest/create
POST /guest/auth
POST /1mhero/gateway.php   protocol=51    GAME LOGIN   <-- verified
POST /1mhero/gateway.php   protocol=60    LOAD USER    <-- verified
POST /1mhero/gateway.php   protocol=61    inventory
POST /1mhero/gateway.php   protocol=330   (new)
POST /1mhero/gateway.php   protocol=501   (new)  params {"user_no": N}
POST /1mhero/gateway.php   protocol=601   (new)  params {"user_no": N}
POST /1mhero/gateway.php   protocol=141   (new)  params {}
POST /1mhero/gateway.php   protocol=59    event info
```

**Protocol 51 and 60 are accepted by the real client.** The flat envelope, the
`errno == 0` success path, `sha1_key: 0` (no request signing) and `mercury: 0` all
behave as reversed — the client parses the login, issues protocol 60 with the
`user_no` it was given, and carries straight on to the post-login protocols. The
request params for 51 are confirmed as `hub_did`, `hub_sessionkey`, `idfv`,
`device_version`, `bundle_type`, `bundle_identifier`, `guest_user...`.

### Still unimplemented, in the order the client asks for them

`61`, `330`, `501`, `601`, `141`, `59`. Each currently gets a bare
`{"protocol": N, "errno": 0, "error": ""}`, which the client accepts without
complaint (every field is optional — see "Missing fields are safe" above), so they
are the next thing to fill in. `330`, `501`, `601` and `141` are **not** in the
case table reversed earlier; re-derive them from `JanssonParser` before guessing.

### Bug this capture exposed (fixed)

`_user()` in `server/gamegw.py` keyed only off `hub_did`. Post-login requests carry
only `user_no`, so the `hub_did` fallback (`"guest"`) selected a *different* row:
protocol 51 issued `user_no 10004` while protocol 60 returned a snapshot for 10003.
`_user()` now resolves by `user_no` first and falls back to `hub_did`.

### KNS_BREAK_AU is required for now

With the ActiveUser gateway answering normally the boot **stalls on the title art**:
the process stays alive and keeps rendering (~14% CPU) but issues no further
requests and never reaches `/1mhero/`. `KNS_BREAK_AU=1` (which stops
`/gateway.php` being routed to `activeuser.py`) makes it take the direct
`/1mhero/` login path instead. Why the Hub path wedges is not yet diagnosed.

## Protocol 48 — addition-file list (IMPLEMENTED, live-verified 2026-10-21)

The 239MB of "additional data" the dead CDN used to serve is archived in
`original/<pkg>/files/` (`files/1.4.0/`, 1505 files, 298MB, plus a 0-byte
`files/texture.store` — the empty store is normal). The mock now serves it, so the
client downloads it exactly as it originally did; no `adb push` is involved.

(`adb push` into `/sdcard/Android/data/<pkg>/` silently writes nothing on Android 11+
even though `adb shell` can write there, so pushing the data by hand does not work.)

Response (all at root; case @`0x15cfb0`):

```json
{ "protocol": 48, "errno": 0,
  "server_version": "1.01.10",
  "addition_file_download_url": "http://<host>/addition/",
  "additionfile_filelist": [ {"PatchFileName": "bgm_arena.ogg",
                              "PatchFileVersion": "1.4.0"}, ... ] }
```

`patch/DownloadFile` builds each URL as
`addition_file_download_url + PatchFileVersion + "/" + PatchFileName`, so the base
**must end in `/`**. File size is taken from the response `Content-Length`
(`maxContentSize` <- `HttpURLConnection.getContentLength()`), so no size belongs in
the list; files already present are skipped by the client.

### The 0x44 trailer (this is the part that is easy to miss)

The CDN served every file with a 68-byte trailer that
`DownloadFile.ValidateFile(File, String)` checks and the client strips once the
download succeeds — which is why the archived copies, pulled off a real device, no
longer carry it and the server has to rebuild it. From the end of the file:

| offset | size | content |
|---|---|---|
| `-0x44` | 16 | version string (`"1.4.0"`), compared by prefix |
| `-0x34` | 48 | file name |
| `-0x04` | 4 | total length **including** the trailer, **big-endian** |

Serve the bare archived bytes and the client logs `ValidateFile version fail` and
re-requests the same file forever (observed: 448 GETs for `bgm_arena.ogg`). With the
trailer rebuilt, all 1505 files download exactly once and the client extracts them.

`server/app.py:_serve_addition` does this, and honours `Range: bytes=` because the
client resumes partial downloads.

## Live boot, 2026-10-21 (after the addition data was served)

```
48 -> 50 -> [download 1505 files] -> "Updating new resource file... Extracting"
-> TITLE SCREEN with "Guest Play" / "Log In"      <-- stable, sits here indefinitely
-> (tap Guest Play)
-> 51 -> 60 -> 61 -> 330 -> 601 -> 141 -> 501 -> 140 -> 141 -> 140
-> process exits
```

### Which of the new protocols actually parse a response

Scanning `JanssonParser` (`0x15a298`, 31032 bytes) for the dispatch constants:
**140 (`0x8c`) and 141 (`0x8d`) have cases; 330, 501, 601 and 1000 have none.** The
latter fall through to `default`, so the bare `{"protocol": N, "errno": 0}` reply is
correct for them and they are not worth implementing. Still unimplemented and worth
deriving: **61** (inventory), **140**, **141**, **59**.

## CURRENT BLOCKER — post-login crash in a system library

After the login burst the process dies. Consistent marker:

```
E libc++abi: terminating with uncaught exception of type
            NSt3__112system_errorE: mutex lock failed: Device or resource busy
I Zygote  : Process <pid> exited cleanly (0)
```

The `libc++abi` line is *intermittent* in logcat (it races the process death); the
`exited cleanly (0)` always appears. There is no tombstone and no Java exception.

**It is not the game's own code.** `NSt3__1` (the libc++ namespace) and the string
`mutex lock failed` appear in **none** of `libgame.so`, `libCom2uSAndroid.so` or
`libc2scommon.so` — those are built against STLport (`_ZNSt4priv...`, `_ZNSs...`).
So a system/vendor library loaded into the process throws it.

Tried and did **not** fix it:
- `KNS_GW_DELAY=0.2` — the mock answers in microseconds where the real servers took
  ~100ms, so the whole burst lands at once. Adding latency changes nothing.
- `KNS_EMPTY_HERO=1` — `hero_info: []`, to push a new account into character
  creation rather than loading a fabricated hero.
- `KNS_MUTE=1` — `bgm_on`/`sound_effect_on` = 0, on the theory that the lobby's
  first BGM/SFX hits the Android audio stack. One run reached two protocols further
  (61, 330); a repeat did not, so that was variance, not a fix.

Note the game sits on the title screen indefinitely without crashing, so the trigger
is specifically post-login/lobby entry.
