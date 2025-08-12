# Write your MySQL query statement below
select A.employee_id,A.name,count(*) reports_count,ROUND(avg(b.age),0) AS average_age
FROM EMPLOYEES A
LEFT JOIN EMPLOYEES B
    ON A.employee_id = B.reports_to 
GROUP BY A.employee_id,A.name
HAVING average_age IS NOT NULL
ORDER BY 1;