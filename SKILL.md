---
name: browserpilot-enhanced
description: Optimized fusion of Johell1NS/browser-search + GeiserX/CashPilot fleet + handrew instruction compiler + ai-naymul Ghost Mode stealth + aidil2105 Jev bounded decisions. Self-hosted unlimited search->browse->bypass with fleet bulk orchestration.
version: 2.0.0
license: MIT
metadata:
  author: fusion
  tags: [browser-automation, stealth, searxng, jev, cashpilot, bulk-scraping, anti-bot]
---

# BrowserPilot Enhanced

## When to use
- User wants natural language browser automation, scraping protected sites, bulk jobs, or fleet management.
- Trigger: "browse", "scrape", "extract", "go to", "search web and browse", "bulk scrape", "bypass cloudflare"

## Workflow (MANDATORY)

1. **Clarify with grill-me**: Break goal into verifiable subgoals. Use `grill-me` pattern: ask about target site, data schema, output format, stealth need.

2. **Search Phase (Johell1NS pattern)**:
   ```
   node scripts/searxng/search.mjs "query" --engines google,bing,duckduckgo --json
   ```
   Fan-out: parallel-deep-research with 3-5 variant queries. Must verify factual claims against live sources.

3. **Perception Phase (Camofox)**:
   ```
   POST :9377/tabs -> navigate -> snapshot (a11y tree, 90% token savings)
   readability for clean article
   ```
   Code owns perception: list candidate actions with IDs [e1..eN].

4. **Decision Phase (Jev)**:
   - Build candidates: [{id, role, name, description}]
   - Call Jev provider: one Choice over IDs, with confidence
   - If confidence <0.7, fallback to Gemini 2.5 Flash vision
   - Audit trail: log decision + confidence

5. **Actuation Phase (Ghost Mode)**:
   - Patchright (no Runtime.enable), Bezier mouse, variable typing, fingerprint rotation, geo-matching
   - If blocked (429, cf challenge), escalate to CloakBrowser

6. **Verification Phase (handrew pattern)**:
   - extract via readability + evaluate JS
   - query memory (embeddings index)
   - retrieve_information with schema validation

7. **Fleet Phase (CashPilot pattern)**:
   - For bulk: POST /bulk {urls, prompt, format, max_workers=10, block_resources=true}
   - Workers: unique fingerprint each, context rotation every N pages, shared intelligence, checkpoint/resume, adaptive throttle

## Security
- SSRF protection, path traversal blocks, rate limiting (from browser-search)
- No API keys in source, env only

## Installation
```bash
git clone https://github.com/Johell1NS/browser-search # for reference
npx skills add browser-search # installs SearXNG + Camofox + CloakBrowser scripts
docker-compose up -d searxng camofox redis
npm install cloakbrowser patchright
pip install -e .
```

## Environment
- SEARXNG_URL=http://localhost:8080
- CAMOFOX_URL=http://localhost:9377
- REDIS_URL=redis://localhost:6379
- JEV_API_KEY=...
- GOOGLE_API_KEY=... # fallback vision
