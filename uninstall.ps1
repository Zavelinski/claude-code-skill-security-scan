# Remove the skill-security-scan skill from ~/.claude (or $env:CLAUDE_CONFIG_DIR).
$ErrorActionPreference = 'Stop'
$claudeDir = if ($env:CLAUDE_CONFIG_DIR) { $env:CLAUDE_CONFIG_DIR } else { Join-Path $HOME '.claude' }
Remove-Item -Recurse -Force (Join-Path $claudeDir 'skills\skill-security-scan') -ErrorAction SilentlyContinue
Write-Host "skill-security-scan uninstalled from $claudeDir."
