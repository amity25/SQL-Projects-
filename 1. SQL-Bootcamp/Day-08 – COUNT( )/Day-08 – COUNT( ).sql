-- SQL Practice Series
-- Day 8 - Topic: COUNT()

-- 1. Count Total Employees
SELECT COUNT(*) AS Total_Employees
FROM employees;

-- 2. Count IT Employees
SELECT COUNT(*) AS IT_Employees
FROM employees
WHERE department = 'IT';

-- 3. Count HR Employees
SELECT COUNT(*) AS HR_Employees
FROM employees
WHERE department = 'HR';

-- 4. Count Sales Employees
SELECT COUNT(*) AS Sales_Employees
FROM employees
WHERE department = 'Sales';

-- 5. Count Finance Employees
SELECT COUNT(*) AS Finance_Employees
FROM employees
WHERE department = 'Finance';

-- Practice More

-- 6. Count Employees from USA
SELECT COUNT(*) AS USA_Employees
FROM employees
WHERE country = 'USA';

-- 7. Count Employees from Canada
SELECT COUNT(*) AS Canada_Employees
FROM employees
WHERE country = 'Canada';

-- 8. Count Employees Older Than 30
SELECT COUNT(*) AS Employees_Above_30
FROM employees
WHERE age > 30;

-- 9. Count Employees Older Than 40
SELECT COUNT(*) AS Employees_Above_40
FROM employees
WHERE age > 40;

-- 10. Count Employees Younger Than 30
SELECT COUNT(*) AS Employees_Below_30
FROM employees
WHERE age < 30;

-- 11. Count Employees Earning More Than 50000
SELECT COUNT(*) AS Salary_Above_50000
FROM employees
WHERE salary > 50000;

-- 12. Count Employees Earning More Than 70000
SELECT COUNT(*) AS Salary_Above_70000
FROM employees
WHERE salary > 70000;

-- 13. Count Employees Earning Between 40000 And 60000
SELECT COUNT(*) AS Salary_Between_40000_60000
FROM employees
WHERE salary BETWEEN 40000 AND 60000;

-- 14. Count Employees in IT Or Sales
SELECT COUNT(*) AS IT_And_Sales
FROM employees
WHERE department IN ('IT','Sales');

-- 15. Count Employees in HR Or Finance
SELECT COUNT(*) AS HR_And_Finance
FROM employees
WHERE department IN ('HR','Finance');

-- Practice Challenges

-- 16. Count IT Employees Older Than 30
SELECT COUNT(*) AS IT_Above_30
FROM employees
WHERE department = 'IT'
AND age > 30;

-- 17. Count Sales Employees Earning More Than 50000
SELECT COUNT(*) AS Sales_Above_50000
FROM employees
WHERE department = 'Sales'
AND salary > 50000;

-- 18. Count Finance Employees Younger Than 35
SELECT COUNT(*) AS Finance_Below_35
FROM employees
WHERE department = 'Finance'
AND age < 35;

-- 19. Count Employees Hired After 2020
SELECT COUNT(*) AS Hired_After_2020
FROM employees
WHERE hire_date > '2020-12-31';

-- 20. Count Employees Hired Before 2018
SELECT COUNT(*) AS Hired_Before_2018
FROM employees
WHERE hire_date < '2018-01-01';

-- Challenge

-- 21. Count IT Employees Earning More Than 60000
SELECT COUNT(*) AS IT_High_Earners
FROM employees
WHERE department = 'IT'
AND salary > 60000;

-- 22. Count Sales Employees Older Than 35
SELECT COUNT(*) AS Sales_Above_35
FROM employees
WHERE department = 'Sales'
AND age > 35;

-- 23. Count Employees From USA Earning More Than 50000
SELECT COUNT(*) AS USA_High_Earners
FROM employees
WHERE country = 'USA'
AND salary > 50000;

-- 24. Count Employees From Canada Younger Than 30
SELECT COUNT(*) AS Canada_Below_30
FROM employees
WHERE country = 'Canada'
AND age < 30;

-- 25. Count Finance Employees Hired After 2021
SELECT COUNT(*) AS Finance_Hired_After_2021
FROM employees
WHERE department = 'Finance'
AND hire_date > '2021-12-31';