#!/bin/bash
set -euo pipefail

# Only run in remote (Claude Code on the web) environments
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

# No dependency manifests detected yet.
# Add install commands here as the project grows, for example:
#   npm install          # for Node.js
#   pip install -e .     # for Python
#   bundle install       # for Ruby
#   cargo build          # for Rust

echo "Session start hook complete. No dependencies to install."
