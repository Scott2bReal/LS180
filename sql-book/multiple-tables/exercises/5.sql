/* We want to make our ordering system more flexible, so that customers can
  order any combination of burgers, sides and drinks. The first step towards
  doing this is to put all our product data into a separate table called
  products. Create a table and populate it with the following data: */

CREATE TABLE products (
  id serial PRIMARY KEY,
  product_name varchar(50),
  product_cost decimal(4, 2) DEFAULT 0,
  product_type varchar(20),
  product_loyalty_points int
);
