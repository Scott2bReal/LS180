-- ALTER TABLE countries
-- ADD COLUMN continent varchar(50);

-- SELECT name FROM countries
-- UPDATE countries
-- SET continent = 'Europe'
-- WHERE name = 'Germany'
-- OR name = 'France';

-- SELECT name FROM countries
-- UPDATE countries
-- SET continent = 'Asia'
-- WHERE name = 'Japan';

-- SELECT name FROM countries
UPDATE countries
SET continent = 'North America'
WHERE name = 'USA';
