select * from employees;
/*
 1. Column alieases --> it is temporary name to show in display

 2. Table alieases which we will learn later
 Employees --> E
 */



--display departments where their avg salary more then 6k
--the query below second column name is "round(avg(salary))" which dosent look nice
select DEPARTMENT_ID,round(avg(SALARY)) as "Average salary"
from EMPLOYEES
where DEPARTMENT_ID is not null  --to remove null department from the reuslt
group by DEPARTMENT_ID
having avg(salary) > 6000
order by 2;

select DEPARTMENT_ID,round(avg(SALARY)) as Average_salary
from EMPLOYEES
where DEPARTMENT_ID is not null  --to remove null department from the reuslt
group by DEPARTMENT_ID
having avg(salary) > 6000
order by 2;


--manager is asking display annual salary for all employees as annual_salary

select FIRST_NAME,SALARY*12 as annual_salary
from EMPLOYEES;

--note --> we are just displaying and nothing will change it DB

-----------------------------string manipulation-----------------------------

/*
 CONCAT

 --Java --> +firstname+ ""+lastname
 --SQL --> || firstname || ' ' ||lastname
 */

-- I want to get fullname column where we have firstname ' '+lastname

select FIRST_NAME||' '||LAST_NAME as full_name
from EMPLOYEES;

--add @cydeo.com to all the emails in the employee table
select EMAIL||' '||'@cydeo.com' as emailwithcydeo
from EMPLOYEES;

select EMAIL||'@cydeo.com' as emailwithcydeo
from EMPLOYEES;

select concat(EMAIL,'@cydeo.com') as "emailwithcydeo" from EMPLOYEES;

--lowercase
select lower (EMAIL||'@cydeo.com') as emailwithcydeo
from EMPLOYEES;

--uppercase
select upper(concat(EMAIL,'@cydeo.com')) as "emailwithcydeo" from EMPLOYEES;

--initcap
-- it makes first letter uppercase
select initcap( concat(EMAIL,'@cydeo.com')) as "emailwithcydeo" from EMPLOYEES;

--length

select EMAIL, length(EMAIL) as email_lenght from EMPLOYEES;

--display all employees where firstname length equals 6

select FIRST_NAME, length(FIRST_NAME) as firstname_lenght from EMPLOYEES
where length(FIRST_NAME)=6;

--another solution
select FIRST_NAME from EMPLOYEES
where FIRST_NAME like'______';

---another (if i want to count them)
select count(*) from EMPLOYEES
where FIRST_NAME like  '______';

--display initial from firstname and lastname ---> S.K

--SUBSTR(columnName, beginningIndex , numberOfChar)
select * from EMPLOYEES;

select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1)||'.' as initials from EMPLOYEES;
select substr(FIRST_NAME,1,1)||'.'||substr(LAST_NAME,1,1)||'.' as initials from EMPLOYEES;
select FIRST_NAME,substr(FIRST_NAME,-2,2) from EMPLOYEES;

/*
 - if the beginning index is 0, it is treated as 1
 -if the beginning index negative, it will start from backwards
 -if we dont specify number of char it will work till the end
 */





