# LS180 Study Guide

## SQL

* Identify the different types of JOINs and explain their differences.
 
  1. Inner Join - Can use the shorthand `JOIN`. This will omit rows with
     `NULL` values from either side of the join. Probably the most common
     join.
  2. Left Outer Join - Will include all rows from the table on the "left"
     side of the join. The "left" table is the one mentioned first,
     commonly as part of the `SELECT` statement. Can use shorthand `LEFT JOIN`
  3. Right Outer Join - Same as the left outer join, but this one includes
     all rows from the "right" table. The table after the `JOIN` keyword.
     Can use shorthand `RIGHT JOIN`
  4. Full Outer Join - A combination of the left and right outer joins,
     this will include all rows from both tables
  5. Cross Join - This does not require an `ON` condition, and will return
     every possible combination of the two tables specified.
   
* Name and define the three sublanguages of SQL and be able to classify
  different statements by sublanguage.

  The three sublanguages of SQL are:
  
  1. DDL (Data Definition Language)
    
    - `CREATE`, `ALTER`, `DROP`, `ADD`

  2. DML (Data Manipulation Language)

    - `INSERT`, `SELECT`, `UPDATE`, `DELETE`

  3. DCL (Data Control Language)

    - Concerned with managing permissions

* Write SQL statements using INSERT, UPDATE, DELETE, CREATE/ALTER/DROP
  TABLE, ADD/ALTER/DROP COLUMN.

  - `INSERT INTO table_name (column_name, ...) VALUES (value, ...);`
  - `UPDATE TABLE table_name SET column_name = value;`
  - `DELETE FROM table_name WHERE condition;`
  - `CREATE TABLE table_name (column_name type [constraints]);`
  - `ALTER TABLE table_name ALTER COLUMN column_name SET constraint;`
  - `ALTER TABLE table_name DROP COLUMN column_name;`
  - `DROP TABLE table_name;`


* Understand how to use GROUP BY, ORDER BY, WHERE, and HAVING.

  - `GROUP BY` will take the results of a previous step in a query and will
    create a single row for each of the specified columns. The rest of the
    results will be split up according to that specified column. Used as
    part of a `SELECT` query 
  - `ORDER BY` will take the results of a query and list them in the order
    specified. It takes a column name as an argument and will determine
    order by the type of data contained within that column (numeric,
    alphabetical etc.) 
  - `WHERE` can be used to supply a condition to a `SELECT` statement which
    will narrow down the results. It is used in conjunction with comparison
    operators such as `=`, `<>`, `>` etc. Also supports pattern matching
    through the use of `LIKE`, `NOT LIKE`, `SIMILAR TO`, `~`
  - `HAVING` is like `WHERE`, but is used  to filter the results of a
    `GROUP BY`
  
* Understand how to create and remove constraints, including CHECK constraints
  
  - Constraints can be added upon table creation, or added or removed
    afterwards. Checks can optionally be given names, but if one is not
    supplied a name will be automatically generated. Constraints are used
    to limit the possible values a column will accept.
    
    Add check on table creation:
    ```sql 
    CREATE TABLE items (
      id serial PRIMARY KEY,
      price decimal(4, 2)
      CHECK (price > 0.00)
    );
    ```
    
    Add check to existing table:
    ```sql 
    ALTER TABLE items
    ADD CONSTRAINT price_limit CHECK (price < 10.00);
    ```
    
    Remove check:
    ```sql 
    ALTER TABLE items 
    DROP CONSTRAINT price_limit;
    ```
  
* Be familiar with using subqueries
  
  - A subquery is a `SELECT` query nested within another `SELECT` query.
    The inner query is used to provide a filtered list of data to the outer
    `SELECT` query. Supports the use of "subquery expressions" such as
    `IN`, `NOT IN`, `ALL`, `ANY`. Subqueries can be an alternative to using
    table `JOIN`s.
    
    Example:
    ```sql 
    SELECT id FROM items WHERE id IN (
      SELECT * FROM items WHERE price < 5.00
      ); 
    ```

## PostgreSQL

