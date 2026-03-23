-- =====================================================
-- JOINS
-- Author: Sameera
-- Description: Combining data from multiple tables
-- =====================================================

-- Join employees with departments using department name
SELECT first_name, last_name, department, state
FROM Employees
JOIN Departments
ON Employees.department = Departments.name;


-- Inner join example
SELECT first_name, last_name, name
FROM Employees
INNER JOIN Departments
ON Employees.id = Departments.office_manager_id;


-- Left join example
SELECT first_name, last_name, date_complete
FROM Employees
LEFT JOIN ComplianceTraining
ON Employees.id = ComplianceTraining.employee_id;


-- Employees with department and training status
SELECT e.first_name, e.last_name, d.state, c.date_complete
FROM Employees e
LEFT JOIN Departments d
ON e.department = d.name
LEFT JOIN ComplianceTraining c
ON e.id = c.employee_id;
