#!/usr/bin/env bash
set -e

echo "============================================================"
echo " ITFreeSource Academy - Playwright & TypeScript Test Agent"
echo " Pre-baked Browsers: Chromium | Firefox | WebKit"
echo "============================================================"
node -v
npm -v
allure --version || true

exec "$@"
