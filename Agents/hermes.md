---
name: agent-hermes
description: Hermes Agent — VPS-based, Nous Research, agent fleet orchestrator
metadata:
  type: reference
---

# Hermes

**Platform:** VPS (Ubuntu)
**Model:** Configurable
**Memory:** Git clone at `/home/ubuntu/agent-memory/`
**Config:** `~/.hermes/profiles/swarm8/SOUL.md`

## Skills
No skills installed yet (curator seeded but never run).

## Agent Fleet
- **Sherlock** — Research agent
- **Special Ops** — Orchestration agent
- **DREAM** — Quality tracking agent
- **Firehose** — Trending topics agent
- **Communication Officer** — Planned, not yet built

## Components
- **kanban.db** — SQLite task/project tracking
- **gateway_state.json** — Gateway state management
- **Hermes WebUI** — Port 8787

## Strengths
- Best for: running tasks on the VPS, agent fleet orchestration, server maintenance
- Only agent with direct VPS access
- Can coordinate with Sherlock, Special Ops, DREAM, Firehose
- Needs skill curation run to unlock full potential
