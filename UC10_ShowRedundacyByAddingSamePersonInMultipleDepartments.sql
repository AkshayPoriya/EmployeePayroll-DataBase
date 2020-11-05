/*********************************************************************************
Make Rachel part of Sales department also

Create Unnecessary redundancy
*********************************************************************************/

USE payroll_service;

INSERT INTO employee_payroll (name,start,gender,address,department,basic_pay)
VALUES 
('Rachel', '2017-3-1', 'F', 'Central Park','Sales','30000');

SELECT * FROM employee_payroll;