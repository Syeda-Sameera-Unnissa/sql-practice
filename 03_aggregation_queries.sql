-- ======================================
-- AUTHOR: Sameera
-- REPOSITORY: sql-practice
-- FILE: 03_aggregation_queries.sql
-- TOPIC: Aggregation Functions
-- DESCRIPTION: SQL aggregation functions including COUNT, SUM, AVG, MIN, MAX, ROUND, and conditional counting
-- ======================================

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


-- Multiple aggregations in one query
SELECT COUNT(*) AS total_employees,
       AVG(vacation_taken) AS avg_vacation,
       MAX(vacation_taken) AS max_vacation,
       MIN(vacation_taken) AS min_vacation,
       SUM(vacation_taken) AS total_vacation
FROM Employees;


-- COUNT with condition
SELECT COUNT(CASE WHEN vacation_taken > 20
             THEN 1 END) AS high_vacation_count
FROM Employees;


-- ROUND with AVG
SELECT ROUND(AVG(vacation_taken), 2) AS avg_vacation
FROM Employees;


-- COUNT(*) vs COUNT(column)
SELECT COUNT(*) AS all_rows,
       COUNT(tshirt_size) AS non_null_sizes
FROM Employees;
