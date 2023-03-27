select * from employees;

select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1)||'.' as initials,
       FIRST_NAME||' '||LAST_NAME as full_name from EMPLOYEES;

create view EmpployeeInfo as
select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1)||'.' as initials,
       FIRST_NAME||' '||LAST_NAME as full_name from EMPLOYEES;

select * from EMPPLOYEEINFO;

--drop view

drop view EMPPLOYEEINFO;


