
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    address VARCHAR(255),
    email VARCHAR(100)
);

CREATE TABLE meters (
    meter_id INT PRIMARY KEY,
    customer_id INT,
    start_reading DECIMAL(10,2),
    end_reading DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE bills (
    bill_id INT PRIMARY KEY,
    customer_id INT,
    amount DECIMAL(10,2),
    bill_date DATE,
    due_date DATE,
    status VARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    customer_id INT,
    payment_date DATE,
    amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
