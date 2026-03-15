-- Author: Sameera
-- Repository: sql-practice
-- Topic: Database Schema
-- Description: Defines the structure of the database tables used in this SQL practice repository.

CREATE TABLE Employees (
    id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    start_date DATE,
    tshirt_size VARCHAR(5),
    vacation_taken INT
);

CREATE TABLE Departments (
    id INT,
    name VARCHAR(100),
    address VARCHAR(200),
    office_manager_id INT,
    num_desks INT,
    state VARCHAR(50)
);

CREATE TABLE ComplianceTraining (
    employee_id INT,
    date_complete DATE
);
