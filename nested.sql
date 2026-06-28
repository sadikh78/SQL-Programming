#nested quaries
create database employee;
use employee;
create table office(
id int,
name varchar(50),
marks int
);

insert into office 
(id,name,marks)
values
(101,"sadikh",90),
(102,"nizam",78),
(103,"lathif",98),
(104,"imaran",10),
(105,"boss",1);

select avg(marks) from office;

select * from office where marks > 55;

select id,name,marks
from office 
where marks > (select avg(marks) from office);

select id,name
from office
where id % 2=0;

#nested quaries
create database employee;
use employee;
create table office(
id int,
name varchar(50),
marks int,
city varchar(50)
);

insert into office 
(id,name,marks,city)
values
(101,"sadikh",90,"bang"),
(102,"nizam",78,"bang"),
(103,"lathif",98,"chen"),
(104,"imaran",10,"hyd"),
(105,"boss",1,"shar");

select * from office;
select max(marks)
from office
where city = "bang";

select max(marks)
from(select * from office where city = "bang")as temp;

#view quries
create database employee;
use employee;
create table office(
id int,
name varchar(50),
marks int,
city varchar(50)
);

insert into office 
(id,name,marks,city)
values
(101,"sadikh",90,"bang"),
(102,"nizam",78,"bang"),
(103,"lathif",98,"chen"),
(104,"imaran",10,"hyd"),
(105,"boss",1,"shar");


create view view1 as
select id,name,marks from office;

select * from view1;
drop view view1;









