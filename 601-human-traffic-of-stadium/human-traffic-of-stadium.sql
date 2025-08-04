# Write your MySQL query statement below
WIth TABLE1 AS 
    (SELECT A.id as AID,A.visit_date AS AV,A.people AS AP,
            B.id as BID,B.visit_date AS BV,B.people AS BP,
            C.id AS CID,C.visit_date AS CV,C.people AS CP
    FROM Stadium AS A
    JOIN Stadium AS B
        ON A.id + 1= B.id AND B.people>= 100 AND A.people >= 100 
    JOIN Stadium AS C
        ON B.id + 1= C.id AND C.people>=100 AND B.people >= 100)
SELECT AID AS id,AV AS visit_date,AP AS people
FROM Table1
UNION
SELECT BID AS id,BV AS visit_date,BP AS people
FROM Table1
UNION 
SELECT CID AS id,CV AS visit_date,CP AS people
FROM Table1
ORDER BY id;