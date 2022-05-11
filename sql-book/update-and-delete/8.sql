-- SELECT drink FROM orders
-- WHERE customer_name = 'James Bergman';

UPDATE orders
SET drink = 'Lemonade'
WHERE customer_name = 'James Bergman';
