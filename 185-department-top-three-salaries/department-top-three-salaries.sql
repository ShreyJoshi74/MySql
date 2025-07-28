# Write your MySQL query statement below
WITH TEMP1 AS(
    select d.name AS Department,
    emp.name As Employee,
    emp.salary AS Salary,
    DENSE_RANK() OVER( Partition by d.name Order By emp.salary DESC) AS dense
    
    FROM Employee emp
    LEFT JOIN Department d
        On emp.departmentId = d.id
)
SELECT Department,
    Employee,
    Salary
FROM TEMP1
WHERE dense < 4
ORDER BY SALARY;
