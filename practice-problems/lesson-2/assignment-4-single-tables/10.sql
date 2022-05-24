-- Using the table and data from #8 and #9, write a SQL query to determine
-- which menu item is the most profitable based on the cost of its ingredients,
-- returning the name of the item and its profit.

SELECT item, (menu_price - ingredient_cost) AS "profit"
FROM menu_items
ORDER BY profit DESC
LIMIT 1;
