# Write your MySQL query statement below
SELECT 
    PATIENT_ID,
    patient_name,
    conditions
FROM Patients 
WHERE conditions like "DIAB1%"
        OR conditions like "% DIAB1%" ;