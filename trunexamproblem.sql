#rename task,delete task,delete column task
create database school;
use school;

create table students(
id int primary key,
name varchar(50),
marks int,
grade varchar(20),
city varchar(70)
);

insert into students
(id,name,marks,grade,city)
values
(101, "anil", 78, "C", "Pune"),
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "dhruv", 96, "A", "Delhi"),
(105, "emanuel", 12, "F", "Delhi"),
(106, "farah", 82, "B", "Delhi");

select * from students;

truncate table students;

#task1
alter table students
change name full_name varchar(50);
#task2
set sql_safe_updates=0;
delete from students
where marks<80;
#task3
alter table students
drop column grade;
