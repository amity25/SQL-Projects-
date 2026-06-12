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

## 📂 Repository Structure

```text
SQL-Bootcamp/
│
├── Day-01-SELECT-Basics.sql
├── Day-02-WHERE.sql
├── Day-03-WHERE WITH BETWEEN & IN
├── Day-04-ORDER-BY.sql
├── Day-05-WHERE + ORDER BY
├── Day-06-LIMIT.sql
├── Day-07-Mini Project.sql
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

## 🤝 Connect

If you find this repository helpful, feel free to connect with me on LinkedIn and follow along with the daily SQL Bootcamp series.
