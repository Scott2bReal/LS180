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

    * Write SQL statements using INSERT, UPDATE, DELETE, CREATE/ALTER/DROP TABLE, ADD/ALTER/DROP COLUMN.

      - `INSERT INTO table_name (column_name, ...) VALUES (value, ...);`
      - `UPDATE TABLE table_name SET column_name = value;`
      - `DELETE FROM table_name WHERE condition;`
      - `CREATE TABLE table_name (column_name type [constraints]);`
      - `ALTER TABLE table_name ALTER COLUMN column_name SET constraint;`
      - `ALTER TABLE table_name DROP COLUMN column_name;`
      - `DROP TABLE table_name;`

    * Understand how to use GROUP BY, ORDER BY, WHERE, and HAVING.
    * Understand how to create and remove constraints, including CHECK constraints
    * Be familiar with using subqueries

## PostgreSQL

    * Describe what a sequence is and what they are used for.
    * Create an auto-incrementing column.
    * Define a default value for a column.
    *  Be able to describe what primary, foreign, natural, and surrogate keys are.
    * Create and remove CHECK constraints from a column.
    * Create and remove foreign key constraints from a column.

## Database Diagrams

    * Talk about the different levels of schema.
    * Define cardinality and modality.
    * Be able to draw database diagrams using crow's foot notation. 
