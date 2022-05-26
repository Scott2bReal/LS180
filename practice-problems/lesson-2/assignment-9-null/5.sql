-- Write a SQL statement to determine the average (mean) temperature -- divide
-- the sum of the high and low temperatures by two) for each day from March 2,
-- 2016 through March 8, 2016. Make sure to round each average value to one
-- decimal place.

SELECT date, round(((high + low) /  2), 1) AS "avg temp"
FROM temperatures
WHERE EXTRACT(day from date) > 1 AND EXTRACT(day from date) < 9;
