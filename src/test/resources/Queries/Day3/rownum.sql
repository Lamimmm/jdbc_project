select * from employees;

/*
 it limits rows based on provided number
 */

select * from EMPLOYEES
where ROWNUM<11;

--display all info from employee who is getting first 5 highest salary

select  SALARY from  EMPLOYEES
where ROWNUM<6
order by SALARY desc;



select  * from  EMPLOYEES
order by SALARY desc  ;


select *
from (select  * from  EMPLOYEES
      order by SALARY desc)
where ROWNUM<6;


--display all info who is getting 5th highest salary

select distinct  SALARY from EMPLOYEES order by SALARY desc;


--first we need to find what is 5th highst salay
select min(SALARY) from (select distinct  SALARY from EMPLOYEES order by SALARY desc)
where ROWNUM<6;

--whi is making 5th hights salary?

select * from EMPLOYEES
where
     SALARY = 13000;

--dyonami way


select * from EMPLOYEES
where
        SALARY = (select min(SALARY) from (select distinct  SALARY from EMPLOYEES order by SALARY desc)
                  where ROWNUM<6);


--display all info who is getting 3th lowest salary

select * from EMPLOYEES
where
        SALARY = (select min(SALARY) from (select distinct  SALARY from EMPLOYEES order by SALARY desc)
                  where ROWNUM<4);
