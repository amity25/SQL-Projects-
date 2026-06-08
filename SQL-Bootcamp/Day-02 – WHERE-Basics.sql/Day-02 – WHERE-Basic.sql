-- Day 2 – Tuesday (9 June)
-- Topic: WHERE Basics

-- 1. Employees in IT
SELECT * FROM employees
WHERE department = 'IT';

-- 2. Employees in Sales
SELECT * FROM employees
WHERE department = 'Sales';

-- 3. Salary > 50000
SELECT * FROM employees
WHERE salary > 50000;

-- 4. Salary < 40000
SELECT * FROM employees
WHERE salary < 40000;

-- 5. Age > 30
SELECT * FROM employees
WHERE age > 30;

-- 6. Age < 25
SELECT * FROM employees
WHERE age < 25;

-- 7. City = New York
SELECT * FROM employees
WHERE city = 'New York';

-- 8. Country = USA
SELECT * FROM employees
WHERE country = 'USA';

-- 9. Department = HR
SELECT * FROM employees
WHERE department = 'HR';

-- 10. Department = Finance
SELECT * FROM employees
WHERE department = 'Finance';

-- Practice More

-- 11. Salary >= 60000
SELECT * FROM employees
WHERE salary >= 60000;

-- 12. Salary <= 35000
SELECT * FROM employees
WHERE salary <= 35000;

-- 13. Age = 28
SELECT * FROM employees
WHERE age = 28;

-- 14. Job title = Manager
SELECT * FROM employees
WHERE job_title = 'Manager';

-- 15. City = London
SELECT * FROM employees
WHERE city = 'London';

-- Challenge

-- 16. IT employees with salary > 50000
SELECT * FROM employees
WHERE department = 'IT'
AND salary > 50000;

-- 17. Sales employees in New York
SELECT * FROM employees
WHERE department = 'Sales'
AND city = 'New York';

-- 18. Age > 35
SELECT * FROM employees
WHERE age > 35;

-- 19. Finance employees
SELECT * FROM employees
WHERE department = 'Finance';

-- 20. Country = Canada
SELECT * FROM employees
WHERE country = 'Canada';

-- Extra

-- 21. Department = Marketing
SELECT * FROM employees
WHERE department = 'Marketing';

-- 22. Salary > 70000
SELECT * FROM employees
WHERE salary > 70000;

-- 23. Age < 40
SELECT * FROM employees
WHERE age < 40;

-- 24. City = Chicago
SELECT * FROM employees
WHERE city = 'Chicago';

-- 25. HR employees
SELECT * FROM employees
WHERE department = 'HR';