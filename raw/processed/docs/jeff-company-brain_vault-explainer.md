---
processed: true
processed_at: 2026-06-05
source: company-brain
wiki_articles_touched:
  - sources/jeff-company-brain-vault-explainer.md
  - concepts/llm-curated-wiki.md
  - concepts/compile-raw.md
  - concepts/knowledge-vault-best-practices.md
  - entities/andrej-karpathy.md
  - entities/grain.md
---

# Building a Company Knowledge Vault

Here's the full picture of how this vault works and how someone could build their own tonight.

---

## 1. What sources are represented here

The vault pulls from five distinct source types:

**Meeting transcripts** — 98 meetings in `raw/meetings/`, ingested automatically from Grain via a local webhook server. Every time a recording is added to the Grain workspace, it hits an ngrok endpoint, fetches the transcript via API, and drops it as a dated markdown file.

**Customer feedback** — `raw/intercom/` holds support conversations pulled via the Intercom MCP. One file so far (`2026-05-27_intercom-feedback.md`), but the pipeline is live.

**Web clippings** — `raw/clippings/` for manually-captured articles, competitor pages, research (e.g., a Block.md clip is there).

**Backfilled history** — A separate `backfill-grain-meetings` skill lets you reach back into Grain's API and pull historical meetings that predate the webhook. That's how 98 meetings landed.

**Manual drops** — `raw/inbox/` as a catch-all for anything that doesn't arrive via automation.

---

## 2. How the vault is structured

Three layers, one direction of flow:

```
raw/          ← intake (never edited, only processed)
  meetings/
  intercom/
  clippings/
  inbox/

wiki/         ← curated knowledge graph (LLM-maintained)
  index.md    ← master index of all articles
  topics/     ← 20 strategic topics (Grain Strategy, PQL Pipeline, etc.)
  people/     ← 24 person articles
  companies/  ← 19 company articles
  projects/   ← active work artifacts

projects/     ← outputs that reference wiki/ as context
```

The key design principle, borrowed from Andrej Karpathy's approach: **structured wiki articles instead of vector embeddings.** Each article is a human-readable, Obsidian-linked markdown file. The graph value lives in the `[[wikilinks]]` connecting everything. You can open it in Obsidian and see the graph visually.

A raw meeting file looks like this:
```markdown
---
title: "Frank <> Mike & Ben"
date: 2026-05-18
participants: ["Frank Amini", "Mike Adams", "Ben DeMordaunt"]
processed: true
processed_at: 2026-05-26
wiki_articles_touched: ["Frank Amini", "RAM Construction", "Capture and Recording"]
source: grain
grain_id: 5a09376e-...
---
[full transcript]
```

After `compile-raw` runs, that transcript becomes structured entries appended to `wiki/people/Frank Amini.md`, `wiki/companies/RAM Construction.md`, etc. The raw file is marked `processed: true` and never touched again.

---

## 3. How I decide what wiki context to use

When you ask a strategic question, the CLAUDE.md instructs any agent to:

1. **Always read `wiki/index.md` first** — it's the map. It tells me every topic, person, and company that exists in the graph.
2. **Pull the most relevant articles** — if you ask about competitive positioning, I read `wiki/topics/Grain Strategy.md`. If you ask about a specific person's history, I read their person article.
3. **Follow the `[[wikilinks]]`** — Grain Strategy links to Fathom, which links to competitive intelligence, which links to ICP Validation. The graph tells me what's related.
4. **Respect the append-only structure** — each article has dated sections, so I can see how thinking has evolved over time. The most recent entry carries the most weight, but I don't discard earlier context.

The honest answer: this works better than RAG for a knowledge graph because the structure is explicit. I don't have to guess what's related — the links tell me. The tradeoff is that compile runs cost real tokens (100k+), so the quality of the graph depends on running compile regularly and consistently.

---

## 4. Advice for someone building their own

**Start with one source, not five.** The webhook server for Grain took real engineering. Pick the source where your most valuable context already lives — meeting transcripts, Notion docs, support tickets — and build ingestion for that one thing first. Add sources after the pipeline feels stable.

**Raw files are sacred.** Never edit them. Mark them processed, nothing else. This preserves your audit trail and lets you re-compile if your extraction logic improves.

**Append, never overwrite wiki articles.** Dated sections (`## Update 2026-05-15 from [[source]]`) let you see how understanding evolved. Overwriting loses that. A wiki article on a customer should show the arc of the relationship, not just the latest snapshot.

**Cross-link aggressively.** A person article without company links, topic links, and meeting source links is an island. The graph value compounds through connections, not individual articles.

**Give the agent explicit rules in CLAUDE.md.** "Always read wiki/index.md first" sounds obvious. Without it written down, agents skip it half the time. Write the rules once, benefit from them forever.

**Set a 6-week forcing function.** If after 6 weeks the outputs aren't noticeably better than asking without the vault, kill it and learn from the postmortem.

---

## 5. Starter prompt for v1 tonight

Paste this into Claude Code inside a new folder you'll use as your vault:

---

```
I want to build a personal knowledge graph vault — a structured wiki that I maintain 
with LLM help, based on Andrej Karpathy's concept of an LLM-curated wiki as an 
alternative to vector embeddings.

Please set up the following directory structure in the current folder:

raw/
  meetings/       ← I'll drop transcript files here
  inbox/          ← catch-all for docs, notes, clippings
wiki/
  index.md        ← master index (start empty, with headers: Topics, People, Companies)
  topics/
  people/
  companies/
projects/         ← for outputs and active work artifacts
.claude/
  CLAUDE.md       ← agent instructions

Then create a CLAUDE.md with these rules for any agent working in this vault:

1. Always read wiki/index.md before producing any output.
2. When compiling raw files into wiki articles:
   - Extract entities: people (with role/company), companies, topics, decisions
   - Append dated sections to existing articles — never overwrite
   - Cross-link with [[wikilinks]] wherever entities appear
   - Mark the raw file as processed: true in its frontmatter
   - Update wiki/index.md with any new articles created
3. Raw files are intake only — never edit except to mark processed.
4. Surface conflicts between sources — don't silently resolve them.
5. Each wiki article should have: a one-line summary at top, dated sections per source, and liberal [[wikilinks]].

After creating the structure, I'll drop some files into raw/inbox/ and raw/meetings/ 
and ask you to run a compile. For the compile:
- Read each unprocessed file
- Identify: people mentioned, companies mentioned, decisions made, key claims
- Create or append to the appropriate wiki/ articles
- Return a summary of what was created/updated

My context: [describe your company/project, your role, what these transcripts are about, 
and who the key people and companies are so the agent knows what entities to watch for]
```

---

Replace the last line with your actual context — two or three sentences about who you are and what the transcripts cover. That primes the compiler to recognize your entities instead of treating every name as a stranger.

The first compile run will be rough. The second will be better because it can reference what it already knows. By week two it starts feeling like talking to someone who was in all your meetings.
