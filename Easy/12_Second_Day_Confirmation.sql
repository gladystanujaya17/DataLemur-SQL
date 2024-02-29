--Second Day Confirmation [TikTok SQL Interview Question]
SELECT e.user_id 
FROM emails e
JOIN texts t ON e.email_id = t.email_id
WHERE 
  signup_action = 'Confirmed' AND 
  action_date = signup_date + INTERVAL '1 day';