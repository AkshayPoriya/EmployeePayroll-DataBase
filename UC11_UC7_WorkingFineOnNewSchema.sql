/*********************************************************************************
Implement another schema to remove redundacy

Use concept of Normal Form to remove multi-valued columns
*********************************************************************************/

USE payroll_service;

-- Create Table employee having personal info of employee, id is primary key
CREATE TABLE employee
(
id INT NOT NULL PRIMARY KEY, 
name VARCHAR(150) NOT NULL,
gender CHAR(1) NOT NULL,
address VARCHAR(100) NOT NULL,
start DATE NOT NULL
);

-- Create Table payroll having payroll info of employee, emp_id is foreign key
CREATE TABLE payroll
(
payroll_id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
basic_pay FLOAT NOT NULL,
deductions AS 2000,
taxable_pay AS (basic_pay-2000),
income_tax AS ((basic_pay-2000)*0.1),
net_pay AS (basic_pay - (basic_pay-2000)*0.1),
emp_id INT FOREIGN KEY REFERENCES employee(id)
);

-- dpartment Table having info about department
CREATE TABLE department
(
dept_id INT NOT NULL PRIMARY KEY,
dept_name VARCHAR(20) NOT NULL
);

-- employee_department having info about employee departments
CREATE TABLE employee_department
(
emp_id INT FOREIGN KEY REFERENCES employee(id),
dept_id INT FOREIGN KEY REFERENCES department(dept_id)
);


INSERT INTO employee
SELECT id, name, gender, address, start
FROM employee_payroll
WHERE id IN (1,2,3,4,5,6);


INSERT INTO payroll (basic_pay, emp_id)
SELECT basic_pay,id
FROM employee_payroll
WHERE id IN (1,2,3,4,5,6);

INSERT INTO department
VALUES
(11,'Fashion'),
(21,'Acting'),
(31,'Museum'),
(41,'Chef'),
(51,'Music'),
(61,'Banking'),
(71,'Sales');

INSERT INTO employee_department
VALUES
(1,11),
(1,71),
(2,21),
(3,31),
(4,41),
(5,51),
(6,61);


SELECT e.gender, SUM(p.net_pay) AS 'sum_salary', AVG(p.net_pay) AS 'avg_salary',
		MIN(p.net_pay) AS 'min_salary', MAX(p.net_pay) AS 'max_salary', COUNT(p.net_pay) AS 'count_salary'
FROM employee e, payroll p
WHERE e.id = p.emp_id
GROUP BY e.gender;