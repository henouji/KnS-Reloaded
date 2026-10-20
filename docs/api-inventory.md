# API inventory

What the client sends and expects, from static RE of `libgame.so`. Command strings
(`aPi` values) are best captured at runtime (`tools/frida/hook_http.js`); the request
envelope and the response field vocabulary are string-confirmed statically.

## Server surfaces

| Surface | URL (pristine) | Role |
|---|---|---|
| ActiveUser | `http://activeuser.com2us.net/gateway.php` | DID issue, app-version check, terms, session check |
| Com2uS Hub 2.0 | Hub SDK endpoints | guest create/auth/bind, acquire UID, login keys, friends |
| Game gateway | `http://hero1m-hub.com2us.net/1mhero/` | gameplay API (`aPi`-dispatched) |

## Request envelope (string-confirmed)

Keys seen in the binary: `aPi` (command), `params`, `signature`, `session_key`,
`login_key`, `country`, `device`, `packet`, `server_time`. Body is AES-256 encrypted
(see `docs/crypto-findings.md`).

## Response envelope

`{ errno, error, Result, server_time }` — `Result` carries the per-command payload.

## Hub commands (from `libgame.so` symbols)

Auth: `HubGuestCreate`, `HubGuestAuth`, `HubGuestBind`, `HubGuestAcquireUid`,
`HubAuth`, `HubLogout`, `IsHubGuestUIDCheck`, `HubRegisteredDevice`.
Social: `HubRequestMyUserInfo`, `HubRequestUserInfo`, `HubRequestUsersInfo`,
`HubRequestGameFriends`, `HubRequestAddHubFriendInfo`, `HubRequestMessageSend`,
`HubRequestSocialShare`.

## Game-gateway command discovery (TODO — dynamic)

Static strings expose request-intent flags (`blRequest*`): `blRequestAchieveReward`,
`blRequestFriend`, `blRequestMailBox`, `blRequestPvpRanking`, `blRequestRaidRanking`,
`blHubFriendRequest`, plus `asyncRequest`. The literal `aPi` command values are set in
the `C2S_Network_EncodePacket` callers — **dump them with `hook_http.js`** and list
them here as they're observed, mapped to the `Result` fields they return.

## Response payload vocabulary

847 snake_case fields in **`docs/reference/result-fields.txt`** — the schema source
for fabricating responses in Phases 4 & 6. Notable clusters:

- **User:** `user_cash`, `user_exp`, `user_born_chips`, `user_bough`, `user_chalice`,
  `user_dead_eye`, `user_ancient_wheel`, `user_fellow_ticket`, `user_*_inventory_size_cash` …
- **Hero/items:** `hero_info`, `hero_no`, `hero_hp/attack/defence`, `hero_*_bonus`,
  `item_info`, `item_options`, `item_option_value1/2`, `item_upgrade`, `item_unique_id` …
- **Stages:** `stage_info`, `stage_id`, `stage_no`, `stage_mode`, `stage_result`,
  `stage_attainment_info(s)`, `stage_attainment_reward_info(s)` …
- **Live/social:** `friend_info`, `friend_list`, `friend_request_user_info`,
  `daily_quest_info(s)`, `daily_reward_*`, `achievement_list`, `achievement_reward_info(s)`,
  `event_info`, `event_items`, `chat_server_info`, `chat_*_cool_time` …

## Client ↔ native bridge (JNI, for context)

`CUserDefined.native*`: `nativeCallNetworkEvent`, `nativeResponseServer` (response
entry point — good hook), `nativeGetNetState`/`nativeSetNetState`,
`nativeSetPatchFileData`, `nativeSetPatchError`, download-log natives. Modules:
`ActiveUser.jni*`, `InApp.*`, `Mercury.native*`, `Offerwall.native*`, `Push.jni*`.

## Local, encrypted master data (not server-served)

`dt_*.dat.jpg` in `assets/common/game_res/` (disguised, decrypted via
`CS_knlDecryptData`): `dt_character_140`, `dt_item_pkg_140`, `dt_itemoption_pkg_140`,
`dt_stage_pkg_140`, `dt_quest_140`, `dt_reward_pkg_140`, `dt_shop_pkg_140`,
`dt_achieve_pkg_140`, `dt_dailyquest_131`, `dt_chat_pkg_131`, `dt_fellow*_140`,
`dt_monster_lvup_140`, `dt_userinfo_pkg_131`, `dt_etc_setting.json`, etc. Decrypt only
if we need valid IDs for responses.
