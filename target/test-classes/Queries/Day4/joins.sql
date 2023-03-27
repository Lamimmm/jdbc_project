select * from customer;

select * from ADDRESS;

select FIRST_NAME,LAST_NAME,ADDRESS,PHONE
from CUSTOMER join ADDRESS
on CUSTOMER.ADDRESS_ID=ADDRESS.ADDRESS_ID;

--Q. what if i want to see customer table address_id information too.

select FIRST_NAME,LAST_NAME,CUSTOMER.ADDRESS_ID,ADDRESS,PHONE
from CUSTOMER join ADDRESS
                   on CUSTOMER.ADDRESS_ID=ADDRESS.ADDRESS_ID;


--Table Aliases
--Customer -- C
--Employees -- E
--Address  --A

select FIRST_NAME,LAST_NAME,C.ADDRESS_ID,A.ADDRESS_ID,ADDRESS,PHONE
from CUSTOMER C join ADDRESS A
                   on C.ADDRESS_ID=A.ADDRESS_ID;

select FIRST_NAME,LAST_NAME,C.ADDRESS_ID,A.ADDRESS_ID,ADDRESS,PHONE
from CUSTOMER C inner join ADDRESS A
                     on C.ADDRESS_ID=A.ADDRESS_ID;

-- "inner join" same with "join"



-- "left" and "left outer" are the same
-- it will give matching part between two tables + unique for left tables
--the order of the table is important

select FIRST_NAME,LAST_NAME,C.ADDRESS_ID,A.ADDRESS_ID,ADDRESS,PHONE
from CUSTOMER C left outer join ADDRESS A
                           on C.ADDRESS_ID=A.ADDRESS_ID;


-- "right" and "right outer" are the same
-- it will give matching part between two tables + unique for right tables
--the order of the table is important

select FIRST_NAME,LAST_NAME,C.ADDRESS_ID,A.ADDRESS_ID,ADDRESS,PHONE
from CUSTOMER C right outer join ADDRESS A
                                on C.ADDRESS_ID=A.ADDRESS_ID;



-- "full" and "full outer" are the same

select FIRST_NAME,LAST_NAME,C.ADDRESS_ID,A.ADDRESS_ID,ADDRESS,PHONE
from CUSTOMER C full outer join ADDRESS A
                                 on C.ADDRESS_ID=A.ADDRESS_ID;