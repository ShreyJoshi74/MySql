# Write your MySQL query statement below
select 
player_id,
MIN(event_date) AS first_login
FROM Activity
GROUP BY player_id;