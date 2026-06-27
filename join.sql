#joints (inner join=common data)
	(left join)
	(right join)
	(full join)
create database school;
use school;

create table student(
id int primary key,
name varchar(50)
);
insert into  student 
(id,name)
values
(101,"nizam"),
(102,"sadikh"),
(103,"boss"),
(104,"pedddapuli");

create table course(
Cid int primary key,
course varchar(50)
);

insert into course
(cid,course)
values
(101,"mpc"),
(105,"btech"),
(103,"itbt"),
(106,"bussiness");

#inner join
select *
from  student
inner join course
on student.id=course.Cid;

#left join
select *
from  student
left join course
on student.id=course.Cid;

#right join
select *
from  student
right join course
on student.id=course.Cid;

#full join
select * 
from student as s 
left join course as c
on s.id=c.cid
union 
select *
from  student as s
right join course as c
on s.id=c.cid;

#Exclusive right join
select *
from student
right join course
on student.id=course.cid
where student.id is null;

#Exclusive left join
select *
from student
left join course
on student.id=course.cid
where course.cid is null;
