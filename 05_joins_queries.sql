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
