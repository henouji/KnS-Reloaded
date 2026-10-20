#!/usr/bin/env python3
"""
Dynamic URL Patching Script for Knights & Squires APK
Patches Smali files and libgame.so with the target server URL (e.g. GitHub Pages URL).
"""

import sys
import os
import glob
import re

def patch_apk(server_url):
    print(f"[Patch] Target Server URL: {server_url}")
    server_url = server_url.rstrip("/")

    smali_files = glob.glob("decoded/kns-apktool-probe/smali/**/*.smali", recursive=True)

    old_urls = [
        "http://activeuser.com2us.net/gateway.php",
        "http://test.activeuser.com2us.net/gateway.php",
        "http://push.com2us.net/api/",
        "https://push.com2us.net/api/",
        "http://mdev.com2us.net/api/",
        "http://s.com2us.net/common/",
        "http://10.0.2.2:8080/gateway.php",
        "http://10.0.2.2:8080/api/",
        "http://10.0.2.2:8080/common/"
    ]

    count = 0
    for filepath in smali_files:
        with open(filepath, "r", encoding="utf-8", errors="ignore") as f:
            content = f.read()

        modified = False
        for old in old_urls:
            if old in content:
                if "gateway.php" in old:
                    new_val = f"{server_url}/gateway.php"
                elif "api/" in old:
                    new_val = f"{server_url}/api/"
                else:
                    new_val = f"{server_url}/common/"

                content = content.replace(old, new_val)
                modified = True
                print(f"[Patch Smali] Replaced {old} -> {new_val} in {filepath}")

        if modified:
            with open(filepath, "w", encoding="utf-8") as f:
                f.write(content)
            count += 1

    print(f"[Patch] Updated {count} Smali files.")

    # Patch native lib libgame.so
    lib_path = "decoded/kns-apktool-probe/lib/armeabi/libgame.so"
    if os.path.exists(lib_path):
        with open(lib_path, "rb") as f:
            data = f.read()

        targets = [
            b"http://hero1m-hub.com2us.net/1mhero/",
            b"http://10.0.2.2:8080/1mhero/"
        ]

        hero_url = f"{server_url}/1mhero/".encode('utf-8')

        for target in targets:
            if target in data:
                if len(hero_url) <= len(target):
                    replacement = hero_url.ljust(len(target), b"\x00")
                    data = data.replace(target, replacement)
                    print(f"[Patch Native] Replaced {target} in libgame.so")
                    break
                else:
                    print(f"[Patch Native Warning] URL {hero_url} longer than target {target}, truncating/fitting...")
                    replacement = hero_url[:len(target)]
                    data = data.replace(target, replacement)
                    break

        with open(lib_path, "wb") as f:
            f.write(data)

if __name__ == '__main__':
    url = sys.argv[1] if len(sys.argv) > 1 else os.environ.get("SERVER_URL", "http://10.0.2.2:8080")
    patch_apk(url)
