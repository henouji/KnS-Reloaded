#!/usr/bin/env python3
"""Com2uS ActiveUser gateway.php protocol — FULLY REVERSED from smali (no native key).

From com.com2us.module.activeuser.ActiveUserNetwork:
  - client sends header REQ-TIMESTAMP = unix-seconds string, REQ-AUTHKEY = md5(plaintext)
  - key   = md5(REQ-TIMESTAMP).hexdigest()[:16]   (16 ASCII hex chars -> AES-128)
  - cipher= AES/CBC/PKCS7, IV = 16 zero bytes
  - body  = base64( AES-encrypt( json_payload ) )
  - the response is encrypted the same way with the same timestamp-derived key.

Verified: decrypting real captured requests reproduces valid JSON and the AUTHKEY matches.
"""
from __future__ import annotations

import base64
import hashlib
import json
import time

from Crypto.Cipher import AES

BLOCK = 16
IV = b"\x00" * BLOCK


def _key(ts: str) -> bytes:
    return hashlib.md5(ts.encode()).hexdigest()[:16].encode()


def _pkcs7_unpad(b: bytes) -> bytes:
    if not b:
        return b
    n = b[-1]
    return b[:-n] if 1 <= n <= BLOCK else b


def _pkcs7_pad(b: bytes) -> bytes:
    n = BLOCK - (len(b) % BLOCK)
    return b + bytes([n]) * n


def decrypt_request(ts: str, b64_body: str) -> dict:
    ct = base64.b64decode(b64_body)
    pt = _pkcs7_unpad(AES.new(_key(ts), AES.MODE_CBC, IV).decrypt(ct))
    return json.loads(pt.decode("utf-8", "replace"))


def encrypt_response(ts: str, obj: dict) -> bytes:
    pt = _pkcs7_pad(json.dumps(obj).encode("utf-8"))
    ct = AES.new(_key(ts), AES.MODE_CBC, IV).encrypt(pt)
    return base64.b64encode(ct)


def _did_for(req: dict) -> str:
    seed = (req.get("android_id") or req.get("advertising_id") or "guest") + "|kns"
    return hashlib.md5(seed.encode()).hexdigest()  # stable 32-hex DID per device


def build_result(req: dict) -> dict:
    """Response per `api`. Shapes are best-effort from the response keys the module
    reads; iterate against the live client if it rejects one."""
    api = req.get("api", "")
    base = {"errno": 0, "error": "", "api": api, "result": 1}

    if api == "get_did":
        did = _did_for(req)
        base.update({"did": did, "did_data": did, "update_did": 0})
    elif api == "get_config":
        base.update({
            "session_max_time": 86400, "session_max_num": 100,
            "send_referrer": 0, "session_log": 0, "notice": "",
            "config": {},
        })
    elif api == "download":
        # no extra files / up to date
        base.update({"download": "N", "url": "", "version": "", "file": "",
                     "filelist": []})
    elif api in ("agreement", "get_agreement"):
        base.update({"agreement": 1, "agreement_version": 0, "show": 0})
    # unknown apis fall through with the benign success envelope
    return base


def handle(path: str, body: bytes, headers) -> tuple[bytes, dict]:
    """Return (raw_response_body, extra_response_headers)."""
    hdrs = {k.lower(): v for k, v in headers.items()}
    ts = hdrs.get("req-timestamp") or str(int(time.time()))
    try:
        req = decrypt_request(ts, body.decode("latin1"))
    except Exception as e:  # noqa: BLE001 - surface + still answer
        print(f"[activeuser] decrypt failed: {e}")
        req = {}
    result = build_result(req)
    print(f"[activeuser] api={req.get('api','?')} -> {json.dumps(result)[:120]}")
    out = encrypt_response(ts, result)
    extra = {"REQ-TIMESTAMP": ts, "REQ-AUTHKEY": hashlib.md5(
        json.dumps(result).encode()).hexdigest()}
    return out, extra
