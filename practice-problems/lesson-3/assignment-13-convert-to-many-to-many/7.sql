/*
Write a SQL statement that determines how many films each director in the
database has directed. Sort the results by number of films (greatest first) and
then name (in alphabetical order).
*/

SELECT d.name, COUNT(f.id) AS "# of films directed" FROM directors d 
JOIN directors_films df ON df.director_id = d.id 
JOIN films f ON df.film_id = f.id 
GROUP BY d.name
ORDER BY "# of films directed" DESC, d.name;
