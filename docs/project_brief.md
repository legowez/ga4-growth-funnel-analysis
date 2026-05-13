# Project Brief

## 1. Why This Dataset

The target Growth Analytics role emphasizes metrics such as:

- sends
- entries
- click-through rate
- conversion rate
- success rate
- re-entry rate

The GA4 ecommerce public dataset is a better fit than marketplace snapshot data because it contains event-level user behavior that can support funnel definitions and repeated-user analysis.

## 2. Candidate Analysis Objective

> Use GA4 ecommerce behavior logs to monitor the customer journey from entry to purchase, identify the largest funnel losses, and uncover segment-level growth opportunities.

## 3. Candidate Funnel

The final funnel will be confirmed after schema inspection, but the expected working structure is:

1. session or engagement entry
2. product view
3. product selection or interaction
4. add to cart
5. begin checkout
6. purchase

## 4. Candidate Growth Questions

- Which funnel step has the largest absolute user loss?
- Which traffic sources bring high entry volume but weak purchase conversion?
- Which device category shows unusually weak checkout completion?
- Are returning users more likely to complete purchase?
- Which products or item categories attract interaction but under-convert?
- Where should CRM or onsite nudges be prioritized?

## 5. Candidate Metric Families

- traffic volume
- event participation rate
- step-to-step conversion rate
- overall purchase conversion rate
- repeat entry rate
- revisit-to-purchase uplift
- segmentation gap by channel, device, and new vs returning users

## 6. Open Questions For Data Inspection

- Which GA4 events exist in the sample?
- Can `session_start`, `page_view`, or equivalent entry events be used?
- Which event best represents click-through in ecommerce context?
- Are item-level records sufficiently populated for merchandising analysis?
- What fields are reliable enough for segmentation?
