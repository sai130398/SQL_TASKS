CREATE TABLE customer (
    cust_id         SMALLINT,
    cust_no         MEDIUMINT,
    cust_firstname  CHAR(50),
    cust_lastname   VARCHAR(50),
    cust_gender     VARCHAR(10),
    cust_dob        DATE,
    cust_age        INT,
    cust_revenue    DECIMAL(10, 2),
    cust_spend_amt  FLOAT,
    cust_address    TEXT,
    cust_city       CHAR(30),
    cust_comments   TEXT,
    cust_status     ENUM('active', 'inactive'),
    cust_available  BOOLEAN
);

INSERT INTO customer VALUES
    (1, 1001, 'John', 'Doe', 'Male', '1990-05-15', 32, 5000.50, 200.75, '123 Main St', 'New York', 'Regular customer', 'active', TRUE),
    (2, 1002, 'Jane', 'Smith', 'Female', '1985-08-10', 37, 7500.00, 350.25, '456 Elm St', 'Los Angeles', 'VIP customer', 'active', TRUE),
    (3, 1003, 'Michael', 'Johnson', 'Male', '1992-02-22', 29, 3000.75, 150.50, '789 Oak St', 'Chicago', 'First-time customer', 'inactive', FALSE),
    (4, 1004, 'Emily', 'Williams', 'Female', '1988-11-18', 33, 4200.25, 180.00, '101 Pine St', 'Houston', 'Regular customer', 'active', TRUE),
    (5, 1005, 'David', 'Brown', 'Male', '1995-06-30', 26, 6000.00, 250.60, '222 Maple St', 'Miami', 'Loyal customer', 'active', TRUE);
    
SELECT CAST(cust_id AS CHAR) AS cust_id_string FROM customer;
SELECT DATE_FORMAT(cust_dob, '%Y-%m-%d') AS cust_dob_date FROM customer;
SELECT CAST(cust_revenue AS SIGNED) AS cust_revenue_int FROM customer;
SELECT CASE WHEN cust_available THEN 'TRUE' ELSE 'FALSE' END AS cust_available_text FROM customer;

SELECT
    CASE
        WHEN cust_age < 18 THEN 'Child'
        WHEN cust_age BETWEEN 21 AND 65 THEN 'Adult Customer'
        ELSE 'Senior Customer'
    END AS customer_category
FROM customer;

-- Add NOT NULL constraint to cust_id column
ALTER TABLE customer
MODIFY cust_id SMALLINT NOT NULL;

-- Add UNIQUE constraint to cust_no column
ALTER TABLE customer
ADD CONSTRAINT unique_cust_no UNIQUE (cust_no);

-- Add DEFAULT constraint to cust_city column
ALTER TABLE customer
ALTER COLUMN cust_city SET DEFAULT 'NY';

-- Create the Employees table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Age INT CHECK (Age >= 18),
    Department VARCHAR(50) DEFAULT 'IT'
);

-- Insert values
INSERT INTO Employees (EmployeeID, Name, Age, Department) VALUES
    (1, 'John Doe', 25, 'HR'),
    (2, 'Jane Smith', 22, 'Finance'),
    (3, 'Michael Johnson', 30, 'IT'),
    (4, 'Emily Williams', 19, 'Marketing');

-- Attempt to insert a value that violates the CHECK constraint
-- This will fail due to age being less than 18
INSERT INTO Employees (EmployeeID, Name, Age, Department) VALUES
    (5, 'Robert Brown', 16, 'Sales');



