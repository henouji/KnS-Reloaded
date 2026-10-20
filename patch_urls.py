#!/usr/bin/env python3
"""Redirect every Com2uS backend host in a decoded KnS tree to the mock server.

Usage:
    python patch_urls.py <base_url> [decoded_dir]
        base_url     e.g. http://192.168.1.50:8080  (your PC's LAN IP + mock port)
        decoded_dir  default: decoded/kns-clean  (produce it with apktool d from the
                     PRISTINE original APK -- never the already-patched decoded tree)

What it does:
  * smali: rewrites any `*.com2us.com` / `*.com2us.net` host (with or without scheme,
    incl. test/dev subdomains) to point at base_url. No length limit in text. This is
    what redirects Mercury (the sunset-notice service), Hub, Wall, member, ActiveUser.
  * libgame.so: rewrites full `http(s)://*com2us*` URLs in-place, null-padded to the
    original length (binary strings can't grow). Skips any that don't fit and warns.

The package id `com.com2us.imhero...` is NOT a host and is left untouched (it contains
`com2us.` but never `com2us.com`/`com2us.net`).
"""
import os
import re
import sys
from pathlib import Path
from urllib.parse import urlparse

HOST_RE_TEXT = r'(?:[A-Za-z0-9-]+\.)+com2us\.(?:com|net)(?::\d+)?'
# full URL (with scheme) and bare host (no scheme) variants
URL_WITH_SCHEME = re.compile(r'https?://' + HOST_RE_TEXT)
BARE_HOST = re.compile(r'(?<![/\w.])' + HOST_RE_TEXT)
# in the native binary: a full URL up to the first non-URL byte
NATIVE_URL = re.compile(rb'https?://[A-Za-z0-9._~:/?#\[\]@!$&\'()*+,;=%-]*?com2us\.(?:com|net)'
                        rb'[A-Za-z0-9._~:/?#\[\]@!$&\'()*+,;=%-]*')


def patch_smali(root: Path, base: str, netloc: str) -> int:
    files = list(root.rglob("*.smali"))
    changed = 0
    hosts = set()
    for fp in files:
        text = fp.read_text(encoding="utf-8", errors="ignore")
        for m in URL_WITH_SCHEME.finditer(text):
            hosts.add(m.group(0))
        for m in BARE_HOST.finditer(text):
            hosts.add(m.group(0))
        new = URL_WITH_SCHEME.sub(base, text)          # full URLs -> base (keeps http)
        new = BARE_HOST.sub(netloc, new)               # bare hosts -> host:port
        if new != text:
            fp.write_text(new, encoding="utf-8")
            changed += 1
    print(f"[smali] {changed} files rewritten; hosts seen: {sorted(hosts)[:12]}"
          f"{' ...' if len(hosts) > 12 else ''}")
    return changed


def patch_native(lib: Path, base: str) -> int:
    if not lib.exists():
        print(f"[native] {lib} not found, skipping")
        return 0
    data = bytearray(lib.read_bytes())
    count = 0
    for m in list(NATIVE_URL.finditer(bytes(data))):
        orig = m.group(0)
        path = urlparse(orig.decode("latin1")).path or "/"
        new = (base.rstrip("/") + path).encode("latin1")
        if len(new) > len(orig):
            print(f"[native] SKIP (too long): {orig!r} -> {new!r} "
                  f"({len(new)}>{len(orig)}); use a shorter base_url")
            continue
        data[m.start():m.start() + len(orig)] = new.ljust(len(orig), b"\x00")
        count += 1
        print(f"[native] {orig!r} -> {new!r}")
    if count:
        lib.write_bytes(bytes(data))
    print(f"[native] {count} URLs patched in {lib.name}")
    return count


def main() -> int:
    if len(sys.argv) < 2:
        print(__doc__)
        return 2
    base = sys.argv[1].rstrip("/")
    decoded = Path(sys.argv[2]) if len(sys.argv) > 2 else Path("decoded/kns-clean")
    netloc = urlparse(base).netloc or base.split("//")[-1]
    print(f"[patch] base={base}  netloc={netloc}  decoded={decoded}")
    if not decoded.exists():
        print(f"[err] {decoded} does not exist. Re-decode the PRISTINE apk first:\n"
              f"      apktool d original/Knights+N+Squires_1.4.0.apk -o {decoded}")
        return 1
    patch_smali(decoded, base, netloc)
    for lib in decoded.rglob("libgame.so"):
        patch_native(lib, base)
    print("[patch] done. Rebuild: apktool b -> zipalign -> apksigner (see "
          "docs/build-redirected-apk.md).")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
