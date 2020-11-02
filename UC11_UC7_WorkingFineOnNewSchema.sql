
CREATE TABLE employee
(
id INT NOT NULL PRIMARY KEY, 
name VARCHAR(150) NOT NULL,
gender CHAR(1) NOT NULL,
address VARCHAR(100) NOT NULL
);

CREATE TABLE payroll
(
id INT NOT NULL PRIMARY KEY,
salary FLOAT,
basicPay FLOAT,
deductions FLOAT,
taxablePay FLOAT,
incomeTax FLOAT,
netPay FLOAT
)

CREATE TABLE department
(
dept_id INT NOT NULL PRIMARY KEY,
dept_name VARCHAR(20) NOT NULL
)

CREATE TABLE employee_department
(
emp_id INT NOT NULL,
dept_id INT NOT NULL
)


INSERT INTO employee
VALUES
(1,'Rohit','M','Mumbai'),
(2,'Dhawan','M','Delhi'),
(3,'Shefali','F','Banglore');

INSERT INTO payroll
VALUES
(1,50000,20000,2000,18000,1800,48200),
(2,50000,20000,2000,18000,1800,48200),
(3,50000,20000,2000,18000,1800,48200);


INSERT INTO department
VALUES
(1,'Marketing'),
(2,'Sales');

INSERT INTO employee_department
VALUES
(1,1),
(2,1),
(3,1),
(3,2);


SELECT e.gender, SUM(p.salary) AS 'sum_salary', AVG(p.salary) AS 'avg_salary', MIN(p.salary) AS 'min_salary', MAX(P.salary) AS 'max_salary', COUNT(P.salary) AS 'count_salary'
FROM employee e, payroll p
WHERE e.id = p.id
GROUP BY e.gender;