/*
Write a SQL query that determines the average duration for each genre in the
films table, rounded to the nearest minute.
*/

SELECT genre, ROUND(AVG(duration)) AS "avg duration" FROM films
GROUP BY genre;
