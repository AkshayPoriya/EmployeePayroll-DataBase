/*********************************************************************************
Create Table
*********************************************************************************/
-- identity(starting_value, increament)

USE payroll_service;

CREATE TABLE employee_payroll
(
id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
name VARCHAR(150) NOT NULL,
salary FLOAT NOT NULL,
start DATE NOT NULL
);

SELECT * FROM employee_payroll;