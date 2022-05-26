/*
Is it possible to define a default value for a column that will be considered
invalid by a constraint? Create a table that tests this.
 */

CREATE TABLE test (column_1 integer DEFAULT 0);

ALTER TABLE test
ADD CHECK (column_1 > 1);

/*
It appears it is possible! The table was created with no error message The
constraint still works and will reject data entered with the default value
*/
