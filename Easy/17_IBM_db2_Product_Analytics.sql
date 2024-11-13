--IBM db2 Product Analytics
WITH query_count AS ( 
  SELECT 
    COALESCE(COUNT(DISTINCT q.query_id), 0) AS unique_queries,
    e.employee_id
  FROM queries q
  RIGHT JOIN employees e ON q.employee_id = e.employee_id 
  AND query_starttime >= '2023-07-01T00:00:00Z' 
  AND query_starttime < '2023-10-01T00:00:00Z' 
  GROUP BY e.employee_id
)

SELECT unique_queries, COUNT(employee_id) AS employee_count
FROM query_count
GROUP BY unique_queries
ORDER BY unique_queries ASC

-- Pakai Right Join agar semua data employee tercatat, termasuk yang tidak
-- melakukan query sama sekali

-- COALESCE() bertujuan untuk set count query dari NULL menjadi 0 untuk employee
-- yang tidak melakukan query sama sekali 