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
    """Com2uS Hive/Peppermint guest auth. Response formats captured VERBATIM from the
    still-live real Hive server (http://api.com2us.com) -- error_code is a number, and
    `type` echoes the endpoint. We keep a stable did/uid per device in SQLite."""
    conn = db()
    guest = params.get("guest_uid") or params.get("did") or "dev"
    row = conn.execute("SELECT uid, guest_uid FROM account WHERE guest_uid=?",
                       (guest,)).fetchone()
    if row:
        did, guest_uid = row
    else:
        guest_uid = "905" + str(int(time.time() * 100) % 100000000)
        did = "539" + str(int(time.time() * 10) % 10000000)
        conn.execute("INSERT INTO account(uid,guest_uid,login_key,session_key,did,created)"
                     " VALUES(?,?,?,?,?,?)", (did, guest_uid, "", "", did, time.time()))
        conn.commit()
    conn.close()

    p = path.lower()
    if "device/registered" in p:
        return {"error_code": 0, "type": "device/registered", "is_registered": False}
    if "guest/create" in p:
        return {"error_code": 0, "type": "guest/create", "did": did, "guest_uid": guest_uid}
    if "guest/auth" in p or p.endswith("/auth"):
        return {"error_code": 0, "type": "guest/auth", "did": did, "is_auth": True}
    if "acquire_uid" in p:
        return {"error_code": 0, "type": "guest/acquire_uid", "uid": guest_uid, "did": did}
    if "guest/bind" in p:
        return {"error_code": 0, "type": "guest/bind", "did": did}
    # generic Hive success
    return {"error_code": 0, "type": p.strip("/"), "did": did, "guest_uid": guest_uid}


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

    def _serve_addition(self) -> bool:
        """Serve an archived addition-data file: /addition/<version>/<name>.

        Protocol 48 hands the client `addition_file_download_url` as the base and a
        [{PatchFileName, PatchFileVersion}] list; DownloadFile builds each URL as
        base + version + "/" + name, so this mirrors the original CDN layout. The
        client resumes partial downloads with `Range: bytes=<start>-`, so honour that
        -- without it a retry restarts at 0 and the size check fails.

        The CDN served every file with a 68-byte (0x44) trailer that
        `DownloadFile.ValidateFile` checks and the client strips once the download
        succeeds -- which is why the archived copies (pulled off a real device) no
        longer carry it and have to have it rebuilt here. Layout, from the end:

            -0x44  16 bytes  version string ("1.4.0"), compared by prefix
            -0x34  48 bytes  file name
            -0x04   4 bytes  total length INCLUDING the trailer, big-endian

        Serving the bare archived bytes makes the client log "ValidateFile version
        fail" and retry the same file forever.
        """
        from urllib.parse import unquote

        import gamegw
        rel = unquote(self.path.split("?", 1)[0])[len("/addition/"):]
        parts = [seg for seg in rel.split("/") if seg not in ("", ".", "..")]
        if len(parts) != 2 or "\\" in rel:
            self.send_error(404)
            return True
        path = (gamegw.ADDITION_ROOT / parts[0] / parts[1]).resolve()
        if not str(path).startswith(str(gamegw.ADDITION_ROOT.resolve())) or not path.is_file():
            print(f"[addition] MISSING {rel}")
            self.send_error(404)
            return True
        import struct
        body = path.read_bytes()
        total = len(body) + 0x44
        data = (body
                + parts[0].encode("utf-8")[:16].ljust(16, b"\0")
                + parts[1].encode("utf-8")[:48].ljust(48, b"\0")
                + struct.pack(">I", total))
        start, end = 0, len(data) - 1
        rng = self.headers.get("Range", "")
        if rng.startswith("bytes="):
            lo, _, hi = rng[len("bytes="):].partition("-")
            start = int(lo) if lo.isdigit() else 0
            end = int(hi) if hi.isdigit() else end
            start, end = max(0, start), min(end, len(data) - 1)
        chunk = data[start:end + 1]
        partial = (start, end) != (0, len(data) - 1)
        self.send_response(206 if partial else 200)
        self.send_header("Content-Type", "application/octet-stream")
        self.send_header("Accept-Ranges", "bytes")
        if partial:
            self.send_header("Content-Range", f"bytes {start}-{end}/{len(data)}")
        self.send_header("Content-Length", str(len(chunk)))
        self.end_headers()
        self.wfile.write(chunk)
        return True

    def route(self):
        if self.path.startswith("/addition/"):
            self._log(f"-> addition {self.path}")
            return self._serve_addition()
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
            # KNS_GW_DELAY adds artificial latency to every gateway reply. The mock
            # answers in microseconds over LAN where the original servers took ~100ms,
            # so the whole post-login burst (51,60,61,330,501,601,140,141) lands at
            # once -- a timing the client never saw in the wild. Use this to tell a
            # genuine protocol bug apart from a race the speed exposes.
            gw_delay = float(os.environ.get("KNS_GW_DELAY", "0") or 0)
            if gw_delay:
                time.sleep(gw_delay)
            raw = gamegw.handle(self.headers, body)
            self.send_response(200)
            self.send_header("Content-Type", "text/plain; charset=ISO-8859-1")
            self.send_header("Content-Length", str(len(raw)))
            self.end_headers()
            return self.wfile.write(raw)
        # Hive/Peppermint: guest auth + device registration (real formats from live Hive).
        if any(k in p for k in ("guest", "/auth", "device", "registered", "acquire_uid")):
            return self._send(handle_hive(self.path, params))
        # InApp billing target selection (check2.c2s): client reads int `type`
        # (1 = Google Play). SelectTarget$1 parses this plaintext JSON.
        if "billing" in p or "check2" in p:
            # KNS_BILLING_DELAY lets us tell apart "the client exits because of what
            # check2 answers" from "the client exits regardless": stall the reply and
            # see whether the process death moves with it.
            import os
            delay = float(os.environ.get("KNS_BILLING_DELAY", "0") or 0)
            if delay:
                print("[billing] stalling check2 reply %.1fs" % delay)
                time.sleep(delay)
            return self._send({"type": 1, "error_code": 0, "google_service": 1,
                               "last_iap": 1, "state": 0})
        # Other Hub / Peppermint surfaces (policy, .c2s).
        if any(k in p for k in ("/hub", "/user", "member", "policy",
                                ".c2s", "/api")):
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
