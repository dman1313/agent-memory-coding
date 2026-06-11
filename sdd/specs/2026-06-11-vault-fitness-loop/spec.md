# Spec: Vault Fitness Loop — continuous improvement of the memory system

- **Status:** Approved (Dwayne directive 2026-06-11: "look at how to improve it and go in a loop... keep improving it and having systems so that all agents will stay on task. It can be searched later on and it's a growing base of information.")
- **Owner:** Dwayne Primeau · **Agent:** hyperagent · **Date:** 2026-06-11

## Goal

Turn the vault's own improvement doctrine (`schema/AGENTS.md` §8, Karpathy loop) on the vault itself: a standing, measured loop — KPI → one lever → test → measure → repeat — run autonomously by the Vault Keeper, so the memory system gets better every week and agents stay on task.

## KPIs (instrument: `scripts/vault-keeper/vault_fitness.js` · trend: `Reference/vault-fitness.md`)

| KPI | Baseline 2026-06-11 | Target |
|---|---|---|
| Wiki pages / links-per-page (growing base) | 71 / 7.7 | growing; links/page ≥5 |
| Resume coverage (active projects w/ resume page) | **4/32** | 100% of real projects (def. refined L3) |
| Session ritual (starts/ends, 7d) | **22s / 11e (50%)** | ≥90% paired |
| Janitor auto-closes (cumulative) | 2 | trend → 0 per week |
| Board adoption (non-keeper claims) | **0** | ≥1/wk, growing |
| Raw inbox / unstamped archive | 0 / 0 | stay 0 |
| NOW.md age at check | 51 min | <60 min |
| Hybrid-search trigger (ADR 0002) | 71/300 pages | adopt search at need, not at threshold |

## The loop (weekly, autonomous)

1. Keeper runs the instrument (Sundays, or >7d since last row) → appends one trend row + iteration note to `Reference/vault-fitness.md`.
2. Picks **ONE lever** from the backlog (highest KPI impact, smallest change), files/claims it as a board task, executes per write rules, logs to ACTIVITY.
3. Next week's row measures the effect. Keep / adjust / revert.
4. **Stop conditions:** Dwayne says stop · 3 iterations with no KPI movement (report and pause) · any lever requiring rule changes beyond M7-style one-place edits → Dwayne approval first.

## Lever backlog (ranked; each becomes a board task when its turn comes)

- **L1 — Search page** (T-0009): generated, self-contained `project-graphs/wiki/search.html` — client-side full-text over wiki/, Plan/, Project/, DECISIONS. "Searched later on" ✓.
- **L2 — Session-end compliance:** janitor names repeat auto-close offenders in NOW.md; bootstrap reminder line. Targets the 50% pairing rate.
- **L3 — Resume-coverage definition + rollout:** count only projects with ≥3 ACTIVITY entries/14d (kills slug sprawl); add resume pages for the real ones.
- **L4 — Claim nudges:** P1 unclaimed >48h → one rate-limited reminder dispatch to the assigned agent's inbox.
- **L5 — Weekly digest:** keeper posts "week in the vault" To[@ALL] (state, claims, fitness deltas).
- **L6 — Resume staleness v2:** compare resume-page `updated` vs project's last ACTIVITY (v1 only checks existence).
- **L7 — Hybrid search (BM25+vector):** stays deferred per ADR 0002; fitness report watches the trigger.

## Out of scope

Wiki content changes (curator-only) · new daemons/infra (everything rides keeper + sync) · multi-vault rollout (after this vault proves the loop).

## Links

`schema/AGENTS.md` §8 · `sdd/specs/2026-06-11-fleet-plan-board/` · ADR 0002 · ADR 0004 · `Reference/vault-fitness.md`
