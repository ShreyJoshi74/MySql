# Write your MySQL query statement below
SELECT A.product_id, B.product_name
FROM Sales A
LEFT JOIN Product B
    ON A.product_id = B.product_id
GROUP BY A.product_id,B.product_name
HAVING
    MIN(A.sale_date) BETWEEN '2019-01-01' AND '2019-03-31'
    AND  MAX(A.sale_date) BETWEEN '2019-01-01' AND '2019-03-31';