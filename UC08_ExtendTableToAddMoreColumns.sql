-- Extend employee payroll data to store phone number, address and depatrment

ALTER TABLE employee_payroll
ADD phoneNumber VARCHAR(15),
address VARCHAR(100),
department VARCHAR(20) NOT NULL DEFAULT 'Marketing';