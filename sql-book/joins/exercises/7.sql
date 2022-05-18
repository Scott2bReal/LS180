-- Connect to the ls_burger database. Return a list of all orders and their
-- associated product items.

SELECT o.*, p.* FROM orders o
JOIN order_items i
ON o.id = i.order_id
JOIN products p
ON i.product_id = p.id;
