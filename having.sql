#having by funtion
create database school;
use school;

CREATE TABLE payments (
   customer_id int primary key,
   customer VARCHAR(50),
   mode varchar(50),
   city varchar(50),
   amount int
);
insert into payments
(customer_id,customer,mode,city,amount)
values
(1,"nizam","netbanking","usa",1000),
(2,"sadikh","debitcard","pak",68254),
(3,"xyz","netbanking","uk,",7864),
(4,"hidaytath","debitcard","india",7864),
(5,"imran","creditcard","israil",6483),
(6,"qbc","netbanking","usa",500),
(7,"jkm","debitcard","usa",70);
select * from payments;

select  customer_id,customer
from payments
where city="uk";

select customer_id,customer
from payments
having customer_id>4;

select city
from payments
where mode ="debitcard"
group by city
having max(amount)>1000
order by city desc;

select mode
from payments
having sum(amount) ;

select sum(amount)
from payments
where mode="debitcard"+"netbanking";



