# Wiki Operation Log



## [2026-05-29] ingest | Wiki Schema Configuration

**Created pages**：[[sources/config.md]], [[concepts/Entity-Page-Template.md]], [[entities/Wiki-Schema-Configuration.md]], [[concepts/Wiki-Structure.md]], [[concepts/Classification-Rules.md]], [[concepts/Naming-Conventions.md]], [[concepts/Concept-Page-Template.md]], [[concepts/Wiki-Schema.md]]

**Updated pages**：



## [2026-05-30] Lint Fix: Fix Dead Links

- [[sources/config]]: `[[entities/page-name]]` → corrected: [[concepts/Wiki-Schema|Wiki Schema Configuration]]
- [[concepts/Naming-Conventions]]: `[[folder/page-name]]` → stub created and expanded: wiki/concepts/page-name.md
- [[concepts/Naming-Conventions]]: `[[entities/page-name]]` → pre-check corrected (alias match): [[concepts/page-name|page-name]]
- [[concepts/Naming-Conventions]]: `[[concepts/page-name]]` → pre-check corrected (alias match): [[concepts/page-name|page-name]]


## [2026-06-02] Lint Fix: Merge Duplicate Pages

- wiki/entities/Wiki-Schema-Configuration.md → wiki/concepts/Wiki-Schema.md: merged entities/Wiki-Schema-Configuration → concepts/Wiki-Schema


## [2026-06-03] ingest | Plan in the cloud with ultraplan

**Created pages**：[[sources/Plan-in-the-cloud-with-ultraplan.md]], [[entities/Claude-Code.md]], [[concepts/Hybrid-Planning-Workflow.md]], [[entities/ultraplan.md]]

**Updated pages**：



## [2026-06-04] Lint Fix: Fix Dead Links

- [[concepts/Wiki-Structure]]: `[[entities/wiki-schema-configuration]]` → pre-check corrected (alias match): [[concepts/Wiki-Schema|Wiki-Schema]]
- [[concepts/Entity-Page-Template]]: `[[entities/wiki-schema-configuration]]` → pre-check corrected (alias match): [[concepts/Wiki-Schema|Wiki-Schema]]


## [2026-06-05] ingest | jeff-company-brain (vault explainer + compile-raw skill)

**Created pages**：[[sources/jeff-company-brain-vault-explainer]], [[sources/jeff-company-brain-compile-raw-skill]], [[concepts/llm-curated-wiki]], [[concepts/compile-raw]] (sop), [[concepts/knowledge-vault-best-practices]] (principle), [[entities/andrej-karpathy]], [[entities/grain]]

**Updated pages**：[[wiki/index]]

**Raw archived**：jeff-company-brain_vault-explainer.md, jeff-company-brain_compile-raw-SKILL.md → raw/processed/docs/; Plan-in-the-cloud-with-ultraplan.md (already ingested 2026-06-03) → raw/processed/articles/. All marked `processed: true`.

> CONTRADICTION FLAG: imported compile-raw taxonomy (people/companies/topics) conflicts with this vault's entities/concepts/sources — method adopted, folders not.


## [2026-06-05] Lint | post-ingest verification

- **Unprocessed raw:** none — inbox clear ✓
- **Dead links:** none in the 7 new pages + index; all `[[entities|concepts|sources/...]]` resolve under `wiki/` ✓
- **Bare `[[wikilinks]]`:** all inside code spans (illustrative, not links) ✓
- **Index drift:** all 7 new pages listed in `index.md` ✓
- **Outbound links:** every new page has 5–13 (no orphans-by-outbound) ✓
- Note: pre-existing wiki pages are still git-untracked locally; they arrive from `origin` at reconcile (not a wiki-integrity issue).


## [2026-06-09] Lint Fix: Link Orphan Pages

- [[_views/dashboards]]: no suitable linking targets found


## [2026-06-09 01:30] Wiki lint report

# Wiki lint report

