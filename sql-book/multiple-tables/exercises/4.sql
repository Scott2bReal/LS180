/* We want to break this table up into multiple tables. First of all create a
customers table to hold the customer name data and an email_addresses table to
hold the customer email data. Create a one-to-one relationship between them,
ensuring that if a customer record is deleted so is the equivalent email
address record. Populate the tables with the appropriate data from the current
orders table. */

CREATE TABLE customers (
    id serial PRIMARY KEY,
    customer_name varchar(100)
);

CREATE TABLE email_addresses (
  customer_id integer PRIMARY KEY,
  customer_email varchar(50),
  FOREIGN KEY(customer_id) REFERENCES customers(id)
  ON DELETE CASCADE
);
