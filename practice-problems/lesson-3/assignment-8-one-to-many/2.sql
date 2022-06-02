/*
Write a SQL statement to retrieve the call times,
duration, and first name for all calls not made to
William Swift.
*/

SELECT calls."when", calls.duration, c.first_name FROM calls 
JOIN contacts c ON c.id = calls.contact_id
WHERE c.id != 6;
