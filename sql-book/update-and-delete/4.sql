-- SELECT deceased FROM celebrities
-- WHERE first_name = 'Elvis';

UPDATE celebrities
SET deceased = true
WHERE first_name = 'Elvis';

ALTER TABLE celebrities
ALTER COLUMN deceased
SET NOT NULL;
