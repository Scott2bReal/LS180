-- Add a constraint to films that requires all rows to have a value for
-- director that is at least 3 characters long and contains at least one space
-- character ().

ALTER TABLE films
ADD CHECK (length(director) > 2 AND position( ' ' in director) > 0);
