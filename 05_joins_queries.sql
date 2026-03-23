-- =====================================================
-- JOINS
-- Author: Sameera
-- Description: Combining data from multiple tables
-- =====================================================

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
