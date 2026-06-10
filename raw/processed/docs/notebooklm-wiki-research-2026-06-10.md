---
title: "NotebookLM research — improving the LLM-curated wiki"
date: 2026-06-10
source: notebooklm
notebook: "LLM Wiki: A Compounding Personal Knowledge Base Architecture (d68674f5)"
conversation: 27b4d10e-7c00-4bca-b604-26b327ede7d6
tags: [research, wiki-obsidian]
processed: true
processed_at: 2026-06-10
wiki_articles_touched:
  - sources/notebooklm-wiki-research-2026-06-10.md
  - concepts/knowledge-vault-best-practices.md
---

# NotebookLM research — improving the LLM-curated wiki

Answers from Dwayne's wiki-research notebook to seven architecture questions about this vault's Knowledge Curator system. Citation numbers refer to sources inside the NotebookLM notebook. CHALLENGE = contradicts our current architecture.

## 1. Retrieval

**CHALLENGE:** Relying exclusively on link-based retrieval (reading `index.md` and following links) degrades as the wiki grows — `index.md` reaches its limits in directing the LLM without consuming massive context windows [1]. An index file works to ~100 materials / several hundred pages [2, 3].

- **Mitigations:** hybrid retrieval — local BM25 + vector search + LLM re-ranking (e.g. `qmd`) without migrating away from local markdown [4]; `claude-obsidian` uses "contextual prefix + BM25 + rerank" against retrieval drift in large vaults [5].
- **Hub pages / maps:** explicit document dependency maps and a `KNOWLEDGE_BASE.md` grouping files into concept clusters [6, 7].

## 2. Ingestion quality

- **What earns a page:** strict selectivity — a passing mention doesn't earn an article; it must be substantively discussed across multiple inputs [8]. Avoid over-creating people articles [9].
- **Avoiding pollution:** feed the LLM a running list of active node types during schema alignment so it doesn't invent redundant categories ("Company" vs "Gaming Company") [10].
- **Merging aliases:** entity resolution via embeddings + string matching [11]; have the LLM explicitly identify duplicates and merge properties into a single node [12-14].

## 3. Memory decay & review

**CHALLENGE:** Pure append-only with no archival indexing clutters retrieval.

- **Archival:** superseded data moves to an Archive tier, removed from the active search index, flagged with a warning banner as non-authoritative [15].
- **Lifecycle:** five-state page lifecycle `draft → active → stale → contradicted → archived` managed via frontmatter; `stale` on source-hash mismatch, `contradicted` on conflicting source; transitions logged in the file's audit trail [16].
- **Metadata:** background loops ("Memory Nudge", "Drift Watch") to detect stale docs [17]; `trust_score` (2–10) + `last_validated_date` in frontmatter, escalating as the page proves useful in real queries [7].

## 4. Conversation loop

- **Worth capturing:** a useful comparison, derived analysis, or newly discovered connection → filed back as a new page [18].
- **Avoiding noise:** inbox-to-committed pipeline (`memory/inbox/ → memory/committed/`) where insights are proposed, reviewed, linked, and allowed to decay if unused [19]. "Generator-Verifier Loop": a secondary agent verifies the insight before it's committed, preventing hallucinations becoming permanent knowledge [20].

## 5. Multi-agent shared memory

**CHALLENGE:** Multiple agents independently writing plain markdown = "Flat File Mutation Danger" [21].

- **Conflict patterns:** two agents updating the same page simultaneously corrupts mid-write / race-condition data loss [5, 21].
- **Ownership:** per-file locking [5] or Optimistic Concurrency Control [21]; or strict directory ownership (e.g. Meeting Scribe owns project dirs, Knowledge Curator owns memory policies) [22, 23].
- **Write contracts:** pre-write validation hooks — intercept commits, verify source attributions, block contradictions of "Tier 1" read-only source-of-truth docs [24, 25].

## 6. Metrics

- **Time-to-context / reuse:** track time saved — a successful pilot saves ≥5 hours/person/week within 14 days [26, 27]; measure task-time reduction (e.g. proposal drafting 30 → 12 min) [28].
- **Answer quality:** RAGAs framework — Faithfulness, Answer Relevancy, Context Recall, Answer Correctness [29-33].

## 7. Top 5 highest-leverage changes (ordered)

1. **CHALLENGE — per-file locking or strict directory ownership.** Concurrent flat-file writes will cause race conditions and corruption [5, 21, 22].
2. **CHALLENGE — hybrid search (vector + BM25).** Pure link-traversal degrades past a few hundred pages [1, 4, 5].
3. **Pre-write validation hooks.** Block undocumented claims / contradictions of Tier-1 policies [24, 25].
4. **Schema alignment during ingestion.** Pass a running list of existing node types + entities to the compiler to prevent duplicate aliases / pollution [10, 12, 13].
5. **Page lifecycle via frontmatter.** `active / stale / contradicted` states to programmatically archive decaying knowledge without losing the audit trail [7, 16].
