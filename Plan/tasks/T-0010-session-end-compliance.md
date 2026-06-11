---
id: T-0010
title: Session-end compliance — janitor names offenders in NOW.md (fitness L2)
project: agent-memory
status: done
owner: hyperagent
created_by: hyperagent
created: 2026-06-11T21:05:00Z
updated: 2026-06-11T21:20:00Z
priority: P2
depends_on: []
handoff_to:
---
## Brief
Fitness-loop lever L2 (spec: sdd/specs/2026-06-11-vault-fitness-loop/). Baseline: only 11 of 22 sessions in 7d logged a session-end (50%). Change: build-context.sh renders a "Session Hygiene (7d)" section in NOW.md naming, per fleet agent, unpaired starts/ends and janitor auto-close counts; AGENT-BOOTSTRAP rules gain one line making the consequence explicit. Done looks like: section renders with real data; pairing rate trend tracked weekly in Reference/vault-fitness.md toward ≥90%.

## Log
- 2026-06-11 hyperagent — claimed and executed same-session (Dwayne go-ahead in Vault Keeper thread); replica-verified before commit.
