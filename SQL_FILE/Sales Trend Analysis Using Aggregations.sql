SELECT * 
FROM orders
LIMIT 10;


SELECT 
   EXTRACT(MONTH FROM order_date) AS month,
   COUNT(DISTINCT order_id) AS order_volume,
   SUM(amount) AS total_revenue
FROM orders
GROUP BY 
   EXTRACT(MONTH FROM order_date)
ORDER BY
   month 
LIMIT 20;     