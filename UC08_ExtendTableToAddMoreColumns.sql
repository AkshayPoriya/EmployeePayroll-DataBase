/*********************************************************************************
Add phone_number, address and department column in employee_payroll

Note: when the column is nullable then default value is not added instead null is added.
To avoid that use ==>with values<==
*********************************************************************************/

USE payroll_service;

ALTER TABLE employee_payroll
ADD phone_number VARCHAR(15),
	address VARCHAR(100) DEFAULT 'Central Park' WITH VALUES,
	department VARCHAR(20) NOT NULL DEFAULT 'None';

SELECT * FROM employee_payroll;

UPDATE employee_payroll
SET department = 'Fashion'
WHERE name = 'Rachel';

UPDATE employee_payroll
SET department = 'Acting'
WHERE name = 'Joey';

UPDATE employee_payroll
SET department = 'Museum'
WHERE name = 'Ross';

UPDATE employee_payroll
SET department = 'Chef'
WHERE name = 'Monika';

UPDATE employee_payroll
SET department = 'Music'
WHERE name = 'Phoebe';

UPDATE employee_payroll
SET department = 'Banking'
WHERE name = 'Chandler';