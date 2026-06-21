CREATE DATABASE college;

use college;
CREATE TABLE student(
id int primary key,
name varchar(50),
age int not null
);

insert into student value(1,"nizam",21);
insert into student value(2,"sadikh",22);

select * From student;