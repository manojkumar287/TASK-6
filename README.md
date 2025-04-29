Sales Trend Analysis using SQL Aggregations
This repository contains the SQL scripts used to analyze monthly sales trends from an online_sales database table. The goal of this analysis was to calculate the total monthly revenue and the number of unique orders per month.

Key Steps:

Table Creation: The online_sales table was created with structure mentioned in attached sql file.
Data Insertion: sales data was inserted into the online_sales table by considering some random raw data.

Data Type Correction: An issue was identified where the order_date column had an incorrect data type. This was corrected using the ALTER TABLE command to ensure proper date and time functionality.
Monthly Sales Analysis: A SQL SELECT query with the EXTRACT, SUM, COUNT(DISTINCT), GROUP BY, and ORDER BY clauses was used to calculate and organize the monthly revenue and order volume.
Outcome:
The executed query provides a result set showing the total revenue and the number of unique orders for each month and year present in the online_sales table. This analysis helps in understanding the sales performance and identifying trends over time.
