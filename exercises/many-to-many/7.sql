/*
Assuming that everybody in our database has a bill coming due, and that all of
them will pay on time, write a query to compute the total gross income we
expect to receive.

Answer: 

  gross
 --------
 678.50
(1 row)
*/

/*
Get a list of services custies have signed up for
Select the sum of that list
*/

SELECT SUM(s.price) AS gross FROM services s
JOIN customers_services cs ON s.id = cs.service_id;
