# Write your MySQL query statement below
SELECT A.student_id student_id,
    A.student_name student_name,
    B.subject_name subject_name,
    COUNT(
        C.subject_name
    )  attended_exams
FROM Students AS A
CROSS JOIN Subjects AS B
LEFT JOIN Examinations AS C
    ON A.student_id = C.student_id
    AND B.subject_name = C.subject_name
GROUP BY 1,3
ORDER BY A.student_id,B.subject_name;
    