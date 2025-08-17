# Write your MySQL query statement below
WITH Table1 AS(
    SELECT 
        
        visit_id,
        MAX(amount) AS amount

    FROM Transactions
    GROUP BY visit_id
)



SELECT 
    A.customer_id,
    COUNT(*) AS count_no_trans
FROM Visits A
LEFT JOIN Table1 B
    ON A.visit_id = B.visit_id
WHERE B.amount is NULL
GROUP BY customer_id
;