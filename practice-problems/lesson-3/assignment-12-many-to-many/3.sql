/*
Write SQL statements to insert the following new books into the database. What
do you need to do to ensure this data fits in the database?

Author 	                        Title 	                                    Categories
Lynn Sherr 	                    Sally Ride: America's First Woman in Space 	Biography, Nonfiction, Space Exploration
Charlotte Brontë                Jane Eyre 	                                Fiction, Classics
Meeru Dhalwala and Vikram Vij 	Vij's: Elegant and Inspired Indian Cuisine 	Cookbook, Nonfiction, South Asia

I'll need to first add the books (author and title) to the books table. Then I
will need to add any categories for these new books that are not already in the
categories table to the categories table. Once I've done that, I'll need to
check the ids of the books and categories, and add entries to the
books_categories table to properly link the new books to their associated
categories. I'll also need to expand the capacity for the book titles since
these have titles which are longer than 32 characters
*/

-- Insert the books first
ALTER TABLE books
ALTER COLUMN title TYPE text;

INSERT INTO books (author, title)
VALUES (
  'Lynn Sherr',
  'Sally Ride: America''s First Woman In Space'
), (
  'Charlotte Brontë',
  'Jane Eyre'
), (
  'Meeru Dhalwala and Vikram Vij',
  'Vij''s: Elegant and Inspired Indian Cuisine'
);

-- Insert the new categories
INSERT INTO categories (name)
VALUES ('Space Exploration'), ('Cookbook'), ('South Asia');

-- Insert linking data into books_categories
-- Sally Ride
INSERT INTO books_categories (book_id, category_id)
VALUES (4, 5), (4, 1), (4, 7);
-- Jane Eyre 
INSERT INTO books_categories (book_id, category_id)
VALUES (5, 2), (5, 4);
-- Cookbook 
INSERT INTO books_categories (book_id, category_id)
VALUES (6, 8), (6, 1), (6, 9);
