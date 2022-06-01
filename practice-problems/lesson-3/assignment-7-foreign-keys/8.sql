/*
Create a new table called reviews to store the data shown below. This table
should include a primary key and a reference to the products table.

Product 	Review
small bolt 	a little small
small bolt 	very round!
large bolt 	could have been smaller
*/

CREATE TABLE reviews (
  id serial PRIMARY KEY,
  body text NOT NULL,
  product_id int REFERENCES products (id)
);
