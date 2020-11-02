-- salary stats group by gender

SELECT gender,
SUM(salary) AS 'salary_sum',
AVG(salary) AS 'salary_avg',
MIN(salary) AS 'salary_min',
MAX(salary) AS 'salary_max',
COUNT(salary) AS 'salary_count'
FROM employee_payroll
GROUP BY gender;