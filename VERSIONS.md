# Lazzat Skills — Version Registry

> The canonical table of every skill's current version. Agents consult this before using a skill.

Last registry update: **2026-04-27**

---

## Core

| Skill | Version | Last Updated | Owner |
|---|---|---|---|
| core-brand | 1.2.0 | 2026-04-27 | Lazzat-Brand |
| voice-and-claims | 1.1.0 | 2026-04-27 | Lazzat-Brand |

---

## Functional Skills

| Skill | Version | Last Updated | Owner |
|---|---|---|---|
| brand-compliance-checker | 1.2.0 | 2026-04-27 | Lazzat-Compliance |
| senior-strategist | 1.0.2 | 2026-04-27 | Lazzat-Strategy |
| social-media-handler | 1.0.2 | 2026-04-27 | Lazzat-Social |
| content-writer | 1.0.1 | 2026-04-21 | Lazzat-Content |
| seo-expert | 1.0.1 | 2026-04-21 | Lazzat-SEO |
| digital-marketer | 1.0.2 | 2026-04-27 | Lazzat-Ads |
| graphic-designer | 1.0.1 | 2026-04-21 | Lazzat-Design |
| video-editor | 1.0.2 | 2026-04-27 | Lazzat-Video |
| web-app-developer | 1.0.1 | 2026-04-21 | Lazzat-Web |
| guerrilla-movement-marketer | 1.0.1 | 2026-04-21 | Lazzat-Guerrilla |
| brampton-demographics-intelligence | 1.0.2 | 2026-04-27 | Lazzat-Intelligence |
| influencer-finder | 1.0.1 | 2026-04-21 | Lazzat-Influencers |

---

## Change Log

### 2026-04-21 — Voice & Claims reconciliation (release 1.1)
- **Added:** `voice-and-claims` skill (Lazzat's master voice authority) under `CORE/skills/voice-and-claims/` with four reference files (approved-phrasings, canadian-ad-law, allergen-handling, qa-scripts) and eval suite.
- **Core-brand 1.1.0:** taglines updated to *Grill & Shakes — Uniting Through Flavours* (primary) and *Grill & Shakes — Flavours From Around The World* (secondary); non-negotiables expanded from 10 → 15; "halal" removed from all customer-facing surfaces in favour of "Maple Lodge Farms chicken" supplier credential; 13 → 17 sauce headline (13 live + 4 pending founder approval); 4 approved skewer names locked (Chicken Tikka, Lamb Seekh, Paneer, Soya); salt-wall age locked at "approximately 600 million years (Khan et al., 2026)"; shake prices locked; "smoothie" / "juice" category language replaced with "Shake" / "Fruit Blend".
- **Brand-compliance-checker 1.1.0:** 32 checks → 40 checks; added Seven Tests (Specificity, Fragment, Who-wrote-this, AI-word scan, Structure scan, Comparison scan, Wall/Journalist); added 3 new eval cases (AI words, competitor/Osmow's silence, salt-wall therapeutic, smoothie/hormone-free).
- **All 11 output skills 1.0.1:** "halal-sourced" replaced with "Maple Lodge Farms chicken"; "13 sauces" → "17 sauces" (marketing headline); secondary-tagline wording updated; `voice-and-claims` added to `Related skills (required)`.

### 2026-04-27 — Operational menu reconciliation (release 1.2)

Source files: `Final Shakes.pdf` (2026-04-26), `Final_Salads - Google Sheets.pdf` (2026-04-26), `Shakes Order Flow.pdf` (2026-04-26).

**Operational truth wins over voice doc for FACTS; voice doc still wins for STYLE.** Three voice-doc rules were reverted in light of operational reality:

1. Coconut Shake recipe = **coconut + pineapple + milk + cream** (was: "pure coconut only").
2. **Blue Spirulina** is the actual ingredient name (was: "Butterfly Pea Flower").
3. Apple is allowed inside **Lazzat Bean Salad only** (was: blanket apple ban).

**Core-brand 1.2.0:**
- §QUICK BRAND FACTS rewritten for menu shape (named all 6 salads with signature flags) and shake rule (named 5 Signature Shakes + 6 Fruit Blends + locked add-on prices + locked offer/hero lines).
- `reconciled_with` metadata field added.

**Voice-and-claims 1.1.0:**
- §13.1 (canonical 5 Signature Shakes + 6 Popular Fruit Blends with recipes & prices) added.
- §13.2 (canonical 6 salads with dietary tags + Sweet Corn & Pepper signature ⚡ + Lazzat Bean Salad ⭐) added.
- §13.3 (locked add-on pricing — Protein/Collagen +$1.99, Chia/Flax +$0.79, Nut Top +$0.69, Oat Milk +$0.79, Almond Milk +$0.69, Yogurt +$0.79, Blue Spirulina +$0.99) added.
- §14.1 banned-language table rewritten — Butterfly Pea Flower row reversed; "Pure coconut Coconut Shake" row added; "Milkshake" added; therapeutic Blue Spirulina claims explicitly banned; apple-rule scoped to drinks-only (Lazzat Bean Salad allowed).
- §14.2 leafy-greens rule scoped — banned as standalone bowl base, allowed as shake-base fruit selections (kale = shake-base only).
- §14.4 (HMA halal certification status — application in progress ~4–8 weeks, default "no halal customer-facing" rule still wins until certified + brand-team review) added.
- Four locked claim lines: "Not Syrup. Not Flavouring. Real Fruit." / "+ 1 Real Fruit FREE with any Signature Shake." / "Lowest Price for Real Fruit Shakes in Brampton — $6.99." / "5 ingredients. No artificial flavours. No artificial colours."

**Brand-compliance-checker 1.2.0:**
- 40 checks → 49 checks (added 33a/b/c/d/e/f for shake-recipe / salad-name / Coconut-recipe / Blue-Spirulina-naming / apple-rule / indulgent-flavors-on-water-base; 35a for add-on pricing; 35b for salad dietary tags + sulphite/mustard flags).
- 9 evals → 15 evals (added bc-10 Coconut-recipe, bc-11 Butterfly-Pea/therapeutic, bc-12 legacy-salad-names, bc-13 add-on-pricing, bc-14 Spiced-Chickpea-vegan + halal, bc-15 canonical-shake clean-pass).
- `reconciled_with` metadata field added.

**Approved-claims:**
- §Drinks rewritten with the canonical 5 Signature Shakes (recipes + prices) + 6 Popular Fruit Blends + Build-Your-Own + locked add-on pricing + locked offer/hero/headline lines.
- §Salads rewritten with the canonical 6 salads (dietary tags, signature flags, allergen notes, apple-in-bean-salad exemption).
- 🔴 RED list: Butterfly Pea Flower row reversed; "Milkshake" added; "Pure coconut Coconut Shake" added; therapeutic Blue Spirulina claims explicitly banned; legacy v13 drink names blocked (Mango Madness, Very Berry, Green Glow, Tropical Sunrise, Classic Chocolate, Vanilla Dream, Cookies & Cream, Mango Magic, Pistachio Delight, Carrot-Ginger, Pomegranate); legacy v13 salad names blocked (Classic House, Mediterranean, Mexican Fiesta, Greek, Asian Crunch, Middle Eastern Fattoush); leafy-greens-on-bowl-base reaffirmed but shake-base spinach/kale exempted.

**Menu-v14:**
- §2C salad section rebuilt — 6 canonical salads with descriptions, dietary tags, allergens, Sweet Corn & Pepper signature flag, Lazzat Bean Salad ⭐, apple-in-bean-salad rule explicit.
- §3 Wraps section updated — wrap descriptions now reference canonical salad names (Cucumber Tomato, Red Cabbage Slaw, Sweet Corn & Pepper, Spiced Chickpea).
- §6 Drinks section completely rewritten — 6A 5 Signature Shakes (with recipes + prices + free-fruit suggestions + vitamins + allergens + dietary), 6B Build-Your-Own (with 15 fruits + 11 indulgent flavors), 6C 6 Popular Fruit Blends (with recipes + prices + Instagram notes), 6D Add-Ons (8 with locked prices), 6E Customization (Ice/Sweetener/Cream defaults), 6F Allergen & Cross-Contact disclosures, 6G Café, 6H Mocktails, 6I Kids.
- BLOCKED list — split into Region-coded dishes / Legacy v13 salad names / Legacy v13 drink names / Categorical bans (added "smoothie / milkshake / juice"; expanded soft-drink ban).
- Customization Language — added Shakes & Fruit Blends section with locked claim lines.

**Output skills updated:**
- `senior-strategist/references/content-pillars.md` — Greek Salad → Spiced Chickpea.
- `social-media-handler/references/caption-templates.md` — Asian Crunch Salad → Lazzat Bean Salad.
- `social-media-handler/references/hashtag-bank.md` — #Milkshake → #LazzatShakes.
- `digital-marketer/references/ad-copy-templates.md` — "13 Sauces" → "17 Sauces. Six Continents."; "Catering Brampton Halal" → "Brampton Catering — Maple Lodge Farms Chicken".
- `video-editor/SKILL.md` + `video-editor/references/reel-formats.md` — Format 4 renamed "Sauce Lineup (Live Line)" with "Seventeen sauces. Six continents." headline + 13 live-sauce naming clarification.
- `brampton-demographics-intelligence/references/community-profiles.md` + `cultural-calendar.md` + `menu-community-match.md` + `area-map.md` — all legacy v13 salad/shake names replaced with canonical Final Shakes / Final Salads names.
- `CORE/content-compliance-checklist.md` — Butterfly-Pea-Flower row reversed.

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
