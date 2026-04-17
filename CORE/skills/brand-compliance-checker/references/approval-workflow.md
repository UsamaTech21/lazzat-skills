# Approval Workflow — Full Routing Logic

> **STATUS:** Locked
> **Owner:** Usama
> **Rule:** Every piece leaves the system with an approver named. No piece publishes without explicit approval.

---

## 1. The Decision Tree (run top-down)

```
Is this a CORE file change?           → Sir Waqas
Is this a new claim not on GREEN?     → Sir Waqas
Is this a paid ad > $100?             → Sir Waqas
Is this a new campaign type?          → Sir Waqas
Is this a website major change?       → Sir Waqas
Is this a menu change?                → Sir Waqas
Is this a wall panel / print asset?   → Usama + Sir Waqas
Is this an influencer paid collab?    → Sir Waqas
Is this a press / PR pitch?           → Sir Waqas
Is this a blog / long-form?           → Usama
Is this a routine IG / TikTok post?   → Usama + Soha (after compliance PASS)
Is this a DM reply?                   → Soha
Is this a customer complaint reply?   → Soha draft → Usama approve (if public)
Is this a menu item price mention?    → Sir Waqas
Is this a delivery-platform listing?  → Usama
Is this a catering quote > $500?      → Usama
Is this a catering quote < $500?      → Soha
Is this a GMB post?                   → Ali Hamza → Usama
Is this an internal WhatsApp msg?     → Auto-PASS (no approver needed)
Is this a team-only doc?              → Auto-PASS (no approver)
```

---

## 2. Escalation Rules

- If the piece triggers ANY yellow-list claim → escalate to Sir Waqas before publish.
- If the piece triggers ANY first-3-months conservatism flag → route to Usama even if routine.
- If the piece mentions a competitor name → hold + escalate to Usama immediately.
- If the piece includes a press quote or interview response → Sir Waqas, always.
- If the piece is a response to a public complaint → Soha draft + Usama approve + Sir Waqas notify (if food safety / allergen / religion involved).

---

## 3. Turnaround Expectations (internal SLA)

| Piece type | Expected approval turnaround |
|---|---|
| Routine post (compliance PASS) | 30 min (Usama) |
| Blog | 24 hours (Usama) |
| New campaign brief | 48 hours (Sir Waqas) |
| Paid ad set | 24 hours (Sir Waqas) |
| Wall panel | 48 hours (Usama + Sir Waqas) |
| Customer complaint reply | 2 hours (Soha + Usama) |
| Press pitch | 72 hours (Sir Waqas) |

Don't block production on Sir Waqas approval for items that only need Usama. Only escalate when the decision tree demands it.

---

## 4. The "Hold + Escalate" Case

When a piece is technically compliant but *feels* edge-case, use:

```
───────────── HOLD FOR REVIEW ─────────────
Piece: [title]
Reason held: [what made you pause]
Compliance: PASS (by rules)
Judgement call needed: [specific question for Usama]
Recommended approver: [Usama / Sir Waqas]
───────────────────────────────────────────
```

A held piece is paused, not killed. It protects brand equity from "technically OK but wrong vibe" slips.

---

## 5. Approver Contact Convention

- Sir Waqas → WhatsApp "Lazzat Core" group tag + email backup
- Usama → WhatsApp direct + Slack
- Soha → WhatsApp direct + Asana task

Never email Sir Waqas for routine items. Never WhatsApp him for PR pitches (those need written record). Use the right channel for the weight of the decision.

---

## 6. When Approver Is Offline

- If Sir Waqas is travelling → route through Usama for all non-launch-critical items; hold launch-critical items.
- If Usama is offline → Soha can approve routine posts only; everything else holds.
- If Soha is offline → routine posts pause; only menu reference posts and scheduled evergreen go live.

Never auto-approve anything by default. Paused > premature.
