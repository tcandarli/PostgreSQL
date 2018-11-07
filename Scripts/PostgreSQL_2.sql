/*********************************
* PostgreSQL - 2
*/

/******************************************
1)How many payment transactions were less than $3.99?
*/

SELECT COUNT(amount)
FROM payment
WHERE amount < 3.99;


/*****************************************
2)How many payment transactions were between $3.99 and $5.99?
*/

SELECT COUNT(amount)
FROM payment
WHERE amount >= 3.99 AND amount <= 5.99;

/*****************************************
3)List all the movies with their length with descending order by length.
*/

SELECT title, length
FROM film
ORDER BY length DESC;

/*****************************************
4)List all the movies where the replacement cost are 15.99, 27.99,22.99 with ascending order by title.
*/

SELECT title, replacement_cost
FROM film
WHERE replacement_cost IN (15.99, 27.99, 22.99)
ORDER BY title;

/******************************************
5) List all the movies where the title is starting with 'C';
*/

SELECT title
FROM film
WHERE title LIKE 'C%';

/******************************************
6) How many movies we have with the word "break" somewhere in title ?
*/

SELECT title
FROM film
WHERE title LIKE '%break%';

/*******************************************
7) List all the movies where rating are PG-13,PG,G and rental rate is 2.99 with desc order by rating ?
*/

SELECT title, rating, rental_rate 
FROM film
WHERE rating IN ('PG-13', 'PG', 'G') AND rental_rate = 2.99
ORDER BY rating DESC;

/*********************************************
8) How many movies we have with the word "Dog" somewhere in the description
*/

SELECT COUNT(*)
FROM film
WHERE description LIKE '%Dog%';

/********************************************
9) Find max,min and avg amount from payment table.
*/

SELECT MAX(amount), MIN(amount), ROUND(AVG(amount),2)
FROM payment;

/*********************************************
10) Display the total amount of payments
*/

select sum(amount)
from payment;

/*********************************************
11)Display the average salary of employees who works as  a IT_PROG
*/

select AVG(salary)
from employees
where job_id = 'IT_PROG'


/**********************************************
12)Display the highest salary of employees who works as SA_REP
*/

select max(salary)
from employees
where job_id = 'SA_REP'

/**************************************************
13)Display the average rental duration of PG-13 movies 
*/

select avg(rental_duration)
from film
where rating = 'PG-13'