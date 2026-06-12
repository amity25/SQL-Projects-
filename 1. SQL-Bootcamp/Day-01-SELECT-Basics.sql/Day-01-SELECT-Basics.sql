-- SQL Practice Bootcamp
-- Day 1: SELECT Basics

-- 1. Show all employees.
SELECT * FROM employees;

-- 2. Show first_name only.
SELECT first_name FROM employees;

-- 3. Show first_name and last_name.
SELECT first_name, last_name FROM employees;

-- 4. Show department column.
SELECT department FROM employees;

-- 5. Show salary column.
SELECT salary FROM employees;

-- 6. Show city column.
SELECT city FROM employees;

-- 7. Show employee_id and first_name.
SELECT employee_id, first_name FROM employees;

-- 8. Show all columns using *.
SELECT * FROM employees;

-- 9. Show hire_date.
SELECT hire_date FROM employees;

-- 10. Show country.
SELECT country FROM employees;

-- Slightly Advanced

-- 11. Show first_name as Employee Name.
SELECT first_name AS `Employee Name` FROM employees;

-- 12. Show salary as Monthly Salary.
SELECT salary AS `Monthly Salary` FROM employees;

-- 13. Show department as Team.
SELECT department AS Team FROM employees;

-- 14. Show city as Location.
SELECT city AS Location FROM employees;

-- 15. Show job_title.
SELECT job_title FROM employees;

-- Practice More

-- 16. Show age.
SELECT age FROM employees;

-- 17. Show age and salary.
SELECT age, salary FROM employees;

-- 18. Show first_name, department, city.
SELECT first_name, department, city FROM employees;

-- 19. Show last_name, country.
SELECT last_name, country FROM employees;

-- 20. Show employee_id, hire_date.
SELECT employee_id, hire_date FROM employees;

-- Challenge

-- 21. Show first_name, salary, city.
SELECT first_name, salary, city FROM employees;

-- 22. Show all employees' job titles.
SELECT job_title FROM employees;

-- 23. Show employee IDs only.
SELECT employee_id FROM employees;

-- 24. Show employee names and ages.
SELECT first_name, last_name, age FROM employees;

-- 25. Show names and departments.
SELECT first_name, last_name, department FROM employees;