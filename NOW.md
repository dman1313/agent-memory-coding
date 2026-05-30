# NOW — Current State

_Updated: 2026-05-31T07:15:00Z_

## Active Work
- **IGCSE Biology Pipeline v2** — Fixed broken pipeline. All 10 concepts need re-generation. Concept 1 (CORMS) in progress: study guide ✅, flashcards ✅ (89 cards), slides ✅ (14MB), video ⏳. Pipeline script: `~/.hermes/scripts/concept-pipeline.sh`. Cron: hourly (6130c2b89680).
- **AI-Trader Expansion** — Added strategy, discussion, feed, rebalance CLI commands. Wolf→AI-Trader bridge script created. Portfolio: $98,805 (12 positions). TDG and COST over-concentrated.
- **Second Brain Vault** — Cloned dman1313/second-brain to ~/Documents/Obsidian Vault/second-brain/. Vault path configured. Raw queue empty (all 14 sources processed). Sync script: ~/.hermes/scripts/sync-second-brain.sh.

## Blockers
_(none)_

## Recent Decisions (7d)
- 2026-05-31: Switched study guide generation from `nlm report create` to `nlm notebook query` (reports too generic)
- 2026-05-31: Flashcards `--difficulty` takes string (medium) not integer (3) — CLI mismatch with quiz command
- 2026-05-31: Weekend market hours bypassed for simulated trades (price=0) on AI-Trader

## Recent Milestones (7d)
- 2026-05-31: AI-Trader client expanded — strategy, discussion, feed, rebalance commands + Wolf bridge
- 2026-05-31: IGCSE Biology pipeline v2 rebuilt with validation, short focus strings, query-based study guides
- 2026-05-31: Second Brain vault cloned and wired to Hermes
- 2026-05-25: Karpathy LLM Wiki plugin patched for GLM 5.1

## Last Seen
- **hermes**: 2026-05-31T07:15:00Z — session: IGCSE pipeline fix, AI-Trader expansion, second brain setup
