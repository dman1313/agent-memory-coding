---
name: project-pyp-planner-gen
description: IB PYP planner generator — HTML + DOCX pipelines with quality gates, humanization, and TpT distribution
metadata:
  type: project
---

# pyp-planner-gen

## Status now

**2026-06-13 — MacH:** Claude skill at `~/.claude/skills/pyp-planner/SKILL.md` overhauled with two-path workflow:
- **Path A (Primary): HTML → PDF** — works in cloud/Claude. Full pipeline: Pre-Flight R1 (web search) + R2 (NotebookLM teaching resources) → interview choices → image generation (FAL via Hermes gateway) → contract check (18 criteria) → 3-pass humanization → stop-slop audit (≥35/50) → formatting QA → deliver.
- **Path B (Secondary): DOCX → Pages** — Apple Mac only, flagged as unreliable in cloud.

First complete unit produced: "From Farm to Table" (Grade 3, How the World Works). In `pyp_planner_generator_phase_a/units/grade-3-farm-to-table/`. 18/18 contract check passed, humanized, 7 images embedded, A4 print-ready.

Key additions to skill:
- Pre-Flight Research: mandatory web search + NotebookLM query before any planner content
- NotebookLM integration: `~/.claude/skills/notebooklm/` for teaching templates, prompts, workflows
- Quality gates table: contract check, humanizer, stop-slop, formatting, author-name check
- Author name removal: no personal names in footers (TpT store name in listing only)
- Research-only mode: user can ask to research a topic for a future planner

## Where things live

| Resource | Path |
|----------|------|
| **Claude skill** | `~/.claude/skills/pyp-planner/SKILL.md` (247 lines) |
| **Skill reference** | `~/.claude/skills/pyp-planner/REFERENCE.md` (IB descriptors, Pages rules) |
| **Contract check script** | `/Volumes/M2 Media/Coding Dwayne/IB planner/pyp_planner_generator_phase_a/check` |
| **Image generator** | `/Volumes/M2 Media/Coding Dwayne/IB planner/pyp_planner_generator_phase_a/scripts/image_gen.py` |
| **DOCX converter** | `/Volumes/M2 Media/Coding Dwayne/Claude/pyp-planner-gen/pyp_planner.py` |
| **NotebookLM skill** | `~/.claude/skills/notebooklm/` |
| **Hermes HTML skill** | `~/.hermes/skills/productivity/pyp-planner/SKILL.md` |
| **First unit output** | `/Volumes/M2 Media/Coding Dwayne/IB planner/pyp_planner_generator_phase_a/units/grade-3-farm-to-table/From_Farm_to_Table_Complete_Planner.html` |

## Key decisions

- HTML path is primary because DOCX → Pages chain doesn't work in cloud/Claude
- Image generation uses Hermes `image_generate` (FAL via gateway) — no local API key needed
- Author names stripped from all planner outputs — TpT store name goes in listing metadata only
- Pre-Flight research (web + NotebookLM) is mandatory before every new planner

## Open tasks

- Run NotebookLM auth setup (`notebooklm login`) for next planner session
- Consider initializing git repo for `~/.claude/skills/` to track skill versions
- Next planner: use full Pre-Flight pipeline with real web search + NotebookLM queries
