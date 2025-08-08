use Learning;


CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    department VARCHAR(100),
    country VARCHAR(100),
    blood_group VARCHAR(3),
    national_id VARCHAR(20),
    salary DECIMAL(10, 2)
);


SELECT * FROM employees LIMIT 10;
SELECT name from employees as username;
SELECT DISTINCT department FROM employees;
SELECT * from employees WHERE country="Bangladesh";

SELECT AVG(salary) from employees;
SELECT MAX(salary), MIN(salary) FROM employees;
SELECT SUM(salary) from employees;
SELECT SUM(name) from employees;
---------------------

SELECT department AVG(salary) FROM employees GROUP BY department;
SELECT COUNT(*) AS total_employees FROM employees;


SELECT MIN(salary) as MinimuSalary, MAX(salary) as MaximumSalary FROM employees;

SELECT department, COUNT(*) FROM employees GROUP BY department;

SELECT country, AVG(salary) from employees GROUP BY country;
SELECT department, AVG(salary)
FROM employees
GROUP BY department
HAVING AVG(salary) > 100000;


SELECT * FROM employees LIMIT 10 OFFSET 10;


SELECT department ,AVG(salary) FROM employees GROUP BY department;


1. How many employees are in each department?

SELECT department, COUNT(*) as totatDept FROM employees GROUP BY department;
2. What is the average salary in each department?

SELECT department , AVG(salary) as average_salary FROM employees GROUP BY department;


3. What is the total salary paid by each department?

 SELECT department , SUM(salary) as total_salary FROM employees GROUP BY 0;
