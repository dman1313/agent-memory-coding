# Knowledge Curator Wiki — Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Make the existing LLM-curated Obsidian wiki runnable as a conversational, self-growing shared brain by adding a `curate` skill, consolidating the schema, fixing taxonomy gaps, and building the visual layer.

**Architecture:** The agent is the engine, governed by `schema/AGENTS.md` (process) + `wiki/schema/config.md` (page format) + `schema/curate-modes.md` (modes). One `curate` skill with six modes (`compile / ask / capture / scribe / lint / analyze`) operationalizes it. Entity/concept/source taxonomy extended with `sop` + `principle` subtypes. Visuals via Mermaid + Dataview + Obsidian Base + Canvas.

**Tech Stack:** Markdown + YAML frontmatter, Obsidian (Dataview plugin, Bases core, Canvas), a Claude Code skill (`SKILL.md`), git. Optional: graphify (viz lens).

**Design spec:** [[schema/specs/2026-06-05-knowledge-curator-design]]

---

## Working context (read before starting)

- **Vault root (operate here):** `/Users/dwayne-primeau/Library/Mobile Documents/com~apple~CloudDocs/Agent Memory/Coding`
  Referred to below as `$VAULT`. Use `git -C "$VAULT" …` (path has spaces; avoid `cd`).
- **Git state:** local `main` is **1 ahead, 20 behind** `origin/main`, working tree dirty with fleet changes. Therefore:
  - Every task commits **locally only**, staging **named files** (never `git add -A`).
  - **Never force-push.** Reconcile + push is **Task 10**, via `sync.sh`, with Dwayne's confirmation.
- **Governance:** `schema/AGENTS.md` is normally read-only to agents (changes proposed via `ACTIVITY.md`/`AGENT-CHANNEL.md`). The AGENTS.md edits here are **pre-authorized by Dwayne** as part of this build; Task 1 also logs a `note` to `ACTIVITY.md` to honor the convention.
- **Safety boundaries (must appear in skill + schema):** no PII scrubbing (flag obvious secrets only); raw files immutable except the `processed` flag; append-only wiki; the curator **organizes** Dwayne's trade/stock research and **never generates trade or investment recommendations**.

## File structure

| File | Create/Modify | Responsibility |
|---|---|---|
| `schema/AGENTS.md` | Modify | Add Schema-precedence + Consulting-the-wiki sections; record answered tailoring questions |
| `schema/curate-modes.md` | Create | Behavior contract for the six modes |
| `wiki/schema/config.md` | Modify | Add `sop` + `principle` concept subtypes; add stock-idea/SOP examples |
| `.claude/skills/curate/SKILL.md` | Create | The thin `curate` skill (defers to schema) |
| `~/.claude/skills/curate` | Create (symlink) | Global availability for Claude Code |
| `wiki/_views/dashboards.md` | Create | Dataview dashboards (recent, orphans, stale, unprocessed, counts) |
| `wiki/_views/entities.base` | Create | Obsidian Base — browse entities/concepts by type |
| `.gitignore` | Modify | Stop ignoring the curated views base |
| `wiki/_views/knowledge-map.canvas` | Create | Curated master relationship Canvas |
| `raw/jeff-company-brain_*.md` + new `wiki/**` pages | Modify/Create | Clear the ingest backlog (first compile) |

---

## Task 1: Consolidate `schema/AGENTS.md`

**Files:**
- Modify: `schema/AGENTS.md`
- Modify: `ACTIVITY.md` (governance note)

- [ ] **Step 1: Add the "Schema precedence" section.** Insert immediately after the `## Wiki Hierarchy (Current)` section and before `## Tailoring Questions (for Dwayne)`:

```markdown
## Schema precedence

When sources of truth disagree, follow this order:

1. `schema/AGENTS.md` — process & lifecycle (how to operate). Read-only; human-approved changes only.
2. `wiki/schema/config.md` — page-format contract (what a page looks like).
3. `schema/curate-modes.md` — the `curate` skill's mode behaviors.
4. `wiki/concepts/Wiki-*.md` — articles *about* the schema. **Derived/auto-generated, NOT authoritative.**
```

- [ ] **Step 2: Add the "Consulting the wiki" contract.** Insert right after the block from Step 1:

