# Schema Templates — Ready-to-Paste JSON-LD

> **Rule:** Every page deploys with schema validated via Rich Results Test. No false claims in schema.

---

## 1. Organization (site-wide, head)

```json
{
  "@context": "https://schema.org",
  "@type": "Organization",
  "name": "Lazzat Grill & Shakes",
  "url": "https://lazzat.ca",
  "logo": "https://lazzat.ca/assets/logo/lazzat-wordmark-charcoal.png",
  "sameAs": [
    "https://www.instagram.com/lazzatgrill",
    "https://www.tiktok.com/@lazzatgrill",
    "https://www.facebook.com/lazzatgrill"
  ],
  "founder": {
    "@type": "Person",
    "name": "Lazzat-Founder [Surname pending Lazzat-Founder confirmation]",
    "jobTitle": "Founder & CEO"
  }
}
```

---

## 2. WebSite (site-wide)

```json
{
  "@context": "https://schema.org",
  "@type": "WebSite",
  "name": "Lazzat Grill & Shakes",
  "url": "https://lazzat.ca",
  "potentialAction": {
    "@type": "SearchAction",
    "target": "https://lazzat.ca/search?q={search_term_string}",
    "query-input": "required name=search_term_string"
  }
}
```

---

## 3. LocalBusiness — Restaurant (per location)

### McVean Dr (Castlemore)

```json
{
  "@context": "https://schema.org",
  "@type": "Restaurant",
  "@id": "https://lazzat.ca/locations/mcvean#restaurant",
  "name": "Lazzat Grill & Shakes — McVean Dr",
  "image": "https://lazzat.ca/assets/locations/mcvean-hero.jpg",
  "url": "https://lazzat.ca/locations/mcvean",
  "telephone": "[TBD — Lazzat-Founder to confirm]",
  "address": {
    "@type": "PostalAddress",
    "streetAddress": "11685 McVean Dr",
    "addressLocality": "Brampton",
    "addressRegion": "ON",
    "postalCode": "[L6P/L6R — TBD]",
    "addressCountry": "CA"
  },
  "geo": {
    "@type": "GeoCoordinates",
    "latitude": "[TBD]",
    "longitude": "[TBD]"
  },
  "openingHoursSpecification": [
    {
      "@type": "OpeningHoursSpecification",
      "dayOfWeek": ["Monday","Tuesday","Wednesday","Thursday","Sunday"],
      "opens": "11:00",
      "closes": "23:00"
    },
    {
      "@type": "OpeningHoursSpecification",
      "dayOfWeek": ["Friday","Saturday"],
      "opens": "11:00",
      "closes": "00:00"
    }
  ],
  "servesCuisine": ["Global Grill", "Halal"],
  "priceRange": "$$",
  "hasMenu": "https://lazzat.ca/menu",
  "acceptsReservations": "False",
  "paymentAccepted": ["Credit Card", "Debit Card", "Apple Pay", "Google Pay", "Cash"]
}
```

### Clarence St (Downtown)

```json
{
  "@context": "https://schema.org",
  "@type": "Restaurant",
  "@id": "https://lazzat.ca/locations/clarence#restaurant",
  "name": "Lazzat Grill & Shakes — Clarence St",
  "image": "https://lazzat.ca/assets/locations/clarence-hero.jpg",
  "url": "https://lazzat.ca/locations/clarence",
  "telephone": "[TBD]",
  "address": {
    "@type": "PostalAddress",
    "streetAddress": "143 Clarence St, Unit 10",
    "addressLocality": "Brampton",
    "addressRegion": "ON",
    "postalCode": "[TBD]",
    "addressCountry": "CA"
  },
  "geo": {
    "@type": "GeoCoordinates",
    "latitude": "[TBD]",
    "longitude": "[TBD]"
  },
  "openingHoursSpecification": [
    {
      "@type": "OpeningHoursSpecification",
      "dayOfWeek": ["Monday","Tuesday","Wednesday","Thursday","Sunday"],
      "opens": "11:00",
      "closes": "23:00"
    },
    {
      "@type": "OpeningHoursSpecification",
      "dayOfWeek": ["Friday","Saturday"],
      "opens": "11:00",
      "closes": "00:00"
    }
  ],
  "servesCuisine": ["Global Grill", "Halal"],
  "priceRange": "$$",
  "hasMenu": "https://lazzat.ca/menu",
  "paymentAccepted": ["Credit Card", "Debit Card", "Apple Pay", "Google Pay", "Cash"]
}
```

---

## 4. Menu + MenuSection + MenuItem

Build from `menu-v14.md` — this is a template pattern; auto-generate on build:

```json
{
  "@context": "https://schema.org",
  "@type": "Menu",
  "@id": "https://lazzat.ca/menu#menu",
  "name": "Lazzat Menu — v14",
  "url": "https://lazzat.ca/menu",
  "hasMenuSection": [
    {
      "@type": "MenuSection",
      "name": "Platters",
      "hasMenuItem": [
        {
          "@type": "MenuItem",
          "name": "Mega Platter",
          "description": "Lava stone grilled protein platter with rice, salad and thirteen signature sauces.",
          "suitableForDiet": ["https://schema.org/HalalDiet"]
        }
      ]
    }
  ]
}
```

**Rules:**
- Dietary restriction schema values (all verified):
  - `https://schema.org/HalalDiet` — ALL items (halal-sourced)
  - `https://schema.org/VegetarianDiet` — for paneer / veg items
  - `https://schema.org/VeganDiet` — only where confirmed
  - `https://schema.org/GlutenFreeDiet` — only for items explicitly GF-aware
- Never include `halalCertified` or similar (we are halal-sourced, not certified)

---

## 5. FAQPage (homepage + blog)

