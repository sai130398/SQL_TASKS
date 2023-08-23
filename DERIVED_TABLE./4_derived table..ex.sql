SELECT COUNT(DISTINCT order_id) AS distinct_order_count
FROM customerinfo;

SELECT COUNT(DISTINCT Product_Name) AS unique_product_count
FROM Sales_order_info;

SELECT COUNT(DISTINCT Segment) AS distinct_segment_count
FROM customerinfo;

SELECT MAX(order_date) AS recent_order_date
FROM customerinfo;

SELECT MIN(order_date) AS old_order_date
FROM customerinfo;

SELECT *
FROM customerinfo
WHERE order_date = (SELECT MAX(order_date) FROM customerinfo);

SELECT COUNT(DISTINCT customer_id) AS unique_customers_count
FROM customerinfo
WHERE State IN ('Texas', 'New York');

