SELECT customer_id, SUM(amount) AS total_unpaid
FROM bills
WHERE status = 'unpaid'
GROUP BY customer_id;
