SELECT o.quantity, p.name FROM orders o
JOIN products p ON o.product_id = p.id;
