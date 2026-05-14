# Create Database
CREATE DATABASE customer_orders_db;
USE customer_orders_db;

# Create Customer Table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(100),
    city VARCHAR(50),
    join_date date
);

# Create Orders Table
CREATE TABLE Orders (
   order_id int primary key auto_increment,
   customer_id INT,
   order_date date,
   amount DECIMAL(10,2),
   
   foreign key (customer_id)
   references Customers(customer_id)
);

# insert sample data

# 1. Insert Customers 
insert into Customers (customer_name, city, join_date)
values 
('Amit Sharma', 'Delhi', '2024-01-10'),
('Priya Singh', 'Mumbai', '2024-02-15'),
('Rahul Verma', 'Bangalore', '2024-03-01'),
('Neha Kapoor', 'Pune', '2024-03-12'),
('Karan Mehta', 'Delhi', '2024-04-05');

# 2. Insert Orders
INSERT INTO Orders (customer_id, order_date, amount)
VALUES
(1, '2024-04-01', 5000),
(1, '2024-04-15', 3000),
(2, '2024-04-05', 7000),
(3, '2024-05-01', 4500),
(3, '2024-05-10', 2500),
(3, '2024-06-01', 8000),
(4, '2024-06-15', 6000),
(5, '2024-06-20', 2000),
(2, '2024-07-01', 4000),
(1, '2024-07-05', 3500);

# View Data

# 1. Customers
SELECT * FROM Customers;

# 2. Orders 
SELECT * FROM Orders;

# Group By
# GROUP BY combines rows into groups.
# Calculate total sales by customer.

SELECT customer_id,
    SUM(amount) AS total_sales
FROM orders
group by customer_id;

# Monthly Sales
SELECT MONTH(order_date) AS month,
       SUM(amount) AS monthly_sales
FROM Orders
GROUP BY MONTH(order_date);

# Sales by Month Name
SELECT MONTHNAME(order_date) AS month_name,
       SUM(amount) AS total_sales
FROM Orders
GROUP BY MONTHNAME(order_date);

# Top Customers
SELECT customer_id,
       SUM(amount) AS total_spent
FROM Orders
GROUP BY customer_id
ORDER BY total_spent DESC;

# Top Customers with Names
SELECT c.customer_name,
       SUM(o.amount) AS total_spent
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY total_spent DESC;

# Repeat Customers
SELECT customer_id,
       COUNT(order_id) AS total_orders
FROM Orders
GROUP BY customer_id
HAVING COUNT(order_id) > 1;

# Repeat Customers with Names
SELECT c.customer_name,
       COUNT(o.order_id) AS total_orders
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name
HAVING COUNT(o.order_id) > 1;

#Average Order Value
SELECT AVG(amount) AS average_order_value
FROM Orders;

#Average Order Value Per Customer
SELECT c.customer_name,
       AVG(o.amount) AS avg_order_value
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name;

#Highest Order
SELECT MAX(amount) AS highest_order
FROM Orders;

#Lowest Order
SELECT MIN(amount) AS lowest_order
FROM Orders;

#Total Revenue
SELECT SUM(amount) AS total_revenue
FROM Orders;

#Number of Orders
SELECT COUNT(order_id) AS total_orders
FROM Orders;

#Customer Count by City
SELECT city,
       COUNT(customer_id) AS total_customers
FROM Customers
GROUP BY city;

#Monthly Average Sales
SELECT MONTHNAME(order_date) AS month,
       AVG(amount) AS average_sales
FROM Orders
GROUP BY MONTHNAME(order_date);

#Advanced Business Analysis

#Customers spending above 7000
SELECT c.customer_name,
       SUM(o.amount) AS total_spent
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name
HAVING SUM(o.amount) > 7000;

#Orders Per Month
SELECT MONTHNAME(order_date) AS month,
       COUNT(order_id) AS total_orders
FROM Orders
GROUP BY MONTHNAME(order_date);

#Real Business Dashboard Queries

#1. Top 3 Customers
SELECT c.customer_name,
       SUM(o.amount) AS total_spent
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY total_spent DESC
LIMIT 3;

#2. Revenue by City
SELECT c.city,
       SUM(o.amount) AS total_revenue
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.city;

#3. Customers Joined Per Month
SELECT MONTHNAME(join_date) AS month,
       COUNT(customer_id) AS customers_joined
FROM Customers
GROUP BY MONTHNAME(join_date);

