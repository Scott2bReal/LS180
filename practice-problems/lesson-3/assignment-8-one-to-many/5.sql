/*
Write a SQL statement that attempts to insert a duplicate number for a new
contact but fails. What error is shown?
*/

INSERT INTO contacts (first_name, last_name, number)
VALUES ('Scott', 'Hoecker', 7204890809);

/*
~│ERROR:  duplicate key value violates unique constraint "number_unique"          │
~│DETAIL:  Key (number)=(7204890809) already exists.                              │
*/
