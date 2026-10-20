#!/usr/bin/env python3
"""Native game gateway (/1mhero/gateway.php) protocol.

CRACKED (crypto = embedded constants, no key recovery needed):
  - body = base64( AES-128-CBC( json ) )
  - key  = b'1m!1HUB2@hero#Re'            (embedded string @0x1cbd54 in libgame.so)
  - IV   = bytes.fromhex('de295106d3872f9497839​42fdc9f01e2')  (const @0x1D2594)
  - request json: {"params": {...}, "protocol": <int>}
  - headers: USERNO, SESSIONKEY, TIMESTAMP, TIMESIGNATURE (SHA1, see TODO).

Verified: the captured protocol-48 (login) request decrypts to valid JSON with these.
Response is encrypted the same way. Protocol numbers + response shapes are being
mapped live; fill PROTOCOL_HANDLERS as each is observed.
"""
from __future__ import annotations

import base64
import json
import time

from Crypto.Cipher import AES

KEY = b"1m!1HUB2@hero#Re"
IV = bytes.fromhex("de295106d3872f949783942fdc9f01e2")  # const @0x1D2594
BLOCK = 16

# Protocol ids seen so far (from live capture).
P_LOGIN = 48


def _unpad(b: bytes) -> bytes:
    n = b[-1]
    return b[:-n] if 1 <= n <= BLOCK else b


def _pad(b: bytes) -> bytes:
    n = BLOCK - (len(b) % BLOCK)
    return b + bytes([n]) * n


def decrypt(body: bytes) -> dict:
    ct = base64.b64decode(body)
    pt = _unpad(AES.new(KEY, AES.MODE_CBC, IV).decrypt(ct))
    return json.loads(pt.decode("utf-8", "replace"))


def encrypt(obj: dict) -> bytes:
    pt = _pad(json.dumps(obj).encode("utf-8"))
    return base64.b64encode(AES.new(KEY, AES.MODE_CBC, IV).encrypt(pt))


# --- per-protocol response builders (iterating live) --------------------------
def _login(params: dict) -> dict:
    # protocol 48: client sends version+bundle; server acks + likely issues user/session.
    # TODO(live): confirm exact fields the client reads from the login response.
    return {"user_no": 10001, "session_key": "mocksession", "result": 0}


PROTOCOL_HANDLERS = {
    P_LOGIN: _login,
}


def handle(headers, body: bytes) -> bytes:
    try:
        req = decrypt(body)
    except Exception as e:  # noqa: BLE001
        print(f"[gamegw] decrypt failed: {e}")
        return encrypt({"protocol": 0, "error": -1})
    proto = req.get("protocol")
    params = req.get("params", {})
    print(f"[gamegw] protocol={proto} params={json.dumps(params)[:160]}")
    fn = PROTOCOL_HANDLERS.get(proto)
    result = fn(params) if fn else {}
    # Response envelope mirrors the request: {"params":..., "protocol":N, error fields}.
    resp = {"params": result, "protocol": proto,
            "error": 0, "error_code": 0, "errno": 0, "result": 0,
            "server_time": int(time.time())}
    print(f"[gamegw] -> {json.dumps(resp)[:160]}")
    return encrypt(resp)
