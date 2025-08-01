# Write your MySQL query statement below
SELECT(select num
FROM MyNumbers
GROUP by num
HAVING count(*) = 1
ORDER BY num DESC
LIMIT 1) AS num;