/*********************************************************************************
Aggregate Functions
Sum, avg, min, max and count
*********************************************************************************/

USE payroll_service;

SELECT gender,
SUM(salary) AS 'salary_sum',
AVG(salary) AS 'salary_avg',
MIN(salary) AS 'salary_min',
MAX(salary) AS 'salary_max',
COUNT(salary) AS 'person_count'
FROM employee_payroll
GROUP BY gender;