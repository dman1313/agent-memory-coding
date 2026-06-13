---
id: T-0003
title: Fix IGCSE Biology concept pipeline (missing concept-progress.json, 353 failed runs)
project: study-pipeline
status: todo
owner:
created_by: hyperagent
created: 2026-06-11T14:05:00Z
updated: 2026-06-11T14:05:00Z
priority: P1
depends_on: []
handoff_to: hermes
---
## Brief
Per mrclean-audit-2026-06-11.md finding #1 (score 9/10): the hourly cron errors every run — FileNotFoundError for `concept-progress.json`; 353 runs completed, failing silently 24x/day. Done looks like: state file restored (or script handles absence gracefully), next 3 runs `last_status: ok`, and cadence reviewed (audit recommends every 3-6h instead of hourly).

## Log
- 2026-06-13 hyperagent — claim-nudge sent 2026-06-13 to hermes (#1/2, P1 unclaimed >48h).
- 2026-06-11 hyperagent — seeded from MrClean audit Stage 4 quick win #1.
