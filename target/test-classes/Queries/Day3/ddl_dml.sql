select *
from employees;

/*
 create table syntax:
 create table TableName(
 colName1 DataType Constraints
 colName2 DataType Constraints (optional)
 colName3 DataType Constraints,

 -------
 );
 */


 --- CREATE TABLE ---

create table scrumteam_samira(
    em_id Integer PRIMARY KEY,
    first_Name varchar(30) not null,
    last_Name varchar(20) not null,
    job_title varchar(20),
    salary Integer

);

select * from scrumteam_samira;


/*
 insert INTO tableNAme (column1, colmn2,..)
 Values ( value1, value2,...);
 */

INSERT INTO scrumteam_samira(em_id, first_Name, last_Name, job_title, salary)
values (1,'Samira', 'Abbasova','Designer',130000);

INSERT INTO scrumteam_samira(em_id, first_Name, last_Name, job_title, salary)
values (2,'Lamiya', 'Abbasova','Tester',150000);

INSERT INTO scrumteam_samira(em_id, first_Name, last_Name, job_title, salary)
values (3,'Chuckie', 'Abbasova','Cat',170000);

INSERT INTO scrumteam_samira(em_id, first_Name, last_Name, job_title, salary)
values (4,'Beka', 'Abbasova','Developer',190000);

INSERT INTO scrumteam_samira(em_id, first_Name, last_Name, job_title, salary)
values (5,'Roza', 'Abbasova','Tester',10000);

--save changes so that other people, connections can get the updates.
commit;

/*
 update table_name
 SET column1 = value1,
 column2 = value2,
 where condition;
 */


select * from scrumteam_samira;

update scrumteam_samira
set salary=salary+5000;

update scrumteam_samira
set salary=110000
where em_id=1;

commit work ;

/*
 delete from table_name
 where condition;
 */

select * from scrumteam_samira;

delete  scrumteam_samira
where em_id=5;

commit work ;

--CRUD
--CREATE(INSERT)
--READ(SELECT)
--UPDATE(UPDATE)
--DELETE(DELETE)

--ALTER

--ADD NEW COLUMN

ALTER TABLE SCRUMTEAM_SAMIRA ADD gender varchar(10);

select * from scrumteam_samira;

update scrumteam_samira
set gender='f'
where em_id=1;

--rename column


alter table scrumteam_samira rename column salary to annual_salary;

--drop column (remove )
alter table scrumteam_samira drop column gender;

--rename table

alter table scrumteam_samira rename to hesperTeam;

select  * from hesperTeam;

--TRUNCATE
Truncate Table hesperTeam; -- deleting the content in the table

--drop table

drop table hesperTeam; --buum deleted table completly (danger move)