```markdown
## Consulting the wiki (all agents)

This wiki is the shared brain for the whole fleet and Dwayne.

- **Before answering** a substantive question in the vault's domains, read `wiki/index.md`, pull the relevant pages, follow `[[wikilinks]]`, and **cite** the pages you used.
- **At session end**, consider `curate capture` to fold genuinely-new insights back into `raw/` (see `schema/curate-modes.md`).
- Reach the brain via `curate ask "<question>"` (or the read-path above). Dwayne also browses it via Obsidian (`wiki/_views/`, graph, Base).
- **Boundary:** organize and link research; never generate trade or investment recommendations.
```

- [ ] **Step 3: Replace the "Tailoring Questions" section with the answered decisions.** Replace the entire `## Tailoring Questions (for Dwayne)` block (lines beginning `## Tailoring Questions` through its numbered list) with:

```markdown
## Tailoring decisions (answered 2026-06-05)

| # | Question | Decision |
|---|---|---|
| 1 | Data types | SOPs, transcripts/meetings, docs/code/GitHub, articles/media, notes & agent logs, stock/trade ideas |
| 2 | Hierarchy | Entity-based (`entities/ concepts/ sources/`); `sop` + `principle` added as concept subtypes |
| 3 | PII filter | None — flag obvious secrets only |
| 4 | Visual tooling | Mermaid + Dataview + Obsidian Base + Canvas |
| 5 | Agent personas | Hybrid — one `curate` skill with modes |

See [[schema/curate-modes]] and [[schema/specs/2026-06-05-knowledge-curator-design]].
```

- [ ] **Step 4: Verify.** Run: `grep -nE "Schema precedence|Consulting the wiki|Tailoring decisions" "$VAULT/schema/AGENTS.md"`
Expected: three matching lines. Also confirm the old "Tailoring Questions" heading is gone: `grep -c "Tailoring Questions" "$VAULT/schema/AGENTS.md"` → `0`.

- [ ] **Step 5: Log the governance note + commit.**

```bash
# prepend a note under the ACTIVITY marker (newest-at-top)
# 2026-06-05T..Z | claude-code | note | wiki-obsidian | Updated schema/AGENTS.md (precedence + consult contract + answered tailoring Qs), pre-authorized by Dwayne.
git -C "$VAULT" add schema/AGENTS.md
git -C "$VAULT" commit -m "docs(schema): add precedence + consult contract, record tailoring decisions" -m "Co-Authored-By: Claude Opus 4.8 <noreply@anthropic.com>"
```

---

## Task 2: Create `schema/curate-modes.md`

**Files:**
- Create: `schema/curate-modes.md`

- [ ] **Step 1: Write the mode contract.** Create the file with this content:

````markdown
---
type: schema
created: 2026-06-05
governs: .claude/skills/curate
---

# curate — mode contract

The `curate` skill has one job per mode. All modes obey `schema/AGENTS.md`
(read order, append-only, immutable raw, safety boundaries) and
`wiki/schema/config.md` (page format). Read order always:
`AGENTS.md → wiki/index.md → wiki/log.md → target pages`.

## compile  (default)
Turn unprocessed `raw/` files into wiki pages.
1. Find `raw/**` files whose frontmatter lacks `processed: true`. Oldest first
   (by frontmatter `date`, else mtime). **If > 10, ask before proceeding.**
2. Extract per `config.md`: entities, concepts, sources — and explicitly
   **decisions** (date/decider/rationale), **SOPs** (`concept` tag `sop`),
   and **reusable principles/best-practices** (`concept` tag `principle`).
   Be selective: a passing mention is not an entity.
3. Create or **append** (dated heading `## Update YYYY-MM-DD from [[Source]]`).
   Never overwrite. Cross-link aggressively; a page with zero outbound links
   is a failure. Add a Mermaid relationship snippet to pages with ≥3 links.
4. Update `wiki/index.md`; log to `wiki/log.md` (`## [date] ingest | <title>`)
   and prepend a `milestone` to `ACTIVITY.md`.
5. Set raw frontmatter `processed: true`, `processed_at`, `wiki_articles_touched`;
   move the file to `raw/processed/<category>/`. Never delete raw.
Conflicts: `> CONTRADICTION FLAG: conflicts with [[Page]]` — never silent-merge.

