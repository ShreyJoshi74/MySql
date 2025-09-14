# Write your MySQL query statement below
With Table1 AS(select 
    num,
    count(*) as cnt
FROM MyNumbers
GROUP BY num
HAVING cnt = 1
ORDER BY num DESC)
SELECT 
    MAX(num) AS num

FROM Table1
;