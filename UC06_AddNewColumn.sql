-- Add Gender Column

ALTER TABLE employee_payroll 
ADD gender char(1);

-- Update values

UPDATE employee_payroll SET gender = 'M';