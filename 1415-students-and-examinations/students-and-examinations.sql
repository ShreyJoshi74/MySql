# Write your MySQL query statement below
 SELECt A.student_id,
        A.student_name,
        B.subject_name,
        SUM(
            CASE
                WHEN C.subject_name IS NOT NULL THEN 1
                ELSE 0
            END
        ) AS attended_exams
FROM Students A
CROSS JOIN Subjects B
LEFT JOIN Examinations C
    ON A.student_id = C.student_id And B.subject_name = C.subject_name
GROUP BY 1,3
ORDER BY 1,2,3;