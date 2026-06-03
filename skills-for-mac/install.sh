#!/bin/bash
# Install NotebookLM skills into local Hermes
# Run this from the Mac: bash ~/agent-memory/skills-for-mac/install.sh

HERMES_SKILLS="$HOME/.hermes/skills"
VAULT_DIR="$HOME/agent-memory/skills-for-mac"

echo "Installing NotebookLM skills..."

# Create target directories
mkdir -p "$HERMES_SKILLS/productivity/notebooklm"
mkdir -p "$HERMES_SKILLS/research/sherlock-study-boy/references"

# Copy skill files
cp "$VAULT_DIR/notebooklm/SKILL.md" "$HERMES_SKILLS/productivity/notebooklm/SKILL.md"
cp "$VAULT_DIR/sherlock-study-boy/SKILL.md" "$HERMES_SKILLS/research/sherlock-study-boy/SKILL.md"
cp "$VAULT_DIR/sherlock-study-boy/references/"*.md "$HERMES_SKILLS/research/sherlock-study-boy/references/" 2>/dev/null

echo "Skills installed:"
echo "  - productivity/notebooklm"
echo "  - research/sherlock-study-boy"
echo ""
echo "Next steps:"
echo "  1. Install nlm CLI: uv tool install notebooklm-mcp-cli"
echo "  2. Authenticate: nlm login (needs Chrome)"
echo "  3. Verify: nlm login --check"
echo "  4. List notebooks: nlm notebook list"
