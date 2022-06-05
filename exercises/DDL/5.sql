/*
The spectral_type column in the stars table is currently defined as a
one-character string that contains one of the following 7 values: 'O',
'B', 'A', 'F', 'G', 'K', and 'M'. However, there is currently no
enforcement on the values that may be entered. Add a constraint to the
table stars that will enforce the requirement that a row must hold one
of the 7 listed values above. Also, make sure that a value is required
for this column.
*/

-- ALTER TABLE stars 
-- ALTER COLUMN spectral_type 
-- SET NOT NULL;
--
-- ALTER TABLE stars 
-- ADD CHECK (spectral_type IN ('O', 'B', 'A', 'F', 'G', 'K', 'M'));

/*
Assume the stars table contains one or more rows that are missing a
spectral_type value, or that have an illegal value. What will happen
when you try to alter the table schema? How would you go about adjusting
the data to work around this problem. To test this, revert the
modification and add some data:
  */

ALTER TABLE stars
DROP CONSTRAINT stars_spectral_type_check,
ALTER COLUMN spectral_type DROP NOT NULL;

INSERT INTO stars (name, distance, companions)
           VALUES ('Epsilon Eridani', 10.5, 0);

INSERT INTO stars (name, distance, spectral_type, companions)
           VALUES ('Lacaille 9352', 10.68, 'X', 0);

ALTER TABLE stars
ADD CHECK (spectral_type IN ('O', 'B', 'A', 'F', 'G', 'K', 'M')),
ALTER COLUMN spectral_type SET NOT NULL;

/*

The constraints are successfully dropped, and the two new entries are inserted
into the table. The first piece of data is missing a value for the `spectral
type` column, while the second piece of data has a character that would not
meet the `CHECK` requirement to be one of those 7 specific characters.

This would be fixable either by deleting the two new rows, or using UPDATE
TABLE to change the values in the `spectral_type` column for both rows before
attempting to reintroduce the constraints.

*/
