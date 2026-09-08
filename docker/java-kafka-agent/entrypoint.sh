#!/usr/bin/env bash
set -e

echo "============================================================"
echo " ITFreeSource Academy - Java 17 & Kafka Test Runner Agent"
echo " Candidate: Vishal Prajapati (Senior SDET / Tools Engineer)"
echo "============================================================"
java -version
mvn -version

if [ -S /var/run/docker.sock ]; then
    echo "[✓] Docker daemon socket detected and mounted."
else
    echo "[!] Docker socket not mounted. Running in hostless container mode."
fi

exec "$@"
