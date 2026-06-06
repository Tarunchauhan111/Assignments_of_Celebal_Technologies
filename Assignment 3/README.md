# SQL Sales Analysis Using Subqueries, CTEs, and Window Functions

## Project Overview

This project analyzes the Superstore Sales dataset using SQL concepts such as Subqueries, Common Table Expressions (CTEs), Window Functions, and Joins. The objective is to transform raw sales data into a structured database and answer business-related questions through SQL queries.

The project demonstrates practical SQL skills used in data analytics and data engineering, including data modeling, aggregation, ranking, filtering, and customer sales analysis.

---

## Objective

Analyze sales data using SQL by:

* Loading the Superstore dataset into a SQL database.
* Creating normalized tables from raw data.
* Applying Subqueries for advanced filtering.
* Using Common Table Expressions (CTEs) for reusable calculations.
* Implementing Window Functions for ranking and analysis.
* Combining JOINs, CTEs, and Window Functions.
* Generating business insights from customer purchasing behavior.

---

## Tools and Technologies

* Python
* Pandas
* SQLite
* SQL
* PyCharm

---

## Dataset

Dataset Used: Superstore Sales Dataset

The dataset contains information related to:

* Orders
* Customers
* Products
* Sales
* Profit
* Quantity
* Regions

---

## Project Structure

```text
Assignment 3/
│
├── data3/
│   └── Superstore.csv
│
├── scripts/
│   ├── load_data.py
│   └── queries.sql
│   └── superstore.db
│
├── output3/
│   └── Outputs of Assignment 3.pdf
│
└── README.md
```

---

## Step 1: Load Dataset into SQLite

The CSV dataset is loaded into SQLite using Python and Pandas.

### Tasks Performed

* Read CSV file.
* Create SQLite database.
* Create raw table named `superstore_raw`.
* Insert complete dataset into the database.

---

## Step 2: Database Design

To improve data organization, the raw dataset was split into three separate tables.

### Customers Table

Stores customer information.

Columns:

* customer_id
* customer_name
* segment

### Products Table

Stores product information.

Columns:

* product_id
* product_name
* category
* sub_category

### Orders Table

Stores transactional information.

Columns:

* order_id
* customer_id
* product_id
* sales
* quantity
* profit
* region
* order_date

---

## SQL Concepts Implemented

### 1. Subqueries

Subqueries were used to answer business questions involving comparisons and filtering.

---

### 2. Common Table Expressions (CTEs)

CTEs were used to simplify complex queries and improve readability.


---

### 3. Window Functions

Window functions were used to perform ranking and analytical operations.

#### ROW_NUMBER()

Assigns a unique sequence number to each order within a customer group.

Use Case:

Identify the highest-value order of each customer.

#### RANK()

Ranks customers based on total sales.

Use Case:

Identify top-performing customers.

---

### 4. Joins

JOIN operations were used to combine information from multiple tables.

Use Case:

Display customer names along with their total sales and ranking.

---

## Business Queries Solved

### Query 1: Top 5 Customers

Objective:

Identify customers generating the highest revenue.

Business Value:

Helps the company recognize high-value customers and prioritize retention efforts.

---

### Query 2: Bottom 5 Customers

Objective:

Identify customers contributing the least revenue.

Business Value:

Useful for targeted marketing and customer engagement campaigns.

---

### Query 3: Single-Order Customers

Objective:

Find customers who placed only one order.

Business Value:

Helps identify customers who may need re-engagement strategies.

---

### Query 4: Customers Above Average Total Sales

Objective:

Identify customers whose total sales exceed the average customer sales.

Business Value:

Highlights high-performing customers for loyalty programs and personalized offers.


---

## Key SQL Features Demonstrated

* CREATE TABLE
* SELECT DISTINCT
* INSERT INTO
* GROUP BY
* ORDER BY
* LIMIT
* Subqueries
* Common Table Expressions (CTEs)
* JOINs
* ROW_NUMBER()
* RANK()
* Aggregate Functions
* Data Modeling


---

## Learning Outcomes

Through this project, the following SQL skills were practiced:

* Database creation using SQLite.
* Loading external datasets using Python.
* Data normalization.
* Writing Subqueries.
* Using Common Table Expressions.
* Applying Window Functions.
* Performing JOIN operations.
* Solving real-world business problems using SQL.

---

## Conclusion

This project demonstrates how advanced SQL concepts can be used to transform raw sales data into meaningful business insights. By combining Subqueries, CTEs, Window Functions, and Joins, valuable information about customer behavior and sales performance can be extracted efficiently.
