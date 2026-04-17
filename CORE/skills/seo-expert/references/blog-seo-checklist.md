# Blog SEO Checklist

> **Rule:** Runs after the content-writer `blog-checklist.md` — this sheet is SEO-only. Every blog signs off against BOTH checklists before publish.

---

## 1. Keyword Locking

- [ ] Primary keyword confirmed from `keyword-targets.md`
- [ ] 2–3 secondary keywords defined
- [ ] 3–5 LSI / semantic variants identified (for natural sprinkling in H2s / prose)
- [ ] Search intent verified (informational / commercial / local) — matches content angle
- [ ] Keyword density planned: 1–2% for primary; ≤ 1% each for secondary

---

## 2. Frontmatter / Meta

- [ ] Title tag ≤ 60 chars with primary keyword
- [ ] Title distinct from H1
- [ ] Meta description 150–160 chars with primary keyword + CTA
- [ ] Slug short, lowercase, hyphenated, keyword-focused
- [ ] Canonical URL set (usually self-referential)
- [ ] OG title + OG description + OG image declared
- [ ] Twitter card declared

---

## 3. Structure

- [ ] H1 with primary keyword (natural)
- [ ] 3–6 H2s with secondary / LSI keywords
- [ ] H3s only where hierarchy demands it (never skip from H1 → H3)
- [ ] First 100 words contain primary keyword
- [ ] Last paragraph restates brand benefit + CTA

---

## 4. Featured Image

- [ ] Brand image (never stock)
- [ ] Filename matches slug pattern
- [ ] Alt text includes primary keyword + what's visually shown
- [ ] Compressed to < 200 KB
- [ ] 1200×628 aspect for social + blog share
- [ ] OG:image URL resolves (test via Meta Sharing Debugger)

---

## 5. Images Within the Blog

- [ ] Each image < 200 KB
- [ ] Alt text descriptive (not duplicated)
- [ ] Dimensions set in HTML/CSS (no CLS)
- [ ] Loading "lazy" for below-the-fold
- [ ] Captions if the image adds narrative (optional)

---

## 6. Internal Links

- [ ] Links to /menu (1+)
- [ ] Links to /catering OR /locations (1+)
- [ ] Links to 2 other blog posts (if the library has relevant ones)
- [ ] Anchor text is descriptive (not "click here")
- [ ] No broken links

---

## 7. External Links

- [ ] 1–2 outbound links to authority sources (e.g., Statistics Canada, Brampton.ca, food science papers) if factual claims are made
- [ ] External links open in new tab (where trusted)
- [ ] `rel="noopener"` on all external links

---

## 8. Schema

- [ ] BlogPosting schema with `headline`, `author`, `datePublished`, `image`, `publisher`
- [ ] FAQPage schema if blog answers distinct questions (pull directly from H2s in Q-form)
- [ ] Schema validated in Rich Results Test
- [ ] No false claims (no "halal certified"; no unverified stats)

---

## 9. Readability

- [ ] Grade 8–10 reading level
- [ ] Paragraphs 2–4 sentences
- [ ] Sentences vary in length
- [ ] Lists used where list-shaped
- [ ] Tables used where comparison-shaped
- [ ] No giant prose walls (add subheadings every ~300 words)

---

## 10. Technical

- [ ] Page loads < 2.5s on 4G mobile
- [ ] Lighthouse Performance ≥ 85
- [ ] Lighthouse SEO = 100
- [ ] Lighthouse Accessibility ≥ 90
- [ ] No mixed content warnings
- [ ] HTTPS only
- [ ] Mobile-responsive (pass Google Mobile-Friendly Test)

---

## 11. Brand Compliance (SEO-specific pitfalls)

- [ ] No banned words in meta tags (authentic / passionate / journey / delightful)
- [ ] No regional framing in keywords targeted
- [ ] No religious phrases ("Inshallah", "JazakAllah")
- [ ] No unapproved claims in meta description or H1
- [ ] Tagline usage: primary tagline appears ONCE in long-form blog; secondary appears once if context allows
- [ ] Compliance Block attached

---

## 12. Post-Publish

- [ ] Submit URL to Google Search Console — Request Indexing
- [ ] Submit URL to Bing Webmaster
- [ ] Add internal links FROM 2 existing pages TO this new blog
- [ ] Share teaser on social (hand off to social-media-handler)
- [ ] Add to newsletter queue (hand off to content-writer)
- [ ] Track: impressions / clicks / avg position at week 1, week 4, week 12
- [ ] Update VERSIONS.md / blog tracker

---

## Common SEO Mistakes to Avoid

| Mistake | Fix |
|---|---|
| Keyword stuffing | Natural variation; use LSI instead |
| Duplicate title / meta across posts | Each blog gets unique pair |
| Thin content (< 600 words) | Bring to 700+ with genuine value |
| Missing FAQ schema | Add one — AI engines need it |
| Stock imagery | Rebrief to graphic-designer |
| Broken internal links | Use a link-checker monthly |
| No alt text | Always describe image + keyword |
| Over-optimized anchors | Only 1–2 exact-match internal anchors per 1,000 words |
| Publishing without Search Console verification | Always verify after publish |
| Forgetting mobile check | Run mobile Lighthouse before publish |