## ask  "<question>"
Converse with the wiki (read-only).
1. Read `wiki/index.md`; select relevant pages; follow `[[wikilinks]]`.
2. Answer with `[[page]]` citations. Multi-turn; end with a follow-up offer.
3. `--deep` → `graphify query` (requires a prior `analyze`; else fall back to
   link-following). Never assert beyond what pages support; mark gaps.

## capture
Fold a conversation's new insight back into `raw/` for the next compile.
Write ONE `raw/` note (frontmatter unprocessed, `source: conversation`).
**Capture only:** a decision, a reusable principle/best-practice, a new
entity/relationship, or a correction/contradiction. **Skip** restatements,
chatter, unverified speculation (mark `> Uncertain:` if borderline). Pairs
with the `wrapup` skill at session end.

## scribe
`compile` tuned for transcripts/meetings: pull participants → entity
candidates, decisions, action items (owner + due), and verbatim quotes.

## lint
Health check (no content changes except the log). Report: orphans (no
inbound links), stale (>90d), unprocessed raw, index drift (pages missing
from `index.md`), dead `[[links]]`, merge/best-practice-consolidation
candidates. Write to `wiki/log.md` (`## [date] Lint`) + `ACTIVITY.md`.

## analyze   (optional)
Run graphify over `wiki/` for god-nodes / community detection / HTML viz.
A lens only — it does not modify wiki pages.
````

- [ ] **Step 2: Verify + commit.**

Run: `test -f "$VAULT/schema/curate-modes.md" && grep -c '^## ' "$VAULT/schema/curate-modes.md"`
Expected: `6` (six mode headings).

```bash
git -C "$VAULT" add schema/curate-modes.md
git -C "$VAULT" commit -m "docs(schema): add curate mode contract" -m "Co-Authored-By: Claude Opus 4.8 <noreply@anthropic.com>"
```

---

## Task 3: Extend `wiki/schema/config.md`

**Files:**
- Modify: `wiki/schema/config.md`

- [ ] **Step 1: Add subtypes in the Concept Page Template section.** Replace:

```markdown
- `tags:` — concept subtype, MUST be one of: theory, method, technology, term, other
```

with:

```markdown
- `tags:` — concept subtype, MUST be one of: theory, method, technology, term, sop, principle, other
```

- [ ] **Step 2: Add subtypes in the Classification Rules section.** Replace:

```markdown
- Concept subtypes (valid tags for type=concept): theory, method, technology, term, other
```

with:

```markdown
- Concept subtypes (valid tags for type=concept): theory, method, technology, term, sop, principle, other
  - `sop` = standard operating procedure / how-we-do-things
  - `principle` = mental model / best practice / how-we-think (grows append-only = the evolving mindset)
```

- [ ] **Step 3: Append a "Worked patterns" section at the end of the file:**

```markdown
## Worked patterns

**Stock/trade idea**
- Company/ticker → `entities/<company>.md` (`organization` or `product`)
- Thesis/strategy → `concepts/<thesis>.md` (`method` / `theory` / `principle`)
- Research (article, earnings transcript) → `sources/<source>.md`
- A dated setup → append-only on the company entity page:
  `## Trade idea 2026-06-05 from [[sources/...]]`
- The curator links and organizes; it never recommends buying/selling.

