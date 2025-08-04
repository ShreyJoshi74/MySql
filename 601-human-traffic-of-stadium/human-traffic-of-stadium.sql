# Write your MySQL query statement below
WITH cte AS(
    select *
    FROM Stadium
    WHERE people >= 100
),
filtered AS(
    select *,id-ROW_NUMBER() OVER(ORDER BY id) AS grp
    FROM cte
),
grouped AS(
    select grp
    FROM filtered
    GROUP BY grp
    HAVING COUNT(*) >= 3
)
SELECT id,visit_date,people
FROM filtered
WHERE grp in (SELECT grp FROM grouped);