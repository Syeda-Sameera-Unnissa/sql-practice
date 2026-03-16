-- ==================================================
-- File: 02_filtering_queries.sql
-- Description: SQL queries demonstrating filtering using WHERE, LIKE, AND, OR, and LIMIT
-- Author: Sameera
-- ==================================================

-- Employees from Marketing department
SELECT *
FROM Employees
WHERE department = 'Marketing';

-- Employees with tshirt size L
SELECT *
FROM Employees
WHERE tshirt_size = 'L';

-- Employees with more than 9 vacations
SELECT *
FROM Employees
WHERE vacation_taken > 9;

-- Employees with less than 9 vacations
SELECT *
FROM Employees
WHERE vacation_taken < 9;

-- Employees not equal to 9 vacations
SELECT *
FROM Employees
WHERE vacation_taken <> 9;

-- Pattern matching: last name starts with T
SELECT *
FROM Employees
WHERE last_name LIKE 'T%';

-- Pattern matching: letter t anywhere
SELECT *
FROM Employees
WHERE last_name LIKE '%t%';

-- Pattern matching: second letter a
SELECT *
FROM Employees
WHERE last_name LIKE '_a%';

-- Multiple conditions
SELECT *
FROM Employees
WHERE department = 'Marketing'
AND tshirt_size = 'L';

-- OR condition
SELECT *
FROM Employees
WHERE department = 'Sales'
OR department = 'Marketing';

-- Exclude specific name
SELECT *
FROM Employees
WHERE first_name <> 'Riki';

-- Limit results
SELECT *
FROM Employees
LIMIT 10;

-- Limit with offset
SELECT *
FROM Employees
LIMIT 1 OFFSET 10;
