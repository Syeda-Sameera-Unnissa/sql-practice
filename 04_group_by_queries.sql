-- ==================================================
-- File: 04_group_by_queries.sql
-- Description: SQL GROUP BY, ORDER BY and HAVING clause examples
-- Author: Sameera
-- ==================================================
-- ======================================
-- GROUP BY QUERIES
-- ======================================

-- Count employees per department
SELECT department, COUNT(department)
FROM Employees
GROUP BY department;

-- Count employees per department sorted
SELECT department, COUNT(department)
FROM Employees
GROUP BY department
ORDER BY department;

-- Departments with less than 10 employees
SELECT department, COUNT(department)
FROM Employees
GROUP BY department
HAVING COUNT(department) < 10
ORDER BY department DESC;

-- Count employees by tshirt size
SELECT tshirt_size, COUNT(*)
FROM Employees
GROUP BY tshirt_size;
