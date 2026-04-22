# Lazzat Allergen Handling Reference

Authoritative wording and operational rules for every allergen and dietary conversation Lazzat has - on the floor, on signage, on delivery platforms, and in customer service. Pair with `references/qa-scripts.md` for staff scripts.

---

## The four free lanes (brand-level dietary positioning)

Lazzat is designed around four dietary exclusions that cover approximately 90% of Canadian dietary restrictions:

- Dairy-free
- Gluten-free
- Nut-free
- Egg-free

**Rule:** These are positioning lanes, not absolute guarantees. Wording must reflect the operational reality.

---

## Safe phrasings by lane

### Dairy-free
- "Dairy-free bowl option with coconut-cream marinade."
- "Skip the paneer for a fully dairy-free plate."
- NEVER: "Dairy-free shake" unless built on oat or almond milk with full dairy cross-contact control.

### Gluten-free
- "Gluten-friendly bowl base." *(When we can't guarantee a dedicated gluten-free zone.)*
- "No wheat ingredients in this item."
- NEVER: "Gluten-free" as a standalone claim - this implies zero cross-contact, which we cannot guarantee in a shared kitchen. Use "gluten-friendly."
- NEVER: "Safe for celiac."

### Nut-free
- "Nut-free kitchen for [specific item]." *(Only if truly nut-free.)*
- "Contains: Tree Nuts" - standard warning format.
- NEVER: "Nut-free" as a blanket claim - we use almonds in some shakes. Be item-specific.

### Egg-free
- "Egg-free bowl option."
- "No egg in this item."

### Vegetarian / Vegan
- "Vegetarian: paneer, soya, or all-salad."
- "Vegan option with soya protein, no paneer, no yogurt-based sauces."
- Avoid: "Plant-based" - too vague, triggers questions.

---

## Cross-contact reality

### What we CAN claim
- Direct-flame grills provide physical separation - vegetarian proteins (paneer, soya) never touch meat.
- Separate cutting boards and prep stations for vegetarian items.
- Staff trained on conveyor belt safe-distance protocol.

### What we CANNOT claim
- "Certified allergen-free" - we have no certification.
- "Zero cross-contact" - we share air, counters, and some utensils.
- "Safe for severe allergies" - never. Creates liability.

---

## Third-party delivery platforms

### Standard delivery setup (DoorDash, Uber Eats, SkipTheDishes)

1. **Item descriptions must include allergen flags:**
   - "Contains: Dairy, Gluten" - required format.
   - No allergen icons without the written word.

2. **Modifiers to offer:**
   - "No Dairy"
   - "No Nuts"
   - "Gluten-Friendly Base"
   - "No Paneer / Substitute Soya"

3. **Special Instructions field:**
   - Train virtual brand managers to read allergy notes before prep.
   - If note says "severe allergy," call the customer to confirm before preparing.

4. **Mandatory disclaimer in restaurant description (all three platforms):**
   > "Lazzat is a shared kitchen. While we separate vegetarian and meat preparation, we cannot guarantee zero cross-contact for severe allergies. Please inform us of any allergy."

5. **Packaging:**
   - Allergen info sticker on every sealed delivery bag.
   - Format: item name + "Contains: X, Y, Z"

6. **Delivery-specific exclusions:**
   - Remove "+1 Free Fruit" add-ons from delivery shake orders (prevents unlisted ingredient additions).

7. **Halal rule reminder (delivery-specific):**
   - The word "halal" does **not** appear anywhere in the restaurant description, item name, item description, modifier, or reviews response on any of the three platforms. The brand supplier credential is **"Maple Lodge Farms chicken."** See `SKILL.md` Section 8 for the full handling rule.

---

## If a customer declares an allergy in-store

1. **Staff script:**
   > "Thank you for letting us know. What's the allergy? I'll walk you through what's safe and what we can't guarantee."

2. **Direct them to the item.** Do not improvise. If the allergy involves a core ingredient (dairy, gluten, nuts), walk through the menu item by item.

3. **For severe allergies (anaphylaxis mentioned):**
   > "We share kitchen space, so I can't promise zero contact. I'll let the kitchen know, and if you'd rather not risk it, we completely understand."

4. **Never:**
   - Minimize the risk.
   - Guess at ingredients - check the allergen matrix.
   - Say "it's fine" - always let the customer make the call.

---

## The website (lazzat.ca/allergens)

A full allergen matrix should live at `lazzat.ca/allergens`. This is both:
- A legal safe harbour (customer has access to the information).
- A trust signal (we're not hiding anything).

Rank: **high priority, not yet built** - queued in the Lazzat R&D backlog. See `CORE/skills/web-app-developer/` for implementation.

---

## Competitive benchmarks (internal reference only)

*For internal strategy use. Never printed in customer copy - see Section 10 of `SKILL.md`.*

- **Cava** - Entirely nut-free and peanut-free across all items. Our direct competitor model for the nut-free default.
- **Chipotle** - "Customization = allergen control" positioning. Same as our BYO model.
- **Sweetgreen** - Seasonal items complicate allergen tracking. Lesson: keep the core menu stable.
- **Nando's (UK)** - Full allergen matrix mandatory by law. Canada does not require this, but the UK version is the gold standard for "good."

---

## Linked Lazzat skills

- `CORE/skills/brand-compliance-checker/` - enforces the allergen wording rules on every draft.
- `CORE/skills/web-app-developer/` - builds `lazzat.ca/allergens`.
- `CORE/skills/social-media-handler/` - runs replies when customers ask about allergens on social.
- `CORE/skills/senior-strategist/` - tracks cross-platform allergen-disclosure parity.