**SOP** → `concepts/<name>.md` with `tags: [sop]`; link the tools/people involved.
**Best practice / principle** → `concepts/<name>.md` with `tags: [principle]`;
append new evidence under dated headings so the thinking's arc is visible.
```

- [ ] **Step 4: Verify + commit.**

Run: `grep -n "sop, principle" "$VAULT/wiki/schema/config.md"`
Expected: two matching lines (template + classification).

```bash
git -C "$VAULT" add wiki/schema/config.md
git -C "$VAULT" commit -m "feat(schema): add sop + principle concept subtypes and worked patterns" -m "Co-Authored-By: Claude Opus 4.8 <noreply@anthropic.com>"
```

---

## Task 4: Build the `curate` skill

**Files:**
- Create: `.claude/skills/curate/SKILL.md`
- Create: `~/.claude/skills/curate` (symlink → vault skill dir)

- [ ] **Step 1: Write the skill.** Create `.claude/skills/curate/SKILL.md`:

````markdown
---
name: curate
description: Maintain and converse with the LLM-curated Obsidian wiki in this vault. Use for "compile raw", "update the wiki", "ask the wiki", "capture this", "lint the wiki". Modes — compile / ask / capture / scribe / lint / analyze.
trigger: /curate
---

# /curate

You are the **Knowledge Curator** for this vault (Karpathy LLM-Wiki pattern).
This skill is thin: the rules live in the schema. **Always read, in order:**
`schema/AGENTS.md` → `wiki/index.md` → `wiki/log.md` → target pages, and obey
`wiki/schema/config.md` (page format) and `schema/curate-modes.md` (modes).

## Usage
```
/curate compile            # raw/ → wiki/ (default if no mode given)
/curate ask "<question>"   # converse with the wiki (cited, multi-turn)
/curate ask "<q>" --deep   # multi-hop via graphify (needs a prior analyze)
/curate capture            # fold a conversation insight into raw/
/curate scribe             # compile tuned for transcripts/meetings
/curate lint               # health check → wiki/log.md + ACTIVITY.md
/curate analyze            # optional graphify viz lens over wiki/
```

## What to do
1. Resolve the mode (default `compile`). Load `schema/curate-modes.md` and follow
   that mode's contract exactly.
2. Honor the non-negotiables from `schema/AGENTS.md`:
   - Append-only; never overwrite history. Dated headings for updates.
   - Raw files immutable except the `processed` flag; never delete raw.
   - Cross-link aggressively; zero-outbound-link pages are failures.
   - Flag conflicts (`> CONTRADICTION FLAG:`), don't silently merge.
   - `compile`/`scribe`: if > 10 unprocessed files, ask before running.
3. Log: `wiki/log.md` for curator actions; prepend to `ACTIVITY.md`.
4. Commit locally, staging only the files you touched. Do NOT push or
   force-push — reconciliation is via `sync.sh` with Dwayne's go-ahead.

## Safety boundaries
- No PII scrubbing — only flag obvious secrets (keys, passwords) you happen to see.
- Organize and link Dwayne's trade/stock research; **never** generate trade or
  investment recommendations.
````

- [ ] **Step 2: Create the global symlink.**

```bash
ln -sfn "$VAULT/.claude/skills/curate" "$HOME/.claude/skills/curate"
ls -l "$HOME/.claude/skills/curate"
```
Expected: symlink pointing into the vault.

- [ ] **Step 3: Verify discovery + content.**

Run: `test -f "$VAULT/.claude/skills/curate/SKILL.md" && grep -m1 'name: curate' "$VAULT/.claude/skills/curate/SKILL.md"`
Expected: prints `name: curate`. (In a fresh Claude Code session in the vault, `/curate` should now be listed.)

- [ ] **Step 4: Commit** (`.claude/` is not gitignored; confirm with `git -C "$VAULT" check-ignore .claude/skills/curate/SKILL.md` → no output).

```bash
git -C "$VAULT" add .claude/skills/curate/SKILL.md
git -C "$VAULT" commit -m "feat(curate): add the curate skill (thin wrapper over schema)" -m "Co-Authored-By: Claude Opus 4.8 <noreply@anthropic.com>"
```

---

## Task 5: Clear the ingest backlog (first real `compile`)

**Files:**
- Modify: `raw/jeff-company-brain_vault-explainer.md`, `raw/jeff-company-brain_compile-raw-SKILL.md` (frontmatter only)
- Create: new pages under `wiki/sources/`, `wiki/entities/`, `wiki/concepts/`
- Modify: `wiki/index.md`, `wiki/log.md`
- Move: processed raw → `raw/processed/docs/`

- [ ] **Step 1: Pre-check what's unprocessed.**

Run: `grep -Lr "processed: true" "$VAULT/raw" --include=*.md | grep -v "/processed/"`
Expected: the two `jeff-company-brain_*.md` files (and possibly `Plan in the cloud with ultraplan.md` — verify whether it was already ingested; if its wiki source page exists and it's just unmoved, set `processed: true` and move it, don't re-ingest).

- [ ] **Step 2: Run compile.** In a Claude Code session with the vault as the working directory: `/curate compile`. (Manual fallback if not running the skill: follow `schema/curate-modes.md › compile` and `wiki/schema/config.md` templates by hand.)

- [ ] **Step 3: Verify acceptance criteria** (the extraction itself is the curator's judgment; verify the invariants, not exact page text):
  - Each of the two raw files now has `processed: true`, `processed_at`, `wiki_articles_touched` and lives under `raw/processed/docs/`.
    Run: `ls "$VAULT/raw/processed/docs/"` → shows both files; `ls "$VAULT/raw/" *.md` → they're gone from the inbox.
  - New `sources/` pages exist for both; expected entities/concepts include the LLM-Wiki pattern, Andrej Karpathy, Grain, and the compile/Zettelkasten concepts — each with ≥1 `[[wikilink]]`.
  - `wiki/index.md` lists every new page. Run: `/curate lint` → reports **no** index drift and **no** dead links from the new pages.
  - `wiki/log.md` has a new `## [2026-06-05] ingest | …` entry.

