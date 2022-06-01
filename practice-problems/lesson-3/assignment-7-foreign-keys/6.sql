/*
Write a SQL statement that will prevent NULL values from being stored in
orders.product_id. What happens if you execute that statement?
*/

ALTER TABLE orders
ALTER COLUMN product_id
SET NOT NULL;
