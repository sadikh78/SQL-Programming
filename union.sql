#UNION AND UNIONALL
create database employee;
use employee;
create table office(
id int,
name varchar(50),
employee_id int
);

insert into office 
(id,name,employee_id)
values
(101,"sadikh",103),
(102,"nizam",101),
(103,"nizam",104),
(104,"imaran",105),
(105,"boss",102);

select name from office 
union 
select name from office;

select name from office 
union all 
select name from office;