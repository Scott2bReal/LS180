CREATE TABLE orders (
  id serial PRIMARY KEY,
  customer_id int NOT NULL,
  order_status varchar(20),
  FOREIGN KEY(customer_id) REFERENCES customers(id)
  ON DELETE CASCADE
);

CREATE TABLE order_items (
  id serial PRIMARY KEY,
  order_id int NOT NULL,
  product_id int NOT NULL,
  FOREIGN KEY(order_id) REFERENCES orders(id),
  FOREIGN KEY(product_id) REFERENCES products(id)
  ON DELETE CASCADE
);

-- James
INSERT INTO orders (customer_id, order_status)
VALUES (1, 'In Progress');

INSERT INTO order_items ( order_id, product_id)
VALUES (1, 3), (1, 5), (1, 8);

-- Natasha order 1
INSERT INTO orders (customer_id, order_status)
VALUES (2, 'Placed');

INSERT INTO order_items (order_id, product_id)
VALUES (2, 2), (2, 5), (2, 7);

-- Natasha order 2
INSERT INTO orders (customer_id, order_status)
VALUES (2, 'Complete');

INSERT INTO order_items (order_id, product_id)
VALUES (3, 4), (3, 2), (3, 5), (3, 5), (3, 6), (3, 10), (3, 9);

-- Aaron
INSERT INTO orders (customer_id, order_status)
VALUES (3, 'Placed');

INSERT INTO order_items (order_id, product_id)
VALUES (4, 1), (4, 5);
