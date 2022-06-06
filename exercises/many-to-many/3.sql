/*
Write a query to retrieve the customer data for every customer who does not
currently subscribe to any services.
*/

SELECT c.* FROM customers c 
LEFT JOIN customers_services cs ON cs.customer_id = c.id 
WHERE cs.customer_id IS NULL
GROUP BY c.id;

/*
Further Exploration

Can you write a query that displays all customers with no services and all
services that currently don't have any customers? The output should look like
this:

 id |     name      | payment_token | id |     description     | price
----+---------------+---------------+----+---------------------+--------
  2 | Nancy Monreal | JKWQPJKL      |    |                     |
    |               |               |  8 | One-to-one Training | 999.00
(2 rows)
*/

SELECT c.*, s.* FROM customers c 
FULL JOIN customers_services cs ON c.id = cs.customer_id 
FULL JOIN services s ON cs.service_id = s.id 
WHERE cs.customer_id IS NULL OR cs.service_id IS NULL;
