#!/usr/bin/env python3
"""
Local Mock Server for Knights & Squires (ver 0.1)
Handles guest login, status, initial login state, starter items, and related game API calls.
"""

from http.server import HTTPServer, BaseHTTPRequestHandler
import json
import urllib.parse
import time

PORT = 8080

class MockGameServerHandler(BaseHTTPRequestHandler):
    def _set_headers(self, status_code=200, content_type="application/json"):
        self.send_response(status_code)
        self.send_header('Content-Type', content_type)
        self.send_header('Access-Control-Allow-Origin', '*')
        self.end_headers()

    def do_GET(self):
        self._set_headers(200)
        response = {
            "errno": 0,
            "error": "",
            "status": "ok",
            "message": "Knights & Squires Local Mock Server Active"
        }
        self.wfile.write(json.dumps(response).encode('utf-8'))

    def do_POST(self):
        content_length = int(self.headers.get('Content-Length', 0))
        post_data = self.rfile.read(content_length) if content_length > 0 else b''

        parsed_path = urllib.parse.urlparse(self.path)
        path = parsed_path.path

        print(f"[MockServer] Received POST to {path}")
        if post_data:
            print(f"[MockServer] Request body: {post_data.decode('utf-8', errors='ignore')}")

        # Standard response template compatible with game API & activeuser module
        response = {
            "errno": 0,
            "error": "",
            "status": 1,
            "res": 0,
            "res_msg": "SUCCESS",
            "server_time": int(time.time()),
            "guest_uid": "mock_guest_12345",
            "guest_hub_uid": "mock_guest_hub_12345",
            "hub_guest_uid": "mock_guest_hub_12345",
            "login_key": "mock_session_key_abc123",
            "user_id": 10001,
            "user_info": {
                "user_id": 10001,
                "nickname": "GuestHero",
                "level": 1,
                "exp": 0,
                "gold": 10000,
                "gem": 100,
                "energy": 50,
                "max_energy": 50,
                "status": 1
            },
            "starter_items": [
                {"item_id": 101, "item_name": "Novice Sword", "item_type": "weapon", "amount": 1},
                {"item_id": 201, "item_name": "Novice Shield", "item_type": "armor", "amount": 1},
                {"item_id": 301, "item_name": "Health Potion", "item_type": "consumable", "amount": 10}
            ],
            "initial_login_state": {
                "is_first_login": True,
                "tutorial_step": 0,
                "notice": "Welcome to Knights & Squires Offline Mode!"
            }
        }

        # Specific path handling
        if "guest/create" in path or "guest/auth" in path or "guest" in path:
            response["action"] = "guest_login"
            response["guest_uid"] = "mock_guest_12345"
            response["guest_hub_uid"] = "mock_guest_hub_12345"
        elif "status" in path:
            response["action"] = "status_check"
            response["server_status"] = "normal"
        elif "gateway.php" in path:
            response["errno"] = 0
            response["did"] = "mock_device_id_12345"
            response["activeuser"] = {"status": "success", "user_id": 10001}

        self._set_headers(200)
        self.wfile.write(json.dumps(response).encode('utf-8'))

def run(server_class=HTTPServer, handler_class=MockGameServerHandler, port=PORT):
    server_address = ('', port)
    httpd = server_class(server_address, handler_class)
    print(f"[MockServer] Starting mock server on port {port}...")
    try:
        httpd.serve_forever()
    except KeyboardInterrupt:
        print("[MockServer] Stopping server...")
        httpd.server_close()

if __name__ == '__main__':
    run()
