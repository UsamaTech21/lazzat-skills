# On-Page SEO Rules

> **Rule:** Every Lazzat page must pass these rules before publish. No exceptions.

---

## 1. Title Tag

- Max **60 characters** (including spaces)
- Pattern: `[Primary keyword] | Lazzat Grill & Shakes [Brampton]`
- Primary keyword in the **first 3 words** when natural
- Never duplicate across pages
- No emojis (GMB post titles are a separate spec)

Examples:
- Homepage: `Halal Grill Brampton | Lazzat Grill & Shakes`
- Location: `Lazzat McVean Dr, Castlemore | Lava Stone Grill Brampton`
- Menu: `Lazzat Menu | Bowls, Platters, Wraps, Shakes — Brampton`
- Catering: `Halal Catering Brampton | Lazzat Grill & Shakes`
- Blog (example): `Why Lazzat Uses Lava Stone Instead of Charcoal`

---

## 2. Meta Description

- **150–160 characters**
- Includes primary keyword
- Includes one concrete CTA (`Order online`, `See the menu`, `Book catering`, `Visit McVean Dr`)
- First-person plural allowed ("We grill on volcanic lava stone…")
- No banned words (authentic / passionate / delicious)
- Never promise features we don't have (delivery radius, loyalty, etc. — check with Lazzat-Brand)

Example:
`Lazzat Grill & Shakes: halal-sourced lava stone grill in Brampton. 200g honest protein, 13 sauces, open kitchen. Visit McVean Dr or Clarence St.` (157 chars)

---

## 3. URL Slug

- All lowercase, hyphenated
- Short (3–6 words)
- Keyword-focused
- No dates (allows evergreen updates)
- No stop-words unless semantically critical

Good: `/lava-stone-grill-brampton`
Good: `/catering/office-lunch`
Bad: `/2026/04/blog-post-about-lava-stone-and-how-we-use-it`

---

## 4. H1

- Exactly **one H1 per page**
- Contains primary keyword (natural phrasing, not stuffed)
- ≤ 70 characters
- Distinct from title tag (never identical)

---

## 5. H2 / H3 Hierarchy

- H2 = major sections (3–6 per page)
- H3 = sub-points under an H2 (optional)
- Never skip levels (don't jump H1 → H3)
- Each H2 should contain a secondary or LSI keyword where natural

---

## 6. Image Requirements

| Attribute | Rule |
|---|---|
| Format | WebP preferred; JPG fallback; PNG only if transparency required |
| File size | < 200 KB (hero images may go to 350 KB max) |
| Dimensions | Hero: 1920×1080; Content: 1200×800; Thumbnails: 600×600 |
| Filename | Matches slug + short descriptor, e.g., `lava-stone-grill-chef-mudassar.webp` |
| Alt text | Descriptive, includes keyword + dish/team name; ≤ 125 chars |
| Loading | `loading="lazy"` for all non-above-the-fold images |

**Never** use:
- Stock photos (only graphic-designer-approved brand imagery)
- Decorative alt text ("image") for content images
- Images without dimensions (causes CLS)

---

## 7. Internal Linking

Every page must contain:

- At least **1 link to /menu**
- At least **1 link to /catering** OR **/locations**
- At least **2 contextual blog links** (where the blog library permits)
- Footer: all primary nav items + GMB links for both locations

Anchor text rules:
- Use descriptive anchor (`see our catering menu`) — not "click here" / "read more"
- Don't over-optimize (don't use exact-match keyword > 2x per 1,000 words)

---

## 8. Schema Markup (JSON-LD)

All schema lives in `<head>` or just before `</body>`, JSON-LD format.

### Required per page

| Page | Required schema |
|---|---|
| Homepage | Organization + LocalBusiness (both locations) + Menu + FAQPage |
| Location page | LocalBusiness + OpeningHours + GeoCoordinates + Menu + FAQPage |
| Menu page | Menu + MenuSection + MenuItem (every item from menu-v14) |
| Blog | BlogPosting + FAQPage (where the blog answers questions) + Person (author) |
| Catering | Service + FAQPage |
| About | AboutPage + Person (Lazzat-Founder as Founder) + Organization |

### Example LocalBusiness Schema (McVean Dr)

