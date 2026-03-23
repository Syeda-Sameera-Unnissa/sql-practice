-- ======================================
-- AUTHOR: Sameera
-- REPOSITORY: sql-practice
-- FILE: 07_practice_queries_other_schema.sql
-- TOPIC: SQL Practice with Alternate Schema (quizdata)
-- DESCRIPTION: Applying SQL concepts on a different dataset to demonstrate adaptability
-- ======================================

-- ======================================
-- Database Schema: quizdata
-- ======================================

-- Table: people
-- Columns:
-- id
-- number
-- first_name
-- last_name
-- city
-- state_code
-- shirt_or_hat
-- quiz_points
-- team
-- signup
-- age
-- company

-- Table: states
-- Columns:
-- state_name
-- state_abbrev
-- region
-- division

-- Relationship:
-- people.state_code = states.state_abbrev


-- ======================================
-- BASIC QUERIES
-- ======================================

-- Get all records
SELECT *
FROM people;

-- Get specific columns
SELECT first_name, last_name
FROM people;


-- ======================================
-- FILTERING
-- ======================================

-- People from California
SELECT *
FROM people
WHERE state_code = 'CA';

-- People older than 25
SELECT *
FROM people
WHERE age > 25;

-- People between age 20 and 30
SELECT *
FROM people
WHERE age BETWEEN 20 AND 30;

-- People in multiple states
SELECT *
FROM people
WHERE state_code IN ('CA', 'CO', 'TX');

-- Exclude specific team
SELECT *
FROM people
WHERE team NOT IN ('Angry Ants');

-- Names starting with 'J'
SELECT *
FROM people
WHERE first_name LIKE 'J%';

-- Names containing 'on'
SELECT *
FROM people
WHERE first_name LIKE '%on%';

-- Case insensitive search
SELECT *
FROM people
WHERE LOWER(team) = 'sales';


-- ======================================
-- CONDITIONAL FILTERING
-- ======================================

-- Multiple conditions using AND
SELECT first_name, last_name, team
FROM people
WHERE state_code = 'CA'
AND shirt_or_hat = 'shirt'
AND team <> 'Angry Ants';

-- Using OR
SELECT *
FROM people
WHERE state_code = 'CA'
OR state_code = 'CO';


-- ======================================
-- SORTING & RESULT CONTROL
-- ======================================

-- Sort by first name
SELECT first_name, last_name
FROM people
ORDER BY first_name;

-- Sort descending
SELECT first_name, last_name
FROM people
ORDER BY first_name DESC;

-- Top 5 quiz scores
SELECT first_name, quiz_points
FROM people
ORDER BY quiz_points DESC
LIMIT 5;

-- Pagination
SELECT *
FROM people
LIMIT 5 OFFSET 10;


-- ======================================
-- JOINS
-- ======================================

-- INNER JOIN (only matching records)
SELECT p.first_name, p.last_name, s.state_name
FROM people p
JOIN states s
ON p.state_code = s.state_abbrev;

-- LEFT JOIN (all people + matching states)
SELECT p.first_name, p.last_name, s.state_name
FROM people p
LEFT JOIN states s
ON p.state_code = s.state_abbrev;

-- RIGHT JOIN (all states + matching people)
SELECT p.first_name, p.last_name, s.state_name
FROM people p
RIGHT JOIN states s
ON p.state_code = s.state_abbrev;

-- FULL OUTER JOIN (all records from both tables)
SELECT p.first_name, p.last_name, s.state_name
FROM people p
FULL OUTER JOIN states s
ON p.state_code = s.state_abbrev;

-- Join with additional columns
SELECT p.first_name, p.last_name, s.region, s.division
FROM people p
JOIN states s
ON p.state_code = s.state_abbrev;


-- ======================================
-- AGGREGATION
-- ======================================

-- Count people per state
SELECT state_code, COUNT(*) AS total_people
FROM people
GROUP BY state_code;

-- Count people per team
SELECT team, COUNT(*) AS total
FROM people
GROUP BY team;

-- Average quiz points per team
SELECT team, AVG(quiz_points) AS avg_points
FROM people
GROUP BY team;

-- Average age per state
SELECT state_code, AVG(age) AS avg_age
FROM people
GROUP BY state_code;

-- Total quiz points per team
SELECT team, SUM(quiz_points) AS total_points
FROM people
GROUP BY team;

-- Max and Min quiz points
SELECT MAX(quiz_points) AS max_points,
       MIN(quiz_points) AS min_points
FROM people;


-- ======================================
-- GROUPING WITH CONDITIONS
-- ======================================

-- States having more than 5 people
SELECT state_code, COUNT(*) AS total
FROM people
GROUP BY state_code
HAVING COUNT(*) > 5;


-- ======================================
-- DISTINCT & FUNCTIONS
-- ======================================

-- Unique first names
SELECT DISTINCT first_name
FROM people;

-- Length of names
SELECT first_name, LENGTH(first_name) AS name_length
FROM people;

-- Convert case
SELECT LOWER(first_name) AS lower_name,
       UPPER(last_name) AS upper_name
FROM people;


-- ======================================
-- STRING OPERATIONS
-- ======================================

-- Extract substring
SELECT first_name, SUBSTR(last_name, 1, 5) AS short_last_name
FROM people;

-- Replace characters
SELECT REPLACE(first_name, 'a', '-') AS modified_name
FROM people;


-- ======================================
-- SUBQUERIES
-- ======================================

-- People with highest quiz points
SELECT first_name, last_name, quiz_points
FROM people
WHERE quiz_points = (
    SELECT MAX(quiz_points)
    FROM people
);

-- People scoring above average
SELECT first_name, quiz_points
FROM people
WHERE quiz_points > (
    SELECT AVG(quiz_points)
    FROM people
);

-- Second highest quiz points
SELECT MAX(quiz_points) AS second_highest
FROM people
WHERE quiz_points < (
    SELECT MAX(quiz_points)
    FROM people
);

-- People from a specific state using subquery
SELECT *
FROM people
WHERE state_code = (
    SELECT state_abbrev
    FROM states
    WHERE state_name = 'Minnesota'
);


-- ======================================
-- NULL HANDLING
-- ======================================

-- Records with missing quiz points
SELECT *
FROM people
WHERE quiz_points IS NULL;

-- Records with available quiz points
SELECT *
FROM people
WHERE quiz_points IS NOT NULL;
