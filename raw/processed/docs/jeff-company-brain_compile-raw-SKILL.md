---
name: compile-raw
description: Process unprocessed files in raw/ into wiki/ articles. Extract entities, topics, and links. Use whenever Jeff says "compile raw", "update the wiki", "process new meetings", or "run compile".
processed: true
processed_at: 2026-06-05
source: company-brain
wiki_articles_touched:
  - sources/jeff-company-brain-compile-raw-skill.md
  - concepts/compile-raw.md
---

# Compile Raw

You are curating Jeff's personal knowledge graph. Your job is to turn raw inputs into a well-linked wiki.

## Step 1 — Find unprocessed files

Search `raw/meetings/`, `raw/clippings/`, `raw/intercom/`, and `raw/inbox/` for markdown files where the frontmatter does NOT contain `processed: true`.

`raw/intercom/` files are voice-of-customer digests from the `pull-intercom` skill. Each `##` section is one customer conversation carrying a name, email, company, and signal tag. Treat each customer as a `people/` candidate and each company as a `companies/` candidate (apply the usual "more than a passing mention" bar), and attach the signal to the relevant `topics/` article. Skip the digest's `README.md`.

Process oldest first (by frontmatter `date` field, or file mtime if missing).

If there are more than 10 unprocessed files, ask Jeff if he wants to process all or a subset. Token cost scales fast.

## Step 2 — For each raw file

### 2a. Extract entities

Identify:
- **People** mentioned by name (internal Grain team, customers, prospects, public figures)
- **Companies** mentioned
- **Projects / initiatives** referenced
- **Concepts / topics** that are the subject of substantive discussion (not passing mentions)

Be selective. A name mentioned once in passing is not an entity worth a wiki article. A name discussed across multiple inputs is.

### 2b. Extract claims and decisions

For each entity, pull:
- **Direct quotes** where the claim is strong or the language is distinctive
- **Decisions** with date, decider, and rationale
- **Open questions** raised
- **Action items** with owner and (if stated) due date

### 2c. Update or create wiki articles

For each entity:

- **If `wiki/<category>/<entity>.md` exists:** append a new section under a heading like `## Update YYYY-MM-DD from [[Source]]`. Do not modify existing sections.
- **If it does not exist:** create the file. Categories: `topics/`, `people/`, `companies/`, `projects/`.

Every new article must include:
1. A one-sentence definition or summary at the top
2. At least 3 `[[wikilinks]]` to other entities mentioned in the same source
3. A `## Sources` section listing the raw files that contributed

Use Obsidian wikilink syntax `[[Entity Name]]`. The link is what makes the graph view render. **An article with zero outbound links is a failure.**

### 2d. Update wiki/index.md if needed

If a brand-new top-level theme emerged (something that doesn't fit any existing topic), add it to the index under the appropriate section.

### 2e. Mark the raw file processed

Add or update frontmatter:

```yaml
---
processed: true
processed_at: <ISO timestamp>
wiki_articles_touched:
  - topics/Some Topic.md
  - people/Jane Doe.md
---
```

Do NOT delete the raw file. Keep the audit trail.

## Step 3 — Report

After the run, output:

- Files processed: N
- New wiki articles created: list
- Existing wiki articles updated: list
- Any conflicts or ambiguities flagged
- Token usage estimate

## Rules

- **Minimize interpretation.** Lean on direct quotes for strong claims. Paraphrase for context. Flag uncertain interpretations explicitly with `> Uncertain:` blockquote.
- **Cross-link aggressively.** Every meeting mentioning Grain strategy should link to `[[Grain Strategy]]`. Every mention of Mike should link to `[[Mike Adams]]`.
- **Flag, do not merge.** If two existing wiki articles cover overlapping ground, add a `> MERGE CANDIDATE: [[Other Article]]` note. Let Jeff decide.
- **Preserve voice.** Quotes are quotes. Do not paraphrase a quote.
- **Never compress history.** Append-only for updates.

## Anti-patterns to avoid

- Generic recaps. "The team discussed strategy" is useless. Pull the specific point.
- Over-creating people articles. A single passing mention is not enough.
- Re-processing a file. Always check `processed: true` first.
- Silent merges. Flag, don't merge.
