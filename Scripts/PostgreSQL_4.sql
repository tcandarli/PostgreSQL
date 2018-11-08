/*********************************
* PostgreSQL - 4
*/

/***********************************
1- Display country_id, country name, region id , region name from hr database
*/

select country_id, country_name, c.region_id, region_name
from countries AS "c" inner join regions AS "r"
    on c.region_id = r.region_id;


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

select first_name, last_name, department_name, city, state_province
from employees as "e"
    inner join departments as "d" on e.department_id = d.department_id
    inner join locations as "l" on d.location_id = l.location_id;

/************************************
4-Display the first name, last name, department id and department name, for all employees for departments 80 or 40.
*/

select first_name, last_name, d.department_id, department_name
from employees as "e"
    inner join departments as "d" on e.department_id = d.department_id
where e.department_id = 80 or e.department_id = 40;

/*************************************
5-Display employees first name, last name department id and all departments including those where does not have any employee.
*/

select first_name, last_name, d.department_id, department_name
from employees as "e"
    right join departments as "d" on e.department_id = d.department_id

/****************************************
6-Display the first name, last name, department number and name, for all employees who have or have not any department.
*/

select first_name, last_name, d.department_id, department_name
from employees as "e"
    left join departments as "d" on e.department_id = d.department_id

/*****************************************
7-Display firstname,lastname,department_name,city,country and region name for all employees.
*/

select first_name, last_name, d.department_id, department_name, city, country_name, region_name
from employees as "e"
    inner join departments as "d" on e.department_id = d.department_id
    inner join locations as "l" on d.location_id = l.location_id
    inner join countries as "c" on c.country_id = c.country_id
    inner join regions as "r" on r.region_id = c.region_id

/******************************************
8-I want to know how many copies of each movie we have at store 1.
*/

select f.title, count(title)
from film as "f" 
inner join inventory as "i" on i.film_id = f.film_id
where store_id = 1
group by f.title
order by count(title) desc;

/**********************************************
9-Display all customers first name,last name, phone,postal_code,city,country 
*/

select first_name, last_name, phone, postal_code, city, country
from customer as "c"
inner join address as "a" on a.address_id = c.address_id
inner join city as "cty" on cty.city_id = a.city_id
inner join country as "cntry" on cntry.country_id = cty.country_id

