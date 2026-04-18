# AGENTS.md — Guidelines for AI Agents Working in This Repo

> This file is read by any AI agent (Claude, GPT, Cursor, Codex, Gemini, etc.) that operates on or inside the `lazzat-skills/` repository. It is NOT part of Lazzat's marketing output. It is the agent's operating manual for the repo itself.

---

## 1. Repository Overview

This repo is the Lazzat Grill & Shakes AI Marketing Agency skill system. It ships 12 production-grade skills + a master CORE brand context. Each skill follows the [Agent Skills Specification](https://agentskills.md).

**You are not writing Lazzat marketing content when you are editing this repo.** You are writing / improving / validating the *skills* that produce Lazzat marketing content. Keep that distinction sharp.

---

## 2. Folder Structure

```
lazzat-skills/
├── .claude-plugin/marketplace.json   # Auto-managed by sync-skills workflow
├── .github/                          # CI / PR templates
├── CORE/                             # Master brand context + all skills
│   ├── SKILL.md                      # Master skill
│   ├── *.md                          # Brand reference files
│   └── skills/<skill-name>/          # Each individual skill
│       ├── SKILL.md
│       ├── references/*.md
│       └── evals/evals.json
├── AGENTS.md                         # ← this file
├── CLAUDE.md                         # Claude Code-specific enhancements
├── CONTRIBUTING.md
├── README.md
├── VERSIONS.md
├── LICENSE
└── validate-skills.{sh,ps1}
```

---

## 3. Build / Lint / Test

```bash
# Unix / macOS / WSL
bash validate-skills.sh

# Windows
pwsh validate-skills.ps1
```

The validator checks every `SKILL.md`:

- YAML frontmatter present and parses
- `name` ≤ 64 chars, lowercase + digits + hyphens, matches directory (CORE has an exception)
- `description` ≤ 1024 chars and mentions at least one trigger phrase
- `license` present
- `metadata.version` present and semver
- File ≤ 500 lines (warn) and no TODO placeholders left behind
- All `references/*.md` linked in the SKILL.md actually exist

CI runs the same validator on every push and PR.

---

## 4. Agent Skills Specification (summary)

Every `SKILL.md` must start with YAML frontmatter:

```yaml
---
name: skill-name               # REQUIRED — lowercase + digits + hyphens, matches directory
description: "..."             # REQUIRED — ≤ 1024 chars, includes trigger phrases
license: MIT                   # RECOMMENDED
metadata:
  version: 1.0.0               # RECOMMENDED — semver
  owner: <name>
  last_updated: YYYY-MM-DD
---
```

**`name` rules:**
- Must match the parent directory name exactly.
- Lowercase letters, digits, hyphens only.
- 1–64 characters.
- Exception: the `CORE/` directory uses `name: core-brand`; the validator whitelists this.

**`description` rules:**
- 1–1024 characters.
- Must read like a natural-language trigger ("Use when...", "Triggers on...").
- Must reference at least one related skill where appropriate.

---

## 5. Writing Style Inside Skills

### Structure
1. Start every SKILL.md with 1–2 sentences explaining the role.
2. Then: "Read First" block — which CORE files to load.
3. Then: concrete frameworks (numbered, named).
4. Then: templates / examples.
5. Then: "Related Skills" pointing to other skills in this repo.
6. End with: explicit Output Protocol that tells the agent how to deliver + which approver to flag.

### Tone
- Direct, imperative, second-person ("You are…", "Do this, not that").
- No marketing fluff. No emojis in skill files (unless the skill is about emoji policy).
- No hedging ("maybe", "perhaps") — skills are operational.

### Length
- Skills stay under 500 lines. If longer, move depth into `references/`.
- Reference files can be any length; they are loaded on demand.

### Clarity
- Every rule is testable. "Never say X" > "Be careful with X."
- Every template is copy-pasteable.
- Every instruction has a "why" in 1 line.

---

## 6. What You May Edit (as an agent)

| Action | Allowed? | Notes |
|---|---|---|
| Improve wording in any SKILL.md | ✅ | Keep meaning + compliance identical |
| Add a new reference file | ✅ | Must be linked from its SKILL.md |
| Add a new eval case | ✅ | In `evals/evals.json` |
| Fix a typo in CORE files | ✅ | Must preserve meaning exactly |
| Add a whole new skill | 🟡 | Only if the user explicitly requests it and follows CONTRIBUTING.md |
| Change brand guidelines (palette, voice) | ❌ | Requires Lazzat-Brand + Lazzat-Founder manual approval |
| Change approved claims | ❌ | Requires Lazzat-Founder manual approval |
| Change the menu | ❌ | Requires Lazzat-Founder manual approval |
| Change approval chain | ❌ | Requires Lazzat-Founder manual approval |
| Push to `main` directly | ❌ | Use PR + validate workflow |

---

## 7. Tool Integrations

This skill system is pure Markdown + optional JSON. It does not depend on external tools. However, skills *reference* external tools (Meta Ads Manager, Google Business Profile, Canva, etc.) — those references are operational instructions for humans, not code calls.

If you (as an agent) need to integrate a new tool:

1. Check `tools/` — if it doesn't exist, you may create it.
2. Add a registry entry (see marketingskills-main `tools/REGISTRY.md` for format).
3. Update the relevant skill's `SKILL.md` and `references/` to reference the new tool.
4. Never hard-code credentials. Reference 1Password only.

---

## 8. Cross-Agent Compatibility

Every `SKILL.md` must work in:

- Claude Desktop / claude.ai Projects
- Claude Code CLI
- Cursor IDE
- Codex / GPT-5 Agents
- Gemini 1.5+ Agents
- Any Agent Skills-compliant runtime

This means: no Claude-specific dynamic content injection inside `SKILL.md`. Keep those in `CLAUDE.md` or inside reference files marked Claude-only.

---

## 9. When the User Asks You to "Update the Skills"

1. Clarify: a CORE file, a specific skill, or all of them?
2. If CORE: confirm with Lazzat-Brand in writing first (commit message notes).
3. If specific skill: open its `SKILL.md` + all its `references/` + its `evals.json`. Edit consistently.
4. After edits: bump the skill's `metadata.version` (patch for wording, minor for new content, major for behavior change).
5. Update `VERSIONS.md` row.
6. Run validator.
7. Open PR using `.github/PULL_REQUEST_TEMPLATE/new-skill.md`.

---

## 10. What You May NOT Do

- Invent brand facts, team quotes, menu items, or approved claims. Ever.
- Paste secrets, credentials, or real customer data into any file.
- Delete CORE files.
- Bypass the compliance checklist in produced marketing content.
- Push to `main` without running `validate-skills`.
- Resize, restructure, or rename `CORE/` without explicit Lazzat-Founder approval.

---

## 11. When in Doubt

Stop. Ask the user. The repo is small; the cost of a bad edit to a brand-critical file is large. A cautious clarification always beats a speculative commit.

---

## 12. Maintainer / Author

- **Author:** Usama ([@UsamaTech21](https://github.com/UsamaTech21)) — Brand & Marketing Lead, Lazzat Grill & Shakes.
- **Brand owner:** Lazzat Grill & Shakes (all content inside `CORE/`).
- **Scaffolding license:** MIT (see `LICENSE`).
- **Architectural PRs or skill-schema changes** must be reviewed by the author before merge. Routine content edits follow the approval chain in `CORE/team-roles.md` (Lazzat-Brand → Lazzat-Founder).
- Open issues / questions: [github.com/UsamaTech21/lazzat-skills/issues](https://github.com/UsamaTech21/lazzat-skills/issues)