* Describe what a sequence is and what they are used for.
  
  A sequence is a series of numbers, and PostgreSQL will remember where in
  the series it has left off. These are commonly used to create
  auto-incrementing id columns that can be used to uniquely identify rows
  of data. They can be created by using the `serial` shorthand data type
  when creating a column, and can also be more explicitly created by using
  `CREATE SEQUENCE` [PostgreSQL Sequence Docs](https://www.postgresql.org/docs/9.5/sql-createsequence.html)

* Create an auto-incrementing column.

  ```sql 
  CREATE TABLE example (
    id serial 
  );
  ```
  
* Define a default value for a column.

  A default value can be supplied for a column that will be used if data is
  inserted into a table with no value specified for that column.

  ```sql 
  CREATE TABLE items (
    id serial PRIMARY KEY,
    price numeric DEFAULT 1.00
  );
  ```

* Be able to describe what primary, foreign, natural, and surrogate keys are.

  Keys are used to define relationships between relations in a database, and
  there are different types of keys which define those relationships in
  different ways 

  - **Primary Keys**: Designating a column as a primary key will automatically add
    the `UNIQUE` and `NOT NULL` constraints to that column. A table can only
    have one primary key, which serves as a unique identifier for rows in that
    table. An auto-incrementing `int` id column is often used as a primary key. 

  - **Foreign Keys**: A foreign key is a column in one table which refers to the
    primary key column in another table. Foreign keys are essential to ensuring
    referential integrity of our databases. Designating a foreign key will
    restrict values inserted into that column ensuring they are present in the
    referenced primary key column. 

  The primary and foreign designations are the two functional types of keys,
  and these keys can also be of two more general types: Natural or Surrogate

  - **Natural Keys** - Natural keys are data which already exist in the
    database. Natural keys are usually not the best choice compared to
    surrogate keys, as the data is subject to change and may not be unique
    between rows

  - **Surrogate Keys** - These are columns of data which are created solely to
    be unique identifiers. These are better for referential integrity as the
    developer has complete control over the data being used.
  
* Create and remove CHECK constraints from a column.
* Create and remove foreign key constraints from a column.
  
  Foreign keys can be added upon table creation, or designated afterwards.
  
  Table Creation:
  ```sql 
  CREATE TABLE items (
  id serial PRIMARY KEY,
  price numeric NOT NULL
  );
  
  CREATE TABLE orders (
    id serial PRIMARY KEY,
    item_id int REFERENCES items (id)
  );
  ```
  
  Removing a Foreign key constraint:
  ```sql 
  ALTER TABLE orders 
  DROP CONSTRAINT item_id_fkey;
  ```
  
  Adding a Foreign key to an existing table:
  ```sql 
  ALTER TABLE orders 
  ADD CONSTRAINT item_id_fkey
  FOREIGN KEY (item_id)
  REFERENCES items (id);
  ```
  
  Designating a foreign key does not automatically add the `NOT NULL`
  constraint, but it is usually good practice to add that constraint. Another
  useful constraint which can be added to a foreign key is the `ON DELETE
  CASCADE` constraint, which will delete corresponding entries if that table if
  the referenced row is deleted.

## Database Diagrams

* Talk about the different levels of schema.

  There are three levels of scheme: Conceptual, Logical, and Physical.
  
  - **Conceptual** - This is the highest level of schema, and broadly describes
    the relationships between entities in a database.

  - **Logical** - This is a level in between the other two, can combine
    elements of both. Schemas are usually designed starting at the conceptual
    level and then implemented at the physical level, while the logical level
    is not usually fully realized. It is often skipped.

  - **Physical** - This level is the lowest level, and encompasses the
    technical constraints, data types and SQL commands needed to implement the
    relationships.

* Define cardinality and modality.
  
  - **Cardinality** - This refers to the number of items on both sides of a
    relationship (one-to-one, one-to-many, or many-to-many)

  - **Modality** - This refers to whether each side of a relationship requires
    data or not. The modality of each side can be 0 or 1. If the modality is 0,
    then there can be no entries or more. If the modality is 1 then at least
    one item is required on that side of the relationship.

* Be able to draw database diagrams using crow's foot notation. 
