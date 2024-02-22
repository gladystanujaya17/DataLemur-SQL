--Compressed Mean [Alibaba SQL Interview Question]

--First Solution
SELECT
  ROUND(CAST(SUM(item_count * order_occurrences) / SUM(order_occurrences) AS NUMERIC), 1) AS result
FROM items_per_order;

--Second Solution
SELECT
  ROUND(SUM(item_count::DECIMAL * order_occurrences) / SUM(order_occurrences), 1) AS result
FROM items_per_order;