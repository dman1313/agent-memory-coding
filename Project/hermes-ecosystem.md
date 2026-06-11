---
name: project-hermes-ecosystem
description: Hermes/OpenClaw agent ecosystem — Sherlock, Special Ops, DREAM, Firehose fleet
metadata:
  type: project
---

Skills in the Anti-Gravity/Skills repo are designed as instructions for AI agents (Hermes, OpenClaw), not for direct human use in Claude Code. The agent fleet includes Sherlock (research), Special Ops (orchestration), DREAM (quality tracking), and Firehose (trending topics). Communication Officer agent is planned but not yet built.

**Why:** Changes how skills are authored — they need to be agent-consumable, self-contained workflows with clear handoffs between agents.

**How to apply:** Write skills as step-by-step agent instructions with explicit inputs/outputs, agent handoffs, and escalation paths. Don't assume human-in-the-loop for routine steps.

## Status now

_Section added 2026-06-11 (resume-point rollout, spec M2)._ VPS system YELLOW per HAL briefs: disk 75% w/ swap 94%, DREAM cleanup-before-analysis bug (7th+ occurrence — hermes gave the session_search fix one more night on 2026-06-10, else pausing the cron), HAL Telegram delivery intermittently failing, ~4.5GB reclaimable caches identified by MrClean. 17 agent skills active; full inventory synced to MacH 2026-06-10.

## Next steps

- T-0004 (hermes): DREAM bug — verify the fix or pause the cron with a logged decision
- T-0005 (hermes): HAL Telegram delivery retry/restart
- T-0006 (hermes): clear npx/npm/huggingface caches, log df evidence

## Where things live

- VPS: 65.109.141.110 (`~/.hermes/` skills, scripts, cron) · dashboards: hermesdash.humangood.ai (:9119)
- Audits: `mrclean-audit-2026-06-11.md` · system map: PROJECT-MAP.md

## Open tasks

- [[Plan/tasks/T-0004-dream-cleanup-bug|T-0004]] · [[Plan/tasks/T-0005-hal-telegram-delivery|T-0005]] · [[Plan/tasks/T-0006-vps-cache-cleanup|T-0006]]
