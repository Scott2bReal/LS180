-- Add a constraint to the table films that ensures that all films have a year
-- between 1900 and 2100.

ALTER TABLE films
ADD CHECK (year BETWEEN 1900 AND 2100);
