-- Write a query to return the first name of any singer who had an album released
-- under the Warner Bros label.

SELECT DISTINCT s.first_name
FROM singers s
JOIN albums a
ON a.singer_id = s.id
WHERE a.label = 'Warner Bros';
