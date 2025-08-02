# Write your MySQL query statement below
SELECT B.product_name,A.`year` as `year` , A.price AS price 
FROM Sales A
LEFT JOIN Product B
    ON A.product_id = B.product_id;
