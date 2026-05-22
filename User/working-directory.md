---
name: preferred-working-directory
description: User's preferred working directory for Claude Code sessions
metadata:
  type: user
---

User's preferred working directory is `/Volumes/M2 Media/Coding Dwayne/Claude`.

They have a shell alias `cc` in `~/.zshrc` that runs `cd /Volumes/M2\ Media/Coding\ Dwayne/Claude && claude` to launch Claude Code from that directory.

The path is also added to `permissions.additionalDirectories` in `~/.claude/settings.json` for permanent file access.
