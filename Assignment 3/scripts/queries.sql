/*Step 1: Setup Data
Create these 3 tables from it:
customers
orders
products
Insert data into these tables using SELECT DISTINCT.  */

-- Customers
CREATE TABLE customers AS
SELECT DISTINCT "Customer ID"   AS customer_id,
                "Customer Name" AS customer_name,
                Segment
FROM superstore_raw;

select * from customers;

-- Products
CREATE TABLE products AS
SELECT DISTINCT
    "Product ID" AS product_id,
    "Product Name" AS product_name,
    Category,
    "Sub-Category" AS sub_category
FROM superstore_raw;

select * from products;

-- Orders
CREATE TABLE orders AS
SELECT
    "Order ID" AS order_id,
    "Customer ID" AS customer_id,
    "Product ID" AS product_id,
    Sales,
    Quantity,
    Profit,
    Region,
    "Order Date" AS order_date
FROM superstore_raw;

select * from orders;

/*Step 2: Perform Required Queries
Write and execute SQL queries for each of the following: */

-- 1. Find all orders where sales are greater than the average sales. (Subquery)
SELECT * FROM orders WHERE Sales > ( SELECT AVG(Sales) FROM orders );

-- 2. Find the highest sales order for each customer. (Subquery)
SELECT * FROM orders o WHERE Sales = ( SELECT MAX(Sales) FROM orders WHERE customer_id = o.customer_id );

-- 3. Calculate total sales for each customer. (CTE)
WITH customer_sales AS ( SELECT customer_id, SUM(Sales) AS total_sales FROM orders GROUP BY customer_id )
SELECT * FROM customer_sales ORDER BY total_sales DESC;

-- 4. Find customers whose total sales are above average. (CTE + Subquery)
WITH customer_sales AS
    ( SELECT customer_id, SUM(Sales) AS total_sales FROM orders GROUP BY customer_id )
SELECT customer_id, total_sales
FROM customer_sales
WHERE total_sales > ( SELECT AVG(total_sales) FROM customer_sales )
ORDER BY total_sales DESC;

-- 5. Rank all customers based on total sales. (Window Function)
WITH customer_sales AS
    ( SELECT customer_id, SUM(Sales) AS total_sales FROM orders GROUP BY customer_id )
SELECT customer_id, total_sales, RANK() OVER (ORDER BY total_sales DESC) AS sales_rank
FROM customer_sales ORDER BY sales_rank;

-- 6. Assign row numbers to each order within a customer. (Window Function + PARTITION BY)
SELECT customer_id, order_id, Sales, ROW_NUMBER() OVER
        ( PARTITION BY customer_id ORDER BY Sales DESC ) AS row_num
FROM orders ORDER BY customer_id, row_num;

-- 7. Display top 3 customers based on total sales. (Window Function)
WITH customer_sales AS
    ( SELECT customer_id, SUM(Sales) AS total_sales FROM orders GROUP BY customer_id ),
ranked_customers AS
    ( SELECT customer_id, total_sales, RANK() OVER (ORDER BY total_sales DESC) AS sales_rank FROM customer_sales )
SELECT customer_id, total_sales, sales_rank
FROM ranked_customers WHERE sales_rank <= 3 ORDER BY sales_rank;

/* Step 3: Final Combined Query
Write one final query that shows:
Customer Name
Total Sales
Rank
(Use JOIN + CTE + Window Function together) */
WITH customer_sales AS
    ( SELECT customer_id, SUM(Sales) AS total_sales FROM orders GROUP BY customer_id )
SELECT c.customer_name, cs.total_sales, RANK() OVER ( ORDER BY cs.total_sales DESC ) AS customer_rank
FROM customer_sales cs
JOIN customers c ON cs.customer_id = c.customer_id
ORDER BY customer_rank;

/* Mini Project: Customer Sales Insights
Answer the following using SQL: */

-- 1. Who are the top 5 customers?
WITH customer_sales AS
    ( SELECT customer_id, SUM(Sales) AS total_sales FROM orders GROUP BY customer_id )
SELECT c.customer_name, cs.total_sales
FROM customer_sales cs JOIN customers c ON cs.customer_id = c.customer_id
ORDER BY cs.total_sales DESC LIMIT 5;

-- 2. Who are the bottom 5 customers?
WITH customer_sales AS
    ( SELECT customer_id, SUM(Sales) AS total_sales FROM orders GROUP BY customer_id )
SELECT c.customer_name, cs.total_sales
FROM customer_sales cs JOIN customers c ON cs.customer_id = c.customer_id
ORDER BY cs.total_sales ASC LIMIT 5;

-- 3. Which customers made only one order?
SELECT c.customer_name, COUNT(o.order_id) AS order_count FROM orders o JOIN customers c
ON o.customer_id = c.customer_id
GROUP BY o.customer_id, c.customer_name
HAVING COUNT(o.order_id) = 1;

-- 4. Which customers have above-average sales?
WITH customer_sales AS
    ( SELECT customer_id, SUM(Sales) AS total_sales FROM orders GROUP BY customer_id )
SELECT c.customer_name, cs.total_sales, AVG(cs.total_sales) OVER() AS avg_customer_sales
FROM customer_sales cs JOIN customers c
    ON cs.customer_id = c.customer_id
WHERE cs.total_sales >
      ( SELECT AVG(total_sales) FROM customer_sales )
ORDER BY cs.total_sales DESC;

-- 5. What is the highest order value per customer?
SELECT c.customer_name, MAX(o.Sales) AS highest_order_value FROM orders o JOIN customers c
    ON o.customer_id = c.customer_id GROUP BY o.customer_id, c.customer_name
ORDER BY highest_order_value DESC;