-- PRODUCT ANALYSIS QUERIES (3 Queries)

-- Query 6: Top 10 Products by Sales
-- Finds the 10 products generating the highest revenue
SELECT 
    product_name,
    ROUND(SUM(sales)::NUMERIC, 2) AS total_sales
FROM sales
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 10;

-- Query 7: Sales by Category
-- Shows total sales for each product category
SELECT 
    category,
    ROUND(SUM(sales)::NUMERIC, 2) AS total_sales
FROM sales
GROUP BY category
ORDER BY total_sales DESC;

-- Query 8: Profit by Sub-Category
-- Shows total profit for each sub-category
SELECT 
    sub_category,
    ROUND(SUM(profit)::NUMERIC, 2) AS total_profit
FROM sales
GROUP BY sub_category
ORDER BY total_profit DESC;
