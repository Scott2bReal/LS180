/*
Write SQL statements to insert data for the following films into the database:

Film 	                  Year 	Genre 	Duration 	Directors
Fargo 	                1996 	comedy 	  98 	    Joel Coen
No Country for Old Men 	2007 	western 	122 	  Joel Coen, Ethan Coen
Sin City 	              2005 	crime 	  124 	  Frank Miller, Robert Rodriguez
Spy Kids 	              2001 	scifi 	  88 	    Robert Rodriguez
*/

-- Films
INSERT INTO films(title, year, genre, duration)
VALUES (
  'Fargo', 1996, 'comedy', 98
), (
  'No Country for Old Men', 2007, 'western', 122
), (
  'Sin City', 2005, 'crime', 124
), (
  'Spy Kids', 2001, 'scifi', 88
);

-- Directors
INSERT INTO directors(name)
VALUES ('Joel Coen'), ('Ethan Coen'), ('Frank Miller'), ('Robert Rodriguez');

-- Link films with their directors
INSERT INTO directors_films(film_id, director_id)
VALUES (11, 9), (12, 9), (12, 10), (13, 11), (13, 12), (14, 12);
