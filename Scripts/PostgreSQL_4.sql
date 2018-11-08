/*********************************
* PostgreSQL - 4
*/

/***********************************
1- Display country_id, country name, region id , region name from hr database
*/

SELECT country_id, country_name, c.region_id, region_name
FROM countries AS "c" INNER JOIN regions AS "r"
ON c.region_id = r.region_id;


/***********************************
2- Display All cities , country names from hr database
*/

select city, country_name
from locations AS "l" inner join countries as "c"
ON l.country_id = c.country_id
order by country_name;

/************************************
3-Display the first and last name, department name, city, and state province for each employee.
*/



/************************************
4-Display the first name, last name, department id and department name, for all employees for departments 80 or 40.
*/



/*************************************
5-Display employees first name, last name department id and all departments including those where does not have any employee.
*/



/****************************************
6-Display the first name, last name, department number and name, for all employees who have or have not any department.
*/



/*****************************************
7-Display firstname,lastname,department_name,city,country and region name for all employees.
*/


/******************************************
8-I want to know how many copies of each movie we have at store 1.
*/



/**********************************************
9-Display all customers first name,last name, phone,postal_code,city,country 
*/

