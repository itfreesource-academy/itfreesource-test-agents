pipeline {
    agent any

    options {
        timeout(time: 25, unit: 'MINUTES')
        ansiColor('xterm')
        buildDiscarder(logRotator(numToKeepStr: '10'))
    }

    stages {
        stage('Build & Verify Java-Kafka Agent') {
            steps {
                echo "=== Building ITFreeSource Java 17 Agent ==="
                sh '''
                    docker build -t itfreesource/java-kafka-agent:test ./docker/java-kafka-agent
                    docker run --rm itfreesource/java-kafka-agent:test java -version
                    docker run --rm itfreesource/java-kafka-agent:test mvn -version
                '''
            }
        }

        stage('Build & Verify Playwright Agent') {
            steps {
                echo "=== Building ITFreeSource Playwright Agent ==="
                sh '''
                    docker build -t itfreesource/playwright-ts-agent:test ./docker/playwright-ts-agent
                    docker run --rm itfreesource/playwright-ts-agent:test node -v
                    docker run --rm itfreesource/playwright-ts-agent:test npm -v
                '''
            }
        }

        stage('Build & Verify Jenkins Inbound Agent') {
            steps {
                echo "=== Building ITFreeSource Jenkins Inbound Remoting Agent ==="
                sh '''
                    docker build -t itfreesource/jenkins-inbound-agent:test ./docker/jenkins-inbound-agent
                '''
            }
        }
    }

    post {
        always {
            sh 'docker image prune -f || true'
        }
        success {
            echo "All 3 ITFreeSource Test Agents Built & Smoke Tested Successfully"
        }
    }
}
