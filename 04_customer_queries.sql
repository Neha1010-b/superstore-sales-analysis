-- CUSTOMER ANALYSIS QUERIES (2 Queries)

-- Query 9: Top 10 Customers by Sales
-- Finds the 10 customers who spent the most money
SELECT 
    customer_name,
    ROUND(SUM(sales)::NUMERIC, 2) AS total_sales
FROM sales
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10;

-- Query 10: Customer Lifetime Value (CLV)
-- Average total spend per customer
SELECT 
    ROUND(AVG(customer_total)::NUMERIC, 2) AS avg_customer_lifetime_value
FROM (
    SELECT 
        customer_name,
        SUM(sales) AS customer_total
    FROM sales
    GROUP BY customer_name
) AS customer_totals;
