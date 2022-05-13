/* We want to break this table up into multiple tables. First of all create a
customers table to hold the customer name data and an email_addresses table to
hold the customer email data. Create a one-to-one relationship between them,
ensuring that if a customer record is deleted so is the equivalent email
address record. Populate the tables with the appropriate data from the current
orders table. */

CREATE TABLE customers (
    id serial UNIQUE,
    email_id int UNIQUE NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE email_addresses (
    id serial UNIQUE,
    customer_id int UNIQUE NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE customers
ADD FOREIGN KEY(email_id)
REFERENCES email_addresses(id)
ON DELETE CASCADE;

ALTER TABLE email_addresses
ADD FOREIGN KEY(customer_id) REFERENCES customers(id)
ON DELETE CASCADE;
