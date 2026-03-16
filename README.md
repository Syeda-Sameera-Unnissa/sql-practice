# SQL Practice

Learning SQL through hands-on query practice and structured exercises.

This repository contains SQL queries I am practicing while learning SQL fundamentals and database concepts.

---

## Goal

Build strong SQL fundamentals for **Technical Support Engineer / Product Support Engineer roles**, focusing on writing efficient queries and understanding relational databases.

---

## Topics Covered

* SELECT statements
* Column selection
* WHERE conditions
* LIKE operator
* LIMIT
* Logical operators (AND, OR, NOT)
* Aggregate functions (COUNT, SUM, AVG, MIN, MAX)
* DISTINCT
* GROUP BY
* HAVING
* JOIN operations
* Subqueries

---

## Database Schema

This repository primarily uses a **sample company database** consisting of the following tables.

### Employees

Columns:

* id
* first_name
* last_name
* department
* start_date
* tshirt_size
* vacation_taken

---

### Departments

Columns:

* id
* name
* address
* office_manager_id
* num_desks
* state

---

### ComplianceTraining

Columns:

* employee_id
* date_complete

---

## Repository Structure

sql-practice
│
├── README.md
├── database_schema.sql
├── sample_data.sql
│
├── basic_select_queries.sql
├── filtering_queries.sql
├── aggregation_queries.sql
├── group_by_queries.sql
├── joins_queries.sql
├── subqueries.sql
└── practice_queries_other_schema.sql

---

## SQL Files

| File                              | Description                                                                          |
| --------------------------------- | ------------------------------------------------------------------------------------ |
| basic_select_queries.sql          | Practice queries using basic SELECT statements                                       |
| filtering_queries.sql             | Queries using WHERE, LIKE, AND, OR conditions                                        |
| aggregation_queries.sql           | Queries using COUNT, SUM, AVG, MIN, MAX                                              |
| group_by_queries.sql              | Queries using GROUP BY and HAVING                                                    |
| joins_queries.sql                 | Queries combining data from multiple tables                                          |
| subqueries.sql                    | Queries using nested SELECT statements                                               |
| practice_queries_other_schema.sql | Additional SQL practice queries using a different database schema (schema defined inside the file) |

---

## Setup

To run the queries in this repository:

1. Create the database schema using `schema.sql`
2. Insert sample data using `sample_data.sql`
3. Run the practice queries in the SQL files

This allows the queries to be executed and tested in a local SQL environment.

Note:
The file **practice_queries_other_schema.sql** uses a different database schema for practice.
The schema definition for that database is included directly inside that file.

---

## Purpose

This repository documents my **hands-on SQL practice** while building practical database querying skills for technical roles.

---

Author: Sameera
