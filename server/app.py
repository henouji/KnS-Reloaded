#!/usr/bin/env python3
"""KnS mock backend — routed skeleton (Phases 2-5 scaffold).

Supersedes the flat PoC in /mock_server.py. It routes the three real server
surfaces (see docs/api-inventory.md), persists per-UID state in SQLite, and calls
into server/c2s_crypto.py for the game gateway. Response *shapes* for the encrypted
game gateway are marked TODO(capture): they must be confirmed against Track A's
Frida/HTTP captures before the client will accept them. The ActiveUser + Hub + terms
handlers (Phase 2, boot-to-title) are plain and can be iterated without captures.

Run:  python server/app.py 8080
"""
from __future__ import annotations

import json
import re
import sqlite3
import sys
import time
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
from pathlib import Path

try:
    from c2s_crypto import Envelope, decode_request, encode_request  # noqa: F401
except Exception:  # pragma: no cover - crypto optional until gateway is exercised
    decode_request = encode_request = None

DB = Path("work") / "kns.sqlite"
LOG = Path("work") / "server.log"


# --------------------------------------------------------------------------- store
def db() -> sqlite3.Connection:
    DB.parent.mkdir(exist_ok=True)
    conn = sqlite3.connect(DB)
    conn.execute("""CREATE TABLE IF NOT EXISTS account(
        uid TEXT PRIMARY KEY, guest_uid TEXT, login_key TEXT, session_key TEXT,
        did TEXT, created REAL)""")
    conn.execute("""CREATE TABLE IF NOT EXISTS save(
        uid TEXT PRIMARY KEY, blob TEXT, version INTEGER, updated REAL)""")
    return conn


def new_uid() -> str:
    return "100" + str(int(time.time() * 1000) % 10_000_000)


# --------------------------------------------------------------------------- surfaces
def handle_activeuser(path: str, params: dict) -> dict:
    """ActiveUser gateway.php: DID issue, app-version check, terms, session check.
    Phase 2. Shapes here are best-guess; refine from captures. TODO(capture)."""
    did = params.get("did") or "MOCK-" + new_uid()
    return {
        "errno": 0, "error": "",
        "did": did,
        "result": 1,
        "is_latest": 1,              # app-version check: pretend up to date
        "update_type": 0,            # 0 = no forced update
        "useragree": 1,              # terms already agreed
        "server_status": "normal",
        "server_time": int(time.time()),
    }


def handle_hub(path: str, params: dict) -> dict:
    """Com2uS Hub 2.0: guest create/auth/bind, acquire uid, login. Phase 3.
    Issues a stable uid + login_key/session_key and persists the guest account."""
    conn = db()
    guest = params.get("guest_uid") or params.get("guestuid")
    row = conn.execute("SELECT uid, login_key, session_key FROM account WHERE guest_uid=?",
                       (guest,)).fetchone() if guest else None
    if row:
        uid, login_key, session_key = row
    else:
        uid = new_uid()
        login_key = "lk_" + uid
        session_key = "sk_" + uid
        conn.execute("INSERT INTO account(uid,guest_uid,login_key,session_key,did,created)"
                     " VALUES(?,?,?,?,?,?)",
                     (uid, guest or uid, login_key, session_key, params.get("did", ""), time.time()))
        conn.commit()
    conn.close()
    # Peppermint/Hub envelope uses `error_code` (0 = success), not `errno`.
    return {
        "error_code": 0, "error_detail": "", "errno": 0, "error": "",
        "result": {
            "uid": uid, "hub_uid": uid, "user_id": uid, "guest_uid": guest or uid,
            "did": params.get("did", uid),
            "login_key": login_key, "session_key": session_key, "secure_key": session_key,
            "register_type": "guest", "is_new": 0 if row else 1,
        },
        "data": {},
        "uid": uid, "user_id": uid, "login_key": login_key, "session_key": session_key,
        "server_time": int(time.time()),
    }


def handle_hive(path: str, params: dict) -> dict:
    """Com2uS Hive/Peppermint guest auth (guest/create, auth, acquire_uid, bind).
    Auth token fields the client stores: did, uid, sessionkey, auth_by
    (from PeppermintAuthToken). Envelope: flat JSON, error_code=0 (as int)."""
    uid = new_uid()
    did = "DID" + uid
    session = "sk_" + uid
    body = {"did": did, "uid": uid, "sessionkey": session, "auth_by": "guest",
            "is_authorized": 1, "country": "US", "user_id": uid}
    # error_code MUST be a string: the client does (String)get("error_code") then
    # parseInt (PeppermintCallbackJSON). Sending a JSON number throws ClassCastException.
    return {"error_code": "0", "error_msg": "", "result": 0,
            **body, "body": dict(body), "data": dict(body)}


def handle_mercury(path: str, params: dict) -> dict:
    """Com2uS Mercury (notice/messenger CMS) at m.mercury.com2us.com. The live
    Mercury service is what pushes the 'service discontinued' popup to the dead game.
    Returning an empty notice set here suppresses that gate. Phase 2. TODO(capture):
    confirm the exact empty-notice shape the client accepts."""
    return {
        "errno": 0, "error": "", "result": 0, "resultCode": 0,
        "notices": [], "messages": [], "events": [], "banners": [],
        "list": [], "count": 0,
        "server_time": int(time.time()),
    }


def handle_wall(path: str, params: dict) -> dict:
    """Com2uS offerwall (ads) at m.wall.com2us.com. Return empty/disabled."""
    return {"errno": 0, "error": "", "result": 0, "list": [], "reward": 0}


