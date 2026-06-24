create database school;
use school;
CREATE TABLE student (
   id int primary key,
   name VARCHAR(50),
   city varchar(50),
   age INT NOT NULL,
   marks float
);
INSERT INTO student VALUES ( 1,"sadikh","bangalore",10,9.5);
iNSERT INTO student VALUES ( 2,"nizam","chennai",21,10.5);
INSERT INTO student VALUES ( 3,"hidayath","bangalore",10,92);
iNSERT INTO student VALUES ( 4,"imran","hyderabad",21,90);
select id from student;
select city,count(name) from student group by city;
