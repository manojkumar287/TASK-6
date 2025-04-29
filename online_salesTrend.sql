CREATE DATABASE Online_sales_data;
use Online_sales_data;
create table Online_sales(
    order_id INTEGER PRIMARY KEY,
    order_date TIMESTAMP,
    amount DECIMAL(10, 2),
    product_id VARCHAR(50)
);

INSERT INTO online_sales (order_id, order_date, amount, product_id) VALUES
(1, '2025-01-05 10:00:00', 25.50, 'A123'),
(2, '2025-01-12 14:30:00', 50.75, 'B456'),
(3, '2025-01-20 09:15:00', 15.20, 'C789'),
(4, '2025-02-01 11:45:00', 100.00, 'A123'),
(5, '2025-02-18 16:00:00', 30.99, 'B456'),
(6, '2025-02-25 12:20:00', 75.50, 'D012'),
(7, '2025-03-03 18:00:00', 20.00, 'C789'),
(8, '2025-03-15 13:05:00', 120.25, 'A123'),
(9, '2025-03-22 17:50:00', 45.60, 'B456'),
(10, '2025-03-29 10:40:00', 60.10, 'E345'),
(11, '2025-01-05 10:00:00', 10.00, 'F678'),
(12, '2024-12-28 15:30:00', 80.00, 'G901'),
(13, '2024-12-05 08:00:00', 35.40, 'H234');

SELECT * FROM online_sales;
DESCRIBE online_sales;
ALTER TABLE online_sales
MODIFY COLUMN order_date TIMESTAMP;
SELECT
    EXTRACT(YEAR FROM order_date) AS sales_year,
    EXTRACT(MONTH FROM order_date) AS sales_month,
    SUM(amount) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS monthly_order_volume
FROM
    online_sales
GROUP BY
    sales_year, sales_month
ORDER BY
    sales_year, sales_month;
