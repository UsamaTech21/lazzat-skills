# Lazzat Skills — Version Registry

> The canonical table of every skill's current version. Agents consult this before using a skill.

Last registry update: **2026-04-21**

---

## Core

| Skill | Version | Last Updated | Owner |
|---|---|---|---|
| core-brand | 1.1.0 | 2026-04-21 | Lazzat-Brand |
| voice-and-claims | 1.0.0 | 2026-04-21 | Lazzat-Brand |

---

## Functional Skills

| Skill | Version | Last Updated | Owner |
|---|---|---|---|
| brand-compliance-checker | 1.1.0 | 2026-04-21 | Lazzat-Compliance |
| senior-strategist | 1.0.1 | 2026-04-21 | Lazzat-Strategy |
| social-media-handler | 1.0.1 | 2026-04-21 | Lazzat-Social |
| content-writer | 1.0.1 | 2026-04-21 | Lazzat-Content |
| seo-expert | 1.0.1 | 2026-04-21 | Lazzat-SEO |
| digital-marketer | 1.0.1 | 2026-04-21 | Lazzat-Ads |
| graphic-designer | 1.0.1 | 2026-04-21 | Lazzat-Design |
| video-editor | 1.0.1 | 2026-04-21 | Lazzat-Video |
| web-app-developer | 1.0.1 | 2026-04-21 | Lazzat-Web |
| guerrilla-movement-marketer | 1.0.1 | 2026-04-21 | Lazzat-Guerrilla |
| brampton-demographics-intelligence | 1.0.1 | 2026-04-21 | Lazzat-Intelligence |
| influencer-finder | 1.0.1 | 2026-04-21 | Lazzat-Influencers |

---

## Change Log

### 2026-04-21 — Voice & Claims reconciliation (release 1.1)
- **Added:** `voice-and-claims` skill (Lazzat's master voice authority) under `CORE/skills/voice-and-claims/` with four reference files (approved-phrasings, canadian-ad-law, allergen-handling, qa-scripts) and eval suite.
- **Core-brand 1.1.0:** taglines updated to *Grill & Shakes — Uniting Through Flavours* (primary) and *Grill & Shakes — Flavours From Around The World* (secondary); non-negotiables expanded from 10 → 15; "halal" removed from all customer-facing surfaces in favour of "Maple Lodge Farms chicken" supplier credential; 13 → 17 sauce headline (13 live + 4 pending founder approval); 4 approved skewer names locked (Chicken Tikka, Lamb Seekh, Paneer, Soya); salt-wall age locked at "approximately 600 million years (Khan et al., 2026)"; shake prices locked; "smoothie" / "juice" category language replaced with "Shake" / "Fruit Blend".
- **Brand-compliance-checker 1.1.0:** 32 checks → 40 checks; added Seven Tests (Specificity, Fragment, Who-wrote-this, AI-word scan, Structure scan, Comparison scan, Wall/Journalist); added 3 new eval cases (AI words, competitor/Osmow's silence, salt-wall therapeutic, smoothie/hormone-free).
- **All 11 output skills 1.0.1:** "halal-sourced" replaced with "Maple Lodge Farms chicken"; "13 sauces" → "17 sauces" (marketing headline); secondary-tagline wording updated; `voice-and-claims` added to `Related skills (required)`.

---

## Versioning Rules

- **PATCH** (x.y.**z**) — typo fixes, wording edits, reference file additions that don't change behavior.
- **MINOR** (x.**y**.z) — new templates, new frameworks, new references that extend behavior.
- **MAJOR** (**x**.y.z) — behavior change, new approval route, new compliance rule, new skill structure.

Every version bump updates:
1. The skill's `SKILL.md` → `metadata.version` + `metadata.last_updated`.
2. The matching row in this file.
3. `VERSIONS.md` header date.

> **Note on ownership:** Owners listed above are **skill-identities** (Lazzat-{function}) — the internal brand labels for each skill area. The real humans behind each skill-identity and the full approval chain are documented in `CORE/team-roles.md` and `CORE/team-bios.md`.
