-- Day 3
-- More WHERE Conditions Practice
-- Advanced Filtering with BETWEEN & IN

-- 1. Salary BETWEEN 40000 AND 60000
SELECT * FROM employees
WHERE salary BETWEEN 40000 AND 60000;

-- 2. Age BETWEEN 25 AND 35
SELECT * FROM employees
WHERE age BETWEEN 25 AND 35;

-- 3. Department IN ('IT','Sales')
SELECT * FROM employees
WHERE department IN ('IT', 'Sales');

-- 4. City IN ('London','New York')
SELECT * FROM employees
WHERE city IN ('London', 'New York');

-- 5. Salary NOT BETWEEN 40000 AND 60000
SELECT * FROM employees
WHERE salary NOT BETWEEN 40000 AND 60000;

-- 6. Country IN ('USA','Canada')
SELECT * FROM employees
WHERE country IN ('USA', 'Canada');

-- 7. Department NOT IN ('HR')
SELECT * FROM employees
WHERE department NOT IN ('HR');

-- 8. Age BETWEEN 30 AND 40
SELECT * FROM employees
WHERE age BETWEEN 30 AND 40;

-- 9. Salary > 50000
SELECT * FROM employees
WHERE salary > 50000;

-- 10. Salary < 80000
SELECT * FROM employees
WHERE salary < 80000;

-- Challenge Section

-- 11. IT or Finance employees
SELECT * FROM employees
WHERE department IN ('IT', 'Finance');

-- 12. Employees from USA or UK
SELECT * FROM employees
WHERE country IN ('USA', 'UK');

-- 13. Salary between 30000 and 50000
SELECT * FROM employees
WHERE salary BETWEEN 30000 AND 50000;

-- 14. Age between 20 and 30
SELECT * FROM employees
WHERE age BETWEEN 20 AND 30;

-- 15. Employees not in Sales
SELECT * FROM employees
WHERE department NOT IN ('Sales');

-- Variations using IN, NOT IN, BETWEEN

-- 16. Employees from IT, HR, or Finance
SELECT * FROM employees
WHERE department IN ('IT', 'HR', 'Finance');

-- 17. Employees not from IT or Sales
SELECT * FROM employees
WHERE department NOT IN ('IT', 'Sales');

-- 18. Employees from London, Toronto, or Sydney
SELECT * FROM employees
WHERE city IN ('London', 'Toronto', 'Sydney');

-- 19. Employees not from New York or Chicago
SELECT * FROM employees
WHERE city NOT IN ('New York', 'Chicago');

-- 20. Employees with salary between 60000 and 90000
SELECT * FROM employees
WHERE salary BETWEEN 60000 AND 90000;

-- 21. Employees with age not between 25 and 35
SELECT * FROM employees
WHERE age NOT BETWEEN 25 AND 35;

-- 22. Employees from USA, UK, or Canada
SELECT * FROM employees
WHERE country IN ('USA', 'UK', 'Canada');

-- 23. Employees not from USA
SELECT * FROM employees
WHERE country NOT IN ('USA');

-- 24. Employees from Sales or Marketing with salary between 40000 and 70000
SELECT * FROM employees
WHERE department IN ('Sales', 'Marketing')
AND salary BETWEEN 40000 AND 70000;

-- 25. Employees not in HR with age between 30 and 45
SELECT * FROM employees
WHERE department NOT IN ('HR')
AND age BETWEEN 30 AND 45;
