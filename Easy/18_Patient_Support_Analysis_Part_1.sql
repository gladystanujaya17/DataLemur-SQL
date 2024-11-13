--Patient Support Analysis (Part 1)
WITH policy_holder_count AS(
  SELECT
    policy_holder_id,
    COUNT(case_id) AS call_count
  FROM callers
  GROUP BY policy_holder_id
  HAVING COUNT(case_id) >= 3
)

SELECT COUNT(policy_holder_id)
FROM policy_holder_count

-- Buat CTE dulu sebagai tabel cadangan untuk filter jumlah case_id yang 
-- lebih dari 3

-- Setelah itu, baru hitung total policy_holder_id 