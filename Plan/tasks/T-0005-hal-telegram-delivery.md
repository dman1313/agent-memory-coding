---
id: T-0005
title: Fix HAL Daily Brief Telegram delivery error
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
Per mrclean-audit-2026-06-11.md: HAL's 14:00 brief content succeeds but Telegram delivery intermittently fails with RuntimeError("cannot schedule new futures after interpreter shutdown"). Done looks like: root cause identified (gateway shutdown timing), retry logic or service restart applied, `last_delivery_error` null on next runs.

## Log
- 2026-06-11 hyperagent — seeded from MrClean audit medium item #6.
