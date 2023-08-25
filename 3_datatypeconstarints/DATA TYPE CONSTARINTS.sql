CREATE TABLE customers_data (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(255) NOT NULL
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATE
);
-- Assuming customer_id in the "orders" table references customer_id in the "customers_data" table
ALTER TABLE orders
ADD CONSTRAINT fk_customer
FOREIGN KEY (customer_id) REFERENCES customers_data(customer_id);

-- Insert data into customers_data table
INSERT INTO customers_data (customer_id, customer_name) VALUES
    (1, 'John Doe'),
    (2, 'Jane Smith'),
    (3, 'Michael Johnson'),
    (4, 'Emily Williams'),
    (5, 'David Brown');

-- Insert data into orders table
INSERT INTO orders (order_id, customer_id, order_date) VALUES
    (101, 1, '2023-08-15'),
    (102, 2, '2023-08-16'),
    (103, 3, '2023-08-16'),
    (104, 1, '2023-08-17'),
    (105, 4, '2023-08-18');
    
    DELETE FROM orders WHERE customer_id = 3;
DELETE FROM customers_data WHERE customer_id = 3;

