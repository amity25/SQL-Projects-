CREATE DATABASE sales_project;

USE sales_project;

CREATE TABLE sales (
    order_id INT,
    product_name VARCHAR(50),
    region VARCHAR(50),
    sales_amount INT
);

INSERT INTO sales VALUES
(1, 'Laptop', 'North', 50000),
(2, 'Mouse', 'South', 1000),
(3, 'Keyboard', 'East', 2000);

SELECT * FROM sales;

SELECT * FROM sales
WHERE sales_amount > 2000;

SELECT * FROM sales
ORDER BY sales_amount DESC;

