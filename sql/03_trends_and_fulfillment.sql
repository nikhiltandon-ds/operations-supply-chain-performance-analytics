-- 03_trends_and_fulfillment.sql
SELECT substr(order_date,1,7) month,COUNT(*) orders,ROUND(SUM(revenue),2) revenue,
       ROUND(100.0*SUM(late_flag)/COUNT(*),1) late_rate_pct,
       ROUND(AVG(delivery_days),2) avg_delivery_days,
       ROUND(100.0*SUM(return_flag)/COUNT(*),1) return_rate_pct
FROM orders GROUP BY substr(order_date,1,7) ORDER BY month;

SELECT region,COUNT(*) orders,
       SUM(CASE WHEN return_flag=0 THEN 1 ELSE 0 END) fulfilled_orders,
       SUM(return_flag) returned_orders
FROM orders GROUP BY region;
