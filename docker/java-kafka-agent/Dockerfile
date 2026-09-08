# ITFreeSource Academy - Enterprise Java & Kafka Test Runner Agent
FROM eclipse-temurin:17-jdk-jammy

LABEL maintainer="Vishal Prajapati <vishal.prajapati@defendloop.io>"
LABEL organization="ITFreeSource Academy"
LABEL description="Dedicated CI/CD build agent for Java 17, Maven, WireMock, and Kafka stream testing."

ENV DEBIAN_FRONTEND=noninteractive
ENV MAVEN_VERSION=3.9.6
ENV MAVEN_HOME=/usr/share/maven
ENV PATH=${MAVEN_HOME}/bin:${PATH}

# Install build utilities, Docker CLI, and networking tools
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    git \
    jq \
    netcat-openbsd \
    ca-certificates \
    gnupg \
    lsb-release \
    tar \
    gzip && \
    # Install Apache Maven
    curl -fsSL https://archive.apache.org/dist/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz | tar -xz -C /usr/share && \
    mv /usr/share/apache-maven-${MAVEN_VERSION} ${MAVEN_HOME} && \
    # Install Docker CLI for DinD integration
    mkdir -p /etc/apt/keyrings && \
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg && \
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" > /etc/apt/sources.list.d/docker.list && \
    apt-get update && apt-get install -y --no-install-recommends docker-ce-cli docker-compose-plugin && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
CMD ["mvn", "test"]
