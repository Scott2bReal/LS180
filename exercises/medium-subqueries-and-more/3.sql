/*
Write a SQL query that shows all items that have not had bids put on them. Use
the logical operator NOT IN for this exercise, as well as a subquery.

Here is the expected output:
 Not Bid On
------------
 Television
(1 row)
*/

SELECT items.name AS "Not Bid On" FROM items 
WHERE items.id NOT IN (
  SELECT DISTINCT item_id FROM bids
);
