-- =====================================================
-- SUBQUERIES
-- Author: Sameera
-- Description: Queries nested inside another query
-- =====================================================

-- Retrieve employees whose vacation taken is above average
SELECT first_name, last_name
FROM Employees
WHERE vacation_taken >
      (SELECT AVG(vacation_taken)
       FROM Employees);

-- Retrieve employees working in the department with maximum desks
SELECT *
FROM Employees
WHERE department_id =
      (SELECT id
       FROM Departments
       WHERE num_desks =
             (SELECT MAX(num_desks)
              FROM Departments));
