# Write your MySQL query statement below
with Table1(lft,rgt) as (
select requester_id,accepter_id
FROM RequestAccepted
UNION
select accepter_id,requester_id
FROM RequestAccepted
),

 table2 as(
   select lft,rgt , count(*) as cnt
    FROM Table1 
    GROUP by lft
    ORDER BY cnt DESC
 )
 select lft as id ,cnt as num
 FROM table2
 LIMIT 1;
    

