$ErrorActionPreference = 'Continue'

Write-Host '=== Sprint 0 Agent Platform Preflight ===' -ForegroundColor Cyan

function Check-Command($name, $args) {
  $cmd = Get-Command $name -ErrorAction SilentlyContinue
  if ($null -eq $cmd) {
    Write-Host "[MISSING] $name" -ForegroundColor Yellow
    return $false
  }
  Write-Host "[FOUND]   $name -> $($cmd.Source)" -ForegroundColor Green
  if ($args) { & $name @args }
  return $true
}

$dockerOk = Check-Command 'docker' @('--version')
$nodeOk   = Check-Command 'node' @('--version')
$npmOk    = Check-Command 'npm' @('--version')
$gitOk    = Check-Command 'git' @('--version')
$npxOk    = Check-Command 'npx' @('--version')
$claudeOk = Check-Command 'claude' @('--version')

Write-Host ''
Write-Host '=== Docker daemon ===' -ForegroundColor Cyan
if ($dockerOk) { docker info --format 'Server={{.ServerVersion}}' 2>$null } else { Write-Host '[SKIP] docker not installed' }

Write-Host ''
Write-Host '=== Claude authentication ===' -ForegroundColor Cyan
if ($claudeOk) {
  Write-Host 'Run: claude auth status'
  claude auth status
} else {
  Write-Host '[PENDING] Claude Code CLI is not available in PATH.' -ForegroundColor Yellow
}

Write-Host ''
Write-Host '=== Result ===' -ForegroundColor Cyan
if ($dockerOk -and $nodeOk -and $npmOk -and $gitOk -and $npxOk) {
  Write-Host 'BASE TOOLCHAIN: READY' -ForegroundColor Green
} else {
  Write-Host 'BASE TOOLCHAIN: INCOMPLETE — install only the missing prerequisites before continuing.' -ForegroundColor Yellow
}

Write-Host ''
Write-Host 'Next POC action: launch OpenHands Agent Canvas locally, then connect Claude Code through ACP.' -ForegroundColor Cyan
