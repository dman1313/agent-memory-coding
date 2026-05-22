---
name: project-hermes-metaclaw
description: hermes-metaclaw package — MetaClaw integration for Hermes Agent with skill injection and RL training
metadata:
  type: project
---

## What it does
MetaClaw is a proxy layer that intercepts LLM calls and injects skills/learning signals. hermes-metaclaw adds Hermes Agent as a supported agent type.

**Location:** `/Volumes/M2 Media/Coding Dwayne/Claude/projects/hermes-metaclaw/`

## Key integration points
- Hermes config at `~/.hermes/config.yaml` patched to use `provider: "custom"` with `base_url: "http://127.0.0.1:{port}/v1"`
- Auto-patches via `metaclaw_hermes/__init__.py` runtime patching of `metaclaw.claw_adapter._ADAPTERS`
- Hermes has NO daemon restart — config change takes effect on next `hermes` invocation

## Files
- `metaclaw_hermes/__init__.py` — auto-registers hermes adapter via runtime patch
- `metaclaw_hermes/hermes_adapter.py` — patches ~/.hermes/config.yaml (YAML)
- `metaclaw_hermes/cli.py` — CLI extensions (hermes setup/status/revert)
- `scripts/launch_hermes_metaclaw.py` — full launch helper
- `scripts/install.sh` — install script

## Usage flow
1. `pip install -e hermes-metaclaw`
2. Edit `~/.metaclaw/config.yaml`: `claw_type: hermes`
3. `metaclaw hermes setup` — patches Hermes config
4. `metaclaw start` — starts proxy
5. `hermes` — in another terminal, routes through MetaClaw proxy
