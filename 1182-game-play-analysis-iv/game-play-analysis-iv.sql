WITH Table1 AS (
    SELECT 
        player_id,
        event_date,
        ROW_NUMBER() OVER(PARTITION BY player_id ORDER BY event_date) AS rnum,
        LEAD(event_date) OVER(PARTITION BY player_id ORDER BY event_date) AS next_date
    FROM Activity
)
SELECT ROUND(COUNT(DISTINCT player_id) / (SELECT COUNT(DISTINCT player_id) FROM Activity),2) AS fraction
FROM Table1
WHERE rnum = 1 
  AND DATE_ADD(event_date, INTERVAL 1 DAY) = next_date;
