-- ALTER TABLE animals
-- ADD COLUMN phylum varchar(100);
-- ALTER TABLE animals
-- ADD COLUMN kingdom varchar(100);
UPDATE animals
SET phylum = 'Chordata', kingdom = 'Animalia';
