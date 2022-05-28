/*
Write a query that returns the user id, email address, and number of events for
all customers that have purchased tickets to three events.
*/

SELECT c.id, c.email, COUNT(DISTINCT t.event_id) FROM customers c
JOIN tickets t ON c.id = t.customer_id
GROUP BY c.id
HAVING COUNT(DISTINCT t.event_id) = 3
ORDER BY c.id;
