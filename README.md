# Operations & Supply Chain Performance Analytics

## Overview
A business-facing operations analytics project using SQL, Power BI and Excel to evaluate delivery performance, fulfillment, returns, inventory stockouts, supplier performance and regional/product bottlenecks.

## Business Questions
- Where are delivery bottlenecks?
- Which regions have the highest late-delivery exposure?
- Which suppliers need performance attention?
- Where are stockouts concentrated?
- Which products combine service and inventory risk?
- What actions should management prioritize?

## Headline Results
- 4,000 orders analyzed
- 58.2% on-time delivery
- 93.6% fulfillment rate
- 6.5% return rate
- 4.54 average delivery days
- 11.0% inventory stockout-event rate

## Workflow
Raw operational data → SQL KPI analysis → Excel management view → Power BI dashboard → management recommendations.

## Tools
**SQL:** SQLite, joins, aggregations, CASE expressions, grouped KPIs

**Power BI:** KPI cards, regional delivery analysis, inventory/stockout visuals, supplier scorecard, bottleneck exceptions

**Excel:** management KPI summary, monthly trends, supplier scorecard, bottleneck table, recommendations

## Data Provenance
The public structural reference is **DataCo SMART SUPPLY CHAIN FOR BIG DATA ANALYSIS**, Mendeley Data, Version 3, DOI 10.17632/8gx2fvg2k6.3. The public dataset covers provisioning, production, sales and commercial distribution and is licensed CC BY 4.0.

Source: https://data.mendeley.com/datasets/8gx2fvg2k6/3

The data bundled in this repository is a self-contained synthetic portfolio dataset modeled around comparable supply-chain analytics themes; it is not the original DataCo download.

## Dashboard Pages
1. Executive Operations Overview
2. Delivery & Fulfillment
3. Inventory & Stockouts
4. Supplier & Bottleneck Analysis

## Management Recommendations
1. Prioritize the highest late-rate regions for root-cause review.
2. Use supplier on-time delivery, average delivery time and returns together in supplier performance reviews.
3. Review repeated stockout SKUs for reorder-point and safety-stock adequacy.
4. Investigate product-region combinations with both service and inventory risk.
5. Run a monthly exception review and assign action owners.

## Portfolio Note
This project is designed to demonstrate analyst workflow, SQL, BI reporting and operational decision support—not predictive modeling.
