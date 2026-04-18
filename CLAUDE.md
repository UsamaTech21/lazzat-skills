# CLAUDE.md — Claude Code Specific Enhancements

> Everything in this file is **Claude Code / claude.ai only.** If you are running this skill system on any other agent (Cursor, Codex, Gemini, generic ChatGPT), ignore this file.

---

## 1. Dynamic Content Injection

Claude Code supports the `` !`command` `` syntax inside Claude Code-specific context files. It lets you inject real-time context.

We do **not** use this syntax inside any `SKILL.md` (those must be cross-agent compatible). We use it only here and in `.agents/` helper files (if created later).

### Useful injection patterns for Lazzat

```md
Today's date: !`date +%Y-%m-%d`
Current launch countdown: !`python -c "from datetime import date; print((date(2026,4,26)-date.today()).days)"`
Latest CORE version: !`grep '^  version:' CORE/SKILL.md | head -1 | awk '{print $2}'`
Last 5 commits: !`git log --oneline -5`
```

These must **never** appear inside a published `SKILL.md`. Keep them in helper files or in project instructions.

---

## 2. Project Instructions Snippet (paste into Claude.ai Project)

When a team member sets up the Claude Project, they paste this:

```
You are Lazzat's internal AI marketing agency.

Every session:
1. First read CORE/SKILL.md and all files it references.
2. When I ask for strategy, route to CORE/skills/senior-strategist/.
3. When I ask for social posts or calendar, route to CORE/skills/social-media-handler/.
4. When I ask for a blog or long-form, route to CORE/skills/content-writer/.
5. When I ask for SEO or GBP, route to CORE/skills/seo-expert/.
6. When I ask for ads, delivery platforms, or funnel work, route to CORE/skills/digital-marketer/.
7. When I ask for graphics, Canva, or print, route to CORE/skills/graphic-designer/.
8. When I ask for reels, TikTok, or film, route to CORE/skills/video-editor/.
9. When I ask for website or app work, route to CORE/skills/web-app-developer/.
10. When I ask for street, on-ground, or movement ideas, route to CORE/skills/guerrilla-movement-marketer/.
11. When I ask about Brampton culture, neighbourhood, or demographics, route to CORE/skills/brampton-demographics-intelligence/.
12. When I ask for creators or influencers, route to CORE/skills/influencer-finder/.
13. Always run the brand-compliance-checker at the END of every output and attach the Compliance Block.
14. Never invent menu items, quotes, numbers, dates, or claims. When unsure, flag to Lazzat-Brand.
15. Always tell me which approver I need to ping before publishing.
```

---

## 3. Claude Code Slash Commands (suggested)

Teammates can save these as Claude Code slash commands:

| Command | What it does |
|---|---|
| `/lazzat-plan-week` | Loads senior-strategist + social-media-handler, produces a 7-post plan with pillars |
| `/lazzat-compliance <paste>` | Runs brand-compliance-checker on pasted text |
| `/lazzat-post <topic>` | Drafts a single IG + TikTok post, returns with compliance block |
| `/lazzat-blog <topic>` | Drafts a 900-word blog with SEO meta |
| `/lazzat-ad <objective>` | Drafts 3 ad variations for Meta Ads Manager |
| `/lazzat-menu-spotlight <item>` | Draft menu-spotlight content, cross-checked against menu-v14 |

The exact command spec should live in the teammate's personal Claude Code config, not this repo.

---

## 4. File Loading Order (Claude Code)

When Claude Code picks up this repo, it automatically reads:

1. `CLAUDE.md` (this file — Claude Code-only hints)
2. `AGENTS.md` (cross-agent rules)
3. `CORE/SKILL.md` (the master brand skill)
4. Any `SKILL.md` invoked by the user's prompt

Keep the load order mental model in mind when debugging weird behavior.

---

## 5. What NOT To Do in Claude Code

- Do not use `!` injection in `SKILL.md` files — breaks cross-agent compat.
- Do not auto-push commits from a Claude Code session; always preview the diff.
- Do not regenerate `marketplace.json` manually — the `sync-skills` workflow handles it.
- Do not ignore the Compliance Block — it is mandatory on every marketing output.

---

## 6. Where to Go Next

- Repo rules for any agent → `AGENTS.md`
- Contribution workflow → `CONTRIBUTING.md`
- Brand truth → `CORE/SKILL.md`
