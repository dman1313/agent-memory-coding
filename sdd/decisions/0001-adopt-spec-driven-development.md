# ADR 0001: Adopt Spec-Driven Development for the fleet

- **Status:** Accepted
- **Date:** 2026-06-07 · **Deciders:** Dwayne Primeau, claude-code

## Context
Agents had begun building directly from chat instructions without a shared, written spec — risking wasted work, duplicated effort, and divergence across the fleet (Claude Code, Codex, Cursor, Kimi, Goose, Kiro, Hermes, Antigravity). The Knowledge Curator build demonstrated that a brainstorm → spec → plan → execute → verify flow produces reviewable, high-quality results that another agent can pick up.

## Decision
All fleet agents follow the SDD protocol in `sdd/README.md` for non-trivial work: write `spec.md`, then `plan.md`, then `tasks.md`, execute task-by-task with evidence-based verification, and record significant choices as ADRs in `sdd/decisions/`. The protocol is wired into `STANDING-ORDERS.md` (mandatory startup reading).

## Consequences
- Slightly slower start on small tasks — mitigated by explicitly skipping SDD for trivial fixes.
- Shared, reviewable artifacts; far less rework; agents can hand specs off mid-stream.
- A consistent place (`sdd/`) to find why and how anything was built.

## Alternatives considered
- **Ad-hoc / vibe-coding** — rejected: it caused the divergence this fixes.
- **Heavy formal process for every task** — rejected: too much overhead; SDD is scaled to the task and skipped for trivial work.
