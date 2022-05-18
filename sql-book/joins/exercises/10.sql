-- Write a query to return the total cost of Natasha O'Shea's orders.

SELECT sum(p.product_cost) AS "Total cost of Natasha's orders"
FROM products p
JOIN order_items i
ON p.id = i.product_id
JOIN orders o
ON o.id = i.order_id
JOIN customers c
ON c.id = o.customer_id
WHERE c.customer_name LIKE '%Natasha%';
