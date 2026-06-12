CREATE DATABASE sql_bootcamp;
USE sql_bootcamp;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    job_title VARCHAR(100),
    salary DECIMAL(10,2),
    hire_date DATE,
    city VARCHAR(50),
    country VARCHAR(50),
    age INT
);