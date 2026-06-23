CREATE DATABASE constraints;

use constraints;
create table rules(
id int,
name varchar(50),
salary int default 20000,
age int,
city varchar(30),
primary key (id,name),
unique(age)
);
select * from rules;

insert into rules
(id,name,age,city)
values
(101,"sadikh",22,"Hyderabad"),
(102,"nizam",21,"nellore"),
(103,"hidayath",28,"bangalore");

check table


CREATE DATABASE temp2;
use temp2;

create table shaik(
 age INT CHECK (age >= 18)
 );
 
select * from shaik;
 
insert into shaik values(20);
insert into shaik values(10);