> Wiki status overview: 49 pages total, 0 pages missing aliases, 1 duplicate pages, 62 dead links (0 involve duplicates), 2 orphan pages (0 are duplicates), 0 empty pages

## Duplicate pages (detected)

- [[concepts/human-good-principle]] and [[concepts/human-good-principle]] — Same concept: 'Human Good AI' and 'Human Good Principle' refer to the same underlying ethical framework/principle, indicated by a 100% title similarity match.

## Dead links (detected)

- [[entities/kit]] → **sources/school-transcripts-2025** (page does not exist)
- [[entities/angela]] → **sources/school-transcripts-2025** (page does not exist)
- [[entities/claudine]] → **sources/school-transcripts-nov-2024** (page does not exist)
- [[entities/gloria]] → **sources/school-transcripts-nov-2024** (page does not exist)
- [[entities/nicole]] → **sources/school-transcripts-nov-2024** (page does not exist)
- [[entities/victoria]] → **sources/school-transcripts-nov-2024** (page does not exist)
- [[entities/sebastian]] → **sources/school-transcripts-nov-2024** (page does not exist)
- [[entities/justina]] → **sources/school-transcripts-nov-2024** (page does not exist)
- [[entities/tato]] → **sources/school-transcripts-nov-2024** (page does not exist)
- [[entities/malou]] → **sources/school-transcripts-nov-2024** (page does not exist)
- [[entities/lucy]] → **sources/school-transcripts-nov-2024** (page does not exist)
- [[entities/lucy]] → **concepts/totl** (page does not exist)
- [[entities/lucy]] → **concepts/essential-agreements** (page does not exist)
- [[entities/ics-paris]] → **sources/school-transcripts-nov-2024** (page does not exist)
- [[entities/ics-paris]] → **concepts/totl** (page does not exist)
- [[entities/canadian-academy]] → **sources/human-good-agent-ready-back-office** (page does not exist)
- [[entities/demis-hassabis]] → **sources/human-good-agent-ready-back-office** (page does not exist)
- [[entities/john-schatzky]] → **sources/human-good-origin-story** (page does not exist)
- [[entities/john-schatzky]] → **sources/human-good-agent-ready-back-office** (page does not exist)
- [[entities/paul]] → **sources/human-good-origin-story** (page does not exist)
- ... 62 more dead links

## Orphan pages (detected)

- [[entities/kit]] — no other Wiki pages link here
- [[_views/dashboards]] — no other Wiki pages link here

## LLM analysis

- [Contradiction] The Wiki Index lists `entities/ultraplan`, but the "Sources" section lists a page `sources/Plan-in-the-cloud-with-ultraplan`, creating a potential conflict between an entity page and a source page regarding where the primary definition of "ultraplan" resides.
- [Missing] `entities/ics-paris` is heavily cross-referenced by almost every person in the sample (Kit, Angela, Claudine, Gloria, Nicole, Victoria, Sebastian, Justina) but is not listed in the provided Wiki Index, indicating a missing primary entity page for a central organization.
- [Missing] `entities/dwayne-primeau` is mentioned in the descriptions of multiple staff members as a central figure/manager, but does not appear in the Wiki Index.
- [Structure] There is a significant naming convention discrepancy: The Wiki Index follows a `folder/page-name` structure (e.g., `entities/ultraplan`), but the page content samples (e.g., `kit`, `angela`) and dead link reports omit the folder prefix in their internal IDs, which may lead to broken resolution if the system expects full paths.
- [Structure] Several entity pages (e.g., `victoria`, `justina`) have truncated "Related Entities" sections (ending in "—" or "em"), indicating incomplete data ingestion or broken templates.


## [2026-06-09 01:30] Merge Duplicate Pages

- wiki/entities/human-good-ai.md → wiki/concepts/human-good-principle.md: merged entities/human-good-ai → concepts/human-good-principle

## [2026-06-10] compile | Full batch — 93 raw files across 3 domains

**Agent:** kiro

