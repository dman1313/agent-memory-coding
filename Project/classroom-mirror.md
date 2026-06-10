---
name: project-classroom-mirror
description: Privacy-first classroom webcam tool — pose-based behaviour numbers, never video; built via the agent-ready-coding-loop contract method
metadata:
  type: project
---

## What it is

Classroom Mirror turns classroom moments into **numbers, never video**, for [[Dwayne Primeau]]'s teaching context (France, IB school — GDPR/CNIL/EU-AI-Act constraints are load-bearing).

- **Mode 1 — strategy tracking:** is a support strategy working for ONE designated child? Consent-gated, pseudonymous (LIMS codes with a mandatory digit — names can't pass), zone-based tracking (teacher drags a box; pose detection, no faces). Baseline-vs-strategy sessions → neutral before/after report.
- **Mode 2 — whole-class reflection:** aggregate-only room patterns (hand-raises, movement level, people in view) as a mirror for the teacher's practice. **No per-child column exists in the schema** — anonymity by construction.

**Location:** `/Volumes/M2 Media/Coding Dwayne/Claude/classroom-mirror/`
**Status (2026-06-10):** 14/14 AUTO criteria YES; awaiting Dwayne's 5 [HUMAN] sign-offs (`HUMAN-CHECKS.md`). Git local, 4 commits, NOT pushed to GitHub (not requested).

## Origin — the ethics redesign

Dwayne's original ask was "webcam tags kids, times them in seats, counts hand-raises." Redesigned through the [[project-agent-ready-coding-loop|Loop Generator]] interview: face-tagging minors = biometric data (CNIL struck down facial recognition in schools); emotion/attention inference in education = prohibited by EU AI Act since Feb 2025. The legitimate kernel — "is this strategy supporting this child?" — needs no identification tech. Per-child LIMS rows for the whole class were **deliberately rejected** (pseudonymised ≠ anonymous); recorded in LATER.md.

## The contract method

First real run of agent-ready-coding-loop v2.2: `CONTRACT.md` (19 binary criteria, signed via plan approval), `./check` prints a plain-English scoreboard (guardrails first), checkpoint commits per scoreboard improvement, `LATER.md`, `HUMAN-CHECKS.md`. **The loop caught a real bug:** guardrail 4 failed because "Marie" passed a letters-only code pattern → LIMS/class codes now require ≥1 digit.

## Tech

Python 3.11 venv · Ultralytics YOLO11n-pose (AGPL — flagged in LATER.md for any distribution) · OpenCV · FastAPI on 127.0.0.1:8470 · SQLite (schema-locked by test) · vanilla-JS zone editor · `run.command` double-click launcher · `install.sh` (one-time, downloads model; zero network at runtime, proven by socket-block test).

## Open items

- Dwayne's 5 human checks (live trial, zone-setup timing, report readability, double-click start, runs ./check).
- Real-classroom use gated on homework: DPIA + parental consent (Mode 1) + school sign-off + CNIL check (in SETUP.md).
- Dev Mac has no camera — live trial must happen on Dwayne's MacBook.
