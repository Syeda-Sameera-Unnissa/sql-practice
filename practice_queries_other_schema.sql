-- Author: Sameera
-- Repository: sql-practice
-- Topic: SQL Practice with Alternate Schema
-- Description: Practice SQL queries using the quizdata database schema
-- to strengthen SQL fundamentals across different datasets.

-- Database Schema: quizdata

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
