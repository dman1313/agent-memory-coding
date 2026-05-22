---
name: working-style
description: How Dwayne prefers to interact — brevity, action, minimal friction
metadata:
  type: feedback
---

## Communication Style

- **Short commands preferred** — "do it", "go", "yes", "install <url>"
- **Minimal explanation** — Don't over-explain; get to the command/code
- **One-liner scripts** — When possible, give a single copy-paste block, not step-by-step
- **Individual commands as fallback** — If heredoc scripts break, break into single-line commands

## Friction Points

- **Heredoc paste breaks** — Multi-line `cat << 'EOF'` blocks often get mangled in terminal paste
- **Waiting for explanations** — User gets impatient with long preambles before action
- **Interactive wizards** — Can't run TUI tools directly; prefer non-interactive or manual config

## What Works

- Base64-encoded scripts (copy-paste safe)
- Single `&&`-chained commands
- Direct file edits via tools (StrReplaceFile, WriteFile)
- Screenshots for visual confirmation

## Links
- [[User/profile]]
