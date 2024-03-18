

-- Hello World SQL Query, Select all records from a table
-- Syntax: SELECT column_name FROM table_name
SELECT *
FROM actor;


-- To query specific columns, add them in the SELECT statement
SELECT first_name, last_name
FROM actor;


-- Filter rows by using the WHERE clause
SELECT first_name, last_name
FROM actor 
WHERE first_name = 'Nick';


-- The "LIKE" keyword allows us to add wildcards to the string
SELECT first_name, last_name
FROM actor a 
WHERE first_name LIKE 'Nick';


-- With a LIKE keyword, '%' represents any number of characters
SELECT first_name, last_name
FROM actor a 
WHERE first_name LIKE 'J%'; -- will look FOR 'J' followed BY ANY number OF characters


-- with a LIKE keyword, '_' represents one character
SELECT first_name, last_name
FROM actor a 
WHERE first_name LIKE 'K__';

SELECT first_name, last_name
FROM actor
WHERE first_name = 'J%'; -- will literally look FOR 'J%'


-- using AND and OR in the wehrer clause
-- OR - only one needs to be true
SELECT *
FROM actor a 
WHERE first_name LIKE 'N%' OR last_name LIKE 'W%';


-- AND - all condition need to be true
SELECT *
FROM actor a 
WHERE first_name LIKE 'N%' AND last_name LIKE 'W%';

-- Comparison Operators in SQL:
-- Greater Than >
--Less than <
-- Greater Than or Equal To >=
-- Less then or equal to <=
-- Equals =
-- NOT equals <> or !=


SELECT *
FROM payment;


-- Query all of the payments of more than &7.00
SELECT *
FROM payment p
WHERE amount > 7;


-- query for all less than $7
SELECT *
FROM payment p 
WHERE amount <= '6.99';


-- not equals
SELECT *
FROM staff s 
WHERE staff_id <> 1;
-- OR
SELECT *
FROM staff s 
WHERE staff_id != 2;
-- OR
SELECT *
FROM staff s 
WHERE title NOT LIKE 'F%';


-- Get all of the payments between $3.00 and $8.00
SELECT *
FROM payment p 
WHERE amount >= 3 AND amount =8;


-- BETWEEN/AND clause
SELECT *
FROM payment
WHERE amount BETWEEN 3 AND 8;

SELECT *
FROM film f 
WHERE film_id BETWEEN 10 AND 20;


-- Order the rows of data using the ORDER BY clause
-- default is ascending Order (add DESC for descending)
-- Syntax: ORDER BY column_name
SELECT *
FROM film f 
ORDER BY rental_duration;

-- Exercise 1 - Write a query that will return all of the films that have an 'h' in the title
-- and order it by rental duration (in ascending order)
SELECT *
FROM film f 
WHERE title ILIKE '%h%'
ORDER BY rental_duration;




