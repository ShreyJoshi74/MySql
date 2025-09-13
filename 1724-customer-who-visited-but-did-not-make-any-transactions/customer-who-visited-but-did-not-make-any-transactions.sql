# Write your MySQL query statement below
select a.customer_id,
   COUNT(*) AS count_no_trans
FROM Visits A
LEFT JOIN Transactions B
    ON A.visit_id = B.visit_id
WHERE B.visit_id is NULL
GROUP BY 1;
