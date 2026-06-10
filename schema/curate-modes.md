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
   (by frontmatter `date`, else mtime). Check the **frontmatter block only** — a
   body that quotes `processed: true` (e.g. instructional docs) does NOT count.
   **If > 10, ask before proceeding.**
2. Extract per `config.md`: entities, concepts, sources — and explicitly
   **decisions** (date/decider/rationale), **SOPs** (`concept` tag `sop`),
   and **reusable principles/best-practices** (`concept` tag `principle`).
   Be selective: a passing mention is not an entity.
   **Schema alignment (mandatory):** before creating ANY new page, check the
   candidate name against `wiki/index.md` — including alias lists — and against
   existing subtypes. A name matching an existing page or alias is an UPDATE to
   that page, never a new node. Reuse existing subtypes; don't invent categories.
3. Create or **append** (dated heading `## Update YYYY-MM-DD from [[Source]]`).
   Never overwrite. Cross-link aggressively; a page with zero outbound links
   is a failure. Add a Mermaid relationship snippet to pages with ≥3 links.
4. Update `wiki/index.md`; log to `wiki/log.md` (`## [date] ingest | <title>`)
   and prepend a `milestone` to `ACTIVITY.md`.
5. **Pre-write self-lint (before marking processed):** every new/updated page
   has ≥1 resolving outbound `[[link]]`, verbatim "Mentions in Source" quotes,
   a valid subtype tag, and an `index.md` entry; contradictions carry a
   CONTRADICTION FLAG. Only then:
6. Set raw frontmatter `processed: true`, `processed_at`, `wiki_articles_touched`;
   move the file to `raw/processed/<category>/`. Never delete raw.
Conflicts: `> CONTRADICTION FLAG: conflicts with [[Page]]` — never silent-merge.

### Ingest workflow (for agents)

When asked to ingest new content:

1. **Check inbox:** `ls raw/` (look for files without `processed: true` in frontmatter)
2. **Run compile:** `/curate compile` → answers questions if >10 files waiting
3. **Review:** `git status` → check new/updated wiki pages, raw/processed moves
4. **Verify (critical):**
   - New pages appear in `wiki/index.md` ✓
   - Log entry written to `wiki/log.md` (dated heading `## [date] ingest | <title>`) ✓
   - Raw files marked `processed: true` and moved to `raw/processed/<category>/` ✓
   - All new `[[links]]` resolve (no dead links) ✓
5. **Commit:** (only stage wiki/, raw/processed/ — no raw input files)
   ```
   git add wiki/ raw/processed/
   git commit -m "content(wiki): ingest [source names]" \
     -m "Co-Authored-By: Claude [Your Name] <noreply@anthropic.com>"
   ```
6. **Push:** `git push origin main`

**Do NOT:**
- Manually edit `wiki/` pages (only compile does that)
- Create duplicate nodes (alias check prevents these)
- Invent new subtypes (reuse existing ones from config.md)
- Delete raw files (they're immutable — just mark processed)
- Run on files with `processed: true` already set

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
Health check (no content changes except the log + lifecycle frontmatter).
Report: orphans (no inbound links), stale (>90d), unprocessed raw, index
drift (pages missing from `index.md`), dead `[[links]]`, merge/best-practice-
consolidation candidates. Write to `wiki/log.md` (`## [date] Lint`) + `ACTIVITY.md`.
**Lifecycle maintenance** (see `config.md › Page Lifecycle`): set
`status: stale` on pages untouched >90d; `status: contradicted` on unresolved
CONTRADICTION FLAGs; propose (never auto-apply) `status: archived` for
superseded pages — `ask` skips archived pages unless explicitly requested.

## analyze   (optional)
Run graphify over `wiki/` for god-nodes / community detection / HTML viz.
A lens only — it does not modify wiki pages.
