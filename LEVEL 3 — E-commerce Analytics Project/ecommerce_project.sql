#STEP 1 — CREATE DATABASE
CREATE DATABASE ecommerce_project;
use ecommerce_project;


#STEP 2 — CREATE TABLES

    #TABLE 1 — Customers
create table customers (
   customer_id INT primary key,
   customer_name VARCHAR(100),
   city VARCHAR(50),
   signup_date date
   );
   
     #TABLE 2 — Products
create table products (
    product_id INT primary key,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

     #TABLE 3 — Orders
create table orders (
    order_id INT primary key,
    customer_id INT,
    product_id INT,
    quantity INT,
    order_date DATE,

	FOREIGN KEY (customer_id)
    REFERENCES customers(customer_id),

    FOREIGN KEY (product_id)
    REFERENCES products(product_id)
);

       #TABLE 4 — Payments
CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    order_id INT,
    payment_method VARCHAR(50),
    payment_amount DECIMAL(10,2),
    payment_date DATE,

    FOREIGN KEY (order_id)
    REFERENCES orders(order_id)
);

    
    #STEP 3 — INSERT SAMPLE DATA
    
          #Insert Customers
INSERT INTO customers VALUES
(1, 'Amit Sharma', 'Delhi', '2024-01-10'),
(2, 'Priya Singh', 'Mumbai', '2024-02-15'),
(3, 'Rahul Verma', 'Bangalore', '2024-03-01'),
(4, 'Sneha Kapoor', 'Delhi', '2024-03-20'),
(5, 'Arjun Mehta', 'Pune', '2024-04-05');

	       #Insert Products
INSERT INTO products VALUES
(101, 'Laptop', 'Electronics', 60000),
(102, 'Phone', 'Electronics', 30000),
(103, 'Shoes', 'Fashion', 2500),
(104, 'Watch', 'Accessories', 5000),
(105, 'Headphones', 'Electronics', 2000);

           #Insert Orders
INSERT INTO orders VALUES
(1001, 1, 101, 1, '2024-05-01'),
(1002, 2, 103, 2, '2024-05-03'),
(1003, 1, 105, 3, '2024-05-05'),
(1004, 3, 102, 1, '2024-05-06'),
(1005, 4, 104, 2, '2024-05-07'),
(1006, 5, 103, 1, '2024-05-08');

           #Insert Payments
INSERT INTO payments VALUES
(1, 1001, 'Credit Card', 60000, '2024-05-01'),
(2, 1002, 'UPI', 5000, '2024-05-03'),
(3, 1003, 'Debit Card', 6000, '2024-05-05'),
(4, 1004, 'Credit Card', 30000, '2024-05-06'),
(5, 1005, 'UPI', 10000, '2024-05-07'),
(6, 1006, 'Cash', 2500, '2024-05-08');


#STEP 4 — VERIFY DATA

SELECT * FROM customers;
SELECT * FROM products;
SELECT * FROM orders;
SELECT * FROM payments;


#STEP 6 — LEARN INNER JOIN

     #Basic syntax:

#SELECT *
#FROM table1
#INNER JOIN table2
#ON table1.column = table2.column;


    #Practice Join
SELECT
    o.order_id,
    c.customer_name,
    p.product_name,
    o.quantity
FROM orders o
INNER JOIN customers c
ON o.customer_id = c.customer_id
INNER JOIN products p
ON o.product_id = p.product_id;


#PROJECT TASK 1 — Revenue By Category

#Business Question:
#Which product category generates the highest revenue?

SELECT
    p.category,
    SUM(o.quantity * p.price) AS total_revenue
FROM orders o
INNER JOIN products p
ON o.product_id = p.product_id
GROUP BY p.category
ORDER BY total_revenue DESC;
    
    
#PROJECT TASK 2 — Best-Selling Products

#Business Question:
#Which products sell the most?

SELECT
    p.product_name,
    SUM(o.quantity) AS total_units_sold
FROM orders o
INNER JOIN products p
ON o.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_units_sold DESC;    


#PROJECT TASK 3 — Customer Lifetime Value

#Business Question:
#Which customers spend the most money?

SELECT
    c.customer_name,
    SUM(pay.payment_amount) AS lifetime_value
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
INNER JOIN payments pay
ON o.order_id = pay.order_id
GROUP BY c.customer_name
ORDER BY lifetime_value DESC;    


#PROJECT TASK 4 — Payment Trends

#Business Question:
#Which payment method is used most?

SELECT
    payment_method,
    COUNT(*) AS total_transactions,
    SUM(payment_amount) AS total_amount
FROM payments
GROUP BY payment_method
ORDER BY total_amount DESC;
   
   
#PROJECT TASK 5 — Top Cities

#Business Question:
#Which cities generate the highest revenue?

SELECT
    c.city,
    SUM(pay.payment_amount) AS city_revenue
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
INNER JOIN payments pay
ON o.order_id = pay.order_id
GROUP BY c.city
ORDER BY city_revenue DESC;



#BONUS TASKS

#BONUS 1 — Monthly Revenue
SELECT
    MONTH(payment_date) AS month_number,
    SUM(payment_amount) AS monthly_revenue
FROM payments
GROUP BY MONTH(payment_date)
ORDER BY month_number;  

#BONUS 2 — Average Order Value
SELECT
    AVG(payment_amount) AS average_order_value
FROM payments;  

#BONUS 3 — Repeat Customers
SELECT
    c.customer_name,
    COUNT(o.order_id) AS total_orders
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name
HAVING total_orders > 1;

#BONUS 4 — Most Expensive Product Sold
SELECT
    p.product_name,
    p.price
FROM products p
ORDER BY p.price DESC
LIMIT 1;
    
    
    
    
    
     
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
