select * from employees;

--display all information of where firstname is David
select * from EMPLOYEES
where FIRST_NAME = 'David';

--'' --> whatever inside this is case sensitive.

select *
from EMPLOYEES where FIRST_NAME = 'David' and LAST_NAME = 'Lee';


--display firstname, lastname, salary where firstname is Peter
select FIRST_NAME,LAST_NAME,SALARY
from EMPLOYEES
where FIRST_NAME ='Peter'
and LAST_NAME = 'Hall';

--display all information from employee where salary is bigger than 6K
select *
from EMPLOYEES
where SALARY>6000;

--display email of who is making less than 5000
select EMAIL
from EMPLOYEES
where SALARY<5000;

--display all info from employees who is making more than 7000 and department id is 60

select *
from EMPLOYEES
where SALARY>7000
and DEPARTMENT_ID=60;

--display all info from employees where salary equals or more than 300 and salary equals or less than 7000
select *
from EMPLOYEES
where SALARY >= 3000
and SALARY <= 7000;


select * from EMPLOYEES
where SALARY between 3000 and 7000;

--display all information from employees wjo is working as IT_PROG or MK_MAN
select * from EMPLOYEES
where JOB_ID='IT_PROG' or JOB_ID = 'MK_MAN';

--solution 2
select *from EMPLOYEES
where JOB_ID IN ('IT_PROG','MK_MAN');


--display all info where employee id 121,142,154,187
--solution 1
select * from EMPLOYEES
where EMPLOYEE_ID = 121 or EMPLOYEE_ID = 142 or EMPLOYEE_ID=154 or EMPLOYEE_ID =187;

--display all info where employee id 121,142,154,187
--solution 2
select * from EMPLOYEES
where EMPLOYEE_ID IN(121,142,154,187);

--display all info where manager id is 100 and 103
select * from EMPLOYEES
where MANAGER_ID IN (100,103);

--display all information expect manager id is 100 and 103
select * from EMPLOYEES
where MANAGER_ID NOT IN (100,103);

--is null
select * from EMPLOYEES
where DEPARTMENT_ID is null ;

select * from EMPLOYEES
where MANAGER_ID is not null ;

