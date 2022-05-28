/*
Write a query that determines how many different customers purchased tickets to
at least one event.
*/

SELECT COUNT(DISTINCT tickets.customer_id) FROM tickets;
