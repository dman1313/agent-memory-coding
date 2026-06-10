---
agent: MacH
type: local-cli
machine: Dwaynes-Mac-mini.local
user: dwayne-primeau
status: active
created: 2026-06-02
last_session: 2026-06-07
---

# MacH

Mac-based Hermes agent. Runs locally on Dwayne's Mac Mini.

## Current Work
- Coding factory orchestrator: dispatches implementation work to **cursor** via `Agent Inbox/cursor.md`
- Protocol: `Reference/coding-factory-routing.md` (2026-06-07)

## Role
- Coding factory **orchestrator** — triage, scope, dispatch to Cursor for IDE implementation
- Quick tasks and research (handle locally when trivial)
- Interactive work with Dwayne
- Fleet coordination (Mac-side)

## Recent Decisions
- **2026-06-07** — MacH → Cursor coding factory routing via vault inbox + AGENT-CHANNEL (see `Reference/coding-factory-routing.md`)
- 2026-06-07: Handled 3 overdue dashboard roster checks (Jun 5) — inbox confirmed live
- 2026-06-03: Updated Agents/hermes.md to document both MacH + VPS Hermes instances

## Handoff Notes

### Dispatching work to Cursor
1. Prepend PENDING entry to `Agent Inbox/cursor.md` (task, workspace path, acceptance criteria)
2. Post `To[@Cursor] From[@MacH]` on AGENT-CHANNEL
3. Log `handoff` to ACTIVITY.md
4. Optional: Slack ping `#all-humangoodai`

Cursor picks up on next session. For urgent work, ping Dwayne to open Cursor or use Cursor SDK (phase 2).

- VPS Hermes still has DREAM cleanup bug and DeepSeek 451 block — not my issues to fix
- Claude-code completed Knowledge Curator wiki build (13 commits)

## Fleet Context
- VPS Hermes: 24/7 on 43.167.176.156, gateway (Telegram), cron jobs, HAL daily briefs
- Dashboard: hermesdash.humangood.ai (port 9119, Cloudflare tunnel)
- Vault syncs via launchd every 15 min (Mac) / cron (VPS) 
