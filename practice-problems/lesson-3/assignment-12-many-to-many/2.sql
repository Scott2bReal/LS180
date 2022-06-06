/*
Write a SQL statement that will return the following result:

 id |     author      |           categories
----+-----------------+--------------------------------
  1 | Charles Dickens | Fiction, Classics
  2 | J. K. Rowling   | Fiction, Fantasy
  3 | Walter Isaacson | Nonfiction, Biography, Physics
(3 rows)
*/

SELECT b.id, b.author, string_agg(c.name, ', ') AS categories FROM books b 
JOIN books_categories bc ON bc.book_id = b.id 
JOIN categories c ON bc.category_id = c.id
GROUP BY b.id, b.author
ORDER BY b.id;
