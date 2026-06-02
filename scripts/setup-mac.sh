#!/bin/bash
# Hermes Agent — Mac Setup Script
# Run on your Mac: bash <(curl -s https://raw.githubusercontent.com/dman1313/agent-memory-coding/main/scripts/setup-mac.sh)
set -e

echo "=== Hermes Agent Mac Setup ==="

# 1. Install Hermes
echo "[1/5] Installing Hermes..."
curl -fsSL https://raw.githubusercontent.com/NousResearch/hermes-agent/main/scripts/install.sh | bash

# 2. Clone agent memory vault
echo "[2/5] Cloning agent memory vault..."
if [ ! -d "$HOME/agent-memory" ]; then
    git clone https://github.com/dman1313/agent-memory-coding.git ~/agent-memory
else
    echo "  Already exists, pulling latest..."
    cd ~/agent-memory && git pull
fi

# 3. Install core skills
echo "[3/5] Installing skills..."
hermes skills install hermes-agent 2>/dev/null || true

# 4. Copy VPS config (if you have the .env file)
echo "[4/5] Checking for API keys..."
if [ -f "$HOME/.hermes/.env" ]; then
    echo "  .env already exists"
else
    echo "  No .env found. You'll need to add API keys."
    echo "  Copy from VPS: scp ubuntu@<vps-ip>:~/.hermes/.env ~/.hermes/.env"
    echo "  Or run: hermes setup"
fi

# 5. Verify
echo "[5/5] Running doctor..."
hermes doctor 2>/dev/null || echo "  (hermes doctor needs a terminal — run it manually)"

echo ""
echo "=== Done! ==="
echo "Next steps:"
echo "  1. Add API keys: hermes setup"
echo "  2. Pick a model: hermes model"
echo "  3. Start chatting: hermes"
echo ""
echo "Agent memory vault is at ~/agent-memory/"
echo "Sync with VPS: cd ~/agent-memory && git pull"
