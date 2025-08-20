# Write your MySQL query statement below
SELECT 
    A.product_name,
    SUM(unit) AS unit
FROM Products A
LEFT JOIN Orders B
    ON A.product_id = B.product_id
WHERE SUBSTRING(B.order_date,1,7) = "2020-02"
GROUP BY A.product_id
HAVING SUM(unit) >= 100;