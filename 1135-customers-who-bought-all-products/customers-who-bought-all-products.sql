# Write your MySQL query statement below
WITH table1(customer_id,product_key) AS (SELECT DISTINCT A.customer_id,
    A.product_key
    FROM Customer A
)

    select A.customer_id
        
    FROM table1 A
    LEFT JOIN Product B
        ON A.product_key = B.product_key
    GROUP BY A.customer_id
    HAVING count(B.product_key) = (select count(*) FROM Product);

