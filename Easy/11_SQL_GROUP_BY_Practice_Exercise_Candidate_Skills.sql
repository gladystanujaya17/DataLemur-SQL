--SQL GROUP BY Practice Exercise: Candidate Skills [LinkedIn SQL Interview Question]
SELECT skill, COUNT(candidate_id) 
FROM candidates
GROUP BY skill
ORDER BY COUNT(candidate_id) DESC;