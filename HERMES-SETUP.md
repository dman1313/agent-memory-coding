# Hermes Agent — Memory Vault Setup

Hermes runs on the VPS and accesses the shared memory vault via Git.

## Quick Setup

```bash
cd /home/ubuntu
git clone https://github.com/dman1313/agent-memory-coding.git agent-memory
```

Set up bidirectional sync cron (every 15 min):
```bash
(crontab -l 2>/dev/null; echo '*/15 * * * * cd /home/ubuntu/agent-memory && git pull --rebase --autostash && git add -A && git diff --cached --quiet || (git commit -m "auto-sync VPS $(date +\%Y-\%m-\d\ \%H:\%M)" --author="Agent Memory Sync <dman1313@users.noreply.github.com>" && git push)') | crontab -
```

## Memory Path

`/home/ubuntu/agent-memory`

## How to Read Memories

1. `cat /home/ubuntu/agent-memory/MEMORY.md` — read the index first
2. Follow links to specific files in User/, Feedback/, Project/, Reference/
3. Read relevant context before starting work

## How to Write Memories

1. `cd /home/ubuntu/agent-memory && git pull --rebase`
2. Create or update a file in the correct folder (User/, Feedback/, Project/, Reference/)
3. Use this frontmatter:
   ```
   ---
   name: short-kebab-case-slug
   description: One-line summary
   metadata:
     type: user | feedback | project | reference
   ---
   ```
4. Update MEMORY.md with a link to your new/changed file
5. `git add -A && git commit -m "memory: <topic>" && git push`

## Rules

- One file per topic — update existing files, don't duplicate
- Always pull before writing
- Never delete another agent's memory without asking the user
- Verify old memories before trusting them

## User Preferences

- Preferred language: Rust when possible
- Working directory (Mac): /Volumes/M2 Media/Coding Dwayne/Claude
