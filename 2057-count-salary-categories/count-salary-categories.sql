# Write your MySQL query statement below
SELECT 
    "Low Salary" AS category,
    COUNT(
        CASE
        WHEN income < 20000 THen 1
        ELSE NUll
        END
    )AS accounts_count
FROM Accounts
UNION
SELECT 
    "Average Salary" AS category,
    COUNT(
        CASE
        WHEN income >= 20000 AND income<= 50000 THen 1
        ELSE NUll
        END
    )AS accounts_count
FROM Accounts
UNION
SELECT 
    "High Salary" AS category,
    COUNT(
        CASE
        WHEN income> 50000 THen 1
        ELSE NUll
        END
    )AS accounts_count
FROM Accounts;