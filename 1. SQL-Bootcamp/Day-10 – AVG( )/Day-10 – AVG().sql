-- SQL Practice Series
-- Day 10 - Topic: AVG()

-- 1. Average Salary Of All Employees
SELECT AVG(salary) AS Average_Salary
FROM employees;

-- 2. Average Salary In IT Department
SELECT AVG(salary) AS IT_Average_Salary
FROM employees
WHERE department = 'IT';

-- 3. Average Salary In HR Department
SELECT AVG(salary) AS HR_Average_Salary
FROM employees
WHERE department = 'HR';

-- 4. Average Salary In Sales Department
SELECT AVG(salary) AS Sales_Average_Salary
FROM employees
WHERE department = 'Sales';

-- 5. Average Salary In Finance Department
SELECT AVG(salary) AS Finance_Average_Salary
FROM employees
WHERE department = 'Finance';

-- Practice More

-- 6. Average Age Of Employees
SELECT AVG(age) AS Average_Age
FROM employees;

-- 7. Average Salary Of Employees In USA
SELECT AVG(salary) AS USA_Average_Salary
FROM employees
WHERE country = 'USA';

-- 8. Average Salary Of Employees In Canada
SELECT AVG(salary) AS Canada_Average_Salary
FROM employees
WHERE country = 'Canada';

-- 9. Average Salary Of Employees Older Than 30
SELECT AVG(salary) AS Above_30_Average_Salary
FROM employees
WHERE age > 30;

-- 10. Average Salary Of Employees Younger Than 30
SELECT AVG(salary) AS Below_30_Average_Salary
FROM employees
WHERE age < 30;

-- 11. Average Salary Of Employees Earning More Than 50000
SELECT AVG(salary) AS Average_Salary_Above_50000
FROM employees
WHERE salary > 50000;

-- 12. Average Salary Between 40000 And 60000
SELECT AVG(salary) AS Average_Salary_40000_60000
FROM employees
WHERE salary BETWEEN 40000 AND 60000;

-- 13. Average Salary Of IT And Sales Departments
SELECT AVG(salary) AS IT_Sales_Average_Salary
FROM employees
WHERE department IN ('IT','Sales');

-- 14. Average Salary Of HR And Finance Departments
SELECT AVG(salary) AS HR_Finance_Average_Salary
FROM employees
WHERE department IN ('HR','Finance');

-- 15. Average Salary Of Employees Hired After 2020
SELECT AVG(salary) AS Hired_After_2020_Average
FROM employees
WHERE hire_date > '2020-12-31';

-- Practice Challenges

-- 16. Average Salary Of IT Employees Older Than 30
SELECT AVG(salary) AS IT_Above_30_Average
FROM employees
WHERE department = 'IT'
AND age > 30;

-- 17. Average Salary Of Sales Employees Earning More Than 50000
SELECT AVG(salary) AS Sales_Above_50000_Average
FROM employees
WHERE department = 'Sales'
AND salary > 50000;

-- 18. Average Salary Of Finance Employees Younger Than 35
SELECT AVG(salary) AS Finance_Below_35_Average
FROM employees
WHERE department = 'Finance'
AND age < 35;

-- 19. Average Salary Of USA Employees Earning More Than 50000
SELECT AVG(salary) AS USA_High_Earners_Average
FROM employees
WHERE country = 'USA'
AND salary > 50000;

-- 20. Average Salary Of Canada Employees Younger Than 30
SELECT AVG(salary) AS Canada_Below_30_Average
FROM employees
WHERE country = 'Canada'
AND age < 30;

-- Challenge

-- 21. Average Salary Of IT Employees Earning More Than 60000
SELECT AVG(salary) AS IT_High_Earners_Average
FROM employees
WHERE department = 'IT'
AND salary > 60000;

-- 22. Average Salary Of Sales Employees Older Than 35
SELECT AVG(salary) AS Sales_Above_35_Average
FROM employees
WHERE department = 'Sales'
AND age > 35;

-- 23. Average Salary Of Finance Employees Hired After 2021
SELECT AVG(salary) AS Finance_Hired_After_2021_Average
FROM employees
WHERE department = 'Finance'
AND hire_date > '2021-12-31';

-- 24. Average Salary Of Employees From USA Or Canada
SELECT AVG(salary) AS USA_Canada_Average_Salary
FROM employees
WHERE country IN ('USA','Canada');

-- 25. Average Age Of Employees Between 25 And 40
SELECT AVG(age) AS Average_Age_25_40
FROM employees
WHERE age BETWEEN 25 AND 40;