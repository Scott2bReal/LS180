/*
In the previous exercise, we had to use a GROUP BY clause to obtain the
expected output.

Now, we want to work with the same query, but we want to guarantee that the
devices and the count of their parts are listed in descending alphabetical
order. Alter the SQL query above so that we get a result table that looks like
the following.

name          | count
--------------+-------
Gyroscope     |     5
Accelerometer |     3
(2 rows)
*/

SELECT d.name, COUNT(p.part_number) FROM devices d 
LEFT JOIN parts p ON p.device_id = d.id 
GROUP BY d.name 
ORDER BY d.name DESC;
