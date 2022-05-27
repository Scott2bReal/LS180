/*
Write a SQL query that determines the average duration of movies for each
decade represented in the films table, rounded to the nearest minute and listed
in chronological order.
*/

SELECT
    (year / 10) * 10 AS decade,
    ROUND(AVG(duration)) AS avg_duration
FROM films
GROUP BY decade
ORDER BY decade;
