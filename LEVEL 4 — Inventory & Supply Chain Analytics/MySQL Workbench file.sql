-- Step 1: Create Database
CREATE DATABASE SupplyChainDB;

-- Step 2: Select Database
USE SupplyChainDB;

-- Step 3: Create Products Table
-- Products are the items sold or stocked.

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50)
); 

SHOW TABLES;

-- Step 4: Create Inventory Table
-- Stores stock quantities.

CREATE TABLE Inventory (
    ProductID INT PRIMARY KEY,
    CurrentStock INT,
    ReorderLevel INT,
    FOREIGN KEY (ProductID)
    REFERENCES Products(ProductID)
);

DESCRIBE Inventory;

-- Step 5: Create Suppliers Table
-- Stores supplier information.

CREATE TABLE Suppliers (
    SupplierID INT PRIMARY KEY,
    SupplierName VARCHAR(100),
    ContactPerson VARCHAR(100),
    City VARCHAR(50)
);

DESCRIBE Suppliers;


-- Step 6: Create PurchaseOrders Table
-- Stores orders sent to suppliers.

CREATE TABLE PurchaseOrders (
    PO_ID INT PRIMARY KEY,
    ProductID INT,
    SupplierID INT,
    OrderDate DATE,
    ExpectedDate DATE,
    ReceivedDate DATE,
    
    FOREIGN KEY (ProductID)
        REFERENCES Products(ProductID),
        
    FOREIGN KEY (SupplierID)
        REFERENCES Suppliers(SupplierID)
);


-- Step 7: View All Tables

SHOW TABLES;

-- Step 8: Insert Product Data


INSERT INTO Products VALUES
(101,'Laptop','Electronics'),
(102,'Mouse','Electronics'),
(103,'Keyboard','Electronics'),
(104,'Monitor','Electronics'),
(105,'Printer','Office Equipment'),
(106,'Scanner','Office Equipment'),
(107,'Router','Networking'),
(108,'Webcam','Accessories');

SELECT * FROM Products;

-- Step 9: Insert Inventory Data

INSERT INTO Inventory VALUES
(101,15,20),
(102,200,50),
(103,10,25),
(104,75,40),
(105,5,15),
(106,30,20),
(107,8,15),
(108,100,40);

SELECT * FROM Inventory;

-- Step 10: Insert Supplier Data

INSERT INTO Suppliers VALUES
(1,'ABC Suppliers','Rahul Sharma','Delhi'),
(2,'XYZ Traders','Ankit Gupta','Mumbai'),
(3,'Global Tech','Ravi Kumar','Bangalore'),
(4,'Prime Electronics','Sanjay Singh','Chennai');

SELECT * FROM Suppliers;

-- Step 11: Insert Purchase Orders

INSERT INTO PurchaseOrders VALUES
(5001,101,1,'2025-05-01','2025-05-10','2025-05-12'),
(5002,103,2,'2025-05-02','2025-05-08','2025-05-08'),
(5003,105,3,'2025-05-05','2025-05-15','2025-05-18'),
(5004,102,1,'2025-05-06','2025-05-12','2025-05-11'),
(5005,104,2,'2025-05-07','2025-05-14','2025-05-16'),
(5006,107,4,'2025-05-10','2025-05-20','2025-05-25'),
(5007,108,3,'2025-05-12','2025-05-18','2025-05-18');

SELECT * FROM PurchaseOrders;

-- Step 12: Basic SQL Practice

-- View products:

SELECT * FROM Products;

-- View inventory:

SELECT * FROM Inventory;

-- Sort inventory:

SELECT *
FROM Inventory
ORDER BY CurrentStock DESC;

-- Step 13: Learn INNER JOIN
-- Business Question:
-- Which products have which stock levels?

SELECT
    p.ProductName,
    i.CurrentStock,
    i.ReorderLevel
FROM Products p
INNER JOIN Inventory i
ON p.ProductID = i.ProductID;

-- Step 14: Learn CASE WHEN
-- Business Question:
-- Which products need reordering?

SELECT
    ProductID,
    CurrentStock,
    ReorderLevel,
    CASE
        WHEN CurrentStock < ReorderLevel
        THEN 'Reorder Needed'
        ELSE 'Stock Available'
    END AS StockStatus
FROM Inventory;

-- Step 15: Low Stock Alert Project
SELECT
    p.ProductName,
    i.CurrentStock,
    i.ReorderLevel
FROM Products p
JOIN Inventory i
ON p.ProductID = i.ProductID
WHERE i.CurrentStock < i.ReorderLevel;

-- Step 16: Reorder Quantity Calculation
SELECT
    ProductID,
    CurrentStock,
    ReorderLevel,
    ReorderLevel - CurrentStock AS ReorderQuantity
FROM Inventory
WHERE CurrentStock < ReorderLevel;

-- Step 17: Delayed Shipments Analysis
SELECT
    PO_ID,
    ProductID,
    ExpectedDate,
    ReceivedDate
FROM PurchaseOrders
WHERE ReceivedDate > ExpectedDate;

-- Step 18: Supplier Performance Analysis
SELECT
    s.SupplierName,
    COUNT(*) AS TotalOrders,
    AVG(
        DATEDIFF(
            ReceivedDate,
            ExpectedDate
        )
    ) AS AverageDelayDays
FROM PurchaseOrders po
JOIN Suppliers s
ON po.SupplierID = s.SupplierID
GROUP BY s.SupplierName;

-- Step 19: Overstock Analysis
SELECT
    ProductID,
    CurrentStock,
    ReorderLevel
FROM Inventory
WHERE CurrentStock > ReorderLevel * 2;

-- Step 20: Subquery Example
-- Products with stock below average.

SELECT *
FROM Inventory
WHERE CurrentStock <
(
    SELECT AVG(CurrentStock)
    FROM Inventory
);


-- Final Mini Dashboard Queries
-- Total Products

SELECT COUNT(*) AS TotalProducts
FROM Products;

-- Total Inventory Units

SELECT SUM(CurrentStock) AS TotalInventory
FROM Inventory;

-- Products Requiring Reorder

SELECT COUNT(*) AS ReorderRequired
FROM Inventory
WHERE CurrentStock < ReorderLevel;

-- Delayed Shipments

SELECT COUNT(*) AS DelayedShipments
FROM PurchaseOrders
WHERE ReceivedDate > ExpectedDate;