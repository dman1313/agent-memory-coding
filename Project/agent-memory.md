---
name: project-agent-memory
description: The shared vault itself — fleet coordination layer + Dwayne's second brain (resume point for vault work)
metadata:
  type: project
---

# Agent Memory (this vault)

The vault is dual-purpose: the fleet's coordination layer AND Dwayne's second brain. Spec: `sdd/specs/2026-06-11-fleet-plan-board/`.

## Status now

Fleet Plan Board + janitor shipped 2026-06-11 (hyperagent): Plan/ board live with 8 seeded tasks, build-context.sh now renders the board into NOW.md, auto-closes stale sessions >48h, archives DONE channel messages >48h, and flags raw-inbox backlog + missing archive stamps. Suspected issue: the Mac launchd vault-sync job may be down (NOW.md sat ~15h stale on 2026-06-11) — T-0002.

## Next steps

- T-0002 (MacH): verify/restore the com.dwayne.vault-sync launchd job — the janitor rides it
- T-0001 (MacH): retire the diverged ~/agent-memory Mac working tree
- After a week of board use: review spec success criteria 1/2/6 and mark the spec Done

## Where things live

- Repo: github.com/dman1313/agent-memory-coding (private) · Mac iCloud path + VPS clone per STANDING-ORDERS
- Board: `Plan/` (contract in Plan/README.md, dashboard in Plan/board.md) · Fleet state: NOW.md
- Generator/janitor: `build-context.sh` (runs via sync.sh every 15 min on Mac) · Spec/plan/tasks: `sdd/specs/2026-06-11-fleet-plan-board/`

## Open tasks

- [[Plan/tasks/T-0001-retire-diverged-mac-tree|T-0001]] · [[Plan/tasks/T-0002-verify-vault-sync-launchd|T-0002]]
