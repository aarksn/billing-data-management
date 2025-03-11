SELECT customer_id, AVG(amount) AS average_bill
FROM bills
GROUP BY customer_id;
-- You can use this average to predict the next month's bill.
