-- ==================================================
-- File: 01_basic_select_queries.sql
-- Description: Basic SQL SELECT statements practice
-- Author: Sameera
-- =====================================================
-- =====================================================
-- BASIC SELECT QUERIES
-- =====================================================
-- Select all columns from Employees table
SELECT *
FROM Employees;


-- Select only last name column
SELECT last_name
FROM Employees;


-- Select multiple columns
SELECT last_name, first_name, id
FROM Employees;


-- Rename columns using AS keyword
SELECT last_name AS 'Last Name',
       first_name AS 'First Name',
       id
FROM Employees;

-- Concatenation
SELECT first_name || ' ' || last_name AS full_name
FROM Employees;

-- Arithmetic operations
SELECT first_name, vacation_taken,
       vacation_taken * 8 AS vacation_hours
FROM Employees;

-- DISTINCT
SELECT DISTINCT department
FROM Employees;

-- Column with static value
SELECT first_name, last_name,
       'Active' AS status
FROM Employees;

-- Total row count
SELECT COUNT(*) AS total_employees
FROM Employees;
