-- Retrieve details

SELECT e.id, e.name, e.gender, p.salary, d.dept_name
FROM employee e, payroll p, department d, employee_department ed
WHERE e.id = p.id AND e.id = ed.emp_id AND ed.dept_id=d.dept_id;

SELECT e.id, e.name, e.gender, p.salary, d.dept_name
FROM employee e, payroll p, department d, employee_department ed
WHERE e.id = p.id AND e.id = ed.emp_id AND ed.dept_id=d.dept_id AND e.name ='Rohit';

SELECT e.id, e.name, e.gender, p.salary, d.dept_name
FROM employee e, payroll p, department d, employee_department ed
WHERE e.id = p.id AND e.id = ed.emp_id AND ed.dept_id=d.dept_id AND (p.start BETWEEN CAST('2019-04-03' AS DATE) AND CONVERT(DATE, GETDATE()));