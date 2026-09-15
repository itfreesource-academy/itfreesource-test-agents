# CLAUDE.md: ITFreeSource Test & CI/CD Agents

## Overview
`itfreesource-test-agents` packages standardized Docker images for Java 17 / Kafka testing, Playwright cross-browser testing, and Jenkins inbound agent remoting.

## Agent Specifications
- `java-kafka-agent`: Ubuntu Jammy, Eclipse Temurin Java 17, Maven 3.9.6, Docker CLI, netcat, jq.
- `playwright-ts-agent`: Microsoft Playwright Ubuntu Jammy, Node.js 20, Chromium, Firefox, WebKit, Allure CLI.
- `jenkins-inbound-agent`: Jenkins Official Inbound Agent JDK 17 with Node 20, Maven, and Docker CLI.

## Common Commands
```bash
# Build all agents
docker compose -f docker-compose.agents.yml build

# Run Java tests inside java-kafka-agent
docker run --rm -v "${PWD}/../fintech-test-platform-harness:/workspace" -w /workspace eclipse-temurin:17-jdk-jammy bash -c "./mvnw clean test"

# Run Playwright tests inside playwright-ts-agent
docker run --rm -v "${PWD}/../fintech-playwright-ts-harness:/workspace" -w /workspace mcr.microsoft.com/playwright:v1.43.0-jammy bash -c "npm ci && npx playwright test --project=chromium"
```

## Guidelines
- Do not add bloat or non-essential global binaries to agent Dockerfiles.
- Keep agent images pinned to LTS versions for stability and reproducibility.