```json
{
  "@context": "https://schema.org",
  "@type": "FAQPage",
  "mainEntity": [
    {
      "@type": "Question",
      "name": "Is Lazzat halal?",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "Yes. All meats at Lazzat are halal-sourced from trusted Ontario suppliers, including Maple Lodge Farms chicken. We do not serve pork, beef, or alcohol at either location."
      }
    },
    {
      "@type": "Question",
      "name": "What is lava stone grilling?",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "Lava stone grilling uses volcanic rock heated to radiant temperatures. The stone sears proteins without charcoal, preserving each ingredient's own flavour. It's the cooking method Lazzat was built around."
      }
    },
    {
      "@type": "Question",
      "name": "Do you deliver?",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "Yes — dine-in, takeout, and delivery via Uber Eats, DoorDash and SkipTheDishes from both Brampton locations (McVean Dr and Clarence St)."
      }
    },
    {
      "@type": "Question",
      "name": "Do you cater?",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "Yes. We cater office lunches, Iftar and Eid events, Diwali, birthdays, graduations and family gatherings. Minimum 24-hour notice. Contact catering@lazzat.ca."
      }
    },
    {
      "@type": "Question",
      "name": "Do you have vegetarian and vegan options?",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "Yes. Our menu has dedicated vegetarian and vegan options — including paneer, grilled vegetables, and legume-based bowls. Every dish is built to welcome every table."
      }
    }
  ]
}
```

---

## 6. BlogPosting (per blog post)

```json
{
  "@context": "https://schema.org",
  "@type": "BlogPosting",
  "headline": "[Post H1]",
  "datePublished": "2026-04-26",
  "dateModified": "2026-04-26",
  "author": {
    "@type": "Person",
    "name": "[Author — per team-bios]"
  },
  "publisher": {
    "@type": "Organization",
    "name": "Lazzat Grill & Shakes",
    "logo": {
      "@type": "ImageObject",
      "url": "https://lazzat.ca/assets/logo/lazzat-wordmark-charcoal.png"
    }
  },
  "image": "https://lazzat.ca/assets/blog/[slug]-featured.jpg",
  "mainEntityOfPage": "https://lazzat.ca/blog/[slug]",
  "keywords": "[primary keyword], [secondary], [lsi]"
}
```

---

## 7. Service (catering)

```json
{
  "@context": "https://schema.org",
  "@type": "Service",
  "name": "Lazzat Halal Catering Brampton",
  "description": "Lava stone grilled catering platters for offices, weddings, Iftar, Eid, Diwali, birthdays, and family events in Brampton and surrounding GTA.",
  "provider": {
    "@type": "Organization",
    "name": "Lazzat Grill & Shakes",
    "url": "https://lazzat.ca"
  },
  "areaServed": {
    "@type": "Place",
    "name": "Brampton and surrounding GTA"
  },
  "serviceType": "Catering",
  "offers": {
    "@type": "Offer",
    "priceCurrency": "CAD",
    "price": "[Range — confirm with Lazzat-Founder + Sir Shahid before publishing]",
    "availability": "https://schema.org/InStock"
  }
}
```

---

## 8. BreadcrumbList (per page)

```json
{
  "@context": "https://schema.org",
  "@type": "BreadcrumbList",
  "itemListElement": [
    {"@type": "ListItem", "position": 1, "name": "Home", "item": "https://lazzat.ca"},
    {"@type": "ListItem", "position": 2, "name": "Blog", "item": "https://lazzat.ca/blog"},
    {"@type": "ListItem", "position": 3, "name": "[Post H1]"}
  ]
}
```

---

## 9. Event (launch + seasonal)

```json
{
  "@context": "https://schema.org",
  "@type": "Event",
  "name": "Lazzat Grill & Shakes — Grand Opening",
  "startDate": "2026-04-26T11:00:00-04:00",
  "endDate": "2026-04-26T23:00:00-04:00",
  "eventStatus": "https://schema.org/EventScheduled",
  "eventAttendanceMode": "https://schema.org/OfflineEventAttendanceMode",
  "location": {
    "@type": "Place",
    "name": "Lazzat Grill & Shakes — McVean Dr",
    "address": {
      "@type": "PostalAddress",
      "streetAddress": "11685 McVean Dr",
      "addressLocality": "Brampton",
      "addressRegion": "ON",
      "addressCountry": "CA"
    }
  },
  "organizer": {
    "@type": "Organization",
    "name": "Lazzat Grill & Shakes",
    "url": "https://lazzat.ca"
  },
  "image": "https://lazzat.ca/assets/events/launch-day.jpg",
  "offers": {
    "@type": "Offer",
    "price": "0",
    "priceCurrency": "CAD",
    "availability": "https://schema.org/InStock",
    "validFrom": "2026-04-01T00:00:00-04:00",
    "url": "https://lazzat.ca"
  }
}
```

---

## 10. Review / AggregateRating (ONLY when live reviews exist)

Never fabricate ratings. Pull from live Google reviews via API (Phase 2):

```json
{
  "@type": "AggregateRating",
  "ratingValue": "4.7",
  "reviewCount": "248"
}
```

**Never use if:**
- No reviews yet (launch window)
- Rating < 4.3 (don't schema-mark a low rating; just don't mark)
- Reviews not yet sourced from real customers

---

## Validation

Before every deploy, pass the following through Google's Rich Results Test:
https://search.google.com/test/rich-results

Fix any errors / warnings before deploying to production.

---

## Never Do

- Include `halalCertified: true` — we are halal-sourced, not certified
- Include stat claims (e.g., "95% satisfaction") in schema unless backed by real survey data
- Include events that are speculative
- Include prices Lazzat-Founder hasn't approved for public disclosure
- Use competitor brand names in schema
- Leave [TBD] placeholders in production schema (must resolve before deploy)
