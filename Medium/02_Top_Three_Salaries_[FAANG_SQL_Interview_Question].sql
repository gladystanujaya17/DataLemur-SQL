WITH ranked_salary AS (
  SELECT
    name,
    salary,
    department_id,
    DENSE_RANK() OVER(
      PARTITION BY department_id ORDER BY salary DESC) AS ranking
  FROM employee
)

SELECT d.department_name, rs.name, rs.salary
FROM ranked_salary rs
JOIN department d ON d.department_id = rs.department_id
WHERE rs.ranking <= 3
ORDER BY rs.department_id, rs.salary DESC, rs.name ASC; 