-- View Schema
PRAGMA table_info(sales);

-- View Sample Records
SELECT * FROM sales LIMIT 10;

-- Total Records
SELECT COUNT(*) AS total_rows FROM sales;

-- Orders from South Region
SELECT "Row ID", "Customer ID", "Customer Name",Region FROM sales WHERE Region = 'South';

-- Furniture Category Sales
SELECT "Row ID", "Customer ID", "Customer Name",Region, Category FROM sales WHERE Category = 'Furniture';

-- Sales Greater Than 500
SELECT "Row ID", "Customer ID", "Customer Name",Region, Category, Sales FROM sales WHERE Sales > 500;

-- Orders in 2017
SELECT "Row ID", "Customer ID", "Customer Name",Region, Category, "Order Date" FROM sales WHERE "Order Date" LIKE '%2017';

-- Total Sales by Region
SELECT Region, ROUND(SUM(Sales),2) AS Total_Sales FROM sales GROUP BY Region ORDER BY Total_Sales DESC;

-- Total Profit by Region
SELECT Region, ROUND(SUM(Profit),2) AS Total_Profit FROM sales GROUP BY Region ORDER BY Total_Profit DESC;

-- Average Sales by Category
SELECT Category, ROUND(AVG(Sales),2) AS Avg_Sales FROM sales GROUP BY Category;

-- Total Quantity Sold by Category
SELECT Category, SUM(Quantity) AS Total_Quantity FROM sales GROUP BY Category;

-- Top 10 Products by Sales
SELECT
    "Product Name",
    ROUND(SUM(Sales),2) AS Total_Sales
FROM sales GROUP BY "Product Name" ORDER BY Total_Sales DESC LIMIT 10;

-- Top 5 Customers
SELECT
    "Customer Name",
    ROUND(SUM(Sales),2) AS Total_Sales
FROM sales GROUP BY "Customer Name" ORDER BY Total_Sales DESC LIMIT 5;

-- Top Categories
SELECT
    Category,
    ROUND(SUM(Sales),2) AS Sales
FROM sales GROUP BY Category ORDER BY Sales DESC;

-- Monthly Sales Trend
SELECT
    substr("Order Date", -4) AS Year,
    CAST(substr("Order Date", 1, instr("Order Date", '/') - 1) AS INTEGER) AS Month,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM sales GROUP BY Year, Month  ORDER BY CAST(Year AS INTEGER), Month;

-- Most Profitable Products
SELECT
    "Product Name",
    ROUND(SUM(Profit),2) AS Total_Profit
FROM sales GROUP BY "Product Name" ORDER BY Total_Profit DESC LIMIT 10;

-- Least Profitable Products
SELECT
    "Product Name",
    ROUND(SUM(Profit),2) AS Total_Profit
FROM sales GROUP BY "Product Name" ORDER BY Total_Profit LIMIT 10;

-- Top Customers by Profit
SELECT
    "Customer Name",
    ROUND(SUM(Profit),2) AS Total_Profit
FROM sales GROUP BY "Customer Name" ORDER BY Total_Profit DESC LIMIT 10;

-- Region-wise Sales & Profit
SELECT
    Region,
    ROUND(SUM(Sales),2) AS Sales,
    ROUND(SUM(Profit),2) AS Profit
FROM sales GROUP BY Region ORDER BY Sales DESC;

-- Check Duplicate Order IDs
SELECT
    "Order ID",
    COUNT(*) AS occurrences
FROM sales GROUP BY "Order ID" HAVING COUNT(*) > 1;

-- Exact Duplicate Rows
SELECT "Row ID", "Order ID", "Customer Name","Product ID", Sales, COUNT(*) AS duplicate_count FROM sales
GROUP BY
    "Order ID",
    "Product ID",
    Sales
HAVING COUNT(*) > 1;

-- Null Values
SELECT
    COUNT(*) AS Total_Rows
FROM sales WHERE "Order ID" IS NULL OR Sales IS NULL OR Profit IS NULL;

-- Distinct Customers
SELECT COUNT(DISTINCT "Customer ID") AS Customers FROM sales;

-- Distinct Products
SELECT COUNT(DISTINCT "Product ID") AS Products FROM sales;

-- Sales Validation
SELECT ROUND(SUM(Sales),2) AS Total_Sales FROM sales;