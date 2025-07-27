# Write your MySQL query statement below
select 
 s.name Customers
from Customers as s
LEFT JOIN Orders as o
    on s.id = o.customerID
WHERE o.customerId  IS NULL;