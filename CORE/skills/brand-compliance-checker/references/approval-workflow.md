# Approval Workflow — Full Routing Logic

> **STATUS:** Locked
> **Owner:** Lazzat-Brand
> **Rule:** Every piece leaves the system with an approver named. No piece publishes without explicit approval.

---

## 1. The Decision Tree (run top-down)

```
Is this a CORE file change?           → Lazzat-Founder
Is this a new claim not on GREEN?     → Lazzat-Founder
Is this a paid ad > $100?             → Lazzat-Founder
Is this a new campaign type?          → Lazzat-Founder
Is this a website major change?       → Lazzat-Founder
Is this a menu change?                → Lazzat-Founder
Is this a wall panel / print asset?   → Lazzat-Brand + Lazzat-Founder
Is this an influencer paid collab?    → Lazzat-Founder
Is this a press / PR pitch?           → Lazzat-Founder
Is this a blog / long-form?           → Lazzat-Brand → Lazzat-Operations
Is this a routine IG / TikTok post?   → Lazzat-Social draft → Lazzat-Brand compliance → Lazzat-Operations approve
Is this a DM reply?                   → Lazzat-Social (escalate to Lazzat-Brand if sensitive)
Is this a customer complaint reply?   → Lazzat-Social draft → Lazzat-Brand approve → Lazzat-Operations approve (if public)
Is this a menu item price mention?    → Lazzat-Founder
Is this a delivery-platform listing?  → Lazzat-Ads → Lazzat-Brand
Is this a catering quote > $500?      → Lazzat-Operations → Lazzat-Founder
Is this a catering quote < $500?      → Lazzat-Operations
Is this a GMB post?                   → Lazzat-SEO → Lazzat-Brand
Is this an internal WhatsApp msg?     → Auto-PASS (no approver needed)
Is this a team-only doc?              → Auto-PASS (no approver)
```

---

## 2. Escalation Rules

- If the piece triggers ANY yellow-list claim → escalate to Lazzat-Founder before publish.
- If the piece triggers ANY first-3-months conservatism flag → route to Lazzat-Brand even if routine.
- If the piece mentions a competitor name → hold + escalate to Lazzat-Brand immediately.
- If the piece includes a press quote or interview response → Lazzat-Founder, always.
- If the piece is a response to a public complaint → Lazzat-Social draft + Lazzat-Brand approve + Lazzat-Operations review + Lazzat-Founder notify (if food safety / allergen / religion involved — loop Lazzat-Standards + Lazzat-Culinary).

---

## 3. Turnaround Expectations (internal SLA)

| Piece type | Expected approval turnaround |
|---|---|
| Routine post (compliance PASS) | 30 min (Lazzat-Brand compliance → Lazzat-Operations approve) |
| Blog | 24 hours (Lazzat-Brand → Lazzat-Operations) |
| New campaign brief | 48 hours (Lazzat-Founder) |
| Paid ad set | 24 hours (Lazzat-Founder) |
| Wall panel | 48 hours (Lazzat-Brand + Lazzat-Operations + Lazzat-Founder) |
| Customer complaint reply | 2 hours (Lazzat-Social draft + Lazzat-Brand + Lazzat-Operations) |
| Press pitch | 72 hours (Lazzat-Founder) |

Don't block production on Lazzat-Founder approval for items that only need Lazzat-Brand. Only escalate when the decision tree demands it.

---

## 4. The "Hold + Escalate" Case

When a piece is technically compliant but *feels* edge-case, use:

```
───────────── HOLD FOR REVIEW ─────────────
Piece: [title]
Reason held: [what made you pause]
Compliance: PASS (by rules)
Judgement call needed: [specific question for Lazzat-Brand]
Recommended approver: [Lazzat-Brand / Lazzat-Founder]
───────────────────────────────────────────
```

A held piece is paused, not killed. It protects brand equity from "technically OK but wrong vibe" slips.

---

## 5. Approver Contact Convention

- Lazzat-Founder → WhatsApp "Lazzat Core" group tag + email backup
- Lazzat-Operations → WhatsApp direct (internal family-senior channel)
- Lazzat-Brand → WhatsApp direct + Slack
- Lazzat-Social → WhatsApp direct + Asana task
- Lazzat-Culinary / Lazzat-Standards → WhatsApp direct (food decisions)
- Lazzat-Build → WhatsApp direct (space / construction decisions only)

Never email Lazzat-Founder for routine items. Never WhatsApp him for PR pitches (those need written record). Use the right channel for the weight of the decision.

---

## 6. When Approver Is Offline

- If Lazzat-Founder is travelling → route through Lazzat-Operations + Lazzat-Brand for all non-launch-critical items; hold launch-critical items.
- If Lazzat-Operations is unavailable → Lazzat-Brand holds routine approvals for up to 24h; escalate to Lazzat-Founder after.
- If Lazzat-Brand is offline → routine drafts pause; Lazzat-Operations may approve pre-drafted compliant content only.
- If Lazzat-Social is offline → routine posts pause; only menu reference posts and scheduled evergreen go live.

Never auto-approve anything by default. Paused > premature.
