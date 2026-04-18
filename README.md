# Lazzat Grill & Shakes — AI Marketing Agency Skill System

> **Internal use — Lazzat team only.**
> Version **1.0.0** · April 2026 · Brampton, Ontario
> Owner: Lazzat-Brand (Brand & Marketing Lead) · Sign-off: Lazzat-Founder (Founder)

A production-grade library of Claude / Claude Code skills that turns any AI session into Lazzat's in-house marketing agency — brand-compliant, menu-accurate, approver-aware, and automatically compliance-checked.

---

## What This Is

Twelve specialized skills + one master CORE brand context, packaged for:

- **Claude Desktop / claude.ai Projects** — upload the folder, paste the instructions below, done.
- **Claude Code Plugin Marketplace** — install via `.claude-plugin/marketplace.json`.
- **Cross-agent compatibility** — each `SKILL.md` follows the [Agent Skills Specification](https://agentskills.md).
- **GitHub automation** — validation and sync workflows run on every push.

Every output the system produces is:

1. Grounded in Lazzat's real menu (`CORE/menu-v14.md`) and approved claims (`CORE/approved-claims.md`).
2. Ended with an auto-generated Compliance Block.
3. Routed to the correct approver (Lazzat-Brand / Lazzat-Social / Lazzat-Founder).

---

## The 12 Skills

| # | Skill | Who Uses It | Path |
|---|---|---|---|
| 1 | Brand Compliance Checker | Everyone (auto-runs) | `CORE/skills/brand-compliance-checker/` |
| 2 | Senior Strategist | Lazzat-Brand | `CORE/skills/senior-strategist/` |
| 3 | Social Media Handler | Lazzat-Social, Content Writer | `CORE/skills/social-media-handler/` |
| 4 | Content Writer | Content Writer, Lazzat-Brand | `CORE/skills/content-writer/` |
| 5 | SEO Expert | Lazzat-SEO | `CORE/skills/seo-expert/` |
| 6 | Digital Marketer | Lazzat-Ads, Lazzat-Brand | `CORE/skills/digital-marketer/` |
| 7 | Graphic Designer | Lazzat-Social, Designer | `CORE/skills/graphic-designer/` |
| 8 | Video Editor | Lazzat-Video, Video team | `CORE/skills/video-editor/` |
| 9 | Web & App Developer | Web Dev | `CORE/skills/web-app-developer/` |
| 10 | Guerrilla & Movement Marketer | Lazzat-Brand | `CORE/skills/guerrilla-movement-marketer/` |
| 11 | Brampton Demographics Intelligence | Lazzat-Brand, Lazzat-Ads | `CORE/skills/brampton-demographics-intelligence/` |
| 12 | Influencer Finder | Lazzat-Brand, Lazzat-Social | `CORE/skills/influencer-finder/` |

---

## Dependency Graph

```
                   ┌───────────────────────┐
                   │     CORE (brand)      │
                   │  loaded by every skill │
                   └──────────┬────────────┘
                              │
        ┌─────────────────────┼────────────────────────┐
        ▼                     ▼                        ▼
  brand-compliance-      senior-strategist       brampton-demographics-
      checker            (plans campaigns,          intelligence
 (auto-checks every       reads demographics,      (data for every
  draft before            competitors)             targeting decision)
  publishing)
        │                     │                        │
        └────────┬────────────┴───────┬────────────────┘
                 ▼                    ▼
       social-media-handler     content-writer
       (IG/TikTok cadence)      (blogs, wall copy)
                 │                    │
                 ▼                    ▼
           seo-expert          digital-marketer
           (GBP, local)        (paid, delivery)
                 │                    │
                 ▼                    ▼
       graphic-designer          video-editor
       (print/Canva)             (Reels, film)
                 │                    │
                 └──────────┬─────────┘
                            ▼
                    web-app-developer
                    (website, app)
                            │
                            ▼
                guerrilla-movement-marketer
                (on-ground activations)
                            │
                            ▼
                    influencer-finder
                    (creator discovery)
```

---

## Installation

### Option A — Claude Desktop / claude.ai Projects (recommended for team)

1. Open [claude.ai](https://claude.ai) → **Projects** → **New Project** → name it *Lazzat Marketing Agency*.
2. Upload this entire `lazzat-skills/` folder.
3. Paste into **Project Instructions**:

   > *You are Lazzat's internal AI marketing agency. Always read `CORE/SKILL.md` first. Follow `CORE/brand-guidelines.md`, `CORE/approved-claims.md`, `CORE/menu-v14.md`, `CORE/team-roles.md`, `CORE/team-bios.md`, and `CORE/brand-story.md`. Run `CORE/content-compliance-checklist.md` on every single piece of content you produce and attach the Compliance Block at the end of every output. When a teammate asks for strategy, social, content, SEO, paid, design, video, web, guerrilla, demographics, or influencer work — route through the matching skill under `CORE/skills/`. Never guess claims. When unsure, flag to Lazzat-Brand.*

4. Every team member uses the same Project. Brand rules stay consistent for everyone.

### Option B — Claude Code Plugin Marketplace

```bash
# In Claude Code
/plugin marketplace add <github-username>/lazzat-skills
/plugin install lazzat-core@lazzat-skills
/plugin install senior-strategist@lazzat-skills
# ... install others as needed
```

### Option C — Clone & use locally

```bash
git clone https://github.com/<your-org>/lazzat-skills.git
cd lazzat-skills
# point your agent at CORE/SKILL.md as the master context
```

### Option D — Git submodule into another repo

```bash
git submodule add https://github.com/<your-org>/lazzat-skills .skills/lazzat
```

---

## Approval Chain (quick reference)

| Decision | Approver |
|---|---|
| Routine post (compliance PASS) | Lazzat-Brand + Lazzat-Social |
| New campaign type | **Lazzat-Founder** |
| Ad budget > $100 | **Lazzat-Founder** |
| New claim not in `approved-claims.md` | **Lazzat-Founder** |
| Blog publish | Lazzat-Brand |
| Website major change | **Lazzat-Founder** |
| Menu change | **Lazzat-Founder** |
| Influencer deal (paid) | **Lazzat-Founder** |
| Wall panel / in-store print | Lazzat-Brand + Lazzat-Founder |

Full matrix → `CORE/team-roles.md`.

---

## Non-Negotiable Brand Rules

❌ Never: Pakistani, Desi, Punjabi, Indian, South Asian
❌ Never: "charcoal grill" → always "lava stone grill"
❌ Never: speed / freshness / superlative claims without proof
❌ Never: palette outside `#1A1A1A` / `#F5E6D3` / `#D4A574` / `#C0392B`
❌ Never: menu items outside v14
❌ Never: "JazakAllah", "Inshallah", religious greetings in marketing
❌ Never: "halal-certified" (use "halal-sourced")

✅ Always: "every culture welcome" global framing
✅ Always: lava stone eco angle when grill is mentioned
✅ Always: Compliance Block attached to every output
✅ Always: correct approver flagged

Full list → `CORE/content-compliance-checklist.md`.

---

## Repository Layout

```
lazzat-skills/
├── .claude-plugin/
│   └── marketplace.json              # Claude Code plugin manifest
├── .github/
│   ├── workflows/
│   │   ├── validate-skill.yml        # Lints every SKILL.md on push
│   │   └── sync-skills.yml           # Auto-updates marketplace.json + README
│   └── PULL_REQUEST_TEMPLATE/
│       └── new-skill.md              # PR template for new skills
├── CORE/
│   ├── SKILL.md                      # Master brand context (loaded first)
│   ├── brand-guidelines.md           # Voice, palette, typography, pillars
│   ├── brand-story.md                # Long-form narrative
│   ├── approved-claims.md            # What you MAY say (GREEN/YELLOW/RED)
│   ├── menu-v14.md                   # The ONLY approved menu
│   ├── team-roles.md                 # Org chart + approval matrix
│   ├── team-bios.md                  # Names, on-camera notes, no invented quotes
│   ├── content-compliance-checklist.md  # Auto-run checker
│   └── skills/
│       ├── brand-compliance-checker/
│       ├── senior-strategist/
│       ├── social-media-handler/
│       ├── content-writer/
│       ├── seo-expert/
│       ├── digital-marketer/
│       ├── graphic-designer/
│       ├── video-editor/
│       ├── web-app-developer/
│       ├── guerrilla-movement-marketer/
│       ├── brampton-demographics-intelligence/
│       └── influencer-finder/
├── AGENTS.md                         # For any AI agent working on this repo
├── CLAUDE.md                         # Claude Code-specific enhancements
├── CONTRIBUTING.md                   # How to add / edit skills
├── VERSIONS.md                       # Skill version tracking
├── LICENSE                           # MIT
├── README.md                         # This file
├── validate-skills.sh                # Local validation (bash)
├── validate-skills.ps1               # Local validation (PowerShell)
└── .gitignore
```

Each individual skill follows the same sub-structure:

```
<skill-name>/
├── SKILL.md                # YAML frontmatter + instructions
├── references/             # Supporting docs, templates, checklists
│   └── *.md
└── evals/
    └── evals.json          # Test cases for agent behavior
```

---

## Versioning

See `VERSIONS.md` for the full table. Every skill carries a semver version in its YAML frontmatter.

---

## Contributing

Before you touch anything, read `CONTRIBUTING.md`. In summary:

1. Open an issue / message Lazzat-Brand first — no unsolicited skill additions.
2. Every new skill follows the Agent Skills Specification (see `AGENTS.md`).
3. Every change must pass `validate-skills.sh` (or `.ps1` on Windows).
4. Every PR uses `.github/PULL_REQUEST_TEMPLATE/new-skill.md`.
5. Every piece of brand copy must pass the compliance checker.

---

## License

MIT — see `LICENSE`. Lazzat brand IP (name, logo, recipes, wall content, brand film, menu, approved claims) remains proprietary to Lazzat Grill & Shakes. The skill *scaffolding* and tooling are MIT-licensed; the *brand content inside CORE* is for Lazzat internal use only.

---

## File Owner

**Lazzat-Brand** — Brand & Marketing Lead, Lazzat Grill & Shakes.
All CORE/ changes require Lazzat-Brand sign-off + Lazzat-Founder notification.
