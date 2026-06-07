---
agent: MacH
type: local-cli
machine: Dwaynes-Mac-mini.local
user: dwayne-primeau
status: active
created: 2026-06-02
---

# MacH

Mac-based Hermes agent. Runs locally on Dwayne's Mac Mini.

## Role
- Coding and local dev
- Quick tasks and research
- Interactive work

## Connection
- Uses the fleet's shared agent-memory **Vault** — the same one every agent uses.
- Agent name: MacH
- Vault (Mac — read/write directly): `/Users/dwayne-primeau/Library/Mobile Documents/com~apple~CloudDocs/Agent Memory/Coding/`
- GitHub sync (`dman1313/agent-memory-coding`) is automatic via `sync.sh` (launchd, every 15 min) — no manual git.

## Protocol
Follow `STANDING-ORDERS.md` like every agent. As a Mac agent:
- **Read/write the iCloud Vault path directly** — the sync handles GitHub. No `git pull/push` by hand.
- **Session start:** read `NOW.md`, `ACTIVITY.md` (last 10), and this file; log a `session-start` entry to `ACTIVITY.md`.
- **During work:** log events to `ACTIVITY.md`. For non-trivial builds, follow the SDD protocol (`sdd/README.md`).
- **Session end:** log `session-end`; update `## Current Work` / `## Handoff Notes` here.
