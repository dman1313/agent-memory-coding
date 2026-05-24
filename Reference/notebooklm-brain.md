---
name: notebooklm-brain
description: NotebookLM Brain notebook — long-term session summary storage via wrapup skill
metadata:
  type: reference
---

## NotebookLM Brain Notebook

**Status:** CLI available via `notebooklm` skill in Claude Code. Brain notebook creation pending.

**What it does:** The Brain notebook stores session summaries (via the `wrapup` skill) for long-term search and retrieval across sessions.

**How to use (via Claude Code skill):**
1. `/notebooklm create "[Name]'s AI Brain"` — creates the brain notebook
2. `/wrapup` at end of session — saves session summary to brain notebook

**Setup steps:**
1. Install: `pip install "notebooklm-py[browser]"` and `playwright install chromium`
2. Authenticate: `notebooklm login`
3. Create brain notebook and save the notebook ID here
4. Configure `wrapup` skill with the notebook ID

## Links
- [[Agents/claude-code]]
