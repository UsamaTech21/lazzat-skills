# Contributing to `lazzat-skills`

Thanks for working on the Lazzat AI Marketing Agency skill system. This repo is internal — every change here ripples directly into how Lazzat communicates to Brampton and beyond. Read carefully before you commit.

---

## 1. Before You Start

1. Message Usama. No unsolicited skill additions.
2. Open a lightweight issue / note: *what problem are you solving, what file(s) will change, what approver chain does it affect?*
3. If the change touches `CORE/` → Sir Waqas sign-off is required **before** any file is edited.

---

## 2. Directory & File Naming

- Skill directory: `CORE/skills/<skill-name>/` — lowercase + hyphens only.
- `SKILL.md` is always the file name for the skill definition (uppercase SKILL, lowercase md).
- Reference files: `references/<kebab-case>.md`.
- Eval files: `evals/evals.json`.
- No spaces. No underscores. No camelCase. No uppercase except in acronyms inside content.

---

## 3. The Agent Skills Specification

Every `SKILL.md` must have valid YAML frontmatter:

```yaml
---
name: skill-name                 # REQUIRED. Matches directory. Lowercase + digits + hyphens. 1–64 chars.
description: "..."               # REQUIRED. ≤ 1024 chars. Should read like trigger phrases.
license: MIT                     # RECOMMENDED.
metadata:
  version: 1.0.0                 # RECOMMENDED. Semver.
  owner: <name>
  last_updated: YYYY-MM-DD
---
```

Then the body:

1. 1–2 sentence role definition.
2. "Read First" block — which CORE files to load.
3. Frameworks, rules, templates.
4. Related Skills section at the bottom.
5. Output Protocol (compliance block + approver).

Keep `SKILL.md` under 500 lines. Put depth in `references/`.

---

## 4. Writing Effective Instructions

- Use **imperatives**. ("Read CORE/menu-v14.md before writing any menu copy.")
- Use **numbered lists** for processes (agents follow them literally).
- Use **tables** for decision matrices (approver chains, platform rules).
- Provide **copy-pasteable templates**, not vague prose.
- Every rule has a 1-line **why**.
- No emojis in skill files (unless the skill itself is about emojis).
- No marketing fluff in skill files — skills are ops manuals, not brand copy.

---

## 5. Testing Your Skill

Before you commit:

1. Run the validator:
   ```bash
   bash validate-skills.sh       # Unix
   pwsh validate-skills.ps1      # Windows
   ```
   Fix every ❌ and every ⚠️ unless waived.

2. Manually run the skill in Claude.ai on 3 prompts:
   - A textbook prompt the skill was built for.
   - An off-topic prompt (it should correctly defer to another skill).
   - A compliance-trap prompt (includes a banned word or off-menu item — the skill should catch it).

3. Add or update `evals/evals.json` with at least 3 test cases.

---

## 6. Skill Quality Checklist (copy into your PR)

- [ ] `name` matches directory name exactly (or is the whitelisted `core-brand` exception)
- [ ] `description` ≤ 1024 chars, contains natural trigger phrases
- [ ] `license: MIT` set
- [ ] `metadata.version` semver set
- [ ] `metadata.owner` set
- [ ] `SKILL.md` ≤ 500 lines
- [ ] No TODO / placeholder content left
- [ ] All `references/*.md` linked in the SKILL actually exist
- [ ] "Related Skills" section present
- [ ] "Output Protocol" section present
- [ ] Compliance Block requirement present
- [ ] No sensitive data (passwords, real customer data, revenue numbers)
- [ ] No invented quotes, menu items, team facts, or claims
- [ ] `evals/evals.json` updated with ≥ 3 cases
- [ ] `VERSIONS.md` row updated
- [ ] Validator passes

---

## 7. Pull Request Workflow

1. Branch name: `skill/<skill-name>` or `core/<short-description>`.
2. Use `.github/PULL_REQUEST_TEMPLATE/new-skill.md`.
3. Request review from Usama. If the change touches CORE → also tag Sir Waqas.
4. CI must pass before merge.
5. Only Usama (or the repo maintainer) merges.

---

## 8. When You Add a New Skill

1. Create `CORE/skills/<skill-name>/SKILL.md`.
2. Create `CORE/skills/<skill-name>/references/` with at least one reference file.
3. Create `CORE/skills/<skill-name>/evals/evals.json` with ≥ 3 cases.
4. Add a row to `VERSIONS.md`.
5. The `sync-skills` workflow will automatically update `.claude-plugin/marketplace.json` and `README.md` on merge to `main`.

---

## 9. When You Edit CORE

CORE files are the most sensitive in the repo. Before editing:

1. Get Sir Waqas written approval (WhatsApp / email screenshot in PR).
2. Bump CORE's `metadata.version`.
3. Update the header timestamp on the file you changed.
4. If the edit changes approved claims → update `CORE/approved-claims.md` in the same PR.
5. If the edit changes the menu → update `CORE/menu-v14.md` in the same PR.

---

## 10. What Never Happens

- No pushes directly to `main`.
- No commits that include credentials, real customer data, revenue numbers, or unpublished menu items.
- No `--force` pushes.
- No rewriting git history on shared branches.
- No skipping the compliance checker.
- No inventing brand facts.

When in doubt → ask Usama. A PR held for a day is always cheaper than a brand-damaging merge.
