/*
The company president is looking to increase revenue. As a prelude to his
decision making, he asks for two numbers: the amount of expected income from
"big ticket" services (those services that cost more than $100) and the maximum
income the company could achieve if it managed to convince all of its customers
to select all of the company's big ticket items.

For simplicity, your solution should involve two separate SQL queries: one that
  reports the current expected income level, and one that reports the
  hypothetical maximum. The outputs should look like this:

 sum
--------
 500.00
(1 row)

   sum
---------
 10493.00
(1 row)

Current big-ticket revenue:
- Get list of customers paying for big-ticket items
- Get total income from just those items and custies

Hypothetical revenue:
- Get a list of big-ticket items, sum their price
- Get the total amount of customers, multiply that number by other sum
*/

-- Current big-ticket revenue
SELECT SUM(s.price) FROM services s 
JOIN customers_services cs ON cs.service_id = s.id 
JOIN customers c ON cs.customer_id = c.id 
WHERE s.price > 100.00;

-- Hypothetical big-ticket revenue
SELECT SUM(services.price) FROM services
CROSS JOIN customers
WHERE services.price > 100.00;

/*
Further Exploration:

This exercise is really contrived: it just shows how hard it is to come up with
a possible use case for CROSS JOIN. CROSS JOIN is generally best suited to
generating test data rather than production queries.

Can you think of any other situations where a CROSS JOIN might be useful?

A cross join might be useful in wedding planning when deciding on seating
arrangements
*/
