/*
Write a SQL query that lists all genres for which there is a movie in the films table.
*/

SELECT genre FROM films
GROUP BY genre;
