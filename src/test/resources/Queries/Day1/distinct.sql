-- select * from EMPLOYEES;

/*
 it show different values from query result based provided column
 */


--it returns 107
select FIRST_NAME from EMPLOYEES;

-- it removed duplicates and returned 91 result
select distinct FIRST_NAME from EMPLOYEES;


--it will check each row to filter different columns --> * --> all columns
select distinct * from EMPLOYEES;

select  * from JOBS;

select JOB_ID from JOBS;


--since primary key cannot be duplicate it gives the same result with distinct.
select distinct JOB_ID from  JOBS;