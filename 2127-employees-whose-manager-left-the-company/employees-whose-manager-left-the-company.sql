# Write your MySQL query statement below
SELECT employee_id
FROM Employees s
WHERE salary < 30000 AND Not EXISTs (select employee_id FROM Employees B WHERE s.manager_id = B.employee_id) AND manager_id is NOT NULL
ORDER BY employee_id;