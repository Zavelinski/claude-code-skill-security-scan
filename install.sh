#!/usr/bin/env bash
# Install the skill-security-scan skill into ~/.claude (or $CLAUDE_CONFIG_DIR).
set -euo pipefail

repo="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
claude_dir="${CLAUDE_CONFIG_DIR:-$HOME/.claude}"

mkdir -p "$claude_dir/skills/skill-security-scan"
cp "$repo/skills/skill-security-scan/SKILL.md" "$claude_dir/skills/skill-security-scan/SKILL.md"

echo ""
echo "skill-security-scan installed into $claude_dir"
echo "Restart Claude Code, then ask 'is this skill safe' (or /skill-security-scan <path>)."
