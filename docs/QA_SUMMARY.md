# QA Summary

The bundled analytical outputs were regenerated from the self-contained synthetic dataset.

Headline metrics:
- Orders: 4,000
- On-time delivery: 58.2%
- Fulfillment rate: 93.6%
- Return rate: 6.5%
- Average delivery time: 4.54 days
- Inventory stockout event rate: 11.0%

Validation checks performed:
- Every order has an order_id.
- Late flag agrees with delivered date vs promised date.
- Return flag agrees with fulfillment status.
- Supplier and product IDs in orders map to the included masters.
- Monthly and supplier outputs reconcile to the order-level data.
