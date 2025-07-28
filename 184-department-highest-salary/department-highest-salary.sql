# Write your MySQL query statement below

WITH temp1 as (
select d.id,d.name,MAX(salary) as max_salary
FROM Employee e
LEFT JOIN Department d
    ON e.departmentId = d.id
GROUP BY d.id
)
select a.name Department,emp.name as Employee,salary as Salary
FROM Employee emp
LEFT JOIN temp1 a
    ON a.id = emp.departmentId
WHERE emp.salary = a.max_salary ;

