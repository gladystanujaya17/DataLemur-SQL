--SQL HAVING MIN Practice Exercise [SQL Interview Question]
SELECT ticker, MIN(open) AS min
FROM stock_prices
GROUP BY ticker
HAVING MIN(open) > 100;