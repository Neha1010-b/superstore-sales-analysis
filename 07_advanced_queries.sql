-- ADVANCED ANALYSIS QUERIES (6 Queries)

-- Query 15: Rank Customers by Sales
-- Uses RANK() window function to rank customers by spending
SELECT 
    customer_name,
    ROUND(SUM(sales)::NUMERIC, 2) AS total_sales,
    RANK() OVER (ORDER BY SUM(sales) DESC) AS sales_rank
FROM sales
GROUP BY customer_name
ORDER BY sales_rank
LIMIT 20;

-- Query 16: Profit Margin by Category
-- Shows what percentage of sales is profit for each category
SELECT 
    category,
    ROUND(SUM(sales)::NUMERIC, 2) AS total_sales,
    ROUND(SUM(profit)::NUMERIC, 2) AS total_profit,
    ROUND((SUM(profit) / SUM(sales) * 100)::NUMERIC, 2) AS profit_margin_percentage
FROM sales
GROUP BY category
ORDER BY profit_margin_percentage DESC;

-- Query 17: Year-over-Year Growth Rate
-- Uses LAG() to compare sales with previous year
WITH yearly_sales AS (
    SELECT 
        EXTRACT(YEAR FROM order_date) AS year,
        ROUND(SUM(sales)::NUMERIC, 2) AS total_sales
    FROM sales
    GROUP BY EXTRACT(YEAR FROM order_date)
    ORDER BY year
)
SELECT 
    year,
    total_sales,
    LAG(total_sales) OVER (ORDER BY year) AS previous_year_sales,
    ROUND(((total_sales - LAG(total_sales) OVER (ORDER BY year)) / LAG(total_sales) OVER (ORDER BY year) * 100)::NUMERIC, 2) AS growth_percentage
FROM yearly_sales;

-- Query 18: Running Total of Sales
-- Shows cumulative sales over time using window function
SELECT 
    TO_CHAR(order_date, 'Mon YYYY') AS month_year,
    ROUND(SUM(sales)::NUMERIC, 2) AS monthly_sales,
    ROUND(SUM(SUM(sales)) OVER (ORDER BY DATE_TRUNC('month', order_date))::NUMERIC, 2) AS running_total
FROM sales
GROUP BY DATE_TRUNC('month', order_date)
ORDER BY DATE_TRUNC('month', order_date);

-- Query 19: Discount Impact Analysis
-- Compares orders with and without discounts
SELECT 
    CASE 
        WHEN discount > 0 THEN 'With Discount'
        ELSE 'No Discount'
    END AS discount_status,
    COUNT(*) AS total_orders,
    ROUND(AVG(sales)::NUMERIC, 2) AS avg_sales,
    ROUND(AVG(profit)::NUMERIC, 2) AS avg_profit,
    ROUND((AVG(profit) / AVG(sales) * 100)::NUMERIC, 2) AS avg_profit_margin
FROM sales
GROUP BY discount_status;

-- Query 20: Lowest Profit Margin Products
-- Identifies products with the lowest profit margins
SELECT 
    product_name,
    ROUND(SUM(sales)::NUMERIC, 2) AS total_sales,
    ROUND(SUM(profit)::NUMERIC, 2) AS total_profit,
    ROUND((SUM(profit) / SUM(sales) * 100)::NUMERIC, 2) AS profit_margin_percentage
FROM sales
GROUP BY product_name
HAVING SUM(sales) > 1000
ORDER BY profit_margin_percentage ASC
LIMIT 5;
