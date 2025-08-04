# Write your MySQL query statement below
WITH Table1(buyer_id,join_date,in_date) AS (select A.buyer_id AS buyer_id,
     C.join_date AS join_date,
     A.order_date AS in_date
FROM Orders A
LEFT JOIN Items B
    On A.item_id = B.item_id
LEFT JOIN Users C
    On A.buyer_id = C.user_id),
Table2(buyer_id,join_id,cnt) AS 
(SELECT  buyer_id,
        join_date,
CASE 
    WHEN COUNT(*) > 0 THEN COUNT(*)
    ELSE 0
END AS orders_in_2019
FROM Table1
WHERE YEAR(in_date) = 2019
GROUP BY buyer_id
)
SELECT A.user_id AS buyer_id,
        A.join_date,
CASE
    WHEN cnt is NULL THEN 0
    else cnt
END AS orders_in_2019
FROM Users A
LEFT JOIN Table2 B
    ON A.user_id = B.buyer_id;
