#!/usr/bin/env bash
# Lazzat skills validator — run before every commit.
# Checks YAML frontmatter, name/directory match, description length, references, and line limits.

set -u

RED=$'\033[0;31m'
YEL=$'\033[0;33m'
GRN=$'\033[0;32m'
BLU=$'\033[0;34m'
NC=$'\033[0m'

ISSUES=0
WARNS=0

die() {
  echo "${RED}✗ $1${NC}"
  ISSUES=$((ISSUES + 1))
}
warn() {
  echo "${YEL}⚠ $1${NC}"
  WARNS=$((WARNS + 1))
}
ok() {
  echo "${GRN}✓ $1${NC}"
}
say() {
  echo "${BLU}ℹ $1${NC}"
}

extract_field() {
  local file="$1" field="$2"
  # BOM-tolerant: strip leading UTF-8 BOM on first line before matching.
  awk -v f="$field" '
    NR==1 { sub(/^\xef\xbb\xbf/, "") }
    /^---[[:space:]]*$/ { c++; next }
    c==1 && $1 == (f ":") { $1=""; sub(/^ +/, ""); print; exit }
  ' "$file"
}

extract_description() {
  # Description is always a single-line quoted string in our SKILL.md files.
  # Grab the first line that starts with "description:" anywhere in the frontmatter.
  local file="$1"
  awk '
    NR==1 { sub(/^\xef\xbb\xbf/, "") }
    /^description:[[:space:]]*/ {
      sub(/^description:[[:space:]]*/, "")
      print
      exit
    }
  ' "$file" | sed -e 's/^"//' -e 's/"$//'
}

extract_metadata_field() {
  # Pull a single key from the metadata: block (handles 2-space indent).
  local file="$1" field="$2"
  awk -v f="$field" '
    NR==1 { sub(/^\xef\xbb\xbf/, "") }
    /^metadata:[[:space:]]*$/ { in_m=1; next }
    /^[a-zA-Z_][a-zA-Z0-9_-]*:/ && in_m && !match($0, /^[[:space:]]/) { in_m=0 }
    in_m && $0 ~ ("^[[:space:]]+" f ":") {
      sub("^[[:space:]]+" f ":[[:space:]]*", "")
      gsub(/"/, "")
      print
      exit
    }
  ' "$file"
}

validate_skill() {
  local skill_dir="$1"
  local skill_name
  skill_name=$(basename "$skill_dir")
  local skill_md="$skill_dir/SKILL.md"

  say "Validating: $skill_dir"

  if [ ! -f "$skill_md" ]; then
    die "$skill_dir: SKILL.md missing"
    return
  fi

  local name desc license version owner
  name=$(extract_field "$skill_md" "name" | tr -d '"')
  desc=$(extract_description "$skill_md")
  license=$(extract_field "$skill_md" "license" | tr -d '"')
  version=$(extract_metadata_field "$skill_md" "version")
  owner=$(extract_metadata_field "$skill_md" "owner")

  if [ -z "$name" ]; then
    die "$skill_md: missing name field"
  else
    if [[ ! "$name" =~ ^[a-z0-9-]+$ ]]; then
      die "$skill_md: name '$name' must be lowercase letters, digits, hyphens only"
    fi
    if [ ${#name} -gt 64 ]; then
      die "$skill_md: name '$name' exceeds 64 chars"
    fi
    if [ "$name" != "$skill_name" ] && [ "$skill_name" != "CORE" ]; then
      die "$skill_md: name '$name' does not match directory '$skill_name'"
    fi
    if [ "$skill_name" = "CORE" ] && [ "$name" != "core-brand" ]; then
      die "$skill_md: CORE directory requires name='core-brand', got '$name'"
    fi
  fi

  if [ -z "$desc" ]; then
    die "$skill_md: missing description field"
  else
    local desc_len=${#desc}
    if [ "$desc_len" -gt 1024 ]; then
      die "$skill_md: description is $desc_len chars (max 1024)"
    fi
    if [ "$desc_len" -lt 30 ]; then
      warn "$skill_md: description is only $desc_len chars — consider richer trigger phrases"
    fi
  fi

  if [ -z "$license" ]; then
    warn "$skill_md: no license field (recommend 'license: MIT')"
  fi

  if [ -z "$version" ]; then
    warn "$skill_md: no metadata.version"
  else
    if [[ ! "$version" =~ ^[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
      warn "$skill_md: version '$version' is not semver"
    fi
  fi

  if [ -z "$owner" ]; then
    warn "$skill_md: no metadata.owner"
  fi

  local lines
  lines=$(wc -l < "$skill_md")
  if [ "$lines" -gt 500 ]; then
    warn "$skill_md: $lines lines (target ≤ 500 — push depth into references/)"
  fi

  if grep -q 'STATUS:.*Placeholder' "$skill_md" ; then
    die "$skill_md: Placeholder content remaining"
  fi

  if [ -d "$skill_dir/references" ]; then
    while IFS= read -r ref; do
      local ref_name
      ref_name=$(basename "$ref")
      if ! grep -q "$ref_name" "$skill_md"; then
        warn "$skill_md: reference '$ref_name' exists but is not linked in SKILL.md"
      fi
      if grep -q 'STATUS:.*Placeholder' "$ref"; then
        die "$ref: Placeholder content remaining"
      fi
    done < <(find "$skill_dir/references" -name '*.md' -type f)
  fi
}

echo "════════════════════════════════════════════════════════"
echo "  Lazzat Skills Validator"
echo "════════════════════════════════════════════════════════"

if [ -f "CORE/SKILL.md" ]; then
  validate_skill "CORE"
fi

if [ -d "CORE/skills" ]; then
  while IFS= read -r dir; do
    validate_skill "$dir"
  done < <(find CORE/skills -mindepth 1 -maxdepth 1 -type d | sort)
fi

echo
echo "════════════════════════════════════════════════════════"
if [ "$ISSUES" -eq 0 ]; then
  echo "${GRN}✓ All checks passed${NC} (${WARNS} warnings)"
  exit 0
else
  echo "${RED}✗ ${ISSUES} issue(s)${NC}, ${WARNS} warning(s)"
  exit 1
fi
