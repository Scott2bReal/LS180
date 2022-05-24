-- Write SQL statements to update the existing rows in the database with values
-- for the new columns:

UPDATE films
SET director = 'John McTiernan',
    duration = 132
WHERE title = 'Die Hard';

UPDATE films
SET director = 'Michael Curtiz',
    duration = 102
WHERE title = 'Casablanca';

UPDATE films
SET director = 'Francis Ford Coppola',
    duration = 113
WHERE title = 'The Conversation';
