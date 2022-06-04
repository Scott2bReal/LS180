/*
Restore the constraint that was on the films.director column to directors.name:
*/ 

ALTER TABLE directors ADD CONSTRAINT valid_name
CHECK (length(name) >= 1 AND position(' ' in name) > 0);
