-- REGIONAL ANALYSIS QUERIES (2 Queries)

-- Query 11: Region-wise Sales
-- Shows total sales for each region
SELECT 
    region,
    ROUND(SUM(sales)::NUMERIC, 2) AS total_sales
FROM sales
GROUP BY region
ORDER BY total_sales DESC;

-- Query 12: State-wise Profit (Top 10)
-- Shows the 10 most profitable states
SELECT 
    state,
    ROUND(SUM(profit)::NUMERIC, 2) AS total_profit
FROM sales
GROUP BY state
ORDER BY total_profit DESC
LIMIT 10;
