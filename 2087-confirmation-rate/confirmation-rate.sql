# Write your MySQL query statement below
SELECT
    A.user_id,
    CASE
        WHEN B.user_id IS NULL THEN 0.00
        ELSE ROUND(count(CASE WHEN action = "confirmed" THEN 1 ELSE NULL END)/COUNT(action),2)
    END AS confirmation_rate
FROM Signups AS A
LEFT JOIN Confirmations AS B
    ON A.user_id = B.user_id
GROUP BY 1;
