# Publish to skills.sh

## Trending Skill Stack (must be installed before coding)
```bash
npx skills find "browser automation stealth"
npx skills add vercel-labs/agent-browser/agent-browser
npx skills add Johell1NS/browser-search
```

## Publish
```bash
# 1. Validate SKILL.md
npx skills validate

# 2. Publish
npx skills publish --skill browserpilot-enhanced

# 3. Tag release for CI stealth benchmarks
git tag v2.0.0
git push origin v2.0.0
# CI will run Pixelscan 105/105, Sannysoft 29/29, Rebrowser, antibot 11/14 and upload screenshots to docs/stealth-benchmarks/

# 4. Check trending
open https://www.skills.sh/trending
open https://www.skills.sh/skills/browserpilot-enhanced
```

## Skill Directory Structure for Vercel Registry
- SKILL.md with frontmatter (name, description, version, keywords, compatibility)
- package.json with skills field
- README.md
- docs/ with benchmarks
