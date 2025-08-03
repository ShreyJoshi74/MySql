# Write your MySQL query statement below
SELECT A.project_id,
    ROUND(AVG(B.experience_years),2) as average_years
FROM Employee as B
JOIN Project AS A
    ON B.employee_id = A.employee_id 
WHERE A.project_id IS NOT NULL 
GROUP BY A.project_id
ORDER BY A.project_id;