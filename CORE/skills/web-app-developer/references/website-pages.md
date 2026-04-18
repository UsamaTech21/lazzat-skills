# Website Page Inventory — lazzat.ca

> **Rule:** Every page is brand-compliant, SEO-optimized, fast, accessible. No exceptions.

---

## Primary Navigation

`Home · Menu · Flavors · About · Locations · Catering · Blog · Contact`

Global footer:
- Address (both locations)
- Phone
- Email (`catering@lazzat.ca`, `info@lazzat.ca`)
- Social handles (@lazzatgrill on Instagram + TikTok + Facebook)
- Newsletter signup (CASL-compliant — explicit opt-in)
- Hours
- Small legal: privacy policy, terms, accessibility, sitemap

---

## Page 1 — Home (`/`)

### Purpose
First impression. Orient visitors in 5 seconds to: what Lazzat is, where it is, what to do next.

### Hero section
- Full-bleed hero image (dark-bg platter OR lava stone sear)
- H1: "Halal Grill in Brampton" (or variant from `seo-expert/keyword-targets.md`)
- Sub: "Volcanic stone. Real flame. 200g honest portions. Thirteen sauces. Every table welcome."
- Primary CTA: "See the Menu"
- Secondary CTA: "Book Catering"

### Sections
1. Brand promise (3 cards: Lava Stone / 200g Honest / Every Table)
2. Featured menu items (4 items from v14, dark-bg photos)
3. Two locations (side-by-side cards with photo, address, hours, direction CTA)
4. "Why Lazzat" — 2-paragraph cut of brand story
5. Press / social proof (reviews, creator reposts, press logos)
6. Catering lead-gen block
7. Newsletter opt-in

### SEO
- Title: `Halal Grill Brampton | Lazzat Grill & Shakes` (≤ 60 chars)
- Meta: "Volcanic stone grill in Brampton. Halal-sourced, 200g honest portions, 13 sauces, open kitchen. McVean Dr + Clarence St. See the menu."
- Schema: Organization + WebSite + LocalBusiness (both) + FAQPage

### Performance targets
- LCP < 2.0s (preload hero)
- CLS < 0.05

---

## Page 2 — Menu (`/menu`)

### Purpose
Show the real menu. Connect to online ordering. Connect to delivery apps.

### Structure
- Sticky category nav: Platters / Bowls / Wraps / Kids / Combos / Drinks / Sides / Desserts
- Each item card:
  - Dark-bg hero image
  - Item name (Arial Black, 24pt)
  - Description (≤ 20 words)
  - Price (once Lazzat-Founder confirms)
  - Dietary badges (V, VG, GF-aware, Halal, Kids)
  - "Add to order" button (links to Toast / Uber / DoorDash / Skip per user choice)

### Data source
- Single JSON file synced from `menu-v14.md`
- Items listed in exact v14 order
- Blocked items (per menu-v14) never render

### SEO
- Title: `Lazzat Menu — Platters, Bowls, Wraps, Shakes | Brampton`
- Meta: "Lazzat's full menu: lava stone grilled platters, bowls, wraps, kids meals, shakes and sides. 200g honest portions, 13 sauces. See it all."
- Schema: Menu + MenuSection + MenuItem (auto-generated from JSON)

### Filters (future)
- Dietary: V, VG, GF-aware
- Spice: Mild / Medium / Hot
- Protein: Chicken / Lamb / Paneer / Mixed

---

## Page 3 — Locations

### `/locations/mcvean`

- Hero: storefront exterior at dusk
- Address: [McVean Dr — full address]
- Map embed (Google Maps)
- Hours (always live, per holidays)
- Parking notes
- Public transit
- Phone + call CTA
- Order + delivery platform buttons
- Photos (10+ from graphic-designer library)
- Reviews widget (live from Google)
- Neighbourhood description (Castlemore / North Brampton, 2 paragraphs)
- FAQ (per `seo-expert/on-page-rules.md` — 10 seeded Q&A)

### `/locations/clarence`
- Same structure, Clarence St / Downtown Brampton content
- Different neighbourhood description

### SEO per location
- Title: `Lazzat McVean Dr — Lava Stone Grill in Castlemore, Brampton`
- Meta: "Lava stone grill in Castlemore. Halal-sourced. Open kitchen. McVean Dr, Brampton. See hours, order online, get directions."
- Schema: LocalBusiness + Restaurant + GeoCoordinates + OpeningHours + Menu + FAQPage

---

## Page 4 — Catering (`/catering`)

### Purpose
Convert catering leads (B2B + B2C events).

### Sections
1. Hero: catering platter shot (lifestyle)
2. Value proposition: 200g honest portions, dietary-inclusive, 24-hour notice, pickup or delivery
3. What we cater: office lunches, Iftar, Eid, Diwali, birthdays, graduations, Thanksgiving, Christmas
4. Sample platters (3–4 with price ranges after Lazzat-Founder approves)
5. The catering form (4 steps) — see `Catering Form` section below
6. FAQ (catering-specific)
7. Testimonials (once live reviews exist)
8. Press contact + Lazzat-Social's direct email

