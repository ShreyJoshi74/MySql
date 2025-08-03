# Write your MySQL query statement below
WITH Table1 AS (
select DISTINCT user_id,activity_date
FROM Activity
)
SELECT activity_date `day`,count(user_id) as active_users
FROM Table1

WHERE activity_date > DATE_SUB('2019-07-27',INTERVAL 30 DAY) and activity_date <= '2019-07-27'
GROUP BY activity_date;