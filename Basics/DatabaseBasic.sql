-- Create a database name CompanyDB.
CREATE DATABASE CompanyDB;

USE CompanyDB;

-- Create an Employees table.
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    emp_age INT,
    emp_city VARCHAR(100)
);

-- Insert 10 employee records.
INSERT INTO Employees (emp_id, emp_name, emp_age, emp_city) 
values 
(1, 'Ram', 24, 'Patna'),
(2, 'Arun', 26, 'Delhi'),
(3, 'Rahul', 23, 'Mumbai'),
(4, 'Akhil', 25, 'Kochi'),
(5, 'Kiran', 27, 'Bangalore');

-- Display all employee data.
SELECT * FROM Employees;

-- Delete the table.
DROP TABLE Employees;

-- Drop the database.
DROP DATABASE CompanyDB;