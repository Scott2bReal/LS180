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


    * Be able to describe what primary, foreign, natural, and surrogate keys are.
    * Create and remove CHECK constraints from a column.
    * Create and remove foreign key constraints from a column.

## Database Diagrams

    * Talk about the different levels of schema.
    * Define cardinality and modality.
    * Be able to draw database diagrams using crow's foot notation. 
