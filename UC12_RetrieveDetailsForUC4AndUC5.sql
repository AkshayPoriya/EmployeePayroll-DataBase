/*********************************************************************************
Use new schema to retrieve details

UC4, UC5 and UC7
*********************************************************************************/

USE payroll_service;

SELECT * FROM employee;
SELECT * FROM payroll;
SELECT * FROM department;
select * from employee_department;

SELECT e.id, e.name, e.gender, p.net_pay, d.dept_name
FROM employee e, payroll p, department d, employee_department ed
WHERE e.id = p.emp_id AND e.id = ed.emp_id 
		AND ed.dept_id=d.dept_id;

SELECT e.id, e.name, e.gender, p.net_pay, d.dept_name
FROM employee e, payroll p, department d, employee_department ed
WHERE e.id = p.emp_id AND e.id = ed.emp_id 
		AND ed.dept_id=d.dept_id AND e.name ='Rachel';

SELECT e.id, e.name, e.gender, p.net_pay, d.dept_name, e.start
FROM employee e, payroll p, department d, employee_department ed
WHERE e.id = p.emp_id AND e.id = ed.emp_id AND ed.dept_id=d.dept_id 
		AND (e.start BETWEEN CAST('2016-04-03' AS DATE) AND CONVERT(DATE, GETDATE()));