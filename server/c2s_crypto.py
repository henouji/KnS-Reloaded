#!/usr/bin/env python3
"""C2S crypto reimplementation for the KnS mock server.

Mirrors the client's `C2S_Encryption_*` / `rijndael*` routines in `libgame.so`
(see docs/crypto-findings.md). AES-256 (Rijndael) is confirmed; the exact mode,
key-vs-secret assignment, IV handling and signature field order are **NOT yet
validated** — every such spot is marked TODO(frida) and must be checked against
captured plaintext<->ciphertext pairs from `tools/frida/hook_crypto.js` before this
module can be trusted by the live client.

Depends on `pycryptodome` (AES). Install: pip install --user pycryptodome
"""
from __future__ import annotations

import hashlib
from dataclasses import dataclass

try:
    from Crypto.Cipher import AES  # pycryptodome
except ImportError:  # pragma: no cover - surfaced at first use
    AES = None

# --- Embedded secrets (from libgame.so; see docs/crypto-findings.md) -----------
# 16 bytes == one AES block -> strongest AES-key candidate. TODO(frida): confirm.
KEY_CANDIDATE_16 = b"1m!1HUB2@hero#Re"
# 12-byte seed near package strings -> likely signature secret or key seed.
SEED_CANDIDATE = b"#1mhero2014R"
# AES-256 needs 32 bytes. TODO(frida): confirm how the 32-byte key is derived
# (observed: client generates a random 32-byte key via CreateEncryptionKey, then a
# master key unwraps it). Placeholder derivation below until a capture pins it down.
_AES_KEY_256 = hashlib.sha256(KEY_CANDIDATE_16 + SEED_CANDIDATE).digest()  # TODO(frida)

BLOCK = 16


# --- CRC-32 (C2S_Encryption_Encode mode 0 looks like a table CRC) --------------
def c2s_checksum(data: bytes) -> int:
    """mode-0 checksum: h = T[(b ^ h) & 0xff] ^ (h >> 8). The table polynomial is
    not yet extracted; standard CRC-32 is the working hypothesis. TODO(frida)."""
    import zlib
    return zlib.crc32(data) & 0xFFFFFFFF


# --- AES-256-ECB over 16-byte blocks (per GetDecryptionKey) --------------------
def _aes(key: bytes):
    if AES is None:
        raise RuntimeError("pycryptodome not installed: pip install --user pycryptodome")
    return AES.new(key, AES.MODE_ECB)


def _pad(data: bytes) -> bytes:
    pad = (-len(data)) % BLOCK
    return data + b"\x00" * pad  # TODO(frida): confirm padding (zero vs PKCS7)


def aes_encrypt(plain: bytes, key: bytes | None = None) -> bytes:
    return _aes(key or _AES_KEY_256).encrypt(_pad(plain))


def aes_decrypt(cipher: bytes, key: bytes | None = None) -> bytes:
    return _aes(key or _AES_KEY_256).decrypt(cipher)


# --- Signature ----------------------------------------------------------------
def sign(params: dict, secret: bytes = SEED_CANDIDATE) -> str:
    """signature = hash(canonical(params) + secret). Hash + field order NOT
    confirmed. TODO(frida): capture a real request and match exactly."""
    canonical = "&".join(f"{k}={params[k]}" for k in sorted(params))  # TODO(frida): order
    return hashlib.md5(canonical.encode() + secret).hexdigest()       # TODO(frida): md5 vs sha1


# --- Envelope helpers (shape only; wire format pending capture) ----------------
@dataclass
class Envelope:
    api: str
    params: dict
    session_key: str = ""
    login_key: str = ""
    country: str = "US"
    device: str = "mock"


def encode_request(env: Envelope) -> bytes:
    raise NotImplementedError("TODO(frida): assemble + AES-encrypt per C2S_Network_EncodePacket")


def decode_request(raw: bytes) -> Envelope:
    raise NotImplementedError("TODO(frida): parse per C2S_Network_DecodePacket")


# --- Validation harness: run captured pairs through this module ----------------
def validate(pairs_path: str) -> int:
    """Feed Frida-captured JSON {op, key, input_hex, output_hex} records through the
    matching primitive and report mismatches. This is how Phase 1 is declared done."""
    import json

    ok = bad = 0
    with open(pairs_path, encoding="utf-8") as f:
        for line in f:
            line = line.strip()
            if not line:
                continue
            rec = json.loads(line)
            inp = bytes.fromhex(rec["input_hex"])
            want = bytes.fromhex(rec["output_hex"])
            key = bytes.fromhex(rec["key"]) if rec.get("key") else None
            op = rec["op"]
            if op == "aes_encrypt":
                got = aes_encrypt(inp, key)
            elif op == "aes_decrypt":
                got = aes_decrypt(inp, key)
            else:
                print(f"[skip] unknown op {op}")
                continue
            if got[:len(want)] == want:
                ok += 1
            else:
                bad += 1
                print(f"[MISMATCH] {op}\n  in ={inp.hex()}\n  want={want.hex()}\n  got ={got.hex()}")
    print(f"validate: {ok} ok, {bad} mismatched")
    return 0 if bad == 0 and ok else 1


if __name__ == "__main__":
    import sys
    if len(sys.argv) == 3 and sys.argv[1] == "validate":
        raise SystemExit(validate(sys.argv[2]))
    print(__doc__)
    print("AES key (placeholder):", _AES_KEY_256.hex())
    print("crc32('hello'):", hex(c2s_checksum(b"hello")))
