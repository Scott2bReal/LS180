-- SELECT * FROM orders
-- WHERE customer_name = 'Aaron Muller';

UPDATE orders
SET side = 'Fries'
WHERE customer_name = 'Aaron Muller';

UPDATE orders
SET side_total = 0.99
WHERE customer_name = 'Aaron Muller';

UPDATE orders
SET customer_loyalty_points = customer_loyalty_points + 3
WHERE customer_name = 'Aaron Muller';
