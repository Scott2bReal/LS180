/*
Add a constraint to contacts that prevents a duplicate value being added in the
column number.
*/

ALTER TABLE contacts
ADD CONSTRAINT number_unique
UNIQUE (number);