- [ ] **Step 4: Commit** the new/changed pages and moved raw (stage by name; list them from `git -C "$VAULT" status --short` and add only the wiki/raw paths from this task).

```bash
# example — replace with the actual paths from status
git -C "$VAULT" add wiki/index.md wiki/log.md wiki/sources/ wiki/entities/ wiki/concepts/ "raw/processed/docs/"
git -C "$VAULT" commit -m "content(wiki): ingest company-brain backlog into entities/concepts/sources" -m "Co-Authored-By: Claude Opus 4.8 <noreply@anthropic.com>"
```

---

## Task 6: Dataview dashboards

**Files:**
- Create: `wiki/_views/dashboards.md`

- [ ] **Step 1: Create the dashboards file** (requires the Dataview community plugin enabled in Obsidian):

````markdown
---
type: view
created: 2026-06-05
---
# Wiki Dashboards

> Requires the **Dataview** plugin. These are live queries over page frontmatter.

## Recently updated
```dataview
TABLE type, tags, updated FROM "wiki" WHERE type SORT updated DESC LIMIT 15
```

## Unprocessed raw (inbox)
```dataview
LIST FROM "raw" WHERE !processed AND !contains(file.folder, "processed")
```

## Stale (>90 days)
```dataview
TABLE updated FROM "wiki" WHERE type AND date(today) - date(updated) > dur(90 days) SORT updated ASC
```

## Counts by type
```dataview
TABLE length(rows) AS pages FROM "wiki" WHERE type GROUP BY type
```

## Possible orphans (no inbound links)
```dataview
LIST FROM "wiki" WHERE type AND length(file.inlinks) = 0 AND !contains(file.path, "_views")
```
````

- [ ] **Step 2: Verify + commit.**

Open `wiki/_views/dashboards.md` in Obsidian (Reading view) → each block renders a table/list (empty is fine pre-ingest). If Dataview isn't installed, Obsidian shows the code fenced — note it as a one-time plugin install.

```bash
git -C "$VAULT" add wiki/_views/dashboards.md
git -C "$VAULT" commit -m "feat(views): add Dataview dashboards" -m "Co-Authored-By: Claude Opus 4.8 <noreply@anthropic.com>"
```

---

## Task 7: Obsidian Base + .gitignore fix

**Files:**
- Modify: `.gitignore`
- Create: `wiki/_views/entities.base`

- [ ] **Step 1: Stop ignoring the curated views base.** The current `.gitignore` has `*.base` (which hides the stray `Untitled.base`). Append a negation **after** that line so the views base is tracked:

```
!wiki/_views/*.base
```

- [ ] **Step 2: Create the Base.** Create `wiki/_views/entities.base` (Obsidian Bases core plugin). Verify/adjust in Obsidian if your Bases version differs:

```yaml
filters:
  and:
    - 'type != ""'
    - '!file.path.contains("_views")'
views:
  - type: table
    name: Entities
    filters:
      and:
        - 'type == "entity"'
    order:
      - file.name
      - tags
      - updated
  - type: table
    name: Concepts
    filters:
      and:
        - 'type == "concept"'
    order:
      - file.name
      - tags
      - updated
  - type: table
    name: Sources
    filters:
      and:
        - 'type == "source"'
    order:
      - file.name
      - updated
```

- [ ] **Step 3: Verify + commit.**

Run: `git -C "$VAULT" check-ignore wiki/_views/entities.base` → **no output** (tracked). Open the base in Obsidian → three tabs (Entities/Concepts/Sources) populate.

```bash
git -C "$VAULT" add .gitignore wiki/_views/entities.base
git -C "$VAULT" commit -m "feat(views): add entities Base; track curated .base files" -m "Co-Authored-By: Claude Opus 4.8 <noreply@anthropic.com>"
```

