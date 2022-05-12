CREATE TABLE animals (
  id serial UNIQUE NOT NULL,
  name varchar(100) UNIQUE NOT NULL,
  binomial_name varchar(100) NOT NULL,
  max_weight decimal(8, 3),
  max_age integer,
  conservation_status char(2)
)
