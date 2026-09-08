# Run any target Java repository tests inside the ITFreeSource Java-Kafka Agent
param (
    [string]$TargetRepoPath = "..\fintech-test-platform-harness"
)

$resolved = (Resolve-Path $TargetRepoPath).Path
Write-Host "Running tests inside itfreesource/java-kafka-agent..." -ForegroundColor Cyan
Write-Host "Target repository: $resolved"

docker run --rm -v "${resolved}:/workspace" -v /var/run/docker.sock:/var/run/docker.sock -w /workspace eclipse-temurin:17-jdk-jammy bash -c "./mvnw clean test"
