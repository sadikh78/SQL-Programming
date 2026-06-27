#foreign and upadate,cascade
create database passport;
use passport;

CREATE TABLE dept (
  id int primary key,   										#parent table
  name varchar(50)
);
  
create table teacher(											#child table
  id int primary key,
  name varchar(50),
  dept_id int,
  foreign key (dept_id) references dept(id)
  on update cascade
  on delete cascade 
  );
insert into dept (id,name) values (1,"nizam");
insert into dept (id,name) values (2,"sadikh");
insert into dept (id,name) values (3,"imran");

insert into teacher (id,name,dept_id) values (1,"abc",01);
insert into teacher (id,name,dept_id) values (2,"efg",02);
insert into teacher (id,name,dept_id) values (3,"xyz",03);
select * from teacher;
select * from dept;

update dept
set id=4
where id =1;

delete from dept
where name="imran";


SET SQL_SAFE_UPDATES = 0;

delete from payments
where mode="creditcard";

SET SQL_SAFE_UPDATES = 0;
DELETE FROM payments WHERE mode="debitcard";




