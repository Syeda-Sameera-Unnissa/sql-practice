-- ======================================
-- AUTHOR: Sameera
-- REPOSITORY: sql-practice
-- FILE: 05_joins_queries.sql
-- TOPIC: SQL Joins
-- DESCRIPTION: Combining data from multiple tables using INNER, LEFT, RIGHT, FULL OUTER, SELF, and CROSS joins
-- ======================================

-- ======================================
-- JOIN QUERIES
-- ======================================

-- Join employees with departments using department name
SELECT e.first_name, e.last_name, e.department, d.state
FROM Employees e
JOIN Departments d
ON e.department = d.name;


-- Inner join example
SELECT e.first_name, e.last_name, d.name
FROM Employees e
INNER JOIN Departments d
ON e.id = d.office_manager_id;


-- Left join example
SELECT e.first_name, e.last_name, c.date_complete
FROM Employees e
LEFT JOIN ComplianceTraining c
ON e.id = c.employee_id;


-- Employees with department and training status
SELECT e.first_name, e.last_name, d.state, c.date_complete
FROM Employees e
LEFT JOIN Departments d
ON e.department = d.name
LEFT JOIN ComplianceTraining c
ON e.id = c.employee_id;


-- RIGHT JOIN
SELECT e.first_name, d.name
FROM Employees e
RIGHT JOIN Departments d
ON e.department = d.name;


-- FULL OUTER JOIN
SELECT e.first_name, d.name
FROM Employees e
FULL OUTER JOIN Departments d
ON e.department = d.name;


-- SELF JOIN 
SELECT e1.first_name AS employee,
       e2.first_name AS colleague
FROM Employees e1
JOIN Employees e2
ON e1.department = e2.department
AND e1.id <> e2.id;


-- CROSS JOIN
SELECT e.first_name, d.name
FROM Employees e
CROSS JOIN Departments d;


-- JOIN with aggregation
SELECT d.name,
       COUNT(e.id) AS employee_count
FROM Departments d
LEFT JOIN Employees e
ON d.name = e.department
GROUP BY d.name
ORDER BY employee_count DESC;


-- JOIN with filtering
SELECT e.first_name, e.last_name, d.state
FROM Employees e
JOIN Departments d
ON e.department = d.name
WHERE d.state = 'CA'
AND e.vacation_taken > 15;
