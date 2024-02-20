--Cities With Completed Trades [Robinhood SQL Interview Question]
SELECT us.city, COUNT(tr.order_id) AS total_orders 
FROM trades tr
LEFT JOIN users us ON us.user_id = tr.user_id
WHERE tr.status = 'Completed'
GROUP BY us.city
ORDER BY total_orders DESC
LIMIT 3;