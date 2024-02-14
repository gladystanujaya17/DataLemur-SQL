--Average Review Ratings [Amazon SQL Interview Question]
SELECT 
  EXTRACT(MONTH FROM submit_date) AS mth, 
  product_id AS product, 
  ROUND(AVG(stars), 2) AS avg_stars
FROM reviews
GROUP BY product_id, EXTRACT(MONTH FROM submit_date)
ORDER BY mth, product_id ASC;