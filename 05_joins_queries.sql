-- =====================================================
-- JOINS
-- Author: Sameera
-- Description: Combining data from multiple tables
-- =====================================================

-- INNER JOIN example
SELECT Employees.first_name,
       Employees.last_name,
       Departments.department_name
FROM Employees
INNER JOIN Departments
ON Employees.department_id = Departments.id;

-- LEFT JOIN example
SELECT Employees.first_name,
       Employees.last_name,
       Departments.department_name
FROM Employees
LEFT JOIN Departments
ON Employees.department_id = Departments.id;
