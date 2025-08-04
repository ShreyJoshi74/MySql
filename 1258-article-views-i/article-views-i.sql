# Write your MySQL query statement below
WITH Table1 AS (select article_id , author_id,viewer_id
FROM Views
WHERE author_id = viewer_id)
SELECT Distinct author_id as id
FROM Table1
Order By id ASC;