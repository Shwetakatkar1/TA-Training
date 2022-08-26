drop database if exists dummy ;

create database dummy;

use dummy;

create table teachers(id int , firstname varchar(20),lastname varchar(20));

create table subjects(tid int , subject varchar(20) );

insert into teachers values(1,'F1','L1'), (2,'F2','L2'), (3,'F3','L3'), (4,'F4','L4') ,(5,'F5','L5') ,(5,'F5','L5'),(Null,'F6','L6');

insert into subjects values(1,'Maths'), (1,'Science'), (2,'English'), (3,'History'),(NULL,'English'),(7,'Java'), (8,'SQL');

/* cross join */
/* Note: First try without order by*/
select * from teachers t cross join subjects s order by t.id, s.tid; 

select * from teachers t join subjects s  order by t.id, s.tid; /* Not Best Practice - Without On */

select * from teachers t inner join subjects s  order by t.id, s.tid; /* Not Best Practice - Without On*/

select * from teachers t, subjects s  order by t.id, s.tid; 

select * from teachers t cross join subjects s  where t.id =s.tid order by t.id, s.tid; /* with =(inner) & <>(different) */


/* Union and Union All
Select same number of colmns from each table. 
IMP - Same Name, Order, Datatype*/
drop table if exists staff;
create table staff(id int , firstname varchar(20),lastname varchar(20), salary int);
insert into staff values(1,'F1','L1', 20000), (2,'F2','L2', 20000),(5,'F5','L5', 20000) ,(5,'F5','L5', 20000),(Null,'F6','L6', Null);

select t.id, t.firstname, t.lastname, NULL as salary from teachers t union select s.id, s.firstname, s.lastname, s.salary from staff s;  

select t.id, t.firstname, t.lastname, NULL as salary from teachers t union all select s.id, s.firstname, s.lastname, s.salary from staff s;  

/*
union displays only distinct values in the output.
	because union requires SCL to conduct one additional operation, clearing the results set from duplicates. It uses more MySQL resources.
    more computational power and storage space are required to execute a union operation
While Union all retrieves the duplicates as well.*/



/* SELF Join
Certain rows of table with other rows of SAME table */

drop table if exists staff;
create table staff(id int , hodid int, firstname varchar(20),lastname varchar(20), salary int);
insert into staff values(1, 105 ,'F1','L1', 20000), (2,105,'F2','L2', 20000),(105, 105,'F5','L5', 20000);

select * from staff s1 join staff s2 on s1.id=s2.hodid;






