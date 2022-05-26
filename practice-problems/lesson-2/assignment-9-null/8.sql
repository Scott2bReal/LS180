-- A decision has been made to store rainfall data in inches. Write the SQL
-- statements required to modify the rainfall column to reflect these new
-- requirements.

ALTER TABLE temperatures
ALTER COLUMN rainfall
TYPE decimal(6, 3);

UPDATE temperatures
SET rainfall = trunc((rainfall / 25.4), 3);
