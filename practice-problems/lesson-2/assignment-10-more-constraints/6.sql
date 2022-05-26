-- Write a SQL statement to remove the constraint added in #4 (title unique).

ALTER TABLE films
DROP CONSTRAINT films_title_key;
