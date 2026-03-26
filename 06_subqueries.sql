-- =====================================================
-- SUBQUERIES
-- Author: Sameera
-- Description: Queries nested inside another query
-- =====================================================

-- Employee with highest vacation taken
SELECT *
FROM Employees
WHERE vacation_taken =
      (SELECT MAX(vacation_taken) FROM Employees);


-- Employees whose department is located in CA
SELECT *
FROM Employees
WHERE department =
      (SELECT name
       FROM Departments
       WHERE state = 'CA');


-- Employees working in departments located in OK
SELECT *
FROM Employees
WHERE department IN
      (SELECT name
       FROM Departments
       WHERE state = 'OK')
ORDER BY department;


-- Subquery in SELECT (scalar)
SELECT first_name, vacation_taken,
       (SELECT AVG(vacation_taken) FROM Employees) AS company_avg
FROM Employees;

-- Subquery in FROM (derived table)
SELECT dept_summary.department, dept_summary.avg_vacation
FROM (
    SELECT department,
           AVG(vacation_taken) AS avg_vacation
    FROM Employees
    GROUP BY department
) AS dept_summary
WHERE dept_summary.avg_vacation > 15;


-- EXISTS
SELECT e.first_name, e.last_name
FROM Employees e
WHERE EXISTS (
    SELECT 1
    FROM ComplianceTraining c
    WHERE c.employee_id = e.id
);


-- NOT EXISTS
SELECT e.first_name, e.last_name
FROM Employees e
WHERE NOT EXISTS (
    SELECT 1
    FROM ComplianceTraining c
    WHERE c.employee_id = e.id
);


-- Correlated subquery
SELECT e.first_name, e.department, e.vacation_taken
FROM Employees e
WHERE e.vacation_taken > (
    SELECT AVG(e2.vacation_taken)
    FROM Employees e2
    WHERE e2.department = e.department
);


-- IN with subquery
SELECT *
FROM Employees
WHERE department IN (
    SELECT name
    FROM Departments
    WHERE num_desks > 50
);


-- ======================================
-- SUBQUERY vs JOIN COMPARISON
-- ======================================

-- Using subquery
SELECT *
FROM Employees
WHERE department IN (
    SELECT name FROM Departments WHERE state = 'CA'
);

-- Same result using JOIN
SELECT e.*
FROM Employees e
JOIN Departments d
ON e.department = d.name
WHERE d.state = 'CA';
