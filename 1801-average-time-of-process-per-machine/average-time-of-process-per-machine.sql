# Write your MySQL query statement below
WITH Table1 AS (SELECT A.machine_id,
    A.process_id,
    B.timestamp - A.timestamp AS `Time`
FROM Activity A
JOIN Activity B
    ON A.machine_id = B.machine_id 
    AND A.process_id = B.process_id
    AND A.activity_type = "start"
    AND B.activity_type = "end"
)
SELECT machine_id,
    ROUND(AVG(`Time`),3) AS processing_time
FROM Table1
GROUP BY 1;