**Created entities (20):** [[entities/human-good-ai]], [[entities/agent-ready]], [[entities/dwayne-primeau]], [[entities/paul]], [[entities/john-schatzky]], [[entities/demis-hassabis]], [[entities/canadian-academy]], [[entities/ics-paris]], [[entities/lucy]], [[entities/malou]], [[entities/tato]], [[entities/justina]], [[entities/sebastian]], [[entities/victoria]], [[entities/nicole]], [[entities/gloria]], [[entities/claudine]], [[entities/angela]], [[entities/kit]], [[entities/symposium]]

**Created concepts (13):** [[concepts/agentic-ai]], [[concepts/ai-back-office]], [[concepts/token-efficiency]], [[concepts/agent-friendly-web]], [[concepts/human-good-principle]], [[concepts/drip-feed-ai-adoption]], [[concepts/teacher-ai-assistant]], [[concepts/ib-pyp]], [[concepts/deij]], [[concepts/guided-reading]], [[concepts/totl]], [[concepts/atls]], [[concepts/essential-agreements]]

**Created sources (19):** human-good-origin-story, human-good-agent-ready-back-office, agentic-ai-drip-feed, agent-ready-making-websites-readable, agent-ready-html-scan-cost, human-good-less-admin-more-good, agentic-wiki-teacher-assistant, being-good-kindness, symposium-rust-agents, hiring-pitch-paris-conference, building-effective-ai-agents, market-data-api-alpaca, school-transcripts-nov-2024 (~40 files batched), school-transcripts-jan-2025 (~20 files batched), school-transcripts-aug-2025 (3 files), welsh-rights-activity, arabic-maintenance-transcript, loop-generator-concept, knowledge-curator-build-capture

**Raw archived:** all 93 unprocessed voice notes and articles moved to raw/processed/ (meetings/, articles/, docs/)

**Index updated:** wiki/index.md rebuilt with all new entries

**Notes:**
- Arabic file (2025-01-22) heavily garbled by speech-to-text — partial content only
- Welsh file (2025-04-30) degrades mid-transcript — first portion recoverable
- 2026-06-09 "Idea introduction without details" (5s) — no extractable content, marked processed
- 2026-06-05 "Audio check" — test recording, no content
- 2025-03-09 "New note" / "Trying something new" — minimal content stubs
- Operational files (raw/schema/, raw/sdd/, raw/Reference/, raw/skills-for-mac/) excluded from compile — vault infrastructure, not inbox
- School transcripts batched into 3 period-based source pages (75 files → 3 sources) to avoid index explosion


## [2026-06-10] ingest | NotebookLM wiki-architecture research

**Created pages**：[[sources/notebooklm-wiki-research-2026-06-10]]

**Updated pages**：[[concepts/knowledge-vault-best-practices]] (dated update), [[wiki/index]]

**Raw archived**：notebooklm-wiki-research-2026-06-10.md → raw/processed/docs/ (processed: true). Schema changes from this research recorded in sdd/decisions/0002 — schema is authoritative, wiki pages are derived knowledge.


## [2026-06-10 13:01] Wiki lint report

# Wiki lint report

> Wiki status overview: 73 pages total, 0 pages missing aliases, 0 duplicate pages, 23 dead links (0 involve duplicates), 9 orphan pages (0 are duplicates), 0 empty pages

## Dead links (detected)

