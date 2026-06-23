CREATE DATABASE college;

USE college;
CREATE TABLE student (
   id int primary key,
   name VARCHAR(50),
   age INT NOT NULL,
   marks float
);
INSERT INTO student VALUES ( 1,"sadikh",10,9.5);
iNSERT INTO student VALUES ( 2,"nizam",21,10.5);
INSERT INTO student VALUES ( 3,"hidayath",10,92);
iNSERT INTO student VALUES ( 4,"imran",21,90);


SELECT * from student where marks >10 and age >10;      #logical ops
SELECT * from student where marks >10 or age >10;    #logical ops
SELECT * from student where marks between 10 and 95;   #logical ops
SELECT * from student where marks in (90,92);    #logical ops  
SELECT * from student where marks+10 >=100;   #arithmetic ops
SELECT * from student where marks>=8.5;       #comaprision ops

#order by class
SELECT * from student order by marks ASC limit 2;
SELECT * from student order by marks desc limit 3;

#limit clause
SELECT * from student limit 2;
SELECT * from student where marks>=8.5 and id >2 limit 1;
