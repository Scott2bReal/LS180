/*
The books_categories table from this database was created with foreign keys
that don't have the NOT NULL and ON DELETE CASCADE constraints. Go ahead and
add them now.
*/

ALTER TABLE books_categories 
ALTER COLUMN book_id SET NOT NULL,
DROP CONSTRAINT books_categories_book_id_fkey,
ADD CONSTRAINT books_categories_book_id_fkey
  FOREIGN KEY(book_id) REFERENCES books(id)
  ON DELETE CASCADE;


ALTER TABLE books_categories 
ALTER COLUMN category_id SET NOT NULL,
DROP CONSTRAINT books_categories_category_id_fkey,
ADD CONSTRAINT books_categories_category_id_fkey
  FOREIGN KEY(category_id) REFERENCES categories(id)
  ON DELETE CASCADE;

