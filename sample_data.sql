INSERT INTO customers (customer_id, first_name, last_name, address, email)
VALUES (1, 'Aaron', 'Wong', '123 Main St', 'Aaron.Wong@email.com'),
       (2, 'Baron', 'Wong', '456 Oak Rd', 'Baron.Wong@email.com');

INSERT INTO meters (meter_id, customer_id, start_reading, end_reading)
VALUES (1, 1, 100.00, 200.00),
       (2, 2, 150.00, 250.00);

INSERT INTO bills (bill_id, customer_id, amount, bill_date, due_date, status)
VALUES (1, 1, 150.00, '2025-01-01', '2025-01-15', 'unpaid'),
       (2, 2, 100.00, '2025-01-01', '2025-01-15', 'paid');

INSERT INTO payments (payment_id, customer_id, payment_date, amount)
VALUES (1, 2, '2025-01-10', 100.00);
