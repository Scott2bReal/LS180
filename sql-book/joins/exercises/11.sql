-- Write a query to return the name of every product included in an order
-- alongside the number of times it has been ordered. Sort the results by product
-- name, ascending.

SELECT p.product_name, count(o.id)
FROM products p
JOIN order_items i
ON p.id = i.product_id
JOIN orders o
ON i.order_id = o.id
GROUP BY p.product_name
ORDER BY p.product_name;
