/*
Write a SQL query that determines the average duration across all the movies in
the films table, rounded to the nearest minute.
*/

-- SELECT round((sum(duration) / count(id)), 0) AS "avg duration" FROM films;
SELECT ROUND(AVG(duration)) FROM films;
