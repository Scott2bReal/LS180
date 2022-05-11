ALTER TABLE celebrities
ALTER COLUMN last_name
DROP NOT NULL;

INSERT INTO celebrities (
    first_name,
    last_name,
    occupation,
    date_of_birth,
    deceased
)
VALUES (
    'Prince',
    'Singer, Songwriter', 'Actor', 'Musician',
    '1958-06-07',
    true
), (
    'Madonna',
    'Singer, Actress',
    '1958-08-16',
    false
);