```json
{
  "@context": "https://schema.org",
  "@type": "Restaurant",
  "name": "Lazzat Grill & Shakes",
  "address": {
    "@type": "PostalAddress",
    "streetAddress": "[McVean Dr street number]",
    "addressLocality": "Brampton",
    "addressRegion": "ON",
    "postalCode": "[L6P/L6R - TBD]",
    "addressCountry": "CA"
  },
  "telephone": "[TBD]",
  "servesCuisine": ["Global Grill", "Halal"],
  "priceRange": "$$",
  "openingHours": ["Mo-Su 11:00-23:00"],
  "url": "https://lazzat.ca/locations/mcvean",
  "hasMenu": "https://lazzat.ca/menu"
}
```

**Never** include in schema:
- "halalCertified: true" — Lazzat is halal-sourced, not certified
- Prices for items Lazzat-Founder hasn't approved for public disclosure
- Aggregate ratings unless pulled from live review platforms

---

## 9. Core Web Vitals

| Metric | Target | Fix-if-fail |
|---|---|---|
| Largest Contentful Paint (LCP) | < 2.5 s | Compress hero image; preload fonts |
| Interaction to Next Paint (INP) | < 200 ms | Defer non-critical JS; reduce third-party scripts |
| Cumulative Layout Shift (CLS) | < 0.1 | Set explicit image dimensions; reserve ad/iframe space |
| First Contentful Paint | < 1.8 s | Reduce render-blocking resources |
| Time to First Byte | < 800 ms | Host on fast CDN; enable caching |

---

## 10. Canonicalization + Indexing

- Every page has a self-referential `<link rel="canonical">`
- Paginated content uses proper canonical + prev/next semantics
- `robots.txt` allows all except `/admin`, `/checkout`, `/thanks`
- `sitemap.xml` auto-generated, submitted to Google Search Console + Bing Webmaster
- 404s return proper 404 (not soft-404 redirects to homepage)

---

## GMB-Specific On-Page Rules

### Business description (per location)

- Primary keyword in first 200 chars
- 2–3 brand differentiators (lava stone, 200g, no pork/beef/alcohol, open kitchen)
- Tagline appears once
- End with location-specific anchor ("Castlemore, North Brampton" or "Downtown Brampton")

### GMB Posts

- Minimum 1/week per profile
- 150–300 words
- 1 high-quality brand photo (never stock)
- Direct CTA link to /menu or /catering
- Rotate content type: update / offer / event / product highlight

### Q&A seed questions (pre-populate 10 per location)

1. Are you halal?
2. Do you serve pork or beef?
3. Do you have vegetarian/vegan options?
4. Do you deliver?
5. Do you do catering?
6. What is lava stone grilling?
7. What are your hours?
8. Do you have parking?
9. Is there a kids menu?
10. Do you have gluten-free options?

All answers sourced from `CORE/approved-claims.md` GREEN list.

---

## FAQ Schema — Homepage Starter (copy-paste after review)

```json
{
  "@context": "https://schema.org",
  "@type": "FAQPage",
  "mainEntity": [
    {"@type":"Question","name":"Is Lazzat halal?","acceptedAnswer":{"@type":"Answer","text":"Yes. All meats are halal-sourced from trusted Ontario suppliers including Maple Lodge Farms. We do not serve pork, beef, or alcohol."}},
    {"@type":"Question","name":"What is lava stone grilling?","acceptedAnswer":{"@type":"Answer","text":"Lava stone grilling uses volcanic rock heated to radiant temperatures. It sears without requiring charcoal, and the stone keeps each protein's natural flavour intact."}},
    {"@type":"Question","name":"Do you deliver?","acceptedAnswer":{"@type":"Answer","text":"Yes — dine-in, takeout, and delivery via our partners from both Brampton locations (McVean Dr and Clarence St)."}},
    {"@type":"Question","name":"Do you cater?","acceptedAnswer":{"@type":"Answer","text":"Yes. Office lunches, birthdays, Iftar, Eid, Diwali, and family events. Contact catering@lazzat.ca with headcount and date."}}
  ]
}
```

---

## Checklist (before publishing any new page)

- [ ] Title ≤ 60 chars with primary keyword
- [ ] Meta description 150–160 chars with keyword + CTA
- [ ] H1 with primary keyword
- [ ] URL slug short, lowercase, keyword-focused
- [ ] Images compressed + alt-text complete
- [ ] 2+ internal links
- [ ] Schema JSON-LD added + validated via Rich Results Test
- [ ] Core Web Vitals passed in Lighthouse
- [ ] Canonical tag present
- [ ] Submitted to Google Search Console
- [ ] Compliance Block attached
