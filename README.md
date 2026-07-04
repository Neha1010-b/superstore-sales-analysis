# superstore-sales-analysis
SQL Data Analysis Project on Superstore Sales Data - 20 Business Queries with Insights

Superstore Sales Analysis

Project Overview
A comprehensive SQL data analysis project on Superstore sales data containing **9,994 orders** across **793 customers** and **4 years** of sales data.

Dataset
- Source: Sample Superstore Dataset
- Records: 9,994 rows
- Time Period: 2015-2018

Business Questions Answered

### Basic Analysis
-  Total Sales: $2,297,200.86
-  Total Profit: $286,397.02
-  Total Orders: 5,009
-  Total Customers: 793
-  Average Order Value: $458.61

### Product Analysis
- Top 10 Products by Sales (Canon Copier: $27,453.38)
- Sales by Category (Technology: $836,154.03)
- Profit by Sub-Category (Copiers: $55,617.82)

### Customer Analysis
- Top 10 Customers (Sean Miller: $25,043.05)
- Customer Lifetime Value: **$2,896.85**

### Regional Analysis
- Region-wise Sales (West: $725,457.82)
- State-wise Profit (California: $60,632.85)

### Time Analysis
- Monthly Sales Trend
- Monthly Profit Trend

### Advanced Analysis
- Customer Ranking using RANK()
- Year-over-Year Growth Rate
- Profit Margin by Category
- Running Total Sales
- Discount Impact on Profit

### Technologies Used
- PostgreSQL - Database
- SQL - Queries and Analysis
- Git - Version Control

## 🚀 How to Run This Project

### Prerequisites
- PostgreSQL installed

### Steps
1. Run `01_table_setup.sql` to create the table
2. Import the CSV file
3. Run queries from the remaining files

## 📝 Learning Outcomes
- ✅ SQL aggregation functions (SUM, AVG, COUNT)
- ✅ Window functions 
- ✅ Date and time analysis
- ✅ Business KPI calculation
