# Lazzat Mobile App — Phased Roadmap

> **Vision (Sir Waqas):** A dedicated Lazzat app that bypasses third-party delivery commissions, builds loyalty, and gives Brampton customers the smoothest ordering in the city.

---

## Phase 0 — Pre-Launch (Months 0–3)

Focus: operational excellence on the website + third-party delivery platforms. **No app work in Phase 0.**

Rationale:
- App is expensive (≥ $40K MVP)
- Brand must prove volume + retention first
- Third-party platforms acquire customers; app retains them

Deliverables: stable website, stable delivery integrations, Toast POS tuned, clean analytics baseline.

---

## Phase 1 — Scope + Vendor Selection (Months 4–6)

### Deliverables
- Requirements doc (Sir Waqas + Usama + Ali Hamza co-authored)
- Vendor shortlist (3 agencies or hybrid)
- Technical architecture
- Budget approved
- Go/no-go decision by Sir Waqas

### Requirements (v1 MVP)
- Auth: phone OTP (low friction)
- Menu browse (mirrors website menu-v14)
- Bowl-builder (protein + base + sauce + sides)
- Order + pay (Stripe + Apple Pay + Google Pay)
- Pickup OR delivery (via our own driver OR platform)
- Order status tracking
- Order history
- Loyalty points (1 point per $1 spent)
- Push notifications (new item, seasonal, order status)
- Refer-a-friend
- Rate/review integration (links to Google Reviews)
- Store locator (both locations)
- Offline gracefully

### Tech architecture
- **Frontend:** React Native (iOS + Android single codebase)
- **Backend:** Node.js / Next.js API routes (if we keep Next for web) OR Supabase (auth + DB + storage)
- **Auth:** Firebase Auth (phone OTP)
- **Payments:** Stripe + Apple/Google Pay
- **POS integration:** Toast POS API (orders sync back to kitchen)
- **Push:** Firebase Cloud Messaging
- **Analytics:** Firebase Analytics + GA4 export
- **Crash/Monitoring:** Sentry
- **Feature flags:** ConfigCat or LaunchDarkly
- **Map:** Google Maps SDK

### Design
- Same brand kit as web (`graphic-designer/references/canva-brand-kit.md`)
- Charcoal + cream palette
- Arial Black headlines / Inter body
- Full accessibility (VoiceOver + TalkBack + dynamic type)

### Estimated budget
- MVP build: $35–$55K CAD (agency) OR $25–$40K (hybrid in-house)
- Ongoing maintenance: $1–$2K/month
- Vendor: Shortlist includes 1 Brampton-based agency, 1 Toronto, 1 nearshore — Ali Hamza + Sir Waqas decide

### Go/no-go criteria
- Website doing 1,000+ orders/month organic
- Third-party platform volume confirmed
- Customer interest measured via survey ("would you use a Lazzat app?")
- Budget available without squeezing other spend

---

## Phase 2 — Build MVP (Months 7–9)

### Sprint plan (6 × 2-week sprints)

| Sprint | Focus |
|---|---|
| 1 | Project setup, CI/CD, design system, auth flow |
| 2 | Menu browse + menu-v14 JSON sync |
| 3 | Bowl-builder + cart |
| 4 | Checkout + Stripe + Toast POS integration |
| 5 | Loyalty + push notifications + order status |
| 6 | QA + App Store / Play Store submission + internal TestFlight beta |

### Beta
- 50 Lazzat regulars invited via TestFlight / Play Store internal
- 2-week feedback window
- Fix critical bugs → public launch

### Compliance
- App Store Review guidelines + Google Play policies
- Apple in-app purchase rules (food delivery exempt, but verify)
- PIPEDA + Quebec Law 25 (privacy policy, data handling)
- Accessibility (iOS VoiceOver + Android TalkBack)

---

## Phase 3 — Launch + Iterate (Months 10–12)

### Launch
- Public release on App Store + Google Play
- Launch campaign: social, email, in-store signage, GMB post
- Incentive: first 1,000 downloads get 100 bonus loyalty points
- Website banner: "Download the Lazzat app"

### Post-launch ops
- Weekly app dashboard: installs, DAU/MAU, avg order value, loyalty conversion
- Monthly feature iteration (based on top user-requests)
- Customer support: in-app support chat OR routed to Soha
- Crash rate target: < 0.5%

### Phase 3 additions (after 3 months of stable operation)
- Gift cards
- Subscription ("Lazzat Plus" — monthly meal credit)
- Catering ordering flow (full end-to-end)
- Order ahead for specific pickup time
- In-app feedback form (replaces separate /feedback page)

---

## Phase 4 — Scale (Year 2+)

### Expansion
- Add 3rd location flow (if approved)
- Multi-location order routing
- Franchise / multi-brand support (if Sir Waqas pursues)
- Deeper loyalty tiers
- Referral program with tracked attribution

### Advanced
- AI-powered ordering suggestions
- Dietary preference filters ("show me all vegan options")
- Integration with wearables (Apple Watch order status)
- POS-integrated kitchen display system (KDS)

---

## Non-Negotiables Across All Phases

- Brand visuals per `graphic-designer/references/visual-rules.md`
- Menu data always pulled from `menu-v14.md` (single source of truth)
- Claims only from `approved-claims.md` GREEN list
- Accessibility WCAG 2.1 AA equivalent (mobile)
- Privacy-first (PIPEDA + Quebec Law 25)
- No dark patterns
- No upsell manipulation (no fake-countdowns, no confirmshaming)
- Kitchen workflow must survive app outage (manual POS fallback)
- Every release ships with compliance check

---

## Risks + Mitigations

| Risk | Likelihood | Mitigation |
|---|---|---|
| App consumes > expected budget | Medium | Fixed-price agency contract; milestones tied to approvals |
| Toast POS API limitations | Medium | Pilot integration before full build |
| Low adoption (< 5% of orders in month 6) | Medium | Incentivize download at POS; in-store signage |
| App Store rejection | Low | Follow guidelines; TestFlight beta; legal pre-review |
| Privacy complaint | Low | PIPEDA-first design; no unnecessary data collection |
| Technical debt post-MVP | Medium | Code review cadence; ongoing maintenance budget |

---

## Success Metrics (Phase 3 + 4)

| Metric | 3-month target | 12-month target |
|---|---|---|
| Installs | 2,500 | 15,000 |
| DAU | 150 | 800 |
| MAU | 1,500 | 8,000 |
| Orders via app | 10% of total | 25% of total |
| Avg order value (app) | $18 | $22 |
| Loyalty members | 1,000 | 6,000 |
| Crash-free rate | 99.5% | 99.8% |
| App Store rating | 4.5+ | 4.7+ |

---

## Decision Checkpoints

Sir Waqas must sign off at each gate:

1. **Gate A (end of Phase 1):** Vendor selected, architecture approved, budget signed
2. **Gate B (end of Sprint 4):** Beta-ready MVP working, no critical bugs
3. **Gate C (end of Phase 2):** Public launch approved
4. **Gate D (Month 12):** Scale vs. pause decision

Don't move past a gate without written sign-off.
