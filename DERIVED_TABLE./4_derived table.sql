CREATE TABLE Sales_order_info AS
SELECT
    SUBSTRING(Product_ID, 8) AS Product_ID,
    Category,
    Sub_Category,
    Product_Name,
    Sales,
    Quantity,
    Sales / Quantity AS per_quantity_price,
    CASE
        WHEN Sales > 1000 THEN 'Super'
        WHEN Sales > 400 THEN 'Average'
        ELSE 'Low'
    END AS sales_type,
    Discount,
    Profit,
    CASE
        WHEN Profit < 0 THEN 1
        ELSE 0
    END AS Loss
FROM 
    sales_purchase_data;


