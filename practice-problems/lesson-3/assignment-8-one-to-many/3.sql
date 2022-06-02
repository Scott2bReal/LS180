/*
Write SQL statements to add the following call data to the database:

when 	duration 	first_name 	last_name 	number
2016-01-17 11:52:00 	175 	Merve 	Elk 	6343511126
2016-01-18 21:22:00 	79 	Sawa 	Fyodorov 	6125594874
*/

/*
INSERT INTO contacts (first_name, last_name, number)
VALUES (
  'Merve', 'Elk', 6343511126
), (
  'Sawa', 'Fyodorov', 6125594874
);
*/

INSERT INTO calls("when", duration, contact_id)
VALUES (
  '2016-01-17', 175, 26
), (
  '2016-01-18', 79, 27
);
