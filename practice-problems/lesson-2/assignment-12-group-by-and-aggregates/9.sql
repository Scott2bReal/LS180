/*
Write a SQL query that will return the following data:
   genre   | count
-----------+-------
 scifi     |     5
 comedy    |     4
 drama     |     2
 espionage |     2
 crime     |     1
 thriller  |     1
 horror    |     1
 action    |     1
(8 rows)
*/

SELECT genre, count(id) FROM films
GROUP BY genre ORDER BY count(id) DESC;
