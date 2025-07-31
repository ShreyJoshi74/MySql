# Write your MySQL query statement below
WITH TABLE1(ME,PAPA,BACHA) as (
select a.id as NODE,MIN(a.p_id) AS PARENT,MAX(b.id) as CHILDREN
FROM TREE a
LEFT JOIN TREE b
    ON a.id = b.p_id
GROUP BY a.id
)
SELECT ME AS id,
CASE
    WHEN PAPA IS NULL THEN "Root"
    WHEN BACHA IS NULL THEN "Leaf"
    ELSE "Inner"
END type
FROM TABLE1;