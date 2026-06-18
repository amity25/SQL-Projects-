-- SQL Practice Series
-- Day 9 - Topic: SUM()

-- 1. Total Salary Expense
SELECT SUM(salary) AS Total_Salary_Expense
FROM employees;

-- 2. Total Salary Expense For IT Department
SELECT SUM(salary) AS IT_Total_Salary
FROM employees
WHERE department = 'IT';

-- 3. Total Salary Expense For HR Department
SELECT SUM(salary) AS HR_Total_Salary
FROM employees
WHERE department = 'HR';

-- 4. Total Salary Expense For Sales Department
SELECT SUM(salary) AS Sales_Total_Salary
FROM employees
WHERE department = 'Sales';

-- 5. Total Salary Expense For Finance Department
SELECT SUM(salary) AS Finance_Total_Salary
FROM employees
WHERE department = 'Finance';

-- Practice More

-- 6. Total Salary Paid To Employees In USA
SELECT SUM(salary) AS USA_Total_Salary
FROM employees
WHERE country = 'USA';

-- 7. Total Salary Paid To Employees In Canada
SELECT SUM(salary) AS Canada_Total_Salary
FROM employees
WHERE country = 'Canada';

-- 8. Total Salary Of Employees Older Than 30
SELECT SUM(salary) AS Above_30_Total_Salary
FROM employees
WHERE age > 30;

-- 9. Total Salary Of Employees Younger Than 30
SELECT SUM(salary) AS Below_30_Total_Salary
FROM employees
WHERE age < 30;

-- 10. Total Salary Of Employees Earning Above 50000
SELECT SUM(salary) AS High_Earners_Total
FROM employees
WHERE salary > 50000;

-- 11. Total Salary Of Employees Earning Above 70000
SELECT SUM(salary) AS Salary_Above_70000
FROM employees
WHERE salary > 70000;

-- 12. Total Salary Between 40000 And 60000
SELECT SUM(salary) AS Salary_Between_40000_60000
FROM employees
WHERE salary BETWEEN 40000 AND 60000;

-- 13. Total Salary Of IT And Sales Departments
SELECT SUM(salary) AS IT_And_Sales_Total
FROM employees
WHERE department IN ('IT','Sales');

-- 14. Total Salary Of HR And Finance Departments
SELECT SUM(salary) AS HR_And_Finance_Total
FROM employees
WHERE department IN ('HR','Finance');

-- 15. Total Salary Of Employees Hired After 2020
SELECT SUM(salary) AS Hired_After_2020_Total
FROM employees
WHERE hire_date > '2020-12-31';

-- Practice Challenges

-- 16. Total Salary Of IT Employees Older Than 30
SELECT SUM(salary) AS IT_Above_30_Total
FROM employees
WHERE department = 'IT'
AND age > 30;

-- 17. Total Salary Of Sales Employees Earning More Than 50000
SELECT SUM(salary) AS Sales_Above_50000_Total
FROM employees
WHERE department = 'Sales'
AND salary > 50000;

-- 18. Total Salary Of Finance Employees Younger Than 35
SELECT SUM(salary) AS Finance_Below_35_Total
FROM employees
WHERE department = 'Finance'
AND age < 35;

-- 19. Total Salary Of USA Employees Earning More Than 50000
SELECT SUM(salary) AS USA_High_Earners_Total
FROM employees
WHERE country = 'USA'
AND salary > 50000;

-- 20. Total Salary Of Canada Employees Younger Than 30
SELECT SUM(salary) AS Canada_Below_30_Total
FROM employees
WHERE country = 'Canada'
AND age < 30;

-- Challenge

-- 21. Total Salary Of IT Employees Earning More Than 60000
SELECT SUM(salary) AS IT_High_Earners_Total
FROM employees
WHERE department = 'IT'
AND salary > 60000;

-- 22. Total Salary Of Sales Employees Older Than 35
SELECT SUM(salary) AS Sales_Above_35_Total
FROM employees
WHERE department = 'Sales'
AND age > 35;

-- 23. Total Salary Of Finance Employees Hired After 2021
SELECT SUM(salary) AS Finance_Hired_After_2021_Total
FROM employees
WHERE department = 'Finance'
AND hire_date > '2021-12-31';

-- 24. Total Salary Of Employees From USA Or Canada
SELECT SUM(salary) AS USA_Canada_Total
FROM employees
WHERE country IN ('USA','Canada');

-- 25. Total Salary Of Employees Aged Between 25 And 40
SELECT SUM(salary) AS Age_25_40_Total
FROM employees
WHERE age BETWEEN 25 AND 40;