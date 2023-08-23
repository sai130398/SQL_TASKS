create database product_db1;
-----  create a table with the name "product" with following columns
CREATE TABLE product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(10),
    quantity INT,
    price INT,
    purchase_cost INT,
    estimated_sale_price FLOAT
);
------ display all columns and datatypes in bank_inventory
CREATE TABLE bank_inventory (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(10),
    quantity INT,
    price INT,
    purchase_cost INT,
    estimated_sale_price FLOAT
);
 DESCRIBE bank_inventory;
 

