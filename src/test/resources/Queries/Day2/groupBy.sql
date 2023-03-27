
--your manager is asking all jobs and their average salary

select * from employees;

select distinct JOB_ID
from EMPLOYEES;

--get me average salary from IT_PROG
select avg(SALARY) from EMPLOYEES
where JOB_ID='IT_PROG';

--get ma average salary from CA_account
select avg(SALARY) from EMPLOYEES
where JOB_ID ='AC_MGR';

select JOB_ID, avg(SALARY),count(*),sum(SALARY)
from EMPLOYEES
group by JOB_ID;


--Display how may departments we have in each location

select * from DEPARTMENTS;


select LOCATION_ID, count(*)
from DEPARTMENTS
group by LOCATION_ID;

-- order result based on numbers of departments in desc

select LOCATION_ID, count(*)
from DEPARTMENTS
group by LOCATION_ID
order by count(*) desc;


select LOCATION_ID, count(*) --here count is on sendond (like an index??) (location_Id )is first column
from DEPARTMENTS
group by LOCATION_ID
order by 2 desc ; --number to refering to "count" because it is on the second column (index??)


--Display how many countries we have in each regions

select * from COUNTRIES;

select REGION_ID,count(*)
from COUNTRIES
group by REGION_ID;


select REGION_ID, count(*) from COUNTRIES
group by REGION_ID;

--order them based on numbers countries in desc
select REGION_ID,count(*) from COUNTRIES
group by REGION_ID
order by 2 desc;

select REGION_ID,count(*) from COUNTRIES
group by REGION_ID
order by count(*) asc ;
----------------------------

--get me total salary for each department from employees table.

select DEPARTMENT_ID, sum(SALARY), count(*) from EMPLOYEES
group by DEPARTMENT_ID;

select DEPARTMENT_ID, sum(SALARY), count(*)
from EMPLOYEES
where DEPARTMENT_ID is not null
group by DEPARTMENT_ID;

--display jobid where their avg salary more than 5k

select * from JOBS;

select JOB_ID, avg(SALARY)
from EMPLOYEES
group by JOB_ID
having avg(SALARY)>5000
order by 2;

--display departments where their avg salary more then 6k
select DEPARTMENT_ID,round(avg(SALARY))
from EMPLOYEES
where DEPARTMENT_ID is not null  --to remove null department from the reuslt
group by DEPARTMENT_ID
having avg(salary) > 6000
order by 2;

--IQ--> display duplicate firstname from employees table

select FIRST_NAME from EMPLOYEES;

select FIRST_NAME, count(*) from EMPLOYEES
group by FIRST_NAME
having count(*)>1;

--display department id where employees count is bigger than 5

select DEPARTMENT_ID, count(*) from EMPLOYEES
group by DEPARTMENT_ID
having count(*)>5
order by 2 desc ;

select EMPLOYEE_ID,count(*) from EMPLOYEES
group by EMPLOYEE_ID;

















