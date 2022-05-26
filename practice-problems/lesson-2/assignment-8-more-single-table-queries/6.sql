-- Write a SQL statement that will delete all users that are located in the
-- state of California (CA).

DELETE FROM people
-- SELECT * FROM people
WHERE state = 'CA';
