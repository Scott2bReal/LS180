/*
Write a SQL statement that will return the following result:
           title           |         name
---------------------------+----------------------
 12 Angry Men              | Sidney Lumet
 1984                      | Michael Anderson
 Casablanca                | Michael Curtiz
 Die Hard                  | John McTiernan
 Let the Right One In      | Michael Anderson
 The Birdcage              | Mike Nichols
 The Conversation          | Francis Ford Coppola
 The Godfather             | Francis Ford Coppola
 Tinker Tailor Soldier Spy | Tomas Alfredson
 Wayne's World             | Penelope Spheeris
(10 rows)
*/

SELECT f.title, d.name FROM films f 
JOIN directors_films df ON f.id = df.film_id 
JOIN directors d ON df.director_id = d.id
ORDER BY f.title;
