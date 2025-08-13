# Write your MySQL query statement below
WITH Table1 AS (SELECT
    turn ,
    person_name as ID,
    person_name as Name,
    weight,
    SUM(weight) OVER(ORDER BY turn) as total_sum
FROM Queue),
Table2 AS (SELECT Name,
    total_sum
    ,lead(total_sum) OVER(ORDER BY total_sum) AS nextTotal
FROM Table1)
SELECT Name as person_name
FROM Table2
WHERE total_sum <= 1000 AND nextTotal > 1000 OR nextTotal IS NULL
LIMIT 1

;