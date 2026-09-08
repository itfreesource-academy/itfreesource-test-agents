# ITFreeSource Academy - Enterprise Playwright & TypeScript Test Runner Agent
FROM mcr.microsoft.com/playwright:v1.43.0-jammy

LABEL maintainer="Vishal Prajapati <vishal.prajapati@defendloop.io>"
LABEL organization="ITFreeSource Academy"
LABEL description="Pre-baked headless cross-browser Playwright test agent with Allure CLI."

ENV DEBIAN_FRONTEND=noninteractive
ENV PLAYWRIGHT_BROWSERS_PATH=/ms-playwright

# Install Git, curl, jq, and Java runtime (required for Allure report generator)
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    git \
    jq \
    default-jre-headless && \
    # Install Allure CLI
    curl -fsSL https://github.com/allure-framework/allure2/releases/download/2.26.0/allure-2.26.0.tgz | tar -xz -C /opt && \
    ln -s /opt/allure-2.26.0/bin/allure /usr/local/bin/allure && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
CMD ["npx", "playwright", "test"]
