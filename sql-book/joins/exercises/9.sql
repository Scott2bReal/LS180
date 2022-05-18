-- Build on the query from the previous question to return the name of any
-- customer who ordered fries. Return this in a column called 'Customers who like
-- Fries'. Don't repeat the same customer name more than once in the results.

SELECT DISTINCT c.customer_name AS "Customers who like fries"
FROM customers c
JOIN orders o
ON o.customer_id = c.id
JOIN order_items i
ON i.order_id = o.id
JOIN products p
ON i.product_id = p.id
WHERE p.product_name = 'Fries';
