-- What error is shown if the constraint created in #7 is violated? Write a SQL
-- INSERT statement that demonstrates this.

INSERT INTO films(title, year, genre, director, duration)
VALUES (
  '',
  1988,
  'action',
  'Steven Spielberg',
  180
);

/*
This produces the following error:
ERROR:  new row for relation "films" violates check constraint "films_title_check"
DETAIL:  Failing row contains (, 1988, action, Steven Spielberg, 180).
*/
