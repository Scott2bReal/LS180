CREATE TABLE checkouts (
      id serial,
    user_id int NOT NULL,
    book_id int NOT NULL,
    checkout_date timestamp,
    return_date timestamp,
    PRIMARY KEY (id),
    FOREIGN KEY(user_id) REFERENCES users(id)
                         ON DELETE CASCADE,
    FOREIGN KEY(book_id) REFERENCES books(id)
                         ON DELETE CASCADE
);
