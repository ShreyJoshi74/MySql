# Write your MySQL query statement below
WITH Table1 AS (SELECT 
    employee_id,
    department_id,
    primary_flag,
    COUNT(department_id) OVER(Partition BY employee_id) as cnt
FROM Employee)
SELECT
    employee_id,
    department_id
FROM Table1
WHERE cnt > 1 AND primary_flag = 'Y' OR cnt = 1 ;