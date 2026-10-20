#!/bin/bash
set -e
echo "[1/5] Cloning reference repos"
mkdir -p references
for repo in Johell1NS/browser-search GeiserX/CashPilot handrew/browserpilot ai-naymul/BrowserPilot aidil2105/jev-browser-pilot; do
  echo "  cloning $repo"
  git clone https://github.com/$repo references/$(echo $repo | tr / -) --depth 1 || true
done
echo "[2/5] Installing skills.sh trending stack"
npx skills add vercel-labs/skills/find-skills --skill find-skills || true
npx skills add vercel-labs/agent-browser/agent-browser --skill agent-browser || true
npx skills add Johell1NS/browser-search || true
echo "[3/5] Python deps"
pip install -r requirements.txt
pip install patchright && patchright install chromium --with-deps || true
echo "[4/5] Docker infra"
docker-compose up -d searxng camofox redis || true
echo "[5/5] Smoke test"
python -c "from core.fusion import BrowserPilotEnhanced; import asyncio; print(asyncio.run(BrowserPilotEnhanced().run('Go to example.com extract title')))"
echo "Done — http://localhost:8000 + dashboard"
