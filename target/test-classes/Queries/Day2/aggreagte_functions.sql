
select * from employees;

/*
 AGGREGATE FUNCTIONS - MULTI ROWS - GROUP FUNCTIONS
 -count ---> it will cont rows
 - max ---> it will max value
 - min --> it will min value
 -sun --> it will give total(sum) value
 -avg --> it will give average value

 Aggregate functions takes multi row and return one result
 All if them ignore null values.
 */

 select * from DEPARTMENTS;
select count(*) from DEPARTMENTS;

--how may locations we have?
select count(*) from LOCATIONS;

select * from EMPLOYEES;

select count(DEPARTMENT_ID)
from EMPLOYEES;

--task
--how many different firstname we have?

select distinct FIRST_NAME from EMPLOYEES;

select count(distinct FIRST_NAME)
from EMPLOYEES;

--how many employees working as IT_PROG or sales SA_REP

select count(*) from EMPLOYEES
where JOB_ID in('IT_PROG','SA_REP');


--max
select max(SALARY)
from EMPLOYEES;

--min
select min(SALARY)
from EMPLOYEES;

--avrg
select avg(SALARY)
from EMPLOYEES;

select round (avg(SALARY))
from EMPLOYEES;

select round (avg(SALARY),1)
from EMPLOYEES;

select round (avg(SALARY),2)
from EMPLOYEES;

--sum
select sum(SALARY)
from EMPLOYEES;


