# Run any target Playwright repository tests inside the ITFreeSource Playwright Agent
param (
    [string]$TargetRepoPath = "..\fintech-playwright-ts-harness"
)

$resolved = (Resolve-Path $TargetRepoPath).Path
Write-Host "Running Playwright E2E tests inside itfreesource/playwright-ts-agent..." -ForegroundColor Magenta
Write-Host "Target repository: $resolved"

docker run --rm -v "${resolved}:/workspace" -w /workspace mcr.microsoft.com/playwright:v1.43.0-jammy bash -c "npm ci && npx playwright test --project=chromium"
