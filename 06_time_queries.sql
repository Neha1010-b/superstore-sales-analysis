-- TIME ANALYSIS QUERIES (2 Queries)

-- Query 13: Monthly Sales Trend
-- Shows total sales for each month over time
SELECT 
    TO_CHAR(order_date, 'Mon YYYY') AS month_year,
    ROUND(SUM(sales)::NUMERIC, 2) AS total_sales
FROM sales
GROUP BY TO_CHAR(order_date, 'Mon YYYY'), DATE_TRUNC('month', order_date)
ORDER BY DATE_TRUNC('month', order_date);

-- Query 14: Monthly Profit Trend
-- Shows total profit for each month over time
SELECT 
    TO_CHAR(order_date, 'Mon YYYY') AS month_year,
    ROUND(SUM(profit)::NUMERIC, 2) AS total_profit
FROM sales
GROUP BY TO_CHAR(order_date, 'Mon YYYY'), DATE_TRUNC('month', order_date)
ORDER BY DATE_TRUNC('month', order_date);
