---
name: project-agent-ready-coding-loop
description: The Loop Generator — reusable contract-driven starter prompt for non-technical humans working with coding agents; private GitHub repo
metadata:
  type: project
---

## What it is

A reusable starter prompt that turns any coding agent into an interviewer, contract-writer, and loop-driven builder for **non-technical humans**. The human's power = the contract (binary YES/NO criteria, plain English) + the scoreboard (one command, `./check`, runnable forever without the agent).

**Repo:** https://github.com/dman1313/agent-ready-coding-loop (private; renamed from `loop-generator` 2026-06-09; flip public with `gh repo edit dman1313/agent-ready-coding-loop --visibility public`)
**Local:** `/Volumes/M2 Media/Coding Dwayne/Claude/loop-generator/` (folder kept old name on purpose)
**Files:** `PROMPT.md` (the artifact) + `README.md`. Git history: commit 1 = Dwayne's v2.1 verbatim, commit 2 = v2.2 — the diff between them IS the review.

## Flow

Phase 1 interview (incl. running-cost question) → Phase 1.5 ethics check (fake-data-only rule when real people's data involved) → Phase 2 contract: 8–20 binary criteria tagged [AUTO]/[HUMAN]/[INSPECT], signed then LOCKED, saved to `CONTRACT.md` with amendment history → Phase 3 loop: build → full suite → scoreboard; checkpoint commit per improvement; budget = 6 consecutive attempts without improvement; Stuck Report → `STUCK.md` → Phase 4 handover (`LATER.md`, setup guide, "if it breaks" recipe).

## v2.2 fixes over Dwayne's v2.1 (the review findings)

1. Contract previously lived only in chat → now on disk + **resume-don't-restart** protocol (finds CONTRACT.md, skips re-interview).
2. Loop exit was unreachable ([HUMAN] criteria never entered the loop) → all-AUTO-green now triggers ONE bundled human sign-off sitting.
3. "6 attempts" ambiguity → counts stagnation; a NO→YES resets the budget.
4. Mid-build additions = formal amendments, never quiet extras.

## Track record

First real run: [[project-classroom-mirror]] (2026-06-09/10) — interview redesigned an illegal idea into a defensible one; a guardrail test caught a real privacy hole ("Marie" passed as a code) on first run. The method works.
