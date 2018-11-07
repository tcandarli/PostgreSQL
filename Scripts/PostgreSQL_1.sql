/*********************************
* PostgreSQL - 1
*/

/******************
1-List all the movie titles with their rental rates.
*/

SELECT title, rental_rate
FROM film;

/*********************
2-List all staff with their all information.
*/

SELECT *
FROM staff;

/**********************
3-List all customers with their name,surname,and address_ids 
*/

SELECT first_name, last_name, address_id
FROM customer;


/*********************
4-List all the movie titles with their rating and language_id
*/

SELECT title, language_id, rating
FROM film;

/*******************
5-List all different rental durations we have ?
*/

SELECT DISTINCT rental_duration
FROM film;

/*******************
6-List all different customer first names we have ? 
*/

SELECT DISTINCT first_name
FROM customer;

/*******************
7-List all different staff usernames we have ?
*/

SELECT DISTINCT username
FROM staff;

/********************
8-List all different special features we have ?
*/

SELECT DISTINCT special_features
FROM film;
