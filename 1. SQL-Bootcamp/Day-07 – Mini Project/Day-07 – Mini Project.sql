-- Day 7 Mini Project
-- Table: employees_table

-- 1. Show top 5 highest-paid employees
SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 5;

-- 2. Show the youngest employee
SELECT *
FROM employees
ORDER BY age ASC
LIMIT 1;

-- 3. Show the oldest employee
SELECT *
FROM employees
ORDER BY age DESC
LIMIT 1;

-- 4. Show top 10 salaries
SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 10;

-- 5. Show IT employees earning more than 60000
SELECT *
FROM employees
WHERE department = 'IT'
AND salary > 60000
ORDER BY salary DESC;

-- 6. Show the most recently hired employees
SELECT *
FROM employees
ORDER BY hire_date DESC
LIMIT 10;

-- 7. Show all HR employees
SELECT *
FROM employees
WHERE department = 'HR';

-- 8. Show employees from USA
SELECT *
FROM employees
WHERE country = 'USA';

-- 9. Show Finance employees sorted by salary
SELECT *
FROM employees
WHERE department = 'Finance'
ORDER BY salary DESC;

-- 10. Show youngest 5 employees
SELECT *
FROM employees
ORDER BY age ASC
LIMIT 5;

-- 11. Show oldest 5 employees
SELECT *
FROM employees
ORDER BY age DESC
LIMIT 5;

-- 12. Show employees hired before 2021
SELECT *
FROM employees
WHERE hire_date < '2021-01-01'
ORDER BY hire_date ASC;

-- 13. Show employees hired after 2023
SELECT *
FROM employees
WHERE hire_date > '2023-01-01'
ORDER BY hire_date DESC;

-- 14. Show Sales employees earning more than 50000
SELECT *
FROM employees
WHERE department = 'Sales'
AND salary > 50000
ORDER BY salary DESC;

-- 15. Show Marketing employees sorted by salary
SELECT *
FROM employees
WHERE department = 'Marketing'
ORDER BY salary DESC;

-- 16. Show employees aged between 25 and 35
SELECT *
FROM employees
WHERE age BETWEEN 25 AND 35
ORDER BY age ASC;

-- 17. Show employees earning between 50000 and 80000
SELECT *
FROM employees
WHERE salary BETWEEN 50000 AND 80000
ORDER BY salary DESC;

-- 18. Show top 5 highest-paid IT employees
SELECT *
FROM employees
WHERE department = 'IT'
ORDER BY salary DESC
LIMIT 5;

-- 19. Show youngest employees in the IT department
SELECT *
FROM employees
WHERE department = 'IT'
ORDER BY age ASC
LIMIT 5;

-- 20. Show oldest employees in the Finance department
SELECT *
FROM employees
WHERE department = 'Finance'
ORDER BY age DESC
LIMIT 5;

-- 21. Show employees from USA or Canada
SELECT *
FROM employees
WHERE country IN ('USA', 'Canada')
ORDER BY country ASC;

-- 22. Show employees not working in HR
SELECT *
FROM employees
WHERE department NOT IN ('HR')
ORDER BY department ASC;

-- 23. Show employees hired most recently in Sales
SELECT *
FROM employees
WHERE department = 'Sales'
ORDER BY hire_date DESC
LIMIT 5;

-- 24. Show top 5 highest-paid employees above age 30
SELECT *
FROM employees
WHERE age > 30
ORDER BY salary DESC
LIMIT 5;

-- 25. Show Finance employees earning less than 60000 sorted by age
SELECT *
FROM employees
WHERE department = 'Finance'
AND salary < 60000
ORDER BY age DESC;