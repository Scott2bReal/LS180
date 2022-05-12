CREATE TABLE reviews (
    id serial,
    book_id integer NOT NULL,
    reviewer_name varchar(255),
    content varchar(255),
    rating integer,
    published_date timestamp DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    FOREIGN KEY(book_id)
      REFERENCES books(id)
      ON DELETE CASCADE
);
