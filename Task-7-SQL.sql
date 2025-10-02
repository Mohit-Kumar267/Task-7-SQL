CREATE DATABASE G;
USE G;
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10, 2),
    hire_date DATE
);
INSERT INTO employees (emp_id, first_name, last_name, department, salary, hire_date)
VALUES 
(1, 'Alice', 'Smith', 'HR', 55000.00, '2020-03-15'),
(2, 'Bob', 'Johnson', 'IT', 75000.00, '2019-06-01'),
(3, 'Charlie', 'Williams', 'Finance', 68000.00, '2021-01-10'),
(4, 'Dana', 'Brown', 'IT', 80000.00, '2018-11-23'),
(5, 'Eve', 'Davis', 'HR', 60000.00, '2022-05-30');
CREATE VIEW employee_summary AS
SELECT 
    emp_id,
    CONCAT(first_name, ' ', last_name) AS full_name,
    department,
    ROUND(DATEDIFF(CURDATE(), hire_date) / 365, 1) AS years_of_experience,
    CASE 
        WHEN salary > 70000 THEN 'High Earner'
        ELSE 'Standard'
    END AS salary_band
FROM employees;

SELECT * FROM employee_summary;


