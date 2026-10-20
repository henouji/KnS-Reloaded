# C2S crypto & protocol — static RE findings

Source: static disassembly of the **pristine** `libgame.so`
(ARM 32-bit Thumb, extracted from `original/Knights+N+Squires_1.4.0.apk`) using
`tools/analyze/` (capstone + pyelftools). The lib keeps its full `.dynsym`
(5974 symbols) — no stripping of exports — so every function below is addressable.

> Status: **architecture confirmed; byte-exact behaviour not yet validated.**
> Finish by validating `server/c2s_crypto.py` against Frida-captured plaintext↔
> ciphertext pairs (`tools/frida/hook_crypto.js`). Addresses are in-file (lib base 0).

## Cipher: AES-256 (Rijndael)

- Symbols: `rijndaelSetupEncrypt` @0x1c2ab1, `rijndaelSetupDecrypt` @0x1c2da5,
  `rijndaelEncrypt` @0x1c3079, `rijndaelDecrypt` @0x1c3525. The AES T-tables live at
  ~0x1d1c00–0x1d2600 (verified by their byte-repeated structure).
- `GetDecryptionKey` @0x1a7269 calls `rijndaelSetupDecrypt(rk, key, 0x100)` → **256-bit
  key**, then `rijndaelDecrypt` over the input in **16-byte blocks** (ECB; no IV chaining
  seen in this routine). It decrypts the **last 0x20 bytes** of its input buffer into a
  32-byte output — i.e. a **key-unwrap**: the packet carries a wrapped 32-byte data key
  in its tail, unwrapped with a master key.
- `CreateEncryptionKey` @0x1a80c5 generates a random **32-byte** client key via
  `Srandom`/`Random`/`GetRandomNumberBits`; first bytes have light structure, one byte is
  `(rand & 0xff) ^ seedParam`. This is the per-session client key that gets wrapped.
- `EncryptData`/`DecryptData` with `V1` and `V2` variants
  (`_Z13EncryptDataV1…`, `_Z13EncryptDataV2…`, `_Z13DecryptDataV1…`, `_Z13DecryptDataV2…`,
  plus `GetEncryptLengthV1/V2`, `GetDecryptLengthV1/V2`, `DecryptHeaderV2`) — two packet
  format versions; the game likely uses V2.

## Top-level wrapper: `C2S_Encryption_Encode` @0x179b55 / `_Decode` @0x179d0d

`Encode(out, mode, in, len)` is a **dispatcher on `mode` (r1 = 0..4)**:

| mode | behaviour (from disasm) |
|---|---|
| 0 | byte-wise table step `h = T[(b ^ h) & 0xff] ^ (h >> 8)` over the buffer, 4-byte output — a **CRC-32 / checksum** (table built at 0x179b18). Strong candidate for the `signature`/checksum. |
| 1 | in-place transform via sub `0x177d8c` (XOR/stream step). |
| 2 | copy a 16-byte constant (from a struct near the Td tables), then AES path `0x178e9c`. |
| 3 | zero a 0x100 buffer, call through a vtable fptr (`[g+0x98]`) — compression/RNG. |
| 4 | like mode 2 with a different 16-byte constant; AES over `len-0x20`, tail handling. |

`g_Encryption` global @0x6c3c10; `InitEncryption` @0x177365 populates it with two
pointers (GOT-relative) to the embedded key material.

## Key / secret strings (embedded)

| string | vaddr | note |
|---|---|---|
| `#1mhero2014R` | 0x1d436c | 12-byte NUL-terminated seed; near JNI/package strings. Likely signature secret or key seed. |
| `1m!1HUB2@hero#Re` | 0x1cbd54 | 16 bytes — exactly one AES block; strong **AES key** candidate. |
| `,O,M-KeY` | 0x0968e6 | 8 bytes inside `.text`, followed by code — treat as uncertain. |
| `1mhero/` | 0x1ccb89 | gateway path suffix. |

> Which string feeds which function is **not yet confirmed** — chase via Frida
> (`hook_crypto.js` dumps the key arg to `rijndaelSetup*`).

## Hashing / signature primitives

`SHA1Reset/Input/ProcessMessageBlock/PadMessage/Result` @0x48b11+, `CC_MD5` @0x18e35d,
`GetMD5TimeStamp` @0x14aac5, `jCheckSHA1` @0x4767d, `InappGetSignature` @0x16e5b5.
The `signature` envelope field is most likely MD5 or SHA1 over the (sorted?) params +
a secret (`#1mhero2014R`?). **Confirm field order & secret via Frida** — order matters.

## Packet layer: `C2S_Network_EncodePacket` @0x17e9ed (5792 B) / `_DecodePacket` @0x17da71 (3188 B)

These assemble/parse the full request/response around the envelope. Hook
`C2S_Network_EncodePacket` to capture the plaintext request body (and the `aPi` value)
right before encryption, and `_DecodePacket` to see the exact `Result` the client
expects. `DecryptionPacket` @0x14d31d is the small helper that unwraps a response.

## Protocol envelope (string-confirmed)

- Request keys: `aPi`, `params`, `signature`, `session_key`, `login_key`, `country`,
  `device`, `packet`, `server_time`.
- Response keys: `errno`, `error`, `Result` (payload), `server_time`.
- The `Result` payload vocabulary (847 snake_case fields) is in
  `docs/reference/result-fields.txt` — the schema source for Phases 4 & 6.

## Open items to close with Frida (dynamic)

1. Exact mode used per surface (auth vs. game gateway) and the IV/const for modes 2/4.
2. Which embedded string is the AES key vs. the signature secret.
3. The `signature` algorithm: hash choice, field ordering, secret placement.
4. The V2 packet header layout (`DecryptHeaderV2`).
5. The concrete `aPi` command strings (dump at `C2S_Network_EncodePacket`).

## Reproduce

```sh
python tools/analyze/extract_lib.py original/Knights+N+Squires_1.4.0.apk <workdir>
python tools/analyze/dump_symbols.py <workdir>/libgame.so Encrypt Decrypt rijndael
python tools/analyze/disasm.py <workdir>/libgame.so C2S_Encryption_Encode
python tools/analyze/dump_data.py <workdir>/libgame.so --find '1m!1HUB2@hero#Re'
```
