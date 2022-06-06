/*
)

Write a SQL statement that will return the following result:
      name        | book_count |                                 book_titles
------------------+------------+-----------------------------------------------------------------------------
Biography         |          2 | Einstein: His Life and Universe, Sally Ride: America's First Woman in Space
Classics          |          2 | A Tale of Two Cities, Jane Eyre
Cookbook          |          1 | Vij's: Elegant and Inspired Indian Cuisine
Fantasy           |          1 | Harry Potter
Fiction           |          3 | Jane Eyre, Harry Potter, A Tale of Two Cities
Nonfiction        |          3 | Sally Ride: America's First Woman in Space, Einstein: His Life and Universe, Vij's: Elegant and Inspired Indian Cuisine
Physics           |          1 | Einstein: His Life and Universe
South Asia        |          1 | Vij's: Elegant and Inspired Indian Cuisine
Space Exploration |          1 | Sally Ride: America's First Woman in Space
*/

SELECT c.name, COUNT(b.id), STRING_AGG(b.title, ', ') AS book_titles FROM categories c 
JOIN books_categories bc ON c.id = bc.category_id
JOIN books b ON bc.book_id = b.id 
GROUP BY c.name
ORDER BY c.name;
