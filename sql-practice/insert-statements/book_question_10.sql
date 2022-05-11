INSERT INTO orders (
    customer_name,
    customer_email,
    customer_loyalty_points,
    burger,
    side,
    drink,
    burger_total,
    side_total,
    drink_total
)
VALUES (
    'James Bergman',
    'james1998@email.com',
    20 + 3 + 5,
    'LS Chicken Burger',
    'Fries',
    'Cola',
    4.50,
    0.99,
    1.50
), (
    'Natasha O''Shea',
    'natasha@osheafamily.com',
    15 + 3,
    'LS Cheeseburger',
    'Fries',
    NULL,
    3.50,
    0.99,
    NULL
), (
    'Natasha O''Shea',
    'natasha@osheafamily.com',
    30 + 5 + 7,
    'LS Double Deluxe Burger',
    'Onion Rings',
    'Chocolate Shake',
    6.00,
    1.50,
    2.00
), (
    'Aaron Muller',
    NULL,
    10,
    'LS Burger',
    NULL,
    NULL,
    3.00,
    NULL,
    NULL
)
