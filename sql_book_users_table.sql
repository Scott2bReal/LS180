CREATE TABLE users (
  id serial UNIQUE NOT NULL,
  full_name varchar(100) NOT NULL,
  enabled boolean DEFAULT true,
  last_login timestamp without time zone NOT NULL DEFAULT now()
);
