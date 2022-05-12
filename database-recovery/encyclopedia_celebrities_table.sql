CREATE TABLE celebrities (
  id serial UNIQUE NOT NULL,
  first_name varchar(80) NOT NULL,
  last_name varchar(100),
  occupation varchar(150),
  date_of_birth date NOT NULL,
  deceased boolean DEFAULT false
)
