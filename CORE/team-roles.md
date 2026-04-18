# Lazzat Team Roles & Approval Chain

> **STATUS:** Locked — April 2026 · realigned to Film Package (canonical source)
> **Owner (ops):** Usama (Brand & Marketing Lead) — a.k.a. **Lazzat-Brand**
> **Canonical source:** `Lazzat Film Package Final.pdf` defines the real 11-person founding team and their roles. This file MUST match it.
> **Rule:** Every deliverable goes through the right approver. Nobody bypasses Sir Waqas / **Lazzat-Founder** on major decisions.
> **Confidentiality:** Family relationships (Mudassar = Sir Waqas's brother; Soha = Sir Waqas's niece) are **INTERNAL ONLY**. Never appear in public copy, captions, press, or on-camera.

---

## 0. IDENTITY MAPPING (source of truth)

Every other file in this skill system refers to people **only** by their Lazzat-identity. This file, `team-bios.md`, and `brand-story.md` are the only three places where real names may appear. Use this table to reconcile the two.

### 0.1 FRONT-END TEAM (Film Package, 11 real people, public-facing)

| Lazzat Identity | Real Person | Public Role | Scope |
|---|---|---|---|
| **Lazzat-Founder** | Waqas Mukhtar (Sir Waqas) | Founder & CEO | Final approver on strategy + anything public. 20+ restaurants of operational experience. |
| **Lazzat-Build** | Mudassar Mukhtar | Co-Founder, Construction & Planning | Built the space. Salt wall install. Renovations, physical buildout, site expansion. *(internal: brother of Sir Waqas)* |
| **Lazzat-Standards** | Remon Farag | Food Safety & Standards | Deliveries, temperatures, allergen protocol, halal-sourcing verification, cleanliness audits, regulatory compliance. Egyptian Christian — symbolic weight on religious inclusivity. |
| **Lazzat-Operations** | Soha Ahmed | Operations & Procedures | SOPs, systems, checklists, rush-hour coordination, cross-station protocols. UK-raised Pakistani Muslim. Senior internal approver on routine brand/content matters *(internal: Sir Waqas's niece)*. |
| **Lazzat-Culinary** | Professor Parveen | Culinary Advisor / Professor | Signs off every recipe and seasonal drop. 35 years experience; teaches at George Brown + Sheridan. Independent — reports to Sir Waqas only. |
| **(Lazzat-Store)** | Jean | Store Manager | Floor, service, hospitality, opening/closing. Syrian Christian; the restaurant's heart at the door. |
| **(Lazzat-GrillMaster)** | Mehul | Grill | Lava stone live-fire grill execution. Indian Hindu; reads fire by sound. |
| **(Lazzat-KitchenBack)** | Shakoor Ahmed | Back of House / Kitchen | Prep, cooking, early-morning line setup. Pakistani Muslim; "tastes like mom made it." |
| **(Lazzat-Shakes)** | Ataul Hadi | Shakes & Dessert Counter | Fresh shakes, desserts, custom cakes. Pakistani Muslim; craftsman energy. |
| **(Lazzat-Service)** | Mandeep Kaur | Customer Service Specialist | Counter, order-taking, Lazzat Plus floor. Indian Sikh; multilingual (Punjabi / Hindi / English). |
| **(Lazzat-AllRounder)** | Mansoor Bajwa | All-Rounder | Prep / expo / running / fixing — wherever needed. Pakistani Muslim; the connective tissue. |

> **Note on parenthesised identities:** The six floor specialists (Jean, Mehul, Shakoor, Ataul, Mandeep, Mansoor) are real people with real roles and appear publicly in the brand film + website Team page. They are **not approvers** in the skill system — they are referenced by role when content is being drafted about them. No need to use the `Lazzat-<role>` identity in day-to-day skill operations; call them by role ("Store Manager," "Grill," etc.) or cite their real name where the Film Package already does so publicly.

### 0.2 BRAND / BACK-END TEAM (role-only, names internal, can rotate)

| Lazzat Identity | Public Display | Internal Scope |
|---|---|---|
| **Lazzat-Brand** | Usama, Brand & Marketing Lead | Runs the entire AI skill system; brand + compliance gatekeeper; day-to-day marketing execution. Usama is the only back-end member named publicly. |
| **Lazzat-Social** | Social Media Handler | Drafts IG / TikTok / FB posts, DMs, scheduling. Reports to Lazzat-Brand. |
| **Lazzat-Ads** | Digital Marketer | Paid ads, delivery platforms, attribution, funnel. Reports to Lazzat-Brand. |
| **Lazzat-SEO** | SEO Specialist | Google Business, website SEO, local search, blog SEO. Reports to Lazzat-Brand. |
| **Lazzat-Video** | Video Editor | Reels, TikTok cuts, YouTube Shorts, brand-film derivatives. Reports to Lazzat-Brand. |
| **Lazzat-Content** | Content Writer | Blog, long-form captions, wall copy, newsletter. Reports to Lazzat-Brand. |
| **Lazzat-Design** | Graphic Designer | Canva, print, packaging, wall panels. Reports to Lazzat-Brand. |
| **Lazzat-Web** | Web Developer | Website, app (roadmap), delivery integrations, domain/DNS, POS (Toast) data. Reports to Lazzat-Brand. |

> **Why no names for back-end roles?** Back-end holders can rotate; the roles are permanent. Keeping identities role-only (not person-name-bound) makes the skill system resilient to team changes. Real holders are known to Lazzat-Brand and are listed in the private on-boarding doc, not here.

### 0.3 Rules for Claude and every team member

1. Outside this file, `team-bios.md`, and `brand-story.md`, refer to people **only** by `Lazzat-<Identity>`. Never by personal name.
2. For front-line specialists (Jean, Mehul, etc.), reference by role noun or by name (since the Film Package publishes them by name already) — but never invent family relationships or personal details.
3. Governance / legal / ownership files (`LICENSE`, `README.md` "Founded By" + "Built By" sections, `.claude-plugin/marketplace.json` `brandFounders` + `author` blocks, `AGENTS.md` section 12) use legal names for unambiguous attribution — this is not marketing content.
4. The `brand-compliance-checker` skill auto-enforces these rules on every output.

---

## 1. ORG STRUCTURE

```
                                 SIR WAQAS (Lazzat-Founder)
                                     Founder & CEO
                                          │
         ┌────────────────────┬───────────┴───────────┬────────────────────┐
         │                    │                       │                    │
      MUDASSAR              SOHA                    REMON              PROF. PARVEEN
   (Lazzat-Build)       (Lazzat-Operations)      (Lazzat-Standards)    (Lazzat-Culinary)
  Co-Founder,           Operations              Food Safety          Culinary Advisor
  Construction            & Procedures          & Standards          (independent;
  & Planning              (internal kin-                             recipe sign-off)
  (internal kin-          senior)
   senior; brother)

                                     USAMA (Lazzat-Brand)
                                Brand & Marketing Lead
                                (runs the AI skill system)
                                          │
                   ┌─────────────┬────────┴────────┬─────────────┐
                   │             │                 │             │
            Lazzat-Social   Lazzat-Ads      Lazzat-SEO     Lazzat-Content
          (Social Media   (Digital          (SEO            (Content
           Handler)        Marketer)         Specialist)     Writer)
                   │             │                 │             │
                   └─────────────┴────────┬────────┴─────────────┘
                                          │
                        ┌─────────────────┼─────────────────┐
                        │                 │                 │
                 Lazzat-Design      Lazzat-Video      Lazzat-Web
                (Graphic            (Video             (Web
                 Designer)           Editor)            Developer)

 FRONT-LINE SPECIALISTS (service + kitchen execution, report to Lazzat-Operations for procedures,
 to Lazzat-Standards for food safety, and to Lazzat-Culinary for recipe adherence):

 JEAN — Store Manager                MANDEEP — Customer Service Specialist
 MEHUL — Grill                       ATAUL — Shakes & Dessert Counter
 SHAKOOR — Back of House / Kitchen   MANSOOR — All-Rounder
```

**Key hierarchy rules:**

- **Lazzat-Founder (Sir Waqas)** — final say on everything public and strategic.
- **Lazzat-Build (Mudassar)** — co-founder; co-equal voice to Sir Waqas on the physical space, renovations, expansion. Not involved in food / menu / vendor approval (that is Lazzat-Culinary + Lazzat-Standards). *(Internal kin-senior.)*
- **Lazzat-Standards (Remon)** — final say on food safety, allergen, halal verification. Reports to Lazzat-Founder on any incident.
- **Lazzat-Culinary (Prof. Parveen)** — final say on recipes, menu items, seasonal drops, recipe changes. Independent advisor.
- **Lazzat-Operations (Soha)** — owns SOPs / procedures / systems. *(Internal kin-senior: ranks senior to the brand team on routine matters; routine brand + social content escalates to her before Sir Waqas.)*
- **Lazzat-Brand (Usama)** — operational lead for brand & marketing; reports to Lazzat-Operations (routine) and Lazzat-Founder (strategic). Runs this entire AI skill system day-to-day.

---

## 2. APPROVAL CHAIN (who signs off what)

Notation: *Drafter → Reviewer → Final Approver*. Where `Lazzat-Operations` is "Final Approver," `Lazzat-Founder` is always available as escalation.

| Decision Type | Drafter | Reviewer (compliance) | Final Approver |
|---|---|---|---|
| Routine IG / TikTok / FB post (compliance PASS) | Lazzat-Social | Lazzat-Brand | **Lazzat-Operations** |
| New campaign type / new pillar | Lazzat-Brand | Lazzat-Operations | **Lazzat-Founder** |
| Paid ad budget > $100 | Lazzat-Ads | Lazzat-Brand + Lazzat-Operations | **Lazzat-Founder** |
| Paid ad creative (existing campaign, within budget) | Lazzat-Ads | Lazzat-Brand | **Lazzat-Operations** |
| New claim not in `approved-claims.md` | Lazzat-Brand | Lazzat-Operations | **Lazzat-Founder** |
| Blog post publish | Lazzat-Content | Lazzat-Brand | **Lazzat-Operations** |
| Website copy change (minor) | Lazzat-SEO | Lazzat-Brand | **Lazzat-Operations** |
| Website major change / new section | Lazzat-Web + Lazzat-Brand | Lazzat-Operations | **Lazzat-Founder** |
| New menu item launch | Lazzat-Culinary + Lazzat-Standards | Lazzat-Brand (brand framing) | **Lazzat-Founder** |
| Menu item removal | Lazzat-Culinary | Lazzat-Brand (brand framing) | **Lazzat-Founder** |
| Recipe change (portion / spec) | Lazzat-Culinary | Lazzat-Standards | **Lazzat-Culinary** (notifies Lazzat-Founder) |
| Vendor / supplier change | Lazzat-Standards | Lazzat-Culinary | **Lazzat-Founder** |
| Food safety protocol change | Lazzat-Standards | Lazzat-Culinary | **Lazzat-Founder** |
| Construction / renovation / physical space | Lazzat-Build | Lazzat-Operations | **Lazzat-Founder** |
| Influencer deal (paid) | Lazzat-Brand + Lazzat-Operations | Lazzat-Ads (budget) | **Lazzat-Founder** |
| Influencer deal (gifted, < $100 value) | Lazzat-Social | Lazzat-Brand | **Lazzat-Operations** |
| Press / PR outreach | Lazzat-Brand | Lazzat-Operations | **Lazzat-Founder** |
| Wall post / in-store print | Lazzat-Design + Lazzat-Brand | Lazzat-Operations | **Lazzat-Founder** *(prints are permanent)* |
| Brand film edit (final) | Lazzat-Video | Lazzat-Brand + Lazzat-Operations | **Lazzat-Founder** |
| Brand film cut (Reel / TikTok derivatives) | Lazzat-Video | Lazzat-Brand | **Lazzat-Operations** |
| App feature change | Lazzat-Web + Lazzat-Brand | Lazzat-SEO (SEO impact) | **Lazzat-Founder** |
| Delivery platform menu change (price / item) | Lazzat-Ads + Lazzat-Culinary | Lazzat-Brand | **Lazzat-Founder** |
| Delivery platform operational setting | Lazzat-Ads | Lazzat-Operations | **Lazzat-Brand** |
| Catering quote > $500 | Lazzat-Operations | Lazzat-Culinary (capacity) | **Lazzat-Founder** |
| Catering quote ≤ $500 | Lazzat-Operations | Lazzat-Brand | **Lazzat-Operations** |
| Customer complaint — routine | Lazzat-Social | Lazzat-Brand | **Lazzat-Operations** |
| Customer complaint — food safety / allergen / halal / religious / discrimination | Lazzat-Social draft | Lazzat-Brand + Lazzat-Standards | **Lazzat-Founder** |
| Spend > $2,000 (any category) | Drafter | Lazzat-Brand + relevant ops lead | **Lazzat-Founder** |

**Rule:** When in doubt → Lazzat-Founder.
**Rule:** Lazzat-Operations can escalate directly to Lazzat-Founder any time, without going through Lazzat-Brand.
**Rule:** Lazzat-Culinary's "no" on anything recipe-related is final, even if other approvers said yes.
**Rule:** Lazzat-Standards's "no" on anything food-safety-related is final, even if other approvers said yes.

---

## 3. ROLE RESPONSIBILITIES (one line each)

- **Lazzat-Founder (Sir Waqas, Founder & CEO)** — Vision, capital, culture, final say on all public-facing + strategic output.
- **Lazzat-Build (Mudassar, Co-Founder — Construction & Planning)** — Owns the physical space: renovations, buildouts, second-location design. Not involved in food/menu/vendor decisions. Internal kin-senior.
- **Lazzat-Standards (Remon, Food Safety & Standards)** — Owns food safety, delivery QC, temperatures, allergen protocol, halal-sourcing verification, cleanliness audits.
- **Lazzat-Operations (Soha, Operations & Procedures)** — Owns SOPs, systems, rush-hour coordination, cross-station procedures, staff protocols. Internal kin-senior — final approver on routine brand content.
- **Lazzat-Culinary (Prof. Parveen, Culinary Advisor / Professor)** — Independent; validates every recipe and seasonal drop. Final say on menu content.
- **Lazzat-Brand (Usama, Brand & Marketing Lead)** — Reports to Lazzat-Operations (routine) + Lazzat-Founder (strategic); runs the AI skill system; owns compliance enforcement, drafting, day-to-day marketing execution, approval-chain hygiene.
- **Lazzat-Ads (Digital Marketer)** — Reports to Lazzat-Brand; owns paid ads, delivery platforms, funnel analytics, attribution.
- **Lazzat-SEO (SEO Specialist)** — Reports to Lazzat-Brand; owns Google Business, website SEO, local search, blog SEO.
- **Lazzat-Video (Video Editor)** — Reports to Lazzat-Brand; owns Reels, TikTok cuts, brand-film cuts, raw-to-reel pipeline.
- **Lazzat-Content (Content Writer)** — Reports to Lazzat-Brand; blog, long-form captions, wall copy, newsletter.
- **Lazzat-Design (Graphic Designer)** — Reports to Lazzat-Brand; Canva / print / packaging / wall panels.
- **Lazzat-Web (Web Developer)** — Reports to Lazzat-Brand; website, app (roadmap), delivery integrations, DNS, POS data coordination.
- **Lazzat-Social (Social Media Handler)** — Reports to Lazzat-Brand; IG / TikTok / FB posting, DMs, schedule, community listening.
- **Front-line specialists (Jean, Mehul, Shakoor, Ataul, Mandeep, Mansoor)** — Report into Lazzat-Operations (procedures) + Lazzat-Standards (food safety) + Lazzat-Culinary (recipe adherence). Each owns their station.

Full bios with personality & on-camera notes: `CORE/team-bios.md`.

---

## 4. PLATFORM ACCESS MAP

| Platform | Primary Owner | Backup | Senior Oversight |
|---|---|---|---|
| Instagram (@lazzatgrill) | Lazzat-Social | Lazzat-Brand | Lazzat-Founder |
| TikTok (@lazzatgrill) | Lazzat-Social | Lazzat-Video | Lazzat-Founder |
| Facebook | Lazzat-Social | Lazzat-Brand | Lazzat-Founder |
| YouTube | Lazzat-Video | Lazzat-Brand | Lazzat-Operations |
| Google Business Profile | Lazzat-SEO | Lazzat-Brand | Lazzat-Operations |
| Website (lazzatgrill.com) | Lazzat-Web | Lazzat-SEO | Lazzat-Brand |
| Uber Eats / DoorDash / Skip | Lazzat-Ads | Lazzat-Standards | Lazzat-Founder |
| Meta Ads Manager | Lazzat-Ads | Lazzat-Brand | Lazzat-Operations (creative) + Lazzat-Founder (spend) |
| Google Ads | Lazzat-SEO | Lazzat-Ads | Lazzat-Founder |
| WhatsApp Business | Lazzat-Social | Lazzat-Operations | — |
| Email / Newsletter | Lazzat-Content | Lazzat-Brand | Lazzat-Operations |
| Claude AI Projects (this skill system) | Lazzat-Brand | Lazzat-Operations | Lazzat-Founder |
| 1Password Vault | Lazzat-Founder + Lazzat-Build + Lazzat-Operations + Lazzat-Brand | — | — |
| POS / Toast data | Lazzat-Web | Lazzat-Ads | Lazzat-Founder |
| DNS / domain | Lazzat-Web | Lazzat-Brand | Lazzat-Founder |

**Access Rules:**
- Passwords stored only in 1Password vault shared by Lazzat-Founder + Lazzat-Build + Lazzat-Operations + Lazzat-Brand.
- Never paste credentials into Claude, Slack, WhatsApp or any chat.
- Two-factor authentication mandatory on every account.
- Off-boarding: Lazzat-Brand rotates credentials within 24 hours of anyone leaving, and notifies Lazzat-Operations + Lazzat-Founder.

---

## 5. COMMUNICATION PROTOCOL

### Internal chat: WhatsApp "Lazzat Core" group
- Brand / marketing ops questions → tag **Lazzat-Brand**
- Brand tone / family voice / escalations → tag **Lazzat-Operations**
- Kitchen / recipe / menu questions → tag **Lazzat-Culinary** (recipes) or **Lazzat-Standards** (safety)
- Physical space / renovation → tag **Lazzat-Build**
- Urgent public customer issues → tag **Lazzat-Operations** (she loops Lazzat-Brand)
- Strategic / budget / long-term → tag **Lazzat-Founder**

### Daily rituals
- 9:00 AM — Kitchen prep standup (Lazzat-Standards + Lazzat-Culinary + front-line kitchen: Shakoor + Mehul)
- 11:00 AM — Marketing 15-min (Lazzat-Brand + Lazzat-Operations + Lazzat-Ads when active)
- 9:30 PM — Day-close report (Lazzat-Operations posts numbers to Lazzat Core group)

### Weekly rituals
- Monday 10 AM — Content week lock (Lazzat-Brand presents 7-post plan → Lazzat-Operations approves)
- Friday 4 PM — Numbers review (GMB, social, delivery, catering — Lazzat-Brand + Lazzat-Operations + Lazzat-Ads)
- Saturday after close — Vibe-check dinner (family + team, no work talk)

### Monthly ritual
- First Tuesday — Full team meeting → review roadmap (Lazzat-Brand presents, Lazzat-Operations + Lazzat-Culinary + Lazzat-Build respond, Lazzat-Founder closes).

---

## 6. EMERGENCY / CRISIS PROTOCOL

**If a customer complaint goes public (review, comment, post):**

1. Lazzat-Social screenshots + pings Lazzat-Brand within 15 minutes (regardless of hour).
2. Do not reply publicly yet.
3. Lazzat-Brand drafts a response → **Lazzat-Operations reviews tone** → Lazzat-Founder reviews *if* it involves:
   - food safety claim (loop Lazzat-Standards)
   - allergen / halal / religious concern (loop Lazzat-Standards + Lazzat-Culinary)
   - discrimination / service incident (loop Lazzat-Operations)
   - any mention of a named front-line specialist or the kitchen directly
4. Only then reply publicly, calmly, with a real resolution offer (not a templated apology).
5. Log incident in the monthly review.

**Never:**
- Delete the complaint
- Argue in comments
- Respond late-night emotionally
- Offer refunds without Lazzat-Brand + Lazzat-Operations sign-off
- Mention family relationships between team members in any response
- Name specific front-line specialists in a complaint response without Lazzat-Founder approval

---

## 7. WHEN A TEAM MEMBER USES THIS SKILL SYSTEM

Before running any Lazzat Claude skill:

1. Read `CORE/SKILL.md` first.
2. Declare your role (e.g., "I am Lazzat-Operations, drafting a weekly calendar"; "I am Lazzat-Brand, running compliance on a blog").
3. Claude will route to the right skill and enforce compliance + approval chain automatically.
4. Every output ends with a mini-compliance summary + the exact approver you need to ping (Lazzat-Operations, Lazzat-Standards, Lazzat-Culinary, Lazzat-Build, or Lazzat-Founder) based on this file.

---

## 8. CONFIDENTIALITY — FAMILY RELATIONSHIPS

The following are **internal-only facts**. They inform authority and approval chains but must never appear in:
- Public social copy (IG, TikTok, FB, YouTube, X)
- Press releases, media interviews, podcast bios
- Website copy (About, Our Story, Team pages)
- Brand film, Reels, or any on-camera material
- Wall panels, menu inserts, packaging, receipts
- Influencer briefs, job postings, LinkedIn copy

**The facts (internal):**
- **Mudassar Mukhtar is Sir Waqas's brother.** Publicly, he is **"Co-Founder, Construction & Planning"** — that is both true and sufficient (and matches the Film Package Final).
- **Soha Ahmed is Sir Waqas's niece.** Publicly, she is **"Operations & Procedures"** — that is both true and sufficient (and matches the Film Package Final).

Any Claude output that references family relationships, or that assigns Mudassar a kitchen/chef role, or that assigns Soha a "Social & Community Lead" label, must be caught by the `brand-compliance-checker` and rewritten before send.
