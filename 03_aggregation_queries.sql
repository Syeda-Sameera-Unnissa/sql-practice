-- ==================================================
-- File: 03_aggregation_queries.sql
-- Description: SQL aggregation functions such as COUNT, SUM, AVG, MIN, and MAX
-- Author: Sameera
-- ==================================================
-- ======================================
-- AGGREGATION FUNCTIONS
-- ======================================

-- Count employees with more than 20 vacations
SELECT COUNT(id)
FROM Employees
WHERE vacation_taken > 20;

-- Total desks in departments
SELECT SUM(num_desks)
FROM Departments;

-- Average vacations taken
SELECT AVG(vacation_taken)
FROM Employees;

-- Minimum vacations taken
SELECT MIN(vacation_taken)
FROM Employees;

-- Maximum vacations taken
SELECT MAX(vacation_taken)
FROM Employees;

-- Distinct tshirt sizes
SELECT DISTINCT tshirt_size
FROM Employees;

-- Distinct tshirt sizes excluding NULL
SELECT DISTINCT tshirt_size
FROM Employees
WHERE tshirt_size IS NOT NULL;
