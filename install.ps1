# Install the skill-security-scan skill into ~/.claude (or $env:CLAUDE_CONFIG_DIR).
$ErrorActionPreference = 'Stop'

$repo = Split-Path -Parent $MyInvocation.MyCommand.Path
$claudeDir = if ($env:CLAUDE_CONFIG_DIR) { $env:CLAUDE_CONFIG_DIR } else { Join-Path $HOME '.claude' }

New-Item -ItemType Directory -Force -Path (Join-Path $claudeDir 'skills\skill-security-scan') | Out-Null
Copy-Item (Join-Path $repo 'skills\skill-security-scan\SKILL.md') (Join-Path $claudeDir 'skills\skill-security-scan\SKILL.md') -Force

Write-Host ""
Write-Host "skill-security-scan installed into $claudeDir"
Write-Host "Restart Claude Code, then ask 'is this skill safe' (or /skill-security-scan <path>)."
