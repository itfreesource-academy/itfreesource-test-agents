# AGENTS.md: ITFreeSource Test & CI/CD Agents Context

## 🌟 Executive Summary
`itfreesource-test-agents` contains the immutable, containerized Docker build agents used to run test suites across the ITFreeSource Academy ecosystem (Java 17/Kafka, Playwright cross-browser, and Jenkins inbound remoting).

---

## 🏛️ Architecture & Agent Fleet
- **Multi-Agent Fleet**:
  1. `java-kafka-agent:17`: `eclipse-temurin:17-jdk-jammy` with Maven 3.9.6, Docker CLI, `jq`, `netcat`. Used for WireMock, REST Assured, and Apache Kafka asynchronous tests.
  2. `playwright-ts-agent`: `mcr.microsoft.com/playwright:v1.43.0-jammy` with Node.js 20 LTS, Chromium, Firefox, WebKit, Allure CLI. Used for Playwright TypeScript E2E testing.
  3. `jenkins-inbound-agent`: `jenkins/inbound-agent:latest-jdk17` with Java 17, Node.js 20, Maven, Docker CLI for Jenkins controller connection.
- **Orchestration**: `docker-compose.agents.yml` for batch building.
- **Convenience Scripts**:
  - `scripts/run-in-java-agent.ps1`
  - `scripts/run-in-playwright-agent.ps1`

---

## 🚀 Commands & Usage
```bash
# Build all agents locally
docker compose -f docker-compose.agents.yml build

# Run Java tests inside agent
docker run --rm -v "${PWD}/../fintech-test-platform-harness:/workspace" -w /workspace eclipse-temurin:17-jdk-jammy bash -c "./mvnw clean test"

# Run Playwright tests inside agent
docker run --rm -v "${PWD}/../fintech-playwright-ts-harness:/workspace" -w /workspace mcr.microsoft.com/playwright:v1.43.0-jammy bash -c "npm ci && npx playwright test --project=chromium"
```

---

## 🎯 Key Guidelines
- All agent images must remain hermetic and reproducible across Linux, macOS, and Windows.
- Keep dependencies and toolchains pinned to LTS versions (Java 17, Node 20).

---

## 🤖 AI Agent Skills
- **`product-manager-review`** (`skills/product-manager-review/SKILL.md`):
  Automated Senior/Staff Product Manager review framework. Triggers on requests to review, audit, enhance, or prioritize roadmaps for software projects, developer platforms, and engineering portfolios. Evaluates Dual-Persona architecture, operational live telemetry, system design topology, DevSecOps proof-of-work, and P0/P1/P2 Value vs. Effort matrix.

