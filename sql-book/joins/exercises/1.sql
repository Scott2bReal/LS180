SELECT c.name, n.continent_name
FROM countries c
JOIN continents n
ON c.continent_id = n.id;
