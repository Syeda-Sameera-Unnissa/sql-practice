-- ======================================
-- AUTHOR: Sameera
-- REPOSITORY: sql-practice
-- FILE: database_schema.sql
-- TOPIC: Database Schema Definition
-- DESCRIPTION: Defines the structure of all database tables with constraints and relationships
-- ======================================

CREATE TABLE Employees (
    id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department VARCHAR(50) NOT NULL,
    start_date DATE,
    tshirt_size VARCHAR(5),
    vacation_taken DECIMAL(5,2)
);

CREATE TABLE Departments (
    id INT PRIMARY KEY,
    name VARCHAR(100) UNIQUE NOT NULL,
    address VARCHAR(200),
    office_manager_id INT REFERENCES Employees(id),
    num_desks INT,
    state VARCHAR(50)
);

CREATE TABLE ComplianceTraining (
    employee_id INT REFERENCES Employees(id),
    date_complete DATE
);

-- Relationships
-- Employees.id = ComplianceTraining.employee_id
-- Employees.department = Departments.name
