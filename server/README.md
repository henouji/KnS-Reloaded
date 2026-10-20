# Mock backend (`server/`)

Routed mock of the three KnS server surfaces. Supersedes the flat PoC
`/mock_server.py` at the repo root.

- `app.py` — HTTP server + router + per-UID SQLite store (writes `work/kns.sqlite`).
- `c2s_crypto.py` — AES-256 / signature reimplementation for the game gateway
  (UNVALIDATED until Track A captures land; see `docs/crypto-findings.md`).

## Run

```sh
python server/app.py 8080
```

## Status by surface

| Route | Surface | Phase | State |
|---|---|---|---|
| `…/gateway.php` | ActiveUser (DID, version, terms) | 2 | works (shapes = best guess) |
| `…/hub…`, `…guest…` | Hub 2.0 auth | 3 | works, persists uid+keys |
| `…/1mhero/…` | game gateway (AES, `aPi`) | 4+ | blocked on captured key |

The ActiveUser/Hub responses are plaintext and iterable now. The `/1mhero/` gateway
needs the AES key + confirmed envelope from Track A (`docs/emulator-setup.md`) before
it can answer; until then it returns `errno:-1 decode_request TODO(capture)`.

## Next (when captures arrive)

1. Fill the `TODO(frida)` constants in `c2s_crypto.py` (key, mode, signature order).
2. `python server/c2s_crypto.py validate work/crypto-captures.jsonl` → `0 mismatched`.
3. Map real `aPi` names → handlers in `dispatch_api()` using
   `docs/reference/result-fields.txt` for the `Result` field shapes.
4. Verify each ActiveUser/Hub response shape against the real client logs and adjust.
