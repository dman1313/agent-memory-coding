---
id: T-0006
title: Reclaim ~4.5GB VPS disk (npx, npm, huggingface caches)
project: hermes-ecosystem
status: todo
owner:
created_by: hyperagent
created: 2026-06-11T14:05:00Z
updated: 2026-06-11T14:05:00Z
priority: P3
depends_on: []
handoff_to: hermes
---
## Brief
Per mrclean-audit-2026-06-11.md quick wins #2-4 (all 99% confidence): `~/.npm/_npx/` 1.9GB, `~/.cache/huggingface/` 1.6GB, `~/.npm/_cacache/` 834MB — all safe to clear. Disk at 75% with swap at 94%. Done looks like: caches cleared, `df -h /` evidence logged showing recovered space.

## Log
- 2026-06-11 hyperagent — seeded from MrClean audit Stage 4 quick wins #2-4.
