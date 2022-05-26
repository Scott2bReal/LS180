-- Add a constraint to the table films that ensures that all films have a
-- unique title.

ALTER TABLE films
ADD UNIQUE (title);