- [[sources/welsh-rights-activity]] → **raw/2025-04-30 Gweithgareddau ar hawliau a chefnogaeth unigedd plentyn.md** (page does not exist)
- [[sources/symposium-rust-agents]] → **raw/2026-05-06 Symposium keynote Rust, agents, and community toolchain plus tabular functional models.md** (page does not exist)
- [[sources/school-transcripts-nov-2024]] → **raw/voicenotes/** (page does not exist)
- [[sources/school-transcripts-jan-2025]] → **raw/voicenotes/** (page does not exist)
- [[sources/human-good-less-admin-more-good]] → **raw/2026-05-24 Human-good AI agents to reduce admin work and free time for mission.md** (page does not exist)
- [[sources/school-transcripts-aug-2025]] → **raw/voicenotes/** (page does not exist)
- [[sources/human-good-agent-ready-back-office]] → **raw/2026-05-21 Human good AI Agent Ready and AI back office for schoolsnonprofits.md** (page does not exist)
- [[sources/market-data-api-alpaca]] → **raw/Getting Started with Market Data API.md** (page does not exist)
- [[sources/knowledge-curator-build-capture]] → **raw/processed/docs/2026-06-06_knowledge-curator-build-capture.md** (page does not exist)
- [[sources/jeff-company-brain-vault-explainer]] → **wikilinks** (page does not exist)
- [[sources/jeff-company-brain-compile-raw-skill]] → **wikilinks** (page does not exist)
- [[sources/human-good-origin-story]] → **raw/2026-06-05 Human Good origin story AI agents to support nonprofits and education.md** (page does not exist)
- [[sources/hiring-pitch-paris-conference]] → **raw/2026-05-06 Hiring pitch and AI agents ecosystem gaps at Paris conference.md** (page does not exist)
- [[sources/agentic-wiki-teacher-assistant]] → **raw/2026-06-05 Agentic wiki-based AI assistant for teacher curriculum planning and reminders.md** (page does not exist)
- [[sources/building-effective-ai-agents]] → **raw/Building Effective AI Agents.md** (page does not exist)
- [[sources/being-good-kindness]] → **raw/2026-05-12 Being good and kindness repaying kindness through human cooperation.md** (page does not exist)
- [[sources/Plan-in-the-cloud-with-ultraplan]] → **raw/Plan in the cloud with ultraplan.md** (page does not exist)
- [[sources/Plan-in-the-cloud-with-ultraplan]] → **raw/Plan in the cloud with ultraplan.md** (page does not exist)
- [[sources/arabic-maintenance-transcript]] → **raw/processed/meetings/2025-01-22 الصيانة والتغييرات في المدرسة.md** (page does not exist)
- [[sources/agentic-ai-drip-feed]] → **raw/2026-05-13 Agentic AI is here now — stop waiting, start drip-feeding your team.md** (page does not exist)
- ... 23 more dead links

## Orphan pages (detected)

- [[sources/welsh-rights-activity]] — no other Wiki pages link here
- [[sources/school-transcripts-aug-2025]] — no other Wiki pages link here
- [[sources/market-data-api-alpaca]] — no other Wiki pages link here
- [[sources/loop-generator-concept]] — no other Wiki pages link here
- [[sources/knowledge-curator-build-capture]] — no other Wiki pages link here
- [[sources/hiring-pitch-paris-conference]] — no other Wiki pages link here
- [[sources/being-good-kindness]] — no other Wiki pages link here
- [[sources/arabic-maintenance-transcript]] — no other Wiki pages link here
- [[_views/dashboards]] — no other Wiki pages link here

## LLM analysis

- [Contradictions] No obvious contradictions found; however, the timeline is unusual (sources dated 2025-2026), which may indicate projected dates or a specific simulation context.
- [Staleness] The `school-transcripts` series spans Nov 2024 to Aug 2025; ensure that any leadership or staffing claims in the Nov 2024 notes are updated by the Aug 2025 context.
- [Missing] Several concepts mentioned in sources lack dedicated pages: "UN Convention on the Rights of the Child" (mentioned in `welsh-rights-activity`), "Rust toolchain/skills" (mentioned in `symposium-rust-agents`), and "Student writing progress tracking" (mentioned in `school-transcripts-aug-2025`).
- [Structure] Source pages frequently truncate their "Key Concepts" or "Core Content" sections (e.g., `human-good-less-admin-more-good` cuts off at `[[conce`), indicating an ingestion or formatting error.
- [Structure] High reliance on the `Wiki Index` for navigation; the internal cross-linking between `sources` and `concepts` appears under-developed despite the existence of templates.
