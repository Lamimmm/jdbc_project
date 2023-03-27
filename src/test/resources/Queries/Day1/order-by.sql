select * FROM EMPLOYEES;
/*
 ORDEBY
 -It allows us to sort data based on provided column
 - AS a Default it will order the result ASCENDING ( A-Z, 0-9)
 -IF you want to sort it DESCENDING order we need to specify right after column name
 */


 --display all employees based on salary in asc order
select * from EMPLOYEES
order by SALARY asc ;

--display all employees based on salary in desc order
select  * from EMPLOYEES
order by SALARY desc ;



--display all employees based on firstname in desc order
select  * from employees
order by FIRST_NAME desc ;

--display all info where employee id is < 120 and order them based on salary desc
select * from EMPLOYEES
where EMPLOYEE_ID <120
order by SALARY desc ;

--display all info where employee and order them based on firstname asc and lastname desc

select * from EMPLOYEES
order by FIRST_NAME, LAST_NAME desc ;
