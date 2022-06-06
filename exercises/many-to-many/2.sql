/*
Write a query to retrieve the customer data for every customer who currently
subscribes to at least one service.
*/

SELECT DISTINCT c.* FROM customers c 
JOIN customers_services cs ON cs.customer_id = c.id
GROUP BY c.id;
