/*
There is a shorter way to accomplish the same thing by using SELECT within an
INSERT statement. Be careful though since using SELECT within an INSERT
statement can be tricky.
*/

INSERT INTO directors_films (director_id, film_id)
VALUES (
  (SELECT d.id FROM directors d JOIN films f ON f.director_id = d.id),
  (SELECT f.id FROM films f JOIN directors d ON f.director_id = d.id)
);
