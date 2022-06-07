/*
Write a SQL query that shows all items that have had bids put on them. Use the
logical operator IN for this exercise, as well as a subquery.

Here is the expected output:

 Bid on Items
---------------
 Video Game
 Outdoor Grill
 Painting
 Tent
 Vase
(5 rows)
*/ 

/*
This was my original solution. The one from the book is much faster according
to the EXPLAIN ANALYZE output.

EXPLAIN ANALYZE SELECT items.name AS "Bid on Items" FROM items WHERE items.id IN (
  SELECT item_id FROM bids WHERE item_id IS NOT NULL
)
GROUP BY items.id
ORDER BY items.id;
*/

EXPLAIN ANALYZE SELECT items.name AS "Bid on Items" FROM items WHERE items.id IN (
  SELECT DISTINCT item_id FROM bids WHERE item_id IS NOT NULL
);
