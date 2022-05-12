-- Users only have one address

CREATE TABLE addresses (
    user_id int, -- Both a primary and a foreign key
    street varchar(30) NOT NULL,
    city varchar(30) NOT NULL,
    state varchar(30) NOT NULL,
    PRIMARY KEY (user_id),
    FOREIGN KEY (user_id)
      REFERENCES users (id)
      ON DELETE CASCADE
);
