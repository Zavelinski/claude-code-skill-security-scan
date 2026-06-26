#!/usr/bin/env bash
# Remove the skill-security-scan skill from ~/.claude (or $CLAUDE_CONFIG_DIR).
set -euo pipefail
claude_dir="${CLAUDE_CONFIG_DIR:-$HOME/.claude}"
rm -rf "$claude_dir/skills/skill-security-scan"
echo "skill-security-scan uninstalled from $claude_dir."
