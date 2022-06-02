/* 
Write a SQL statement to add the following call data to the database:

when 	duration 	first_name 	last_name 	number
2016-01-18 14:47:00 	632 	William 	Swift 	7204890809
*/ 

INSERT INTO calls ("when", duration, contact_id)
VALUES ('2016-01-18 14:47:00', 632, 6);
