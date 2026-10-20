#!/usr/bin/env python3
"""Decrypt / inspect the game's master-data tables (assets/common/game_res/dt_*).

File format (confirmed by RE, see docs/data-format.md):
  - `*.json.jpg`  -> plaintext JSON, `.jpg` is only a disguise. Dumped as-is.
  - `*.dat.jpg`   -> 12-byte header + AES payload:
        [0:4]  uint32 BE  total file size
        [4:8]  uint32 LE  0x00009000 (constant format/flag marker)
        [8:12] 0x00000000
        [12:]  AES ciphertext (length is a multiple of 16)

The AES key is NOT any embedded string we tried (all candidates give ~7.1-entropy
garbage). It is derived inside DecryptDataV2 from the engine's master key. The
quickest way to obtain it is the Frida hook on `rijndaelSetup*`
(tools/frida/hook_crypto.js) during Track A capture -- that key decrypts both the
network traffic and these files. Once you have it:

    python tools/analyze/decrypt_dt.py <dt_file> --key-hex <hex> [--mode ecb|cbc]

With no key, the tool dumps JSON files and prints the header analysis for .dat files.
"""
import argparse
import json
import sys
from pathlib import Path

try:
    from Crypto.Cipher import AES
except ImportError:
    AES = None

HEADER = 12


def parse_header(raw: bytes):
    size_be = int.from_bytes(raw[0:4], "big")
    flag = int.from_bytes(raw[4:8], "little")
    zero = int.from_bytes(raw[8:12], "little")
    return size_be, flag, zero


def decrypt(raw: bytes, key: bytes, mode: str) -> bytes:
    if AES is None:
        sys.exit("pycryptodome required: pip install --user pycryptodome")
    payload = raw[HEADER:]
    payload = payload[: len(payload) // 16 * 16]
    if mode == "ecb":
        return AES.new(key, AES.MODE_ECB).decrypt(payload)
    return AES.new(key, AES.MODE_CBC, iv=b"\x00" * 16).decrypt(payload)


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("file", type=Path)
    ap.add_argument("--key-hex")
    ap.add_argument("--mode", choices=["ecb", "cbc"], default="ecb")
    ap.add_argument("--out", type=Path, help="write decrypted bytes here")
    args = ap.parse_args()

    raw = args.file.read_bytes()

    # Plaintext JSON tables (.json.jpg)
    if raw[:1] in (b"{", b"["):
        text = raw.decode("utf-8", "replace").rstrip("\x00").strip()
        try:
            obj = json.loads(text)
            print(json.dumps(obj, indent=2, ensure_ascii=False)[:4000])
            print(f"\n[ok] plaintext JSON, {len(text)} bytes, top keys: {list(obj)}")
        except json.JSONDecodeError:
            print(text[:2000])
        return 0

    size_be, flag, zero = parse_header(raw)
    print(f"[hdr] file={len(raw)}  size_be={size_be}  flag=0x{flag:x}  zero={zero}  "
          f"payload={len(raw) - HEADER} (mod16={(len(raw) - HEADER) % 16})")

    if not args.key_hex:
        print("[info] no --key-hex: capture it via tools/frida/hook_crypto.js (Track A).")
        return 0

    out = decrypt(raw, bytes.fromhex(args.key_hex), args.mode)
    if args.out:
        args.out.write_bytes(out)
        print(f"[ok] wrote {len(out)} bytes -> {args.out}")
    else:
        head = out[:256]
        pr = sum(1 for b in head if 32 <= b < 127 or b in (9, 10, 13)) / len(head)
        print(f"[dec] printable={pr:.2f}  head={head[:80]!r}")
        if pr < 0.6:
            print("[hint] low printable ratio -> wrong key/mode, or payload is LZMA "
                  "(lib has LzmaDecode); try decompressing after decrypt.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
