---
name: session-startup
description: Check shared memory vault at every session start to know what was worked on last
metadata:
  type: feedback
---

## Rule

At the start of every session, read the shared memory vault to check recent project activity before doing anything else.

**Why:** Dwayne works across multiple agents and projects. Without checking the vault first, I lose context on what was done last, what's in progress, and what needs picking up.

**How to apply:**
1. Read MEMORY.md index
2. Check AGENT-CHANNEL.md for pending messages
3. Check git log for recent commits (what changed since last session)
4. Skim Project/ files for current status
5. Use this context to pick up where the last session left off

**Vault path:** `/Users/dwayne-primeau/Library/Mobile Documents/com~apple~CloudDocs/Agent Memory/Coding`
**GitHub:** https://github.com/dman1313/agent-memory-coding

## Links
- [[Feedback/working-style]]
- [[User/profile]]
