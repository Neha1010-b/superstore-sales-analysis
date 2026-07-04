-- BASIC ANALYSIS QUERIES (5 Queries)

-- Query 1: Total Sales
-- Calculates total revenue from all orders
SELECT 
    ROUND(SUM(sales)::NUMERIC, 2) AS total_sales
FROM sales;

-- Query 2: Total Profit
-- Calculates net profit from all orders
SELECT 
    ROUND(SUM(profit)::NUMERIC, 2) AS total_profit
FROM sales;

-- Query 3: Total Orders
-- Counts unique order IDs
SELECT 
    COUNT(DISTINCT order_id) AS total_orders
FROM sales;

-- Query 4: Total Customers
-- Counts unique customer IDs
SELECT 
    COUNT(DISTINCT customer_id) AS total_customers
FROM sales;

-- Query 5: Average Order Value (AOV)
-- Total sales divided by total orders
SELECT 
    ROUND((SUM(sales) / COUNT(DISTINCT order_id))::NUMERIC, 2) AS avg_order_value
FROM sales;
