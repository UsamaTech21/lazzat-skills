# Lazzat Skills — Version Registry

> The canonical table of every skill's current version. Agents consult this before using a skill.

Last registry update: **2026-04-17**

---

## Core

| Skill | Version | Last Updated | Owner |
|---|---|---|---|
| core-brand | 1.0.0 | 2026-04-17 | Lazzat-Brand |

---

## Functional Skills

| Skill | Version | Last Updated | Owner |
|---|---|---|---|
| brand-compliance-checker | 1.0.0 | 2026-04-17 | Lazzat-Compliance |
| senior-strategist | 1.0.0 | 2026-04-17 | Lazzat-Strategy |
| social-media-handler | 1.0.0 | 2026-04-17 | Lazzat-Social |
| content-writer | 1.0.0 | 2026-04-17 | Lazzat-Content |
| seo-expert | 1.0.0 | 2026-04-17 | Lazzat-SEO |
| digital-marketer | 1.0.0 | 2026-04-17 | Lazzat-Ads |
| graphic-designer | 1.0.0 | 2026-04-17 | Lazzat-Design |
| video-editor | 1.0.0 | 2026-04-17 | Lazzat-Video |
| web-app-developer | 1.0.0 | 2026-04-17 | Lazzat-Web |
| guerrilla-movement-marketer | 1.0.0 | 2026-04-17 | Lazzat-Guerrilla |
| brampton-demographics-intelligence | 1.0.0 | 2026-04-17 | Lazzat-Intelligence |
| influencer-finder | 1.0.0 | 2026-04-17 | Lazzat-Influencers |

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
