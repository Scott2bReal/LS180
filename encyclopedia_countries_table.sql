CREATE TABLE countries (
  id serial UNIQUE NOT NULL,
  name varchar(50) UNIQUE NOT NULL,
  capital varchar(50) NOT NULL,
  population integer
)
