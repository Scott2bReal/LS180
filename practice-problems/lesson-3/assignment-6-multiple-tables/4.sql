/*
Write a query that determines what percentage of the customers in the database
have purchased a ticket to one or more of the events.
*/

SELECT ROUND(COUNT(DISTINCT t.customer_id)::decimal / COUNT(DISTINCT c.id) * 100.0, 2) AS percent FROM customers AS c
LEFT JOIN tickets AS t ON c.id = t.customer_id;
