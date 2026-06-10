---
title: "Knowledge Curator build — session capture"
date: 2026-06-06
source: conversation
participants: ["Dwayne", "claude-code"]
tags: [capture, wiki-obsidian]
---

# Knowledge Curator build — session capture

Captured from the 2026-06-05/06 session that made the LLM-curated wiki runnable. **Unprocessed** — the next `compile` should fold these into the graph (a `curate` entity, a git-sync principle, updates to [[concepts/compile-raw]] / [[concepts/llm-curated-wiki]], and a decision record).

## Decisions (2026-06-06, decider: Dwayne)

- **The engine is the agent itself**, governed by `schema/AGENTS.md` (process) + `wiki/schema/config.md` (page format) + `schema/curate-modes.md` (modes). graphify is an *optional viz lens* (`curate analyze`), not the curator. Corrects the early assumption that graphify built the wiki.
- **Taxonomy:** keep `entities/concepts/sources`; add concept subtypes `sop` (procedures) and `principle` (mental models / best practices / the evolving "mindset").
- **One skill, six modes** (hybrid persona): `compile / ask / capture / scribe / lint / analyze`.
- **No PII scrubbing** — personal local vault; flag obvious secrets only.
- **Schema precedence:** `AGENTS.md` > `config.md` > `curate-modes.md` > derived `wiki/concepts/Wiki-*` (articles *about* the schema, not authoritative).
- **Purpose:** a conversational, self-growing, fleet-shared brain that also distills best practice — not a write-only archive.

## Principles / best practices (reusable)

- **Git is the sync — don't nest a repo inside a consumer cloud folder (iCloud/Dropbox).** Two sync layers fight over `.git`; iCloud also evicts files to placeholders, which breaks automated agents. Since the vault already syncs git → GitHub → VPS, the working copy belongs in a plain local folder. (Vault stays in iCloud for now; move planned.)
- **The processed-check reads the frontmatter block only.** Instructional sources quote `processed: true` in their bodies, so a whole-file grep wrongly skips them. Hardened in `curate-modes.md`.
- **Capture selectively** — decisions, principles, new entities/relationships, corrections; skip restatements, chatter, and unverified speculation.

## New entity

- **`curate`** — the in-vault Claude Code skill that maintains and converses with this wiki; implements [[concepts/compile-raw]] and serves the [[concepts/llm-curated-wiki]] read path. Lives at `.claude/skills/curate/`, symlinked to `~/.claude/skills/`. Governed by `AGENTS.md` / `config.md` / `curate-modes.md`; its `analyze` mode wraps graphify.

## Correction / contradiction (resolved)

- The imported `compile-raw` skill's `topics/people/companies/projects` taxonomy conflicts with this vault's `entities/concepts/sources`. Method adopted; folders not. Already flagged in the graph.

## Safety boundary (standing)

- The curator organizes and links Dwayne's trade/stock research; it never generates trade or investment recommendations.
