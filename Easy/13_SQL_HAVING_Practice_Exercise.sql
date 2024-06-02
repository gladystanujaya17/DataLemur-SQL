--SQL HAVING Practice Exercise [SQL Interview Question]
SELECT candidate_id
FROM candidates
GROUP BY candidate_id
HAVING COUNT(candidate_id) > 2;