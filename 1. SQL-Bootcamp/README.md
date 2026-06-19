# SQL Practice Bootcamp

A beginner-friendly SQL practice repository designed to help learners build SQL skills through hands-on exercises using MySQL Workbench.

## 📚 Topics Covered

### Week 1

* SELECT
* WHERE
* WHERE WITH BETWEEN & IN
* ORDER BY
* WHERE + ORDER BY
* LIMIT
* Mini Project

### Week 2

* COUNT()
* SUM()
* AVG()
* MIN()
* MAX()
* GROUP BY
* HAVING

## 📂 Repository Structure

```text
SQL-Bootcamp/
│
├── Day-01-SELECT-Basics.sql
├── .................
│
├── Database/
│   ├── employees_table.sql
│   └── employees_data.sql
│
└── README.md
```

## 🛠 Prerequisites

* MySQL Server
* MySQL Workbench

## 🚀 Getting Started

### Step 1: Create the Table

Open and run:

```sql
Database/employees_table.sql
```

### Step 2: Load the Data

Open and run:

```sql
Database/employees_data.sql
```

This will create and populate the `employees` table with sample employee records.

### Step 3: Start Practicing

Open the daily practice files and execute the queries in MySQL Workbench.

Example:

```sql
USE sql_bootcamp;

SELECT * FROM employees;
```

## 📊 Dataset

The repository uses a single `employees` table containing:

* employee_id
* first_name
* last_name
* department
* job_title
* salary
* hire_date
* city
* country
* age

The same dataset is reused throughout the bootcamp to simulate real-world SQL analysis.

## 🎯 Learning Goal

By completing these exercises, learners will be able to:

* Retrieve data using SELECT
* Filter records using WHERE
* Sort results using ORDER BY
* Limit output using LIMIT
* Build confidence working with SQL datasets
* Count records using COUNT()
* Calculate totals using SUM()
* Analyze averages using AVG()
* Identify highest and lowest values using MIN() and MAX()
* Group data using GROUP BY
* Filter grouped results using HAVING
* Generate meaningful business reports from raw data
* Analyze department performance and employee metrics
* Build confidence using SQL aggregate functions
* Develop a foundation for data analytics and business intelligence reporting 

## 🤝 Connect

If you find this repository helpful, feel free to connect with me on LinkedIn and follow along with the daily SQL Bootcamp series.
