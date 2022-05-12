-- Edited to get this DB going on my other machine

CREATE TABLE orders(
    id serial,
    customer_name varchar(100) NOT NULL,
    customer_email varchar(50),
    customer_loyalty_points int DEFAULT 0,
    burger varchar(50),
    side varchar(50),
    drink varchar(50),
    burger_total decimal(4, 2),
    side_total decimal(4,2),
    drink_total decimal(4,2)
);
