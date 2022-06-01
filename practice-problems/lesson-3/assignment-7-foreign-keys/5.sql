/*
Can you insert a row into orders without a product_id? Write a SQL statement to
prove your answer.
*/

-- You can right now, because product_id does not have the NOT NULL constraint

INSERT INTO orders (quantity)
VALUES (1);
