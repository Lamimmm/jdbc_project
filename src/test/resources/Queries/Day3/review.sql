select * from employees;


--how many locations we have for each country
select * from LOCATIONS;

select COUNTRY_ID, count(*)
from LOCATIONS
where COUNTRY_ID in ('US','CA','UK')
having count(*)>2
group by COUNTRY_ID
order by 2 desc;

select SALARY from EMPLOYEES;

select FIRST_NAME,SALARY Employee_salary from EMPLOYEES;


select FIRST_NAME || ' makes '|| SALARY Employee_salary from EMPLOYEES;

select max(SALARY) from EMPLOYEES; --24000

--if we know max salary can we fiid who is gettimg it?

select *
from EMPLOYEES
where SALARY = 24000;


--dynamic result

select *
from EMPLOYEES
where SALARY = (select max(SALARY) from EMPLOYEES);

select *
from EMPLOYEES
where SALARY =(select min(SALARY) from EMPLOYEES);


--display all info who is getting second highst salary?
--find max
select max(SALARY) from EMPLOYEES;

select
    max(SALARY)
from EMPLOYEES
where SALARY<24000;

select *
from EMPLOYEES
where SALARY=17000;

--make it dynamic

select *
from EMPLOYEES
where SALARY = (select max(SALARY) from EMPLOYEES where SALARY <24000);

select *
from EMPLOYEES
where SALARY = (select max(SALARY) from EMPLOYEES where SALARY <
                                                         (Select max(SALARY)from EMPLOYEES));

--task: display all info who is getting more than aver

select round(avg(SALARY)) from EMPLOYEES; --> 6462

--who is making more than 6462



select *
from EMPLOYEES
where SALARY >(select round(avg(SALARY)) from EMPLOYEES);