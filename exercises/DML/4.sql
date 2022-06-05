/*
We want to grab all parts that have a part_number that starts with 3. Write a
SELECT query to get this information. This table may show all attributes of the
parts table.
*/

/*
My original solution. This works for the data currently stored in the database,
but because part numbers can be anywhere from 1 to 10000 this may not work with
more parts added to the database. The book's solution is to temporarily convert
the part number to text, and use pattern matching to look for part numbers that
begin with 3

SELECT * FROM parts 
WHERE part_number > 29 AND part_number < 40;
*/

SELECT * FROM parts
WHERE part_number::text LIKE '3%';
