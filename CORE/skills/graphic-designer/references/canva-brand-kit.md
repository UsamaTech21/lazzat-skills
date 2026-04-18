# Canva Brand Kit — Setup & Usage

> **Rule:** The brand kit is the source of truth. Don't override colours or fonts at the design level.

---

## Account Setup

- **Canva Pro account** (paid) — under Lazzat workspace
- **Team members with edit access:** Lazzat-Brand, Lazzat-Social (Design Lead), Lazzat-Video (video exports)
- **Team members with view/comment:** Lazzat-Founder, Lazzat-Ads, Lazzat-Kitchen
- **Shared brand kit** enabled

---

## Brand Kit — Colour Palette

Load these exact hex codes into the Canva brand kit:

| Swatch name in Canva | Hex | Use |
|---|---|---|
| Lazzat Charcoal | `#1A1A1A` | Primary dark background |
| Lazzat Cream | `#F2EBDD` | Primary light background |
| Lazzat Red | `#C0392B` | CTA buttons, heat highlights |
| Lazzat Gold | `#D4AC0D` | Premium anchor, tagline |
| Lazzat White | `#FFFFFF` | Type on charcoal |
| Lazzat Off-Black | `#0D0D0D` | Type on cream (alternate) |

Don't add other colours to the kit without Lazzat-Brand approval.

---

## Brand Kit — Fonts

| Canva font name | Use |
|---|---|
| Arial Black (or closest: Bebas Neue / Montserrat Black) | Hero headlines |
| Inter (or Arial, Open Sans) | Body |
| Sacramento / Allura / Handwritten | Tagline script — "Uniting Through Flavours" |

Load these as brand kit defaults so every new doc opens with the right type stack.

---

## Brand Kit — Logos

Upload to "Logos" section:

1. `LZT_logo_wordmark_white.png` (transparent)
2. `LZT_logo_wordmark_charcoal.png` (transparent)
3. `LZT_logo_wordmark_gold.png` (transparent)
4. `LZT_logo_stacked_white.png`
5. `LZT_logo_stacked_charcoal.png`
6. `LZT_logo_icon_white.png`
7. `LZT_logo_icon_charcoal.png`
8. `LZT_logo_icon_gold.png`
9. `LZT_wordmark_with_tagline_charcoal.png`
10. `LZT_wordmark_with_tagline_cream.png`

---

## Brand Kit — Photo Folders

Create folders in Canva Uploads (keep in sync with Google Drive master):

- `01_Dish_Hero_Charcoal` — dish shots on charcoal/slate background
- `02_Dish_Flatlay_Cream` — flat-lay shots on cream
- `03_Lifestyle` — people at table, family, catering
- `04_Team` — staff portraits + action shots (verified against team-bios.md)
- `05_BTS` — kitchen action, lava stone, prep
- `06_Storefront` — exterior + interior of both locations
- `07_Community_Brampton` — Brampton landmarks (for community-tie content only)
- `08_Wall_Posts_v4_Reference` — read-only, for inspiration

---

## Templates Library (pin these)

Create + pin each of the 12 templates from `post-templates.md`:

1. Hero Dish (Charcoal) 1:1
2. Hero Dish (Charcoal) 4:5
3. Brand Promise (Cream) 1:1
4. Carousel (4-slide) 4:5
5. Story 9:16
6. Reel Cover 9:16
7. Banner Hero (desktop)
8. Banner Hero (OG / blog share)
9. Menu Board — Digital 16:9
10. Menu Board — Print A2
11. Email Signature 600×150
12. Catering Brochure A4 trifold

All templates must have the compliance block embedded as a hidden text layer (for downstream review).

---

## File Naming in Canva

Every Canva file name follows:
```
LZT_[type]_[campaign]_[YYYY-MM-DD]_[variant]
```

Examples:
- `LZT_feed_LavaStone_2026-04-26_v1`
- `LZT_story_LaunchCountdown_2026-04-20_v2`
- `LZT_reel-cover_PaneerCube_2026-05-12_v1`
- `LZT_menuboard_McVean_2026-04-15_v3`

---

## Export Settings

| Purpose | Format | Resolution | Notes |
|---|---|---|---|
| Instagram Feed | PNG | 1080×1080 or 1080×1350 | RGB, sRGB colour profile |
| Instagram Story/Reel | MP4 (video) / PNG (static) | 1080×1920 | |
| Facebook Feed | PNG | 1080×1080 | |
| Blog / Featured | JPG | 1200×628 | Compress to < 200 KB |
| Website Hero | JPG | 1920×1080 | Compress to < 350 KB |
| GMB Post | JPG | 1200×900 | |
| Ad — Meta | PNG | 1080×1080, 1080×1350, 1080×1920 | 3 sizes per ad |
| Ad — Google PMax | PNG | 1200×628 + 1200×1200 + 1200×1500 | |
| Print — Menu board | PDF (print-ready) | 300 DPI, CMYK | Include 3mm bleed |
| Print — Packaging | PDF (print-ready) | 300 DPI, CMYK | Include bleed, die-lines locked |
| Email | PNG/HTML | 600 px wide | |

---

## Canva Rules of Use

### Always
- Use brand-kit colours + fonts (don't override at design level)
- Start from an existing template (don't blank-canvas without Lazzat-Brand approval)
- Keep layers named and organized
- Add alt text to every image layer for accessibility
- Save with versioned filename

### Never
- Use Canva's stock photos for Lazzat brand work
- Use Canva's "AI image" for food shots (only graphic/background elements approved)
- Insert prices in creatives without Lazzat-Brand + Lazzat-Founder sign-off
- Insert religious icons in food marketing
- Edit logo files — always link from the Logos folder
- Delete old versions — keep v1, v2, v3 for audit

---

## Weekly Cleanup Protocol

Every Friday 4pm:
- Archive files older than 90 days to `Lazzat_Archive/[YYYY-MM]`
- Update master template library if a new repeatable layout emerged
- Back up Canva exports to Google Drive `Lazzat_Assets/[Month]`
- Log any brand-kit changes in `VERSIONS.md`

---

## Brand Kit Troubleshooting

- **Font not showing:** check Canva Pro font upload permission + re-sync
- **Colour looking off:** ensure RGB sRGB profile on export, not CMYK (CMYK only for print)
- **Logo pixelated:** use the higher-res logo file from brand kit
- **Template altered:** revert using version history (Canva keeps 30-day history on Pro)
