# Write your MySQL query statement below
WITH Table1 AS (
    SELECT product_id,
    `year`,
    quantity,
    price,
    MIN(`year`) OVER(Partition BY product_id) AS first_year
FROM Sales
)
SELECT product_id,first_year,quantity,price
FROM Table1
WHERE first_year = `year`;
