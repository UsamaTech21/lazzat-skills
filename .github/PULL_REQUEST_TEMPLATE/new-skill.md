# New / Updated Skill — PR Template

## Skill name
`<skill-name>` (must match directory under `CORE/skills/`)

## Summary
<!-- 1–3 bullets on what this PR adds or changes. -->
-
-

## Type
- [ ] New skill
- [ ] Skill update (patch / minor / major — mark one)
  - [ ] PATCH (wording / typo / reference-only change, no behavior change)
  - [ ] MINOR (new template / new reference / extended behavior)
  - [ ] MAJOR (behavior change, new approval route, new compliance rule)
- [ ] CORE change (REQUIRES Sir Waqas written approval attached)

## Brand / Compliance
- [ ] Brand voice, palette, fonts — within `CORE/brand-guidelines.md`
- [ ] Menu references — all within `CORE/menu-v14.md`
- [ ] Claims — all within `CORE/approved-claims.md` (GREEN list)
- [ ] Team references — verified against `CORE/team-bios.md`
- [ ] No regional / religious / superlative violations
- [ ] No invented quotes, numbers, or dates
- [ ] Compliance Block requirement present in SKILL.md

## Spec
- [ ] YAML frontmatter valid
- [ ] `name` matches directory
- [ ] `description` ≤ 1024 chars with trigger phrases
- [ ] `license: MIT` set
- [ ] `metadata.version` semver
- [ ] `metadata.owner` set
- [ ] `metadata.last_updated` today
- [ ] `SKILL.md` ≤ 500 lines
- [ ] All referenced files exist
- [ ] "Related Skills" section present
- [ ] "Output Protocol" section present

## Testing
- [ ] `bash validate-skills.sh` passes locally (or `.ps1` on Windows)
- [ ] Ran skill on 3 sample prompts in Claude.ai, pasted results below
- [ ] `evals/evals.json` updated with ≥ 3 cases

### Sample run output (paste one)
<!-- Compliance Block from the test run -->

## Version tracking
- [ ] `VERSIONS.md` row updated

## Approvers pinged
- Usama: [ ]
- Sir Waqas (CORE only): [ ]

## Notes
<!-- Anything else reviewers should know. -->
