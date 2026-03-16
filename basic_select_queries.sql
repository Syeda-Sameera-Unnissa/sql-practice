-- ==================================================
-- File: basic_select_queries.sql
-- Description: Basic SQL SELECT statements practice
-- Author: Sameera
-- =====================================================
-- =====================================================
-- BASIC SELECT QUERIES
-- =====================================================

-- Select all columns from Employees table
SELECT * FROM Employees;

-- Select specific column
SELECT last_name
FROM Employees;

-- Select multiple columns
SELECT last_name, first_name, id
FROM Employees;

-- Using column aliases
SELECT last_name AS "Last Name",
       first_name AS "First Name",
       id AS "Employee ID"
FROM Employees;
