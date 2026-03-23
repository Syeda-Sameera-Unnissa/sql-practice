-- ==================================================
-- File: 03_aggregation_queries.sql
-- Description: SQL aggregation functions such as COUNT, SUM, AVG, MIN, and MAX
-- Author: Sameera
-- ==================================================
-- ======================================
-- AGGREGATION FUNCTIONS
-- ======================================

-- Calculate total number of desks across departments
SELECT SUM(num_desks)
FROM Departments;


-- Count employees with more than 20 vacations
SELECT COUNT(id)
FROM Employees
WHERE vacation_taken > 20;


-- Calculate average vacations taken by employees
SELECT AVG(vacation_taken)
FROM Employees;


-- Average vacations for Marketing department
SELECT AVG(vacation_taken)
FROM Employees
WHERE department = 'Marketing';


-- Minimum vacations taken
SELECT MIN(vacation_taken)
FROM Employees;


-- Maximum vacations taken
SELECT MAX(vacation_taken)
FROM Employees;


-- Get unique tshirt sizes
SELECT DISTINCT tshirt_size
FROM Employees;


-- Get unique tshirt sizes excluding NULL
SELECT DISTINCT tshirt_size
FROM Employees
WHERE tshirt_size IS NOT NULL;
