-- Retrieve data for given conditions

SELECT name,salary FROM employee_payroll WHERE name = 'Ramadhir Singh';

-- show rows having start between date mentioned and todays date

SELECT * FROM employee_payroll WHERE start BETWEEN CAST('2017-04-03' AS DATE) AND CONVERT(DATE, GETDATE());

-- GETDATE() returns todays date with time

SELECT CAST(GETDATE() AS DATE);
SELECT CAST('2017-03-03' AS DATE);
SELECT CONVERT(DATE,GETDATE()); -- CONVERT(data_type_to_be_converted,variable)