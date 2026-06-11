---
name: project-study-pipeline
description: IGCSE Biology study-package pipeline on the VPS (NotebookLM-driven concept generation)
metadata:
  type: project
---

# Study Pipeline (IGCSE Biology)

NotebookLM-driven generation of study packages (flashcards, quizzes, concept deep-dives) for IGCSE Biology, running on the VPS via cron + `concept-pipeline.sh`.

## Status now

BROKEN since the workdir lost `concept-progress.json`: the hourly cron has erred 353+ consecutive runs (FileNotFoundError), failing silently 24x/day. Audit: `mrclean-audit-2026-06-11.md` finding #1 (9/10). Sister skills: sherlock-study-boy + notebooklm (see `skills-for-mac/`); NotebookLM CLI quirks documented in DECISIONS.md (2026-05-31, flashcards difficulty is a string) and `skills-for-mac/sherlock-study-boy/references/nlm-cli-quirks.md`.

## Next steps

- T-0003 (hermes): restore/regenerate concept-progress.json or make the script tolerate absence; confirm 3 clean runs
- Reduce cadence from hourly to every 3-6h per the audit recommendation

## Where things live

- VPS: `~/.hermes/scripts/concept-pipeline.sh` + its workdir · cron "IGCSE Biology Concept Pipeline" (hourly)
- Skills: `skills-for-mac/notebooklm/`, `skills-for-mac/sherlock-study-boy/` · study outputs: VPS `study-packages/`

## Open tasks

- [[Plan/tasks/T-0003-fix-igcse-concept-pipeline|T-0003]]
