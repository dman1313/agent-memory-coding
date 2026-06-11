---
name: vault-fitness
description: KPI trend + iteration log for the Vault Fitness Loop (weekly, run by hyperagent/Vault Keeper)
metadata:
  type: reference
---

# Vault Fitness — trend & iteration log

Loop spec: `sdd/specs/2026-06-11-vault-fitness-loop/spec.md` · instrument: `scripts/vault-keeper/vault_fitness.js`. Append-only: one row + one iteration note per run.

| date | pages | links/pg | resume cov. | sessions 7d | auto-closes | claims (non-keeper) | raw/unstamped | NOW age |
|---|---|---|---|---|---|---|---|---|
| 2026-06-11 | 71 | 7.7 | 4/32 | 22s/11e | 2 | 0 | 0/0 | 51m |

## Iterations

### Iteration 0 — 2026-06-11 (baseline)
Headline findings: only **50% of sessions log a session-end** (janitor compensating); **resume coverage 4/32** (the "32" includes one-off slugs — definition refinement queued as L3); **board adoption 0** non-keeper claims (launch day — dispatches pending pickup). Wiki itself healthy: 71 pages, 7.7 links/page, raw inbox + archive stamps clean.
**Lever chosen → L1 search page (T-0009):** directly serves Dwayne's "can be searched later on"; zero risk to rules. Measured next run by: search page exists, covers all four content classes, and gets referenced.

### Iteration 1 — 2026-06-11 (L1 shipped)
**Lever L1 — search page: DONE.** `project-graphs/wiki/search.html` — 100 documents indexed across all four content classes (wiki 71, board tasks 9, projects 13, decisions 7), self-contained (works offline/from Obsidian), ranked results with highlighted excerpts and file paths, type filters. T-0009 todo→claimed→done same day. Measured next run: page referenced/used; doc count tracks vault growth. **Next lever queued: L2 (session-end compliance — 50% pairing rate is the worst KPI).**

### Iteration 2 — 2026-06-11 (L2 shipped)
**Lever L2 — session-end compliance: DONE (T-0010).** NOW.md now renders "Session Hygiene (7d)" naming each fleet agent with unpaired sessions or janitor auto-closes; AGENT-BOOTSTRAP rules state the consequence. Mechanism: visibility-by-name in the file every agent reads first. Measured next runs: starts/ends pairing rate (baseline 22s/11e = 50%, target ≥90%) and weekly auto-close count trending to 0. **Next lever queued: L3 (resume-coverage definition + rollout).**

### Iteration 3 — 2026-06-11 (L3 shipped)
**Lever L3 — resume coverage: DONE (T-0011).** Definition fixed (real project = ≥3 ACTIVITY entries/14d; sprawl slugs tracked separately — baseline 18). Rollout: 11 evidence-based resume pages + 1 alias stub (agent-memory-coding → agent-memory) generated from each project's ACTIVITY trail, marked for owner refinement at next session-end. **Coverage: 2/14 → 14/14.** Measured next runs: coverage stays 14/14 as definition catches new projects; sprawl count trend; pages refined by owners (not just generated). **Next lever queued: L4 (claim nudges).**
