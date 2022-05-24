-- Write a SQL statement that finds the names and families for all birds that are
-- not extinct, in order from longest to shortest (based on the length column's
-- value).

SELECT name, family FROM birds
WHERE extinct = false
ORDER BY length DESC;
