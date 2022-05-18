-- Write a query to return the first name and last name of any singer without
-- an associated album entry.

SELECT s.first_name, s.last_name
FROM singers s
LEFT JOIN albums a
ON a.singer_id = s.id
WHERE a.id IS NULL;
