/*********************************************************************************
CURD (Insert operation)
*********************************************************************************/
USE payroll_service;

INSERT INTO employee_payroll (name,salary,start)
VALUES
('Rachel', 30000, '2017-3-1'),
('Joey', 45000, '2016-4-20'),
('Ross', 70000, '2015-10-21'),
('Monika', 35000, '2015-10-21'),
('Phoebe', 55000, '2016-4-15'),
('Chandler', 85000, '2015-10-21');

SELECT * FROM employee_payroll;