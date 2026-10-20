# Master-data file format (`assets/common/game_res/dt_*`)

Findings from static RE + file inspection. Tool: `tools/analyze/decrypt_dt.py`.

The `.jpg` extension on these files is a **disguise** (the APK's `doNotCompress`
list includes `jpg`, so renaming data to `.jpg` keeps it stored uncompressed and
unsuspicious). They are not images.

## Two kinds

| pattern | encoding | status |
|---|---|---|
| `*.json.jpg` (e.g. `dt_etc_setting.json.jpg`) | **plaintext UTF-8 JSON** | readable now |
| `*.dat.jpg` (all the rest) | 12-byte header + **AES** payload | needs the key |

## `.dat.jpg` header (12 bytes, confirmed across all files)

```
offset  size  value                 meaning
0       4     uint32 BE             total file size (e.g. dt_item = 0x000010ac = 4268)
4       4     uint32 LE = 0x9000    constant format/flag marker (same in every file)
8       4     0x00000000            reserved
12      ..    AES ciphertext        length always a multiple of 16
```

## Encryption

- Cipher is **AES** (engine's Rijndael), via `CS_knlDecryptData` → `DecryptData` →
  `DecryptDataV1`/`DecryptDataV2` (version dispatch on a header/magic byte;
  `DecryptDataV2` is the modern path and sets up the key with `rijndaelSetup*`).
- The **key is derived inside the engine from its master key** — it is *not* any of
  the embedded strings we tried (`1m!1HUB2@hero#Re`, `#1mhero2014R`, `,O,M-KeY`,
  `1mhero…`); all candidates in ECB/CBC, AES-128/256, produced ~7.1-entropy garbage
  (raw payload entropy 7.17), i.e. no decryption.
- **Fastest way to the key:** the Frida hook on `rijndaelSetupEncrypt/Decrypt`
  (`tools/frida/hook_crypto.js`) dumps the live key during Track A. That same key
  decrypts both the network protocol and these files. Then:
  `python tools/analyze/decrypt_dt.py dt_item_pkg_140.dat.jpg --key-hex <hex>`.
- Payload may additionally be **LZMA-compressed** after decrypt (`LzmaDecode`,
  `LzmaDecodeProperties` are exported; the constant `0x9000` flag may be a dictionary
  size). If decrypt output isn't printable, try LZMA-decompressing it.

## Free data available now (plaintext)

`dt_etc_setting.json` — game economy/config. Top-level keys and sizes:
`Social_Reward[7]`, `Get_Item_Option_Number[4]`, `Invite_Reward[5]`, `Store[10]`,
**`Init_Value[58]`** (starter/balance constants — directly useful for Phase 4 starter
state), `PvpRecovery[3]`, `FellowMission[20]`, `AttributeInit[3]`, `SpecialItem[8]`.

## Why we need these (eventually)

The encrypted tables (`dt_item`, `dt_stage`, `dt_shop`, `dt_quest`, `dt_character`,
`dt_reward`, bosses, raids…) hold the real IDs the client validates against. Phases
4 & 6 need valid item/stage/shop IDs in fabricated responses, so decrypting them once
the key is captured is worthwhile — but it is **not** on the critical path to booting
the game (Phases 0–3 don't need it).
