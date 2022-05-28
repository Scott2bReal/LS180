/*
Write a query to print out a report of all tickets purchased by the customer
with the email address 'gennaro.rath@mcdermott.co'. The report should include
the event name and starts_at and the seat's section name, row, and seat number.
*/

SELECT e.name AS event, e.starts_at, sections.name AS section, seats.row, seats.number AS seat FROM customers c
JOIN tickets t ON t.customer_id = c.id
JOIN events e ON t.event_id = e.id
JOIN seats ON t.seat_id = seats.id
JOIN sections ON seats.section_id = sections.id
WHERE c.email = 'gennaro.rath@mcdermott.co';
