-- Create a database called CompanyDB
CREATE DATABASE CompanyDB;

USE CompanyDB;

-- Create an Employees table and columns: 
CREATE TABLE Employees(
emp_id INT PRIMARY KEY,
emp_name varchar(20),
salary INT,
department VARCHAR(20)
);

SELECT * FROM Employees;

-- Add NOT NULL constraint on emp_name.
ALTER TABLE Employees
ALTER COLUMN emp_name VARCHAR(20) NOT NULL;

-- Add DEFAULT value for department
ALTER TABLE Employees
ADD CONSTRAINT DF_department
DEFAULT 'IT' FOR department;

-- Add CHECK constraint for salary > 0.
ALTER TABLE Employees
ADD CONSTRAINT CK_salary
CHECK (salary > 0);

-- Rename a column name.
EXEC sp_rename 'Employees.emp_name',
            'employee_name',
            'COLUMN';

-- EXEC = Execute the procedure named sp_rename
-- sp_rename = stored procedure for renaming

SELECT * FROM Employees;
