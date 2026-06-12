-- SQL Practice Series
-- Day 5 - WHERE + ORDER BY
-- Focus:
-- WHERE
-- ORDER BY
-- Combining Filtering + Sorting
-- =====================================================

USE company_db;

-- =====================================================
-- Practice Queries
-- =====================================================

-- 1. IT employees sorted by salary (Lowest to Highest)

SELECT *
FROM employees
WHERE department = 'IT'
ORDER BY salary ASC;

-- 2. Sales employees sorted by age

SELECT *
FROM employees
WHERE department = 'Sales'
ORDER BY age ASC;

-- 3. Employees with salary greater than 50000 sorted descending

SELECT *
FROM employees
WHERE salary > 50000
ORDER BY salary DESC;

-- 4. Employees older than 30 sorted ascending

SELECT *
FROM employees
WHERE age > 30
ORDER BY age ASC;

-- 5. Finance employees sorted by hire date

SELECT *
FROM employees
WHERE department = 'Finance'
ORDER BY hire_date ASC;

-- 6. HR employees sorted by salary descending

SELECT *
FROM employees
WHERE department = 'HR'
ORDER BY salary DESC;

-- 7. Employees younger than 25 sorted by age

SELECT *
FROM employees
WHERE age < 25
ORDER BY age ASC;

-- 8. Employees hired after January 1, 2022

SELECT *
FROM employees
WHERE hire_date > '2022-01-01'
ORDER BY hire_date ASC;

-- 9. IT employees earning more than 60000

SELECT *
FROM employees
WHERE department = 'IT'
AND salary > 60000
ORDER BY salary DESC;

-- 10. Sales employees older than 35

SELECT *
FROM employees
WHERE department = 'Sales'
AND age > 35
ORDER BY age ASC;

-- 11. Employees earning less than 45000

SELECT *
FROM employees
WHERE salary < 45000
ORDER BY salary ASC;

-- 12. Employees between ages 25 and 35

SELECT *
FROM employees
WHERE age BETWEEN 25 AND 35
ORDER BY age ASC;

-- 13. Employees hired before January 1, 2021

SELECT *
FROM employees
WHERE hire_date < '2021-01-01'
ORDER BY hire_date ASC;

-- 14. Marketing employees sorted by salary

SELECT *
FROM employees
WHERE department = 'Marketing'
ORDER BY salary DESC;

-- 15. Finance employees earning above 70000

SELECT *
FROM employees
WHERE department = 'Finance'
AND salary > 70000
ORDER BY salary DESC;

-- 16. HR employees older than 40

SELECT *
FROM employees
WHERE department = 'HR'
AND age > 40
ORDER BY age ASC;

-- 17. Employees hired during or after 2023

SELECT *
FROM employees
WHERE hire_date >= '2023-01-01'
ORDER BY hire_date DESC;

-- 18. Employees earning between 50000 and 80000

SELECT *
FROM employees
WHERE salary BETWEEN 50000 AND 80000
ORDER BY salary ASC;

-- 19. IT employees younger than 35

SELECT *
FROM employees
WHERE department = 'IT'
AND age < 35
ORDER BY age ASC;

-- 20. Sales employees hired after January 1, 2020

SELECT *
FROM employees
WHERE department = 'Sales'
AND hire_date > '2020-01-01'
ORDER BY hire_date DESC;

-- =====================================================
-- Challenge Section
-- Write Your Own Queries First
-- Then Compare With Solutions
-- =====================================================

-- 21. Marketing employees older than 30 sorted by salary descending

SELECT *
FROM employees
WHERE department = 'Marketing'
AND age > 30
ORDER BY salary DESC;

-- 22. Employees earning above 80000 sorted by hire date

SELECT *
FROM employees
WHERE salary > 80000
ORDER BY hire_date ASC;

-- 23. Finance employees younger than 40 sorted by age descending

SELECT *
FROM employees
WHERE department = 'Finance'
AND age < 40
ORDER BY age DESC;

-- 24. Employees hired before 2022 sorted by salary descending

SELECT *
FROM employees
WHERE hire_date < '2022-01-01'
ORDER BY salary DESC;

-- 25. IT employees earning between 60000 and 90000 sorted by salary

SELECT *
FROM employees
WHERE department = 'IT'
AND salary BETWEEN 60000 AND 90000
ORDER BY salary ASC;

-- =====================================================
-- End of Day 5 Practice
-- =====================================================