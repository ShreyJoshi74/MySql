# Write your MySQL query statement below
SELECT actor_id,
    director_id
FROM ActorDirector
GROUP by actor_id,director_id
HAVING count(timestamp) >= 3;