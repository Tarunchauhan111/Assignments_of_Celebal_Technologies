# SQL Sales Analysis Project

## Project Overview

This project analyzes the Superstore dataset using SQL and SQLite. The objective is to perform data exploration, filtering, aggregation, sorting, business analysis, and data validation to generate meaningful business insights from sales data.

## Objective

* Load CSV data into a SQL database.
* Explore the dataset structure and contents.
* Apply SQL filtering using WHERE clauses.
* Perform aggregations using GROUP BY.
* Identify top-performing products, customers, and categories.
* Analyze monthly sales trends.
* Validate data quality and check for duplicates.
* Generate business insights from query results.

## Tools & Technologies

* Python
* Pandas
* SQLite
* SQL
* PyCharm

## Dataset

**Dataset:** Superstore

The dataset contains information related to:

* Orders
* Customers
* Products
* Categories
* Regions
* Sales
* Profit
* Quantity
* Discounts

## Project Structure

```text
Assignment2/
│
├── data/
│   └── Superstore.csv
│
├── sql/
│   └── analysis.sql
│
├── Output2/
│   └── Outputs of SQL Query.pdf
│
├── load_data.py
├── superstore.db
├── requirements.txt
└── README.md
```

## SQL Tasks Performed

### 1. Data Loading

* Imported CSV data using Pandas.
* Loaded data into SQLite database.
* Created the `sales` table.

### 2. Data Exploration

* Examined table schema.
* Viewed sample records.
* Verified row counts.

### 3. Data Filtering

Examples:

* Region-wise filtering
* Category-wise filtering
* High-value sales filtering
* Date-based filtering

### 4. Aggregations

Calculated:

* Total Sales by Region
* Total Profit by Region
* Average Sales by Category
* Quantity Sold by Category

### 5. Sorting & Ranking

Identified:

* Top Products by Sales
* Top Customers by Sales
* Top Categories by Revenue

### 6. Business Analysis

Performed:

* Monthly Sales Trend Analysis
* Most Profitable Products
* Least Profitable Products
* Region-wise Sales & Profit Analysis

### 7. Data Validation

Checked:

* Total row count
* Duplicate records
* Distinct customers
* Distinct products
* Missing values

## Key Insights

### Sales Performance

* The West region generated the highest overall sales.
* The East region also contributed significantly to revenue.
* The Central region showed comparatively lower sales performance.

### Category Analysis

* Technology emerged as the highest revenue-generating category.
* Furniture contributed substantial sales but often produced lower profit margins.
* Office Supplies maintained steady sales volume across regions.

### Customer Analysis

* A small group of customers contributed a large percentage of total revenue.
* Top customers generated significantly higher sales compared to average customers.

### Product Analysis

* Several products generated high sales and high profit.
* Some products generated strong sales but resulted in low or negative profit because of discounts.

### Profitability Insights

* Profitability varied considerably across regions.
* Technology products generally provided better profit margins than Furniture products.

### Data Quality Findings

* Dataset contains approximately 9,994 records in the original Superstore dataset.
* Duplicate checks were performed to ensure data consistency.
* No major missing-value issues were identified.

## Conclusion

This project demonstrates practical SQL skills including data loading, querying, filtering, aggregation, business analysis, and validation. The analysis provides actionable insights into regional performance, customer behavior, product profitability, and overall business trends.

