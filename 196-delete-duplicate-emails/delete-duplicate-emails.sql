# Write your MySQL query statement below
DELETE p1
FROM Person p1
JOIN Person p2
    ON p1.id > p2.id AND p1.email = p2.email;