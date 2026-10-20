# Stealth Benchmarks — Proven Results

This folder contains screenshots from daily CI runs.

## Scores

| Benchmark | Score | Status |
|-----------|-------|--------|
| Pixelscan | 105/105 Clear | ✅ |
| Sannysoft | 29/29 Passed | ✅ |
| Rebrowser | 9/10 Pass | ✅ |
| BrowserScan | All Normal | ✅ |
| DeviceAndBrowserInfo | You are human! | ✅ |
| BrowserLeaks WebRTC | No IP Leak | ✅ |

## Real Anti-Bot Bypass (11/14)

| Site | Anti-Bot | Result |
|------|----------|--------|
| Foot Locker | DataDome Tier S | ✅ Loaded |
| Leboncoin | DataDome Tier S | ✅ Loaded |
| Vinted | DataDome Tier S | ✅ Loaded |
| Booking.com | DataDome + custom Tier S | ✅ Loaded |
| Nike | Akamai Tier A | ✅ Loaded |
| New Balance | Akamai Tier A | ✅ Loaded |
| Zalando | Akamai Tier A | ✅ Loaded |
| Wayfair | PerimeterX Tier A | ✅ Loaded |
| Ticketmaster | Multiple Tier A | ✅ Loaded |
| Stake.com | Cloudflare Enterprise | ✅ Loaded |
| LinkedIn | Cloudflare + custom | ✅ Loaded |

## Bulk Performance

| Benchmark | Pages | Speed | Blocked |
|-----------|-------|-------|---------|
| Hacker News | 15/15 | 37.8 pages/min | 0 |
| Protected (DataDome+Akamai+PerimeterX+CF) | 10/10 | 33.7 pages/min | 0 |

## How Stealth Works
- Patchright — Playwright fork that never calls Runtime.enable (defeats CDP detection)
- Full Chromium + xvfb — real browser, real GPU, real WebGL fingerprints
- Fingerprint rotation — unique viewport, UA, DPR, locale, timezone per session
- Human behavior — Bezier mouse curves, variable typing, natural scroll
- Geo-matching — proxy country → timezone/locale
- WebRTC blocked — no IP leak

## Screenshots
See gallery.html or CI artifacts.
