/* 
Write an SQL query that returns a result table with the name of each device in
our database together with the number of parts for that device.
*/

/*
SELECT d.name, count(p.part_number) AS "# of parts" FROM devices d 
JOIN parts p ON p.device_id = d.id 
GROUP BY d.name;

This was my solution, which again works for the data which is currently held in
the database, but will not work if devices with no parts are added in the
future. Instead of an INNER JOIN, a LEFT OUTER JOIN should be used
*/

-- Example solution
SELECT d.name, count(p.part_number) AS "# of parts" FROM devices d 
LEFT JOIN parts p ON p.device_id = d.id 
GROUP BY d.name;
