-- Day 6 – Saturday (13 June)
-- Topic: LIMIT

-- 1. First 5 employees
SELECT * 
FROM employees
LIMIT 5;

-- 2. First 10 employees
SELECT * 
FROM employees
LIMIT 10;

-- 3. Top 5 salaries
SELECT * 
FROM employees
ORDER BY salary DESC
LIMIT 5;

-- 4. Top 10 salaries
SELECT * 
FROM employees
ORDER BY salary DESC
LIMIT 10;

-- 5. Youngest 5 employees
SELECT * 
FROM employees
ORDER BY age ASC
LIMIT 5;

-- Practice More

-- 6. Oldest 5 employees
SELECT * 
FROM employees
ORDER BY age DESC
LIMIT 5;

-- 7. First 5 IT employees
SELECT * 
FROM employees
WHERE department = 'IT'
LIMIT 5;

-- 8. First 5 Sales employees
SELECT * 
FROM employees
WHERE department = 'Sales'
LIMIT 5;

-- 9. First 5 Finance employees
SELECT * 
FROM employees
WHERE department = 'Finance'
LIMIT 5;

-- 10. Top 5 highest-paid IT employees
SELECT * 
FROM employees
WHERE department = 'IT'
ORDER BY salary DESC
LIMIT 5;

-- 11. Top 5 highest-paid Sales employees
SELECT * 
FROM employees
WHERE department = 'Sales'
ORDER BY salary DESC
LIMIT 5;

-- 12. Top 5 highest-paid Finance employees
SELECT * 
FROM employees
WHERE department = 'Finance'
ORDER BY salary DESC
LIMIT 5;

-- 13. Lowest 5 salaries
SELECT * 
FROM employees
ORDER BY salary ASC
LIMIT 5;

-- 14. First 5 employees hired earliest
SELECT * 
FROM employees
ORDER BY hire_date ASC
LIMIT 5;

-- 15. First 5 employees hired recently
SELECT * 
FROM employees
ORDER BY hire_date DESC
LIMIT 5;

-- 16. First 10 employees with salary greater than 50000
SELECT * 
FROM employees
WHERE salary > 50000
LIMIT 10;

-- 17. Top 10 employees with salary greater than 50000
SELECT * 
FROM employees
WHERE salary > 50000
ORDER BY salary DESC
LIMIT 10;

-- 18. Youngest 10 employees from IT department
SELECT * 
FROM employees
WHERE department = 'IT'
ORDER BY age ASC
LIMIT 10;

-- 19. Oldest 10 employees from Sales department
SELECT * 
FROM employees
WHERE department = 'Sales'
ORDER BY age DESC
LIMIT 10;

-- 20. First 5 employees whose age is greater than 30
SELECT * 
FROM employees
WHERE age > 30
LIMIT 5;

-- Challenge

-- 21. Top 5 highest-paid employees above age 30
SELECT * 
FROM employees
WHERE age > 30
ORDER BY salary DESC
LIMIT 5;

-- 22. Youngest 5 employees earning more than 40000
SELECT * 
FROM employees
WHERE salary > 40000
ORDER BY age ASC
LIMIT 5;

-- 23. Latest 5 hired employees from IT department
SELECT * 
FROM employees
WHERE department = 'IT'
ORDER BY hire_date DESC
LIMIT 5;

-- 24. Top 5 Sales employees earning more than 45000
SELECT * 
FROM employees
WHERE department = 'Sales' AND salary > 45000
ORDER BY salary DESC
LIMIT 5;

-- 25. Oldest 5 Finance employees earning less than 60000
SELECT * 
FROM employees
WHERE department = 'Finance' AND salary < 60000
ORDER BY age DESC
LIMIT 5;