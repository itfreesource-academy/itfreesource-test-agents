---
name: product-manager-review
description: >-
  Conduct comprehensive Senior/Staff Product Management reviews, strategic feature enhancements,
  user persona audits (Operator vs. Showcase), roadmap prioritization (Value vs. Effort / MoSCoW),
  telemetry and live operational checks, DevEx optimizations, and executive architecture positioning.
  Use when asked to review or enhance a project, dashboard, or codebase as a Product Manager, evaluate
  features, prioritize technical backlog, or transform developer utilities into enterprise products.
---

# Product Manager Review & Strategic Enhancements Skill

A systematic, actionable framework for conducting **Senior / Staff Product Management reviews** on software engineering repositories, internal developer tools, platforms, and portfolio applications.

---

## 🎯 When to Use This Skill
Activate this skill whenever:
1. The user asks: *"Review this project as a product manager"*, *"How would you enhance this dashboard?"*, *"What features should I build next?"*, or *"Prioritize my backlog"*.
2. A developer tool or dashboard is functional, but lacks clear user personas, operational telemetry, or executive-level presentation.
3. Preparing an open-source project or engineering portfolio for recruiters, hiring managers, or enterprise stakeholders.
4. Evaluating trade-offs between engineering effort and business/user impact.

---

## 🧠 PM Mindset & Guiding Principles
- **Dual-Persona Architecture**: Almost every developer application serves two masters:
  1. **The Operator (Internal)**: Needs rapid debugging, credential management, live health pings, workflow dispatchers, and logs.
  2. **The Evaluator / User (External)**: Needs clear value propositions, live interactive demos, architecture topologies, and zero exposure of sensitive administrative placeholders.
- **Living Systems over Static Text**: Replace static strings (e.g. "Cloudflare Pages") with actionable telemetry (e.g., live latency badges, 200 OK pings, CI/CD build indicators).
- **Ruthless Prioritization**: Deliver recommendations in an actionable matrix (P0 / P1 / P2) balanced by Value vs. Effort, not a generic wishlist.
- **Showcase Proof-of-Work**: Highlight engineering excellence (QA test pyramid, DevSecOps compliance, automation coverage) as primary product differentiators.

---

## 📋 The 5-Pillar PM Review Framework

When reviewing any codebase, platform, or dashboard, systematically evaluate these 5 pillars:

### Pillar 1: Dual-Persona & Security Boundaries
- [ ] Does the product distinguish between **Internal Operator Mode** (manage, edit, webhook dispatch) and **Public Showcase Mode** (sanitized, view-only, demo-focused)?
- [ ] Are sensitive tokens, emails, and internal infrastructure notes safely sequestered behind authentication or local privacy controls?
- [ ] Is there an instant mechanism (e.g., toggle button, local state) to flip between views?

### Pillar 2: Operational Telemetry & Live Health
- [ ] Are production services monitored in real time, or are statuses hardcoded?
- [ ] Can edge workers or backends perform periodic `HEAD` health checks against endpoints and report latency (ms)?
- [ ] Are GitHub Actions workflow run statuses (Passing/Failing) surfaced directly within the UI?
- [ ] Are SSL expirations or domain alerts detected proactively?

### Pillar 3: System Architecture & Ecosystem Topology
- [ ] Can a stranger or senior stakeholder understand the relationship between multiple services in under 30 seconds?
- [ ] Is there an interactive **System Graph / Architecture Topology Map** visualizing data flow (e.g., Frontend ↔ API Gateway ↔ Edge DB ↔ Auth Provider)?
- [ ] Are dependencies and shared libraries mapped across repositories?

### Pillar 4: Quality Engineering & DevSecOps Proof-of-Work
- [ ] How is software quality demonstrated? Are testing layers visible:
  - **Unit & Integration**: Vitest, JUnit, Room SQLite, WireMock
  - **End-to-End**: Playwright, Appium, Cypress
  - **Contract & API**: OpenAPI, REST Assured
- [ ] Are security postures exposed (e.g., SARIF reports, Dependabot 0-high alert status, OWASP compliance)?
- [ ] Can users inspect or download recent test execution artifacts or mobile APK releases directly?

### Pillar 5: Developer Experience (DevEx) & Power-User Workflows
- [ ] **Global Command Palette (`Cmd + K` / `Ctrl + K`)**: Instant keyboard navigation across projects, filters, and actions.
- [ ] **One-Click Actions**: Single click to copy git clone snippets, trigger CI/CD workflow dispatches, or purge edge CDN cache.
- [ ] **Responsive & Resilient UI**: High-speed filtering, keyboard accessibility, smooth transitions, and persistent user preferences (`localStorage`).

---

## 📊 Standard Review Output Structure

When executing a PM review for the user, deliver the response using this structured format:

### 1. Executive Summary & North Star
- State the product's primary purpose and target audience.
- Define the **North Star Metric** (e.g., *Time-to-Incident-Resolution for Operators*, *Conversion-to-Interview for Portfolios*).

### 2. Dual-Persona Architecture Map
- Include a Mermaid diagram contrasting **Internal Operator** needs vs. **External Showcase** needs.

### 3. Key Strategic Enhancements
- Group findings into 3–4 focused thematic pillars (e.g., Operational Telemetry, System Topology, DevSecOps Showcase, DevEx).
- Provide concrete, technical proposals for each pillar.

### 4. Prioritized Implementation Matrix (MoSCoW / Value vs. Effort)
Provide a markdown table:
| Priority | Feature / Enhancement | User Value | Engineering Effort | Target Milestone |
|:---|:---|:---:|:---:|:---:|
| **P0 (Immediate)** | *High impact, low effort quick wins* | High | Low | Next Sprint |
| **P1 (Near-Term)** | *Core functional capabilities* | Very High | Medium | Phase 2 |
| **P2 (Long-Term)** | *Strategic differentiators & wow factors* | High | High | Phase 3 |

### 5. Immediate Action Plan
- Detail the exact implementation steps for the top **P0** feature so execution can start immediately.
