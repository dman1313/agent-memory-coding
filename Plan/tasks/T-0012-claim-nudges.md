---
id: T-0012
title: Claim nudges — P1 unclaimed >48h gets a rate-limited inbox reminder (fitness L4)
project: agent-memory
status: done
owner: hyperagent
created_by: hyperagent
created: 2026-06-11T22:10:00Z
updated: 2026-06-11T22:25:00Z
priority: P2
depends_on: []
handoff_to:
---
## Brief
Fitness lever L4. vault_keeper.js regen pass now sends one inbox reminder when a P1 task sits todo with a handoff_to for 48h+ — max one per 72h, max 2 total, then it escalates to Dwayne instead of nagging. Nudge is logged in the task's Log (the rate-limit state) and committed with the janitor run. Fixture-verified: fires once on a backdated P1, second run suppressed.

## Log
- 2026-06-11 hyperagent — claimed and executed (Dwayne go-ahead); fixture evidence in Vault Keeper thread. First live nudges would fire 2026-06-13 ~14:05Z if T-0002/T-0003 remain unclaimed.
