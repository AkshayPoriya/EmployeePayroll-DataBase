-- Extend Table to add payroll details

ALTER TABLE employee_payroll
ADD basicPay FLOAT,
deductions FLOAT,
taxablePay FLOAT,
incomeTax FLOAT,
netPay FLOAT;