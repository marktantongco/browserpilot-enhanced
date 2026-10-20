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
- #1 agent-browser (1.15M installs) - vercel-labs, browser automati

See docs/ARCHITECTURE.md for full