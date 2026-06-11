# DECISIONS — Architectural Decision Log

> Chronological record of significant technical decisions across the agent fleet.
> New decisions appended at the bottom. Never delete — link reversals if needed.
>
> **Format per entry:**
> ```
> ### YYYY-MM-DD — [Title]
> - **Context:** What situation prompted this decision
> - **Decision:** What was decided
> - **Agents:** Who was involved
> - **Project:** Which project this affects
> - **Status:** active | superseded | reversed
> ```
>
> Link reversals: if a later decision reverses an earlier one, edit the earlier
> entry's Status to `superseded` and add a link to the reversing decision.

<!-- DECISIONS BELOW THIS LINE -->
### 2026-06-11 — Fleet plan board, resume points & self-maintaining state
- **Context:** No shared planning layer; state decayed between manual regenerations; resuming a project required ACTIVITY archaeology; Dwayne: vault = fleet coordination + second brain, central place for everyone.
- **Decision:** Plan/ task board (claim protocol, single-writer), Project/<slug>.md resume points (read first, update before stopping), janitor in build-context.sh (auto-close >48h sessions, archive DONE channel >48h, board/resume/raw lints), research-once rule, API-agent write path. Details: sdd/decisions/0004-fleet-plan-board.md
- **Agents:** hyperagent (design+build), Dwayne (spec approval + amendments)
- **Project:** agent-memory
- **Status:** active


### 2026-05-31 — Study guides via nlm query instead of nlm report create
- **Context:** `nlm report create --prompt "Focus on X"` produces generic content covering all notebook sources. The `--prompt` flag is treated as a style suggestion, not a content filter.
- **Decision:** Use `nlm notebook query` for study guides. Returns focused, citation-rich content. Keep `nlm report create` only for notebook-level (non-focused) reports.
- **Agents:** hermes
- **Project:** study-pipeline (IGCSE Biology)
- **Status:** active

### 2026-05-31 — Flashcards difficulty is string, not integer
- **Context:** `nlm flashcards create --difficulty 3` fails with "Unknown difficulty '3'". The skill docs incorrectly stated flashcards use integer difficulty (like quiz does).
- **Decision:** Flashcards use `--difficulty medium` (string). Quiz uses `--difficulty 3` (integer). Updated sherlock-study-boy skill quirks reference.
- **Agents:** hermes
- **Project:** study-pipeline
- **Status:** active

### 2026-05-31 — Weekend market hours bypassed for simulated trades
- **Context:** AI-Trader client blocks all US stock trades on weekends via market hours check. But simulated trades (price=0, executed_at="now") should work anytime.
- **Decision:** Only enforce market hours when `price > 0` (real price trades). Simulated trades (price=0) bypass the check.
- **Agents:** hermes
- **Project:** ai-trader
- **Status:** active

### 2026-05-31 — AI-Trader expanded with strategy, discussion, feed, rebalance
- **Context:** AI-Trader client only had trade/positions/status/heartbeat commands. No way to publish strategies, browse feed, or analyze portfolio.
- **Decision:** Added strategy (publish), discussion (publish), feed (browse), rebalance (analyze) CLI commands. Created Wolf→AI-Trader bridge script for auto-publishing sentiment signals.
- **Agents:** hermes
- **Project:** ai-trader
- **Status:** active

### 2026-05-31 — Second Brain vault wired to Hermes
- **Context:** Dwayne has a second-brain Obsidian vault (dman1313/second-brain) with wiki/, journal/, crm/ structure. Not connected to Hermes.
- **Decision:** Cloned to ~/Documents/Obsidian Vault/second-brain/. Set OBSIDIAN_VAULT_PATH. Created sync script. Updated AGENTS.md references.
- **Agents:** hermes
- **Project:** second-brain
- **Status:** active

### 2026-05-25 — Activity feed and NOW.md dashboard added to shared memory
- **Context:** Agents had no way to see what other agents were working on. No activity log or current state dashboard.
- **Decision:** Added ACTIVITY.md (append-only log), NOW.md (auto-generated dashboard), DECISIONS.md (architectural decisions). Updated AGENT-CHANNEL.md with messaging protocol.
- **Agents:** claude-code
- **Project:** agent-memory
- **Status:** active
