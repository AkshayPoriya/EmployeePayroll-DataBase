/*********************************************************************************
Retrieve Data Using Select and Where
*********************************************************************************/

USE payroll_service;

SELECT name, salary 
FROM employee_payroll 
WHERE name = 'Rachel' OR name = 'Ross';

-- show rows having start between date mentioned and todays date

SELECT name, start FROM employee_payroll 
WHERE start BETWEEN CAST('2016-4-3' AS DATE) AND CONVERT(DATE, GETDATE());

-- GETDATE() returns todays date with time
SELECT GETDATE();
SELECT CAST(GETDATE() AS DATE);
SELECT CAST('2017-03-03' AS DATE);
SELECT CONVERT(DATE,GETDATE()); -- Syantax CONVERT(data_type,variable)