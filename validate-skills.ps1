<#
.SYNOPSIS
    Lazzat Skills validator - PowerShell edition.
.DESCRIPTION
    Run from the repo root:  pwsh validate-skills.ps1
#>

$ErrorActionPreference = "Stop"

$script:Issues = 0
$script:Warns = 0

function Die($msg) { Write-Host "[X] $msg" -ForegroundColor Red; $script:Issues++ }
function Warn($msg) { Write-Host "[!] $msg" -ForegroundColor Yellow; $script:Warns++ }
function Ok($msg)   { Write-Host "[OK] $msg" -ForegroundColor Green }
function Say($msg)  { Write-Host "[i] $msg" -ForegroundColor Cyan }

function Get-Frontmatter($path) {
    $lines = Get-Content -LiteralPath $path -Encoding UTF8
    if ($lines.Count -lt 3 -or $lines[0] -ne '---') { return $null }
    $end = -1
    for ($i = 1; $i -lt $lines.Count; $i++) {
        if ($lines[$i] -eq '---') { $end = $i; break }
    }
    if ($end -lt 0) { return $null }
    $result = @{}
    $inMetadata = $false
    for ($i = 1; $i -lt $end; $i++) {
        $line = $lines[$i]
        if ($line -match '^metadata:\s*$') { $inMetadata = $true; continue }
        if ($inMetadata -and $line -match '^\s{2,}(\w+):\s*(.+)$') {
            $result["metadata.$($Matches[1])"] = $Matches[2].Trim('"').Trim()
            continue
        }
        if ($line -match '^(\w+):\s*(.+)$') {
            $inMetadata = $false
            $result[$Matches[1]] = $Matches[2].Trim('"').Trim()
        }
    }
    return $result
}

function Test-Skill($skillDir) {
    $skillName = Split-Path -Leaf $skillDir
    $skillMd = Join-Path $skillDir "SKILL.md"
    Say "Validating: $skillDir"

    if (-not (Test-Path -LiteralPath $skillMd)) {
        Die "$skillDir : SKILL.md missing"
        return
    }

    $fm = Get-Frontmatter $skillMd
    if ($null -eq $fm) {
        Die "$skillMd : YAML frontmatter missing or malformed"
        return
    }

    $name = $fm["name"]
    if (-not $name) { Die "$skillMd : missing 'name'" }
    elseif ($name -notmatch '^[a-z0-9-]+$') { Die "$skillMd : name '$name' must be lowercase letters/digits/hyphens only" }
    elseif ($name.Length -gt 64) { Die "$skillMd : name '$name' exceeds 64 chars" }
    elseif ($skillName -eq "CORE" -and $name -ne "core-brand") { Die "$skillMd : CORE directory requires name=core-brand, got '$name'" }
    elseif ($skillName -ne "CORE" -and $name -ne $skillName) { Die "$skillMd : name '$name' does not match directory '$skillName'" }

    $desc = $fm["description"]
    if (-not $desc) { Die "$skillMd : missing 'description'" }
    elseif ($desc.Length -gt 1024) { Die "$skillMd : description is $($desc.Length) chars (max 1024)" }
    elseif ($desc.Length -lt 30) { Warn "$skillMd : description only $($desc.Length) chars" }

    if (-not $fm["license"])          { Warn "$skillMd : no license field (recommend license: MIT)" }
    if (-not $fm["metadata.version"]) { Warn "$skillMd : no metadata.version" }
    elseif ($fm["metadata.version"] -notmatch '^\d+\.\d+\.\d+$') { Warn "$skillMd : version not semver" }
    if (-not $fm["metadata.owner"])   { Warn "$skillMd : no metadata.owner" }

    $lineCount = (Get-Content -LiteralPath $skillMd).Count
    if ($lineCount -gt 500) { Warn "$skillMd : $lineCount lines (target 500 or fewer; push depth into references/)" }

    if (Select-String -LiteralPath $skillMd -Pattern 'STATUS:.*Placeholder' -Quiet) {
        Die "$skillMd : Placeholder content remaining"
    }

    $refDir = Join-Path $skillDir "references"
    if (Test-Path -LiteralPath $refDir) {
        Get-ChildItem -LiteralPath $refDir -Filter "*.md" -Recurse | ForEach-Object {
            $refName = $_.Name
            $content = Get-Content -LiteralPath $skillMd -Raw
            if (-not ($content -match [regex]::Escape($refName))) {
                Warn "$skillMd : reference '$refName' exists but is not linked in SKILL.md"
            }
            if (Select-String -LiteralPath $_.FullName -Pattern 'STATUS:.*Placeholder' -Quiet) {
                Die "$($_.FullName) : Placeholder content remaining"
            }
        }
    }
}

Write-Host "========================================================" -ForegroundColor Blue
Write-Host "  Lazzat Skills Validator"                                 -ForegroundColor Blue
Write-Host "========================================================" -ForegroundColor Blue

if (Test-Path "CORE/SKILL.md") { Test-Skill "CORE" }

if (Test-Path "CORE/skills") {
    Get-ChildItem -Directory "CORE/skills" | Sort-Object Name | ForEach-Object {
        Test-Skill $_.FullName
    }
}

Write-Host ""
Write-Host "========================================================" -ForegroundColor Blue
if ($script:Issues -eq 0) {
    Write-Host "All checks passed ($script:Warns warnings)" -ForegroundColor Green
    exit 0
} else {
    Write-Host "$script:Issues issue(s), $script:Warns warning(s)" -ForegroundColor Red
    exit 1
}
