-- ALTER TABLE singers
-- ADD CONSTRAINT unique_id UNIQUE (id);
--
-- CREATE TABLE albums (
--   id serial UNIQUE NOT NULL,
--   singer_id int NOT NULL,
--   album_name varchar(100) NOT NULL,
--   release_date date NOT NULL,
--   genre varchar(100) NOT NULL,
--   label varchar(100),
--   PRIMARY KEY (id),
--   FOREIGN KEY (singer_id)
--   REFERENCES singers (id)
-- );

INSERT INTO albums (album_name, release_date, genre, label, singer_id)
VALUES ('Born to Run', '1975-08-25', 'Rock and roll', 'Columbia', 1),
('Purple Rain', '1984-06-25', 'Pop, R&B, Rock', 'Warner Bros', 7),
('Born in the USA', '1984-06-04', 'Rock and roll, pop', 'Columbia', 1),
('Madonna', '1983-07-27', 'Dance-pop, post-disco', 'Warner Bros', 8),
('True Blue', '1986-06-30', 'Dance-pop, Pop', 'Warner Bros', 8),
('Elvis', '1956-10-19', 'Rock and roll, Rhythm and Blues', 'RCA Victor', 9),
('Sign o'' the Times', '1987-03-30', 'Pop, R&B, Rock, Funk', 'Paisley Park, Warner Bros', 7),
('G.I. Blues', '1960-10-01', 'Rock and roll, Pop', 'RCA Victor', 9);
