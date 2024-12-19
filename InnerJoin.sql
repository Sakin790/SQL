CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    department_id INT
);
INSERT INTO employees (employee_id, name, department_id) VALUES
(1, 'Alice', 101),
(2, 'Bob', 102),
(3, 'Charlie', 103),
(4, 'David', 104),
(5, 'Eve', NULL);
----------------------------------------------------------------
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL
);
INSERT INTO departments (department_id, department_name) VALUES
(101, 'HR'),
(102, 'IT'),
(104, 'Finance'),
(105, 'Marketing');
----------------------------------------------------------------
SELECT employees.name, departments.department_name
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id;

NEXT:

SELECT * FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id;


NEXT:
SELECT *
FROM employees as e
INNER JOIN departments as d 
ON e.department_id = d.department_id;

NOTE: Must 2 ta table a common column thakte hobe, Tacara Join 
      Kaj korbe na ! 



