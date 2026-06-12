# SQL Practice Series – Day 4

## Topic: ORDER BY

### Basic Practice (1–15)

-- 1. Sort salary in ascending order
SELECT * FROM employees
ORDER BY salary ASC;

-- 2. Sort salary in descending order
SELECT * FROM employees
ORDER BY salary DESC;

-- 3. Sort age in ascending order
SELECT * FROM employees
ORDER BY age ASC;

-- 4. Sort age in descending order
SELECT * FROM employees
ORDER BY age DESC;

-- 5. Sort first names A-Z
SELECT * FROM employees
ORDER BY first_name ASC;

-- 6. Sort first names Z-A
SELECT * FROM employees
ORDER BY first_name DESC;

-- 7. Sort hire date from oldest to newest
SELECT * FROM employees
ORDER BY hire_date ASC;

-- 8. Sort hire date from newest to oldest
SELECT * FROM employees
ORDER BY hire_date DESC;

-- 9. Sort city names alphabetically
SELECT * FROM employees
ORDER BY city ASC;

-- 10. Sort department names alphabetically
SELECT * FROM employees
ORDER BY department ASC;

-- 11. Sort last names A-Z
SELECT * FROM employees
ORDER BY last_name ASC;

-- 12. Sort last names Z-A
SELECT * FROM employees
ORDER BY last_name DESC;

-- 13. Sort employee IDs ascending
SELECT * FROM employees
ORDER BY employee_id ASC;

-- 14. Sort employee IDs descending
SELECT * FROM employees
ORDER BY employee_id DESC;

-- 15. Sort department in reverse alphabetical order
SELECT * FROM employees
ORDER BY department DESC;

---

## CHALLENGE QUERIES (16–25)

-- 16. Sort by salary descending
SELECT first_name, department, salary
FROM employees
ORDER BY salary DESC;

-- 17. Sort by salary ascending
SELECT first_name, department, salary
FROM employees
ORDER BY salary ASC;

-- 18. Sort by age descending
SELECT first_name, age
FROM employees
ORDER BY age DESC;

-- 19. Sort by age ascending
SELECT first_name, age
FROM employees
ORDER BY age ASC;

-- 20. Sort department descending
SELECT first_name, department
FROM employees
ORDER BY department DESC;

-- 21. Sort by department then salary descending
SELECT first_name, department, salary
FROM employees
ORDER BY department ASC, salary DESC;

-- 22. Sort by city then first name
SELECT first_name, city
FROM employees
ORDER BY city ASC, first_name ASC;

-- 23. Sort by age then salary descending
SELECT first_name, age, salary
FROM employees
ORDER BY age ASC, salary DESC;

-- 24. Sort by department then hire date
SELECT first_name, department, hire_date
FROM employees
ORDER BY department ASC, hire_date ASC;

-- 25. Sort by city, department and salary
SELECT first_name, city, department, salary
FROM employees
ORDER BY city ASC, department ASC, salary DESC;
