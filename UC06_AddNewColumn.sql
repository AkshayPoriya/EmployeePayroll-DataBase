/*********************************************************************************
Update Operation
Add Gender Column and then update enteries for gender
*********************************************************************************/

USE payroll_service;

ALTER TABLE employee_payroll
ADD gender char(1),
CONSTRAINT chk_gender CHECK (gender IN ('M','F'));


UPDATE employee_payroll 
SET gender = 'M'
WHERE name IN('Ross','Joey','Chandler');

UPDATE employee_payroll 
SET gender = 'F'
WHERE name IN('RACHEL','MONIKA','Phoebe');

SELECT * FROM employee_payroll;