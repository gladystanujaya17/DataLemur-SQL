--Pharmacy Analytics (Part 2) [CVS Health SQL Interview Question]
SELECT 
  manufacturer, 
  COUNT(drug) AS drug_count,
  ABS(SUM(total_sales - cogs)) AS net_value
FROM pharmacy_sales
WHERE (total_sales - cogs) <= 0
GROUP BY manufacturer
ORDER BY drug_count DESC, manufacturer ASC;