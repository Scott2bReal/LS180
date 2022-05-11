SELECT count(side), side FROM orders
WHERE side = 'Fries'
OR side = 'Onion Rings'
GROUP BY side;
