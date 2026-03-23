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
