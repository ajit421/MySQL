create database result1;
use result1;

create table table1(
reg int not null,
name varchar (20),
number int not null,
gread varchar(2),
city varchar(20)
);

insert table1 
(reg, name, number, gread, city)
values
(101, "anil", 78, "C", "pune"),
(102, "bhumika", 93, "A", "mumbai"),
(103, "chetan", 85, "B", "mumbai"),
(104, "dhruv", 96, "A", "Delhi"),
(105, "emauel", 12, "F", "Delhi"),
(106, "farah", 82, "B", "Delhi");

set sql_safe_updates=0;

delete from number 
where number <33;


select *
from table1;

update table1
set gread ="C"
where gread ="F";

update table1
set number = 12
where number >92;

update table1
set number= number+1;