### Catering Form (live)
- Step 1: Contact (name, email, phone, company if B2B)
- Step 2: Event details (date, time, headcount, location, pickup vs delivery)
- Step 3: Menu selection (multi-select from v14)
- Step 4: Review + submit
- Post-submit → `/catering/thank-you` + Postmark email to `catering@lazzat.ca`
- Spam protection: Turnstile

### SEO
- Title: `Halal Catering Brampton | Lazzat Grill & Shakes`
- Meta: "Halal catering in Brampton for offices, weddings, Iftar, Diwali, birthdays. Lava stone platters, 200g honest portions, 24-hour notice. Book today."
- Schema: Service + FAQPage

---

## Page 5 — About (`/about`)

### Purpose
Long-form brand story. Anchor for AI SEO + press research.

### Content (from `CORE/brand-story.md`)
- The one-line story
- Why Brampton
- Why lava stone
- The five promises
- The team
- The "Chipotle rule"
- The never-say list (for press clarity)
- Call to action: visit, follow, book catering

### Length
1,500–2,500 words

### SEO
- Title: `The Lazzat Story | Lava Stone Grill in Brampton`
- Meta: "How Lazzat Grill & Shakes came to Brampton. A lava stone grill, honestly-weighed portions, thirteen sauces, and a grill for every table."
- Schema: AboutPage + Organization + Person (Lazzat-Founder as founder)

---

## Page 6 — Team (`/team`)

### Purpose
Humanize the brand. Pillar 3 content anchor.

### Content (from `CORE/team-bios.md`)
- Team portraits (verified against team-bios; no invented info)
- Role + bio (100–200 words per person)
- "What they bring" — single line
- Short video per person (optional, Phase 2)

### SEO
- Title: `The Team Behind Lazzat — Brampton's Lava Stone Grill`
- Meta: "Meet the team at Lazzat Grill & Shakes: Chef Lazzat-Kitchen, Lazzat-Founder, Lazzat-Social, Lazzat-Brand, and the full crew behind Brampton's lava stone grill."

---

## Page 7 — Blog (`/blog`)

### Purpose
SEO + brand authority + AI-citation source.

### Structure
- Grid of posts with featured image, title, meta description teaser, date, pillar tag
- Filter by pillar (1–6)
- Pagination (10 per page)
- Search (client-side filtering)

### Individual post (`/blog/[slug]`)
- H1 + meta (from `content-writer/blog-checklist.md`)
- Featured image (1200×628)
- Body + images
- Author + date
- Tags (pillars)
- Related posts (3)
- Newsletter opt-in (inline)
- Social share buttons
- FAQ schema if applicable
- Internal links to Menu + Catering

### SEO
- Blog index title: `Lazzat Blog — Brampton Lava Stone Grill`
- Each post: unique title + meta per `seo-expert/blog-seo-checklist.md`

---

## Page 8 — Contact (`/contact`)

### Purpose
Easy access to real humans.

### Content
- Both addresses + phone numbers + emails
- Business hours
- Directions CTAs (both locations)
- Social handles + DM note ("We reply in 24 hours")
- Inquiry form (simple: name / email / topic / message) — routed to `info@lazzat.ca`

### SEO
- Title: `Contact Lazzat Grill & Shakes — Brampton`
- Meta: "Visit Lazzat at McVean Dr (Castlemore) or Clarence St (Downtown Brampton). Call, email, or DM — we reply within 24 hours."

---

## Page 9 — Feedback (`/feedback`)

### Purpose
Capture structured customer feedback (flavor, service, delivery experience).

### Fields
- Rating (1–5)
- Location (McVean / Clarence / Delivery)
- Favorite item
- What to improve
- Name + email (optional)

### Post-submit
- Thank-you message
- Routed to `feedback@lazzat.ca`
- Every response reviewed by Lazzat-Social weekly
- Anything < 3 stars → escalated to Lazzat-Brand within 24 hours

---

## Page 10 — Legal Pages

- `/privacy` — Canadian PIPEDA + Quebec Law 25 compliant
- `/terms` — general terms of use
- `/accessibility` — WCAG 2.1 AA commitment + contact for accommodations
- `/sitemap` — visible sitemap for humans

All legal pages drafted with legal counsel (Lazzat-Founder engages).

---

## Future Pages (Phase 2+)

| Page | Phase | Purpose |
|---|---|---|
| `/open-house` | Phase 1 | RSVP for monthly Open Kitchen Pledge |
| `/feedbrampton` | Phase 2 | Public log of Feed Brampton donations |
| `/loyalty` | Phase 2 | Loyalty program overview |
| `/app` | Phase 2 | App download page |
| `/press` | Phase 2 | Press kit, logos, founder quotes, photos |
| `/careers` | Phase 2 | Job listings + application |
| `/gift-cards` | Phase 2 | Gift card purchase |
| `/locations/3rd` | Phase 3 | 3rd location (if approved) |

---

## Page Maintenance Cadence

| Frequency | Check |
|---|---|
| Weekly | Broken link scan; GA4 anomalies; 404 log; form submission test |
| Monthly | Lighthouse audit; schema revalidation; sitemap resubmit; GMB sync; citation NAP audit |
| Quarterly | Full page-copy review; image refresh; menu v-bump check; accessibility audit |
| Annually | Legal pages review; design refresh (if needed); hosting + plan review |
