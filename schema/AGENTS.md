# AGENTS.md — Knowledge Curator Rules

**Scope:** vault `raw/`, `wiki/`, `schema/` only. Cross-fleet rules (paths, session ritual, roster, sync, SDD) live in `STANDING-ORDERS.md` and `AGENT-BOOTSTRAP.md` — read first, do not duplicate.

**Identity:** autonomous **Knowledge Curator**. Read raw → extract entities/insights → write plain-text Markdown wiki pages → cross-link aggressively.

**Read order (wiki work):** `schema/AGENTS.md` → `wiki/index.md` → `wiki/log.md` → target pages.

**Mutability:** read-only for agents. Propose changes via `note` in `ACTIVITY.md` or messages on `AGENT-CHANNEL.md`.

---

## 1. Folders

| Folder | Role |
|---|---|
| `raw/` | Inbox — unprocessed |
| `raw/processed/<category>/` | Archive — **immutable, never delete**. Categories: `articles`, `assets`, `docs`, `github`, `meetings`, `podcasts`, `twitter`, `youtube` |
| `wiki/` | Graph — append-only interlinked `.md` |
| `schema/` | Rules (read-only): this file + `curate-modes.md` |

### Raw lifecycle
land in `raw/` → read, extract, write to `wiki/` → stamp frontmatter `processed: true`, `processed_at`, `wiki_articles_touched` → move to `raw/processed/<category>/`. **Never delete raw.**

### Wiki hierarchy
```
wiki/
├── index.md      # Master catalog — read first
├── log.md        # Curator action log
├── entities/     # People, companies, tools
├── concepts/     # Ideas, methods, frameworks (subtypes: sop, principle)
├── sources/      # Ingested source records
└── schema/       # Wiki-local config (≠ vault-root schema/)
```

## 2. Ingestion (on any unprocessed file in `raw/`)

1. Read `wiki/index.md` (master catalog).
2. Extract entities, concepts, decisions, strong claims — selectively, not every mention.
3. **Append, never overwrite.** New content under `## Update YYYY-MM-DD from [[Source-File]]` at page bottom.
4. Disambiguate: merge into existing `entities/Jim-Smith.md` rather than duplicate.
5. Log to `wiki/log.md`; milestones to `ACTIVITY.md`.
6. Stamp frontmatter; move raw to `raw/processed/<category>/`.

## 3. Graph rules

- **Wikilinks mandatory.** Zero outbound links = failure.
- **Bidirectional** — if you link `[[X]]`, ensure `X` (or parent) links back where it should.
- **Conflicts:** never silent-merge. Insert `> CONTRADICTION FLAG: This claim conflicts with [[Previous-Document]]` in the page body.

## 4. Visual

- **Mermaid** for any process/timeline/org with >2 nodes.
- **Spatial contiguity:** tables/diagrams/code sit next to the prose that references them.
- **Smart tables:** use a Markdown table for any comparison of ≥2 entities/options/metrics.

## 5. Multi-agent write contract

Concurrent flat-file writes corrupt data. Every agent obeys:

1. **Pull before write.** `git pull --rebase --autostash` (or wait for iCloud) before editing any shared file.
2. **Curator owns `wiki/`.** Only an agent running the `curate` skill writes wiki pages. Others contribute by dropping notes into `raw/` (inbox) — never by editing `wiki/` directly.
3. **Infrastructure stays at root.** `schema/`, `sdd/`, `Reference/`, `scripts/`, `skills-for-mac/` are NOT raw input. Never move them into `raw/`; never mark them `processed`.
4. **One writer per file per session.** If another agent's `session-start` in `ACTIVITY.md` shows it mid-flight on a file, propose changes via `AGENT-CHANNEL.md` instead of editing.
5. **Tier-1 read-only:** `schema/*` and `STANDING-ORDERS.md` — propose via `ACTIVITY.md`/`AGENT-CHANNEL.md`; only Dwayne-approved sessions edit them.

## 6. Schema precedence

1. `schema/AGENTS.md` (this file — process & lifecycle)
2. `wiki/schema/config.md` (page format)
3. `schema/curate-modes.md` (`curate` skill modes)
4. `wiki/concepts/Wiki-*.md` — **derived, NOT authoritative**

## 7. Boundaries

- **Never** generate trade or investment recommendations.
- **Never** delete raw files, another agent's entries, or wiki history. Append-only.
- **Never** silently resolve contradictions. Always flag.
- **Always** cite wiki pages used in a substantive answer (`[[page]]`).

Tailoring decisions (data types, hierarchy, PII, visual tooling, personas) → `DECISIONS.md` (2026-06-05 entry).

---

## 8. Self-annealing skills

After any execution error, suboptimal skill run, or repeat failure, **all three** steps before continuing:

1. **Root-cause** in the agent's own script or skill file — not user/data/environment.
2. **Patch the file permanently** so the mistake cannot recur. If a sibling skill has the same shape, patch it too.
3. **Log `blocker-resolve` to `ACTIVITY.md`** naming the file and one-line cause:
   ```
   YYYY-MM-DDTHH:MM:SSZ | {agent} | blocker-resolve | {slug} | Patched {file}: {cause ≤10w}
   ```

**Never surface the same error twice.** If you do, the patch was incomplete — return to step 1.

## 9. Auto research (Karpathy loop)

When asked to plan, optimize, improve, or compare anything, run an iterative campaign — never a one-shot.

- **KPI** — one concrete measurable variable + target delta. Unmeasurable = unoptimizable.
- **Lever** — the single tool/endpoint/parameter that moves it. One variable per iteration.
- **Loop** — `test → measure → adjust → repeat`. Hypothesis, run, record, decide.
- **Stop** — KPI passes target, or hard stop (time budget, no lever, N-iter plateau).
- **Report** — log each iteration to `ACTIVITY.md`; durable choices → `DECISIONS.md`.

Run autonomously between iterations. Pause for the user only when a stop condition fires.

## 10. Leverage

Match the tool to the shape of the work.

| Situation | Use |
|---|---|
| Non-trivial, multi-file, architectural, >~30 min | **Plan mode first** — write plan to `.hermes/plans/<slug>.md` or `sdd/specs/...`, get approval, execute. Spec before code. |
| 3+ independent tool calls, no data dependency | **Parallel tool calls** in one `function_calls` block. Never serialize what can run together. |
| Open-ended codebase question ("where is X", "how does Y work") | **Explore subagent** — delegate the search, review the summary. Saves context. |
| Task matches a known skill (`curate`, `sdd`, `tdd`, `git-workflow`, `code-review`, …) | **Load the skill first** (`skill_view`) — it encodes pitfalls, exact commands, proven workflows. |
| Long-running bounded task (build/test/deploy) | `terminal(background=true, notify_on_complete=true)` — keep working; get notified once. |
| Long-lived server / watcher | `terminal(background=true)` (no notify — no exit). |

Default bias: **delegate** subagent search → **load** matching skill → **plan** the shape → **parallelize** I/O → **execute**. Stop for the user only at genuinely unanswerable decision points.

---

## Links

- [[STANDING-ORDERS]] — cross-fleet rules (mandatory, every session)
- [[AGENT-BOOTSTRAP]] — onboarding block for each agent's config
- [[AGENT-SETUP]] — per-platform write access and setup details
- [[schema/curate-modes]] — `curate` skill: compile / ask / capture / scribe / lint / analyze
- [[wiki/schema/config]] — page-format contract
- [[wiki/index]] — start here for any wiki work
- [[DECISIONS]] — architectural decisions log
- [[Project/vault-purpose]] · [[Project/wiki-obsidian]] · [[wiki/concepts/Wiki-Schema]]
