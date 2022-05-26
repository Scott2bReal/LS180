-- Each day, it rains one millimeter for every degree the average temperature
-- goes above 35. Write a SQL statement to update the data in the table
-- temperatures to reflect this.

/*
Find avg temp
avg temp - 35 = rainfall
*/

UPDATE temperatures
SET rainfall = ((high + low) / 2) - 35
WHERE ((high + low) / 2) > 35;
