-- 02_inventory_and_bottlenecks.sql
SELECT region,COUNT(*) snapshots,SUM(stockout_flag) stockout_events,
       ROUND(100.0*SUM(stockout_flag)/COUNT(*),1) stockout_rate_pct
FROM inventory_monthly GROUP BY region ORDER BY stockout_rate_pct DESC;

SELECT p.category,p.product_name,COUNT(o.order_id) orders,
       ROUND(100.0*SUM(o.late_flag)/COUNT(o.order_id),1) late_rate_pct,
       ROUND(100.0*SUM(o.return_flag)/COUNT(o.order_id),1) return_rate_pct
FROM products p LEFT JOIN orders o ON o.product_id=p.product_id
GROUP BY p.product_id,p.category,p.product_name
HAVING COUNT(o.order_id)>=10
ORDER BY late_rate_pct DESC,return_rate_pct DESC;

SELECT p.category,p.product_name,COUNT(i.product_id) snapshots,
       ROUND(100.0*SUM(i.stockout_flag)/COUNT(i.product_id),1) stockout_rate_pct
FROM products p JOIN inventory_monthly i ON i.product_id=p.product_id
GROUP BY p.product_id,p.category,p.product_name
ORDER BY stockout_rate_pct DESC LIMIT 15;
