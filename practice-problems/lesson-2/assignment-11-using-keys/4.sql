-- Is it possible to create a sequence that returns only even numbers?

/*
It is possible through the use of the INCREMENT BY clause and setting an even
starting value
*/

CREATE SEQUENCE even_counter
MINVALUE 2 INCREMENT BY 2;
