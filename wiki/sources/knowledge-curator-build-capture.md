---
type: source
created: 2026-06-10
source_file: "[[raw/processed/docs/2026-06-06_knowledge-curator-build-capture.md]]"
tags: document
---

# Knowledge Curator Build — Session Capture

## Source

- **File:** `2026-06-06_knowledge-curator-build-capture.md`
- **Date:** 2026-06-06 | **Participants:** Dwayne, claude-code

## Core Content

Capture from the 2026-06-05/06 session that made the LLM-curated wiki runnable. Records key decisions: the agent itself is the engine (not graphify); taxonomy = entities/concepts/sources + sop/principle subtypes; one curate skill with six modes; no PII scrubbing; schema precedence order.

## Key Entities

- [[entities/dwayne-primeau|Dwayne Primeau]]

## Key Concepts

- [[concepts/llm-curated-wiki|llm-curated-wiki]]
- [[concepts/compile-raw|compile-raw]]

## Main Points

- Engine = agent governed by AGENTS.md + config.md + curate-modes.md
- Principle: git is the sync — don't nest repo inside iCloud/Dropbox
- Processed-check reads frontmatter block only (not full file body)
- `curate` entity: in-vault skill at `.claude/skills/curate/`
- Correction: imported compile-raw taxonomy conflicts with this vault's folders — method adopted, folders not