def handle_game_gateway(raw_body: bytes) -> bytes:
    """/1mhero/ gateway: AES-encrypted, aPi-dispatched. Phase 4+.
    Requires the captured key before it can satisfy the client. TODO(capture)."""
    if decode_request is None:
        return json.dumps({"errno": -1, "error": "crypto not configured"}).encode()
    try:
        env = decode_request(raw_body)           # NotImplementedError until key is known
    except NotImplementedError:
        return json.dumps({"errno": -1, "error": "decode_request TODO(capture)"}).encode()
    result = dispatch_api(env.api, env.params)
    return encode_request(Envelope(api=env.api, params={"errno": 0, "error": "", "Result": result}))


def dispatch_api(api: str, params: dict) -> dict:
    """Game-gateway command table. Fill per captured `aPi` string (hook_http.js).
    Field names come from docs/reference/result-fields.txt."""
    handlers = {
        # "userInfoLoad": load_user,   # TODO(capture): real aPi names + Result shapes
        # "userInfoSave": save_user,
    }
    fn = handlers.get(api)
    if fn:
        return fn(params)
    return {}  # TODO(capture): correct default per command


# --------------------------------------------------------------------------- http
class Handler(BaseHTTPRequestHandler):
    def _log(self, extra: str):
        line = f"{time.strftime('%H:%M:%S')} {self.command} {self.path} {extra}"
        print(line)
        LOG.parent.mkdir(exist_ok=True)
        with LOG.open("a", encoding="utf-8") as f:
            f.write(line + "\n")

    def _body(self) -> bytes:
        n = int(self.headers.get("Content-Length", 0) or 0)
        return self.rfile.read(n) if n else b""

    def _send(self, obj, raw: bytes | None = None):
        payload = raw if raw is not None else json.dumps(obj).encode()
        self.send_response(200)
        self.send_header("Content-Type", "application/json")
        self.send_header("Content-Length", str(len(payload)))
        self.send_header("Access-Control-Allow-Origin", "*")
        self.end_headers()
        self.wfile.write(payload)

    def _capture(self, body: bytes, params: dict):
        """Record the full request (path, headers, body hex+text) for protocol RE."""
        rec = {"ts": time.time(), "method": self.command, "path": self.path,
               "headers": dict(self.headers.items()),
               "len": len(body), "body_hex": body.hex()}
        try:
            txt = body.decode("utf-8")
            if txt.isprintable() or any(c in txt for c in "\n{[&="):
                rec["body_text"] = txt
        except UnicodeDecodeError:
            pass
        if params:
            rec["params"] = params
        LOG.parent.mkdir(exist_ok=True)
        with (LOG.parent / "requests.jsonl").open("a", encoding="utf-8") as f:
            f.write(json.dumps(rec, ensure_ascii=False) + "\n")

    def route(self):
        body = self._body()
        params = {}
        if body:
            try:
                params = json.loads(body)
            except json.JSONDecodeError:
                from urllib.parse import parse_qs
                params = {k: v[0] for k, v in parse_qs(body.decode("latin1")).items()}
        p = self.path.lower()
        self._log(f"({len(body)}b)")
        self._capture(body, params)

        import os
        if "gateway.php" in p and "1mhero" not in p and not os.environ.get("KNS_BREAK_AU"):
            import activeuser
            raw, extra = activeuser.handle(self.path, body, self.headers)
            self.send_response(200)
            self.send_header("Content-Type", "application/json")
            for k, v in extra.items():
                self.send_header(k, v)
            self.send_header("Content-Length", str(len(raw)))
            self.end_headers()
            return self.wfile.write(raw)
        if "activeuser" in p:
            return self._send(handle_activeuser(self.path, params))
        if "mercury" in p or "/init" in p or "messenger" in p:
            return self._send(handle_mercury(self.path, params))   # suppresses sunset notice
        if "wall" in p:
            return self._send(handle_wall(self.path, params))
        if "/1mhero" in p:
            import gamegw
            raw = gamegw.handle(self.headers, body)
            self.send_response(200)
            self.send_header("Content-Type", "text/plain; charset=ISO-8859-1")
            self.send_header("Content-Length", str(len(raw)))
            self.end_headers()
            return self.wfile.write(raw)
        # Hive/Peppermint guest auth -> auth-token fields (did/uid/sessionkey).
        if any(k in p for k in ("guest", "/auth")):
            return self._send(handle_hive(self.path, params))
        # Other Hub / Peppermint surfaces (device, billing, policy, .c2s).
        if any(k in p for k in ("/hub", "/user", "member", "policy",
                                "device", "registered", "billing", ".c2s", "/api")):
            return self._send(handle_hub(self.path, params))
        # unknown: benign envelope covering both protocol families
        return self._send({"errno": 0, "error": "", "error_code": 0, "error_detail": "",
                           "result": {}, "data": {}, "Result": {}})

    def do_GET(self):
        self.route()

    def do_POST(self):
        self.route()

    def log_message(self, *a):
        pass


def main() -> int:
    port = int(sys.argv[1]) if len(sys.argv) > 1 else 8080
    db().close()
    srv = ThreadingHTTPServer(("0.0.0.0", port), Handler)
    print(f"[kns-mock] listening on 0.0.0.0:{port}  (db={DB})")
    try:
        srv.serve_forever()
    except KeyboardInterrupt:
        print("\n[kns-mock] bye")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
