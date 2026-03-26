-- ======================================
-- AUTHOR: Sameera
-- REPOSITORY: sql-practice
-- FILE: 04_group_by_queries.sql
-- TOPIC: GROUP BY and HAVING Clauses
-- DESCRIPTION: Grouping data with GROUP BY, filtering groups with HAVING, and sorting with ORDER BY
-- ======================================

-- ======================================
-- GROUP BY QUERIES
-- ======================================

-- Count employees per department
SELECT department, COUNT(department)
FROM Employees
GROUP BY department;


-- Count employees per department and sort
SELECT department, COUNT(department)
FROM Employees
GROUP BY department
ORDER BY department;


-- Departments with fewer than 10 employees
SELECT department, COUNT(department)
FROM Employees
GROUP BY department
HAVING COUNT(department) < 10
ORDER BY department DESC;


-- Alias column name for count
SELECT department,
       COUNT(department) AS NumberOfEmployees
FROM Employees
GROUP BY department
HAVING NumberOfEmployees < 10
ORDER BY department;


-- Count employees by tshirt size
SELECT tshirt_size,
       COUNT(*) AS Total
FROM Employees
GROUP BY tshirt_size
HAVING tshirt_size IS NOT NULL;
