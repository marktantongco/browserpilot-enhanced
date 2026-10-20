# BrowserPilot Enhanced - Fusion Architecture

## Research Summary

### Source Repos Analyzed (15 repos)

1. **Johell1NS/browser-search** (535★) - 3-tier: SearXNG (search JSON) -> Camofox REST (Firefox fork C++ patches) -> CloakBrowser (Chromium stealth, 58 patches, 0.9 recaptcha v3). Anti-hallucination via deterministic scripts. Security: SSRF, sandboxing, rate limiting.

2. **GeiserX/CashPilot** - Self-hosted passive income aggregator. Deploys Docker containers, fleet manager, workers heartbeat, collectors for balances, admin API, UI + worker images drumsergio/cashpilot. Ecosystem: android agent (NotificationListener), desktop (Wails/Go), MCP bridge.

3. **handrew/browserpilot** (635★, original 2023) - GPTSeleniumAgent + InstructionCompiler. Actions <-> methods 1:1 mapping: find_elements, click, send_keys, scroll, retrieve_information, query_memory (embeddings). Prompt library, BEGIN_FUNCTION/END_FUNCTION composition, yaml caching.

4. **ai-naymul/BrowserPilot** (canonical modern, 171★) - Patchright (never calls Runtime.enable), Ghost Mode v1.1, 105/105 Pixelscan, 29/29 Sannysoft, Bulk engine: 10 workers, context rotation, resource blocking (3-5x speed), adaptive throttle, checkpoint/resume, shared intelligence. FastAPI :8000, Gemini 2.5 Flash vision, generative UI backend :8001.

5. **aidil2105/jev-browser-pilot** (Jev pattern) - Bounded decision layer: CODE owns perception, content listing, actuation, verification. MODEL (Jev ~100ms) picks ONE candidate ID. Confidence routing + audit trail. Library-shaped, mock provider for offline tests.

6-15. Forks: jacksonjp0311, amarjitjim, RAGEFULRHINO16, ai-naymul duplicate, xy200303 market, fncreator22, Sujit-Adiga, lexo-ch url-switcher, Puxora dsh, divyanshuoff ai - all variants of ai-naymul with minor tweaks: URL-based switching, market data extraction, DSH integration.

## Skills.sh Trending (2026-10-17)

From skills.sh/trending + best-skills ranking:
- #1 agent-browser (1.15M installs) - vercel-labs, browser automation skill
- #2 find-skills (3.89M installs) - meta skill for discovering skills
- #3 frontend-design (anthropic)
- #4 grill-me / grill-with-docs (prompt clarification)
- Trending 7d: ai-image-generation, ai-avatar-video, ai-video-generation, hyperframes-cli (52% growth)
- Must-have stack: browser-use (118k stars repo), superpowers patterns

## Required Skill Stack for BrowserPilot Enhanced

Defined per Agent Skills spec:

1. **find-skills** - discovery
2. **agent-browser** - baseline browser
3. **browser-search** (Johell1NS) - 3-tier escalation
4. **browser-use** - vision + DOM
5. **jev** - bounded fast decision (TypeSafe Jev)
6. **cashpilot-orchestrator** - fleet / docker management
7. **deep-research** - parallel multi-angle verification
8. **github-research** - repo auditing
9. **skill-creator / skill-optimizer** - meta skills
10. **grill-me** - clarify before code

## Synergy Architecture

```
User Goal (natural language)
  |
  v
[Layer 0: Skill Router] find-skills + grill-me
  - clarifies, decomposes into verifiable subgoals
  |
  v
[Layer 1: Search Tier - Johell1NS] SearXNG metasearch (multi-engine JSON)
  - parallel_deep_research: fan-out queries
  |
  v
[Layer 2: Decision Tier - Jev] Bounded choice: code lists 5-20 candidate actions (clickables via Camofox a11y snapshot), Jev picks ONE id (~100ms, $0.0001)
  - confidence routing: low confidence -> fallback to Gemini Flash vision
  |
  v
[Layer 3: Execution Tier - ai-naymul Ghost Mode] Patchright + Camofox REST
  - human behavior: Bezier mouse, variable typing, scroll
  - fingerprint rotation, geo-matching, WebRTC blocked
  |
  v
[Layer 4: Stealth Escalation - CloakBrowser] if blocked -> auto switch
  - challenge detection, proxy support
  |
  v
[Layer 5: Verification Tier - handrew Memory + Retrieval] Readability.js clean extract, LLM synthesis, embeddings memory query
  |
  v
[Layer 6: Fleet Tier - CashPilot] Bulk engine: N workers, context rotation, resource blocking, checkpoint/resume, shared block intelligence, Docker orchestrator
  |
  v
Structured Output: JSON/CSV/Markdown + audit trail + dashboard stream (ws:// :8000 live view)
```

## Stack Implementation

- Python 3.11, FastAPI, Patchright, Playwright, SearXNG (docker), Camofox docker :9377, CloakBrowser npm
- Jev provider via openai-compatible API (typesafe.ai)
- Gemini 2.5 Flash for vision fallback
- Redis for bulk queue + checkpoint
- Wails optional for desktop

## Performance Targets

- Search: <500ms via SearXNG
- Decision: 100-300ms Jev
- Browse: 1-3s cold, ~0ms warm Camofox
- Stealth: 105/105 Pixelscan, 11/14 real anti-bot bypass
- Bulk: 37 pages/min (HN), 33 pages/min protected, 0 blocked
- Cost: 90% cheaper than GPT-only (Jev handles 80% steps)
