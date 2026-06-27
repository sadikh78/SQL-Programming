#alter functions .add.rename.drop.change.modify
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

alter table students
add column age int not null default 20; # new age coloum added

alter table students #new table name rename
rename to stu;

alter table stu       ##new table name rename
rename to students;

alter table stu      #table column has droped
drop column age;
 

alter table students   #table coloumn datatye has modified
modify age varchar(2);

insert into students
(id,name,marks,grade,city,stu_age)
values
(107, "athul", 55, "C", "Pune",100);

alter table students
change age stu_age int;

alter table students
change stu_age age_stu int;

