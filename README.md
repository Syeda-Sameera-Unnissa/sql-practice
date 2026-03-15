# SQL Practice

This repository contains SQL queries I am practicing while learning SQL.

## Goal

Building strong SQL fundamentals for Technical Support / Product Support Engineer roles.

## Topics Covered

- SELECT statements
- Column selection
- WHERE conditions
- LIKE operator
- LIMIT
- Aggregate functions (COUNT, SUM, AVG)
- DISTINCT

## Database Schema

This repository uses a sample company database with the following tables.

### Employees

Columns:
- id
- first_name
- last_name
- department
- start_date
- tshirt_size
- vacation_taken

### Departments

Columns:
- id
- name
- address
- office_manager_id
- num_desks
- state

### ComplianceTraining

Columns:
- employee_id
- date_complete

## Files

basic_select_queries.sql  
Practice queries using SELECT statements.

filtering_queries.sql  
Queries using WHERE, LIKE, AND, OR conditions.

aggregation_queries.sql  
Queries using COUNT, SUM, AVG, MIN, MAX.

joins_queries.sql  
Queries combining data from multiple tables.

group_by_queries.sql  
Queries using GROUP BY and HAVING.

subqueries.sql  
Queries using nested SELECT statements.
