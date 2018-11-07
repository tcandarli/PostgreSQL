/*********************************
* PostgreSQL - 3
*/

/***********************************
1-Corporate headquarters is auditing our store! 
They want to know the average replacement cost of movies by rating.
*/

select rating, AVG(replacement_cost)
from film
group by rating

/***********************************
2-Show all employees who work in any one of these department id 90,60, 100, 130, 120
*/

select *
from employees
where department_id in (90, 60, 100, 130, 120)

/************************************
3-Show all job_id and average salary who work as any of these jobs IT_PROG, SA_REP, FI_ACCOUNT,AD_VP 
*/

select job_id, avg(salary)
from employees
where job_id in ('IT_PROG', 'SA_REP', 'FI_ACCOUNT', 'AD_VP')
group by job_id;

/************************************
4-Show all employees whose last name ends with 'a'
*/



/*************************************
5-List all employees whose last name second letter is 'e'
*/


/****************************************
6-Show all records whose last name contains 2 lowercase 'a's.
*/


/*****************************************
7-Display max salary  for each departments
*/


/******************************************
8-Display total salary for each departments except department_id 50, and where total salary >30000
*/