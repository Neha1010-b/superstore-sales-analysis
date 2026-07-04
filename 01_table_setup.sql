
-- SUPERSTORE SALES - TABLE SETUP AND DATA IMPORT

-- Step 1: Create the sales table
CREATE TABLE sales (
    order_id VARCHAR(50),
    order_date DATE,
    ship_date DATE,
    ship_mode VARCHAR(50),
    customer_id VARCHAR(50),
    customer_name VARCHAR(100),
    segment VARCHAR(50),
    country VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    postal_code VARCHAR(20),
    region VARCHAR(50),
    product_id VARCHAR(50),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    product_name VARCHAR(200),
    sales NUMERIC(10,4),
    quantity INT,
    discount NUMERIC(5,4),
    profit NUMERIC(10,4)
);

-- Step 2: Import data from CSV
\copy sales FROM 'sample_superstore.csv' DELIMITER ',' CSV HEADER ENCODING 'LATIN1';

-- Step 3: Check if data loaded correctly
SELECT COUNT(*) AS total_rows FROM sales;
