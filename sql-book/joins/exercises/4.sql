-- Write a query to return the first name and last name of any singer who released
-- an album in the 80s and who is still living, along with the names of the album
-- that was released and the release date. Order the results by the singer's age
-- (youngest first).

SELECT s.first_name, s.last_name, a.album_name, a.release_date
FROM singers s
JOIN albums a
ON a.singer_id = s.id
WHERE a.release_date LIKE '%198%'
AND s.deceased = false
ORDER BY s.date_of_birth;
