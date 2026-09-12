-- 01_operations_kpis.sql
SELECT COUNT(*) AS orders,
       ROUND(100.0*SUM(CASE WHEN late_flag=0 THEN 1 ELSE 0 END)/COUNT(*),1) on_time_pct,
       ROUND(AVG(delivery_days),2) avg_delivery_days,
       ROUND(100.0*SUM(return_flag)/COUNT(*),1) return_rate_pct,
       ROUND(100.0*SUM(CASE WHEN return_flag=0 THEN 1 ELSE 0 END)/COUNT(*),1) fulfillment_rate_pct
FROM orders;

SELECT region,COUNT(*) orders,ROUND(100.0*SUM(late_flag)/COUNT(*),1) late_rate_pct,
       ROUND(AVG(delivery_days),2) avg_delivery_days,ROUND(100.0*SUM(return_flag)/COUNT(*),1) return_rate_pct
FROM orders GROUP BY region ORDER BY late_rate_pct DESC;

SELECT s.supplier_name,COUNT(o.order_id) orders,
       ROUND(100.0*SUM(CASE WHEN o.late_flag=0 THEN 1 ELSE 0 END)/COUNT(o.order_id),1) on_time_pct,
       ROUND(AVG(o.delivery_days),2) avg_delivery_days,
       ROUND(100.0*SUM(o.return_flag)/COUNT(o.order_id),1) return_rate_pct
FROM suppliers s LEFT JOIN orders o ON o.supplier_id=s.supplier_id
GROUP BY s.supplier_id,s.supplier_name ORDER BY on_time_pct ASC;
