# Write your MySQL query statement below
SELECT A.name,
    B.unique_id
FROM Employees A
LEFT JOIN EmployeeUNI B
    ON A.id = B.id
;