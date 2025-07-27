# Write your MySQL query statement below


select DISTINCT li.num AS ConsecutiveNums
from logs li
JOIN (select l1.num,l1.id
from Logs l1
JOIN Logs l2
    ON l1.id = l2.id+1 AND l1.num = l2.num) AS lf
    On li.id = lf.id+1 AND li.num = lf.num;
 
