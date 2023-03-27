select * from
             employees;


select * from DEPARTMENTS;

-- 1. Display all first_name and related department_name

select FIRST_NAME,DEPARTMENT_NAME
from EMPLOYEES join DEPARTMENTS
on EMPLOYEES.EMPLOYEE_ID= DEPARTMENTS.DEPARTMENT_ID;

select FIRST_NAME,E.DEPARTMENT_ID,DEPARTMENT_NAME
from EMPLOYEES E join DEPARTMENTS D
on E.DEPARTMENT_ID=D.DEPARTMENT_ID;


--order by asc
select FIRST_NAME,E.DEPARTMENT_ID,DEPARTMENT_NAME
from EMPLOYEES E join DEPARTMENTS D
                      on E.DEPARTMENT_ID=D.DEPARTMENT_ID
order by FIRST_NAME asc ;

select FIRST_NAME,E.DEPARTMENT_ID,DEPARTMENT_NAME
from EMPLOYEES E left join DEPARTMENTS D
                      on E.DEPARTMENT_ID=D.DEPARTMENT_ID
order by FIRST_NAME asc ;

select FIRST_NAME,E.DEPARTMENT_ID,DEPARTMENT_NAME
from EMPLOYEES E right join DEPARTMENTS D
                           on E.DEPARTMENT_ID=D.DEPARTMENT_ID
order by FIRST_NAME asc ;

--Display all first_name and departments_name including the department without employee


select * from DEPARTMENTS;

select FIRST_NAME,e.DEPARTMENT_ID,DEPARTMENT_NAME
from EMPLOYEES e right join DEPARTMENTS d
on e.DEPARTMENT_ID=d.DEPARTMENT_ID;


--how many employee working in each department

select DEPARTMENT_NAME,count(*)
from EMPLOYEES e join DEPARTMENTS d on e.DEPARTMENT_ID=d.DEPARTMENT_ID
group by DEPARTMENT_NAME;


-- 5. Display all firstname and department name including the department without employees
--and also employees without the department

select FIRST_NAME,e.DEPARTMENT_ID,DEPARTMENT_NAME
from EMPLOYEES e full join DEPARTMENTS d
                            on e.DEPARTMENT_ID=d.DEPARTMENT_ID;

-- 6. Display all cities and related country names

select * from LOCATIONS;

select * from COUNTRIES;

select city,COUNTRY_NAME
from LOCATIONS l join COUNTRIES c
on l.COUNTRY_ID=c.COUNTRY_ID;

-- 7.Display all city and related country names including with countries without city

select city,COUNTRY_NAME
from LOCATIONS l right join COUNTRIES c
                      on l.COUNTRY_ID=c.COUNTRY_ID;

-- 8. Display all departments name and related street address

select DEPARTMENT_NAME,STREET_ADDRESS
from DEPARTMENTS d join LOCATIONS l
on d.LOCATION_ID=l.LOCATION_ID;

-- 9. Display first_name, last_name, and departments name, city,country_name for all employees

select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME,CITY
from EMPLOYEES e join DEPARTMENTS d on e.DEPARTMENT_ID=d.DEPARTMENT_ID
join LOCATIONS l on l.LOCATION_ID=d.LOCATION_ID
join COUNTRIES c on l.COUNTRY_ID=c.COUNTRY_ID;

--how many employees working for each country_name?
select COUNTRY_NAME,count(*)
from EMPLOYEES e join DEPARTMENTS d on e.DEPARTMENT_ID=d.DEPARTMENT_ID
join LOCATIONS l on l.LOCATION_ID=d.LOCATION_ID
join COUNTRIES c on l.COUNTRY_ID=c.COUNTRY_ID
group by COUNTRY_NAME
having count(*)>10;

--left join with where

select *
from CUSTOMER c full join ADDRESS a
on a.ADDRESS_ID=c.ADDRESS_ID
where c.ADDRESS_ID is null;










