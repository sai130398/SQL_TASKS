CREATE TABLE product_1(
    product_id INT PRIMARY KEY,
    product_name VARCHAR(10),
    quantity INT,
    price INT,
    purchase_cost INT,
    estimated_sale_price FLOAT
);
 ----- insert the below records into the table
  INSERT INTO product_1 (product_id, product_name, quantity, price, purchase_cost,estimated_sale_price)
VALUES (1, 'paycard', 2, 300, 8000,9000.56);
INSERT INTO product_1(product_id, product_name, quantity, price, purchase_cost,estimated_sale_price)
VALUES (2, 'paypoints', 4, 200, 7000,6700.56);
---- add column name location to the exisiting table
ALTER TABLE product_1
ADD COLUMN location VARCHAR(50);
------  update the value of the location
UPDATE product_1
SET location = 'usa'
WHERE product_id = 1;
UPDATE product_1
SET location = 'india'
WHERE product_id = 2;
-----  value of product_name paycard
SELECT location FROM product_1 WHERE product_name = 'paycard';
---- update the product_name column to size of 25
ALTER TABLE product_1
MODIFY COLUMN product_name VARCHAR(25);
--- reduce the size of location field from 50 to 20 and check if it is possible
SELECT location FROM product_1 WHERE CHAR_LENGTH(location) > 20;
ALTER TABLE product_1
MODIFY COLUMN location VARCHAR(20);
----  update the quantity information of 'paycard' product details

UPDATE product_1
SET quantity = 10
WHERE product_name = 'paycard' AND quantity = 2;
----- insert one more  row record in the table
INSERT INTO product_1 (product_id, product_name, quantity, price, purchase_cost, estimated_sale_price,location)
values (4, 'credit card', 2, 500, 900, 750,'india');
----  insert two records using one query
INSERT INTO product_1 (product_id, product_name, quantity, price,purchase_cost, estimated_sale_price,location)
VALUES 
    (5,'credit card',4,500,2000,1850,'UK'),
    (6, 'buy back', 20, 500, 10000,9800.95,'USA');
---- add a column zipcode to the product table
ALTER TABLE product_1
ADD COLUMN zip_code VARCHAR(10);
----  update the zip_code
select * from product_1;






