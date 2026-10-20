#!/usr/bin/env python3
"""Neuter native anti-tamper functions in libgame.so that crash on modern Android.

Several Com2uS `Protection::*` checks call system()/posix_spawn to look for hacking
tools; on Android 14+ that path SIGSEGVs (system() for shell commands is blocked),
killing the game right after login in `nativeStartClet`. We overwrite each target's
prologue with Thumb `movs r0,#0 ; bx lr` (return 0 = "clean"), so the check is a no-op.

Usage: python tools/patch_native.py <decoded_dir_or_libgame.so> [extra_symbol ...]
"""
import sys
from pathlib import Path

from elftools.elf.elffile import ELFFile

# Thumb: movs r0, #0 (0x2000) ; bx lr (0x4770)  -> return 0 immediately.
RET0_THUMB = bytes([0x00, 0x20, 0x70, 0x47])

DEFAULT_TARGETS = [
    "_ZN10Protection19isRunningMemoryHackEv",  # confirmed crash (system())
    "_ZN10Protection8isRootedEv",              # root check (also shells out)
    "_ZN10Protection6verifyEv",                # signature/integrity verify
]

# operator delete / nothrow delete. Each is `push{r4,lr}; cmp r0,#0; beq end; free(r0); end`.
# On Android 11+ the game frees 8-aligned pointers that Scudo (16-aligned chunks) aborts
# on. We rewrite `cmp r0,#0` -> `lsls r4,r0,#28` (Z set iff low 4 bits are 0) and flip
# `beq`->`bne`, so free() runs only for 16-aligned pointers; misaligned ones are leaked
# instead of crashing. r4 is caller-saved here (pushed/popped), so clobbering it is safe.
ALIGN_DELETE_TARGETS = ["_ZdlPv", "_ZdlPvRKSt9nothrow_t"]
_CMP_R0_0 = bytes([0x00, 0x28])       # cmp r0, #0
_LSLS_R4_R0_28 = bytes([0x04, 0x07])  # lsls r4, r0, #28
_BEQ = bytes([0x01, 0xd0])            # beq .+2 (over the free call)
_BNE = bytes([0x01, 0xd1])            # bne .+2


def find_lib(arg: Path) -> Path:
    if arg.is_file():
        return arg
    hits = list(arg.rglob("libgame.so"))
    if not hits:
        sys.exit(f"no libgame.so under {arg}")
    return hits[0]


def main() -> int:
    if len(sys.argv) < 2:
        print(__doc__)
        return 2
    lib = find_lib(Path(sys.argv[1]))
    targets = DEFAULT_TARGETS + sys.argv[2:]

    with lib.open("rb") as f:
        elf = ELFFile(f)
        segs = [(s['p_vaddr'], s['p_offset'], s['p_filesz'])
                for s in elf.iter_segments() if s['p_type'] == 'PT_LOAD']
        syms = {}
        for sec in elf.iter_sections():
            if sec.name in ('.dynsym', '.symtab'):
                for s in sec.iter_symbols():
                    if s.name:
                        syms[s.name] = s['st_value']

    def vaddr_to_off(vaddr):
        for v, o, fsz in segs:
            if v <= vaddr < v + fsz:
                return o + (vaddr - v)
        return None

    data = bytearray(lib.read_bytes())
    patched = 0
    for name in targets:
        if name not in syms:
            print(f"[skip] {name} not found")
            continue
        va = syms[name] & ~1          # clear Thumb bit
        off = vaddr_to_off(va)
        if off is None:
            print(f"[skip] {name} @0x{va:x} not in a loadable segment")
            continue
        orig = bytes(data[off:off + 4])
        data[off:off + 4] = RET0_THUMB
        print(f"[patch] {name} @0x{va:08x} (off 0x{off:x}): {orig.hex()} -> {RET0_THUMB.hex()}")
        patched += 1

    # Scudo-safe delete: skip free() of misaligned pointers (see ALIGN_DELETE_TARGETS).
    for name in ALIGN_DELETE_TARGETS:
        if name not in syms:
            print(f"[skip] {name} not found")
            continue
        va = syms[name] & ~1
        off = vaddr_to_off(va)
        if off is None:
            continue
        # layout: +0 push{r4,lr}; +2 cmp r0,#0; +4 beq end
        if bytes(data[off + 2:off + 4]) == _CMP_R0_0 and bytes(data[off + 4:off + 6]) == _BEQ:
            data[off + 2:off + 4] = _LSLS_R4_R0_28
            data[off + 4:off + 6] = _BNE
            patched += 1
            print(f"[patch] {name} @0x{va:08x}: skip free() of misaligned (non-16) pointers")
        else:
            print(f"[skip] {name} @0x{va:08x}: unexpected prologue "
                  f"{bytes(data[off+2:off+6]).hex()}")

    if patched:
        lib.write_bytes(bytes(data))
    print(f"[done] patched {patched} function(s) in {lib.name}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
