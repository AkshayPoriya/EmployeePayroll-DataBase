-- Create Table 
-- identity(starting_value, increament)
CREATE TABLE employee_payroll
(
name VARCHAR(150) NOT NULL,
id INT NOT NULL IDENTITY(1,1) PRIMARY KEY, 
salary FLOAT NOT NULL,
start DATE NOT NULL
);

SELECT * FROM employee_payroll;