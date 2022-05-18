-- Return the id of any order that includes Fries. Use table aliasing in your
-- query.

SELECT o.id AS "Orders with fries IDs"
FROM orders o
JOIN order_items i
ON i.order_id = o.id
JOIN products p
ON i.product_id = p.id
WHERE p.product_name = 'Fries';
