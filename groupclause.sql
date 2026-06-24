#group function1
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


#group function2
create database school;
use school;

CREATE TABLE payments (
   customer_id int primary key,
   customer VARCHAR(50),
   mode varchar(50),
   city varchar(50)
);
insert into payments
(customer_id,customer,mode,city )
values
(1,"nizam","netbanking","usa"),
(2,"sadikh","debitcard","pak"),
(3,"xyz","netbanking","uk"),
(4,"hidaytath","debitcard","india"),
(5,"imran","creditcard","israil"),
(6,"qbc","netbanking","usa"),
(7,"jkm","debitcard","usa");
select * from payments;
select mode,count(customer) from payments group by mode;
select customer,mode from payments group by customer,mode;
select * from payments where mode="netbanking" and "debitcard";
select city,mode from payments group by city,mode;

