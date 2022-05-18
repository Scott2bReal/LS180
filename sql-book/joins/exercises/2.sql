-- Write a query to return all of the names and capitals of the European
-- countries.

SELECT c.name, c.capital FROM countries c
JOIN continents n
ON c.continent_id = n.id
WHERE n.id = 3;
