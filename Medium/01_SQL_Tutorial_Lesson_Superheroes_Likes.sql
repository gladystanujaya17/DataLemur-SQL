--SQL Tutorial Lesson: Superheroes' Likes [Marvel's Avengers SQL Interview Question]
SELECT 
  actor,
  character, 
  platform,
  avg_likes,
  CASE
    WHEN avg_likes >= 15000 THEN 'Super Likes'
    WHEN avg_likes BETWEEN 5000 AND 14999 THEN 'Good Likes'
    WHEN avg_likes < 5000 THEN 'Low Likes'
  END AS corresponding_likes
FROM marvel_avengers
ORDER BY avg_likes DESC, corresponding_likes DESC;