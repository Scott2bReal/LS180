-- CREATE TABLE continents (
--   id serial,
--   continent_name varchar(50) NOT NULL,
--   PRIMARY KEY (id)
-- );

-- ALTER TABLE countries
-- DROP COLUMN continent;

ALTER TABLE countries
ADD PRIMARY KEY (id);
-- ADD COLUMN continent_id int NOT NULL,
-- ADD FOREIGN KEY(continent_id) REFERENCES continents(id);
