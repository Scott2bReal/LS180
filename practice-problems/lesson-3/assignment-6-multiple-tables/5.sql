/*
Write a query that returns the name of each event and how many tickets were
sold for it, in order from most popular to least popular.
*/

SELECT e.name, COUNT(t.event_id) AS popularity FROM events e
LEFT JOIN tickets t ON e.id = t.event_id
GROUP BY e.name ORDER BY popularity DESC;