---

## Task 8: Canvas master map

**Files:**
- Create: `wiki/_views/knowledge-map.canvas`

- [ ] **Step 1: Create a starter Canvas** (JSON Canvas format) anchored on the index and schema:

```json
{
  "nodes": [
    {"id":"index","type":"file","file":"wiki/index.md","x":-200,"y":-120,"width":400,"height":200},
    {"id":"agents","type":"file","file":"schema/AGENTS.md","x":300,"y":-120,"width":400,"height":200},
    {"id":"config","type":"file","file":"wiki/schema/config.md","x":300,"y":120,"width":400,"height":200},
    {"id":"note","type":"text","text":"Curated map — add entity/concept nodes as the graph grows. Regenerate via `/curate analyze`.","x":-200,"y":120,"width":400,"height":120}
  ],
  "edges": [
    {"id":"e1","fromNode":"index","toNode":"agents"},
    {"id":"e2","fromNode":"index","toNode":"config"}
  ]
}
```

- [ ] **Step 2: Verify + commit.**

Open `wiki/_views/knowledge-map.canvas` in Obsidian → three file cards + one note render with edges.

```bash
git -C "$VAULT" add wiki/_views/knowledge-map.canvas
git -C "$VAULT" commit -m "feat(views): add Canvas master map" -m "Co-Authored-By: Claude Opus 4.8 <noreply@anthropic.com>"
```

---

## Task 9: Verification pass

**Files:**
- Modify: `wiki/log.md` (lint output)

- [ ] **Step 1: Lint.** Run `/curate lint`. Expected: no dead links, no index drift, no unprocessed raw (backlog cleared in Task 5). Any orphans are acknowledged or linked.

- [ ] **Step 2: Conversational smoke test.** Run `/curate ask "What is the LLM wiki pattern and why use it over embeddings?"`. Expected: an answer citing `[[sources/...]]`/`[[concepts/...]]` pages created in Task 5 — proving the read/converse path works.

- [ ] **Step 3: Commit the lint log.**

```bash
git -C "$VAULT" add wiki/log.md
git -C "$VAULT" commit -m "chore(wiki): lint pass — clean" -m "Co-Authored-By: Claude Opus 4.8 <noreply@anthropic.com>"
```

---

## Task 10: Reconcile & push (requires Dwayne's go-ahead)

**Files:** none (git operation)

> Local `main` is behind `origin/main` and the tree carries fleet work. This task is **outward-facing** and **must not** run without Dwayne's confirmation. **Never force-push.**

- [ ] **Step 1: Confirm with Dwayne** that it's OK to reconcile + push **all** pending vault changes.
- [ ] **Step 2: Reconcile via the fleet tool.** Preferred: run `bash "$VAULT/sync.sh"` (handles pull→commit→push). If resolving manually instead: `git -C "$VAULT" pull --rebase` from a clean tree (stash first), resolve any conflicts, then `git -C "$VAULT" push`.
- [ ] **Step 3: Verify.** `git -C "$VAULT" rev-list --left-right --count HEAD...origin/main` → `0   0` (in sync). Prepend a `milestone` to `ACTIVITY.md`.

---

## Self-review (completed by plan author)

- **Spec coverage:** modes (T2,T4) · taxonomy/sop/principle (T3) · schema precedence (T1) · shared-brain contract (T1) · learning loop/capture (T2,T4) · stock-idea flow (T3) · folder layout + `_views` (T6–T8) · backlog + supersede imported skill (T5) · visuals all four (Mermaid in T2 compile rule, Dataview T6, Base T7, Canvas T8) · safety boundaries (T1,T4) · git/VPS reconcile (T10). No spec section left without a task.
- **Placeholder scan:** every content step ships real content; Task 5's page *text* is intentionally curator-generated, but its **invariants are verified** (processed flags, moves, index/log, links) — not a placeholder.
- **Consistency:** mode names (`compile/ask/capture/scribe/lint/analyze`), subtypes (`sop`,`principle`), and `$VAULT` usage are identical across tasks. `.base` is un-ignored in T7 before it's committed.
- **Known external dependency:** Dataview plugin (flagged in T6); Bases syntax may need a tweak per Obsidian version (flagged in T7).
