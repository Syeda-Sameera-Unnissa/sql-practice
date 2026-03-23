-- ==================================================
-- File: 02_filtering_queries.sql
-- Description: SQL queries demonstrating filtering using WHERE, LIKE, AND, OR, and LIMIT
-- Author: Sameera
-- ==================================================

-- Select first and last name for employee with ID = 10
SELECT first_name, last_name
FROM Employees
WHERE id = 10;

-- Filter employees belonging to Service department
SELECT *
FROM Employees
WHERE department = 'Service';


-- Filter employees from Marketing department
SELECT *
FROM Employees
WHERE department = 'Marketing';


-- Case sensitive comparison
SELECT *
FROM Employees
WHERE department = 'Sales';


-- Case-insensitive search using LOWER function
SELECT *
FROM Employees
WHERE LOWER(department) = 'sales';


-- Filter employees with tshirt size L
SELECT last_name, first_name, tshirt_size
FROM Employees
WHERE tshirt_size = 'L';


-- Employees who took exactly 9 vacations
SELECT *
FROM Employees
WHERE vacation_taken = 9;


-- Employees who took more than 9 vacations
SELECT *
FROM Employees
WHERE vacation_taken > 9;


-- Employees who took 9 or more vacations
SELECT *
FROM Employees
WHERE vacation_taken >= 9;


-- Employees who took less than 9 vacations
SELECT *
FROM Employees
WHERE vacation_taken < 9;


-- Employees who did not take exactly 9 vacations
SELECT *
FROM Employees
WHERE vacation_taken <> 9;


-- Pattern matching: last name starting with T
SELECT *
FROM Employees
WHERE last_name LIKE 'T%';


-- Pattern matching: last name containing letter T
SELECT *
FROM Employees
WHERE last_name LIKE '%t%';


-- Pattern matching: second letter is 'a'
SELECT *
FROM Employees
WHERE last_name LIKE '_a%';


-- Employees not in Sales department
SELECT first_name, last_name, department
FROM Employees
WHERE department != 'Sales';


-- Employees not in Sales and tshirt size not L
SELECT first_name, last_name, department, tshirt_size
FROM Employees
WHERE department != 'Sales'
AND tshirt_size != 'L';


-- Employees in Sales OR Marketing department
SELECT first_name, last_name, department
FROM Employees
WHERE department = 'Sales'
OR department = 'Marketing';


-- Exclude employees named Riki
SELECT first_name, last_name
FROM Employees
WHERE first_name <> 'Riki';

-- ======================================
-- RESULT CONTROL
-- ======================================

-- Limit results to first 10 rows
SELECT *
FROM Employees
LIMIT 10;

-- Limit with offset (pagination)
SELECT *
FROM Employees
LIMIT 5 OFFSET 10;
