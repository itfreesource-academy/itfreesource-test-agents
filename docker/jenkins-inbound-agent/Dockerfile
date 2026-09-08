# ITFreeSource Academy - Jenkins Inbound Remoting Agent (Java 17 + Node 20 + Docker CLI)
FROM jenkins/inbound-agent:latest-jdk17

USER root

LABEL maintainer="Vishal Prajapati <vishal.prajapati@defendloop.io>"
LABEL organization="ITFreeSource Academy"
LABEL description="Full-capacity Jenkins Inbound Agent capable of running Java 17 and Node 20 pipelines."

ENV DEBIAN_FRONTEND=noninteractive

# Install Node.js 20 LTS, Docker CLI, and Maven
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    git \
    maven \
    ca-certificates \
    gnupg \
    lsb-release && \
    # Install Node.js 20
    curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && \
    apt-get install -y --no-install-recommends nodejs && \
    # Install Docker CLI
    mkdir -p /etc/apt/keyrings && \
    curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg && \
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian $(lsb_release -cs) stable" > /etc/apt/sources.list.d/docker.list && \
    apt-get update && apt-get install -y --no-install-recommends docker-ce-cli && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

USER jenkins
