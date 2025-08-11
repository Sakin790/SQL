-- Active: 1753857534394@@127.0.0.1@3306@JOINS
CREATE DATABASE JOINS
    DEFAULT CHARACTER SET = 'utf8mb4';


use JOINS;

CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE scores (
    student_id INT,
    score INT,
    FOREIGN KEY (student_id) REFERENCES students(id)
);

INSERT INTO students (id, name) VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie'),
(4, 'David');

INSERT INTO scores (student_id, score) VALUES
(1, 85),
(3, 92),
(4, 78);

SELECT * from scores;
------------------------------------------INNER JOIN--------------------------
SELECT columnName
FROM tableA AS t1
INNER JOIN tableB AS t2
ON t1.commonColumnName = t2.commonColumnName;

SELECT tableOne.id, 
       tableOne.name, 
       tableTwo.score
FROM students AS tableOne
INNER JOIN scores AS tableTwo
ON tableOne.id = tableTwo.student_id;



------Aug 10--------------------------


use Learning;
SELECT * from employees;

CREATE TABLE departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(50) NOT NULL UNIQUE,
    location VARCHAR(50),
    manager_name VARCHAR(100),
    budget DECIMAL(12,2),
    established_year YEAR
);
INSERT INTO departments (department_name, location, manager_name, budget, established_year) VALUES
('HR', 'Germany', 'Laura Becker', 500000.00, 2010),
('Sales', 'USA', 'John Smith', 1200000.00, 2008),
('Finance', 'India', 'Priya Sharma', 900000.00, 2012),
('Marketing', 'Bangladesh', 'Rafiq Ahmed', 750000.00, 2015),
('Engineering', 'Canada', 'Alice Johnson', 2000000.00, 2005);

SELECT * FROM departments;


use Learning;
SELECT * from employees;

CREATE TABLE departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(50) NOT NULL UNIQUE,
    location VARCHAR(50),
    manager_name VARCHAR(100),
    budget DECIMAL(12,2),
    established_year YEAR
    
);
INSERT INTO departments (department_name, location, manager_name, budget, established_year) VALUES
('HR', 'Germany', 'Laura Becker', 500000.00, 2010),
('Sales', 'USA', 'John Smith', 1200000.00, 2008),
('Finance', 'India', 'Priya Sharma', 900000.00, 2012),
('Marketing', 'Bangladesh', 'Rafiq Ahmed', 750000.00, 2015),
('Engineering', 'Canada', 'Alice Johnson', 2000000.00, 2005);
use Learning;

SELECT * FROM departments;
SELECT * FROM employees;

---add relation in existing table
ALTER TABLE employees
ADD COLUMN department_id INT;

ALTER TABLE employees
FOREIGN KEY (department_id) REFERENCES departments(department_id);
--------
-- 1. Add the department_id column to employees table (if it doesn't exist yet)
ALTER TABLE employees
ADD COLUMN department_id INT;

-- 2. Add foreign key constraint to relate employees.department_id to departments.department_id
ALTER TABLE employees
ADD CONSTRAINT fk_department
FOREIGN KEY (department_id) REFERENCES departments(department_id);
