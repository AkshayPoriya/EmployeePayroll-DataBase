/*********************************************************************************
Add basic_pay, deductions, taxable_pay, income_tax,net_pay column in employee_payroll

Use later columns as derived columns
Note: Derived column can not use another derived column in its expression
*********************************************************************************/

USE payroll_service;

ALTER TABLE employee_payroll
ADD basic_pay FLOAT NOT NULL DEFAULT 50000,
deductions AS 2000,
taxable_pay AS (basic_pay-2000),
income_tax AS ((basic_pay-2000)*0.1),
net_pay AS (basic_pay - (basic_pay-2000)*0.1);

SELECT * FROM employee_payroll;

UPDATE employee_payroll
SET basic_pay = 30000
WHERE name = 'Rachel';

UPDATE employee_payroll
SET basic_pay = 45000
WHERE name = 'Joey';

UPDATE employee_payroll
SET basic_pay = 70000
WHERE name = 'Ross';

UPDATE employee_payroll
SET basic_pay = 35000
WHERE name = 'Monika';

UPDATE employee_payroll
SET basic_pay = 55000
WHERE name = 'Phoebe';

UPDATE employee_payroll
SET basic_pay = 85000
WHERE name = 'Chandler';

ALTER TABLE employee_payroll
DROP COLUMN salary;