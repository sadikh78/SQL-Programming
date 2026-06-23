CREATE DATABASE college;

USE college;
CREATE TABLE student (
   id int primary key,
   name VARCHAR(50),
   age INT NOT NULL,
   marks float
);

insert into student values(1,"sadikh",22,95);
insert into student values(2,"nizam",21,92);
insert into student values(3,"hidayath",28,90);

select  avg(marks) from student;
select  sum(marks) from student;
select  min(marks) from student;
select  max(marks) from student;
select  count(marks) from student;
