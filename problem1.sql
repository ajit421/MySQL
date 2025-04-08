create database if not exists xyz1;
use xyz1;

create table if not exists employee1(
id int key,
name varchar (20),
salary int not null 
);

insert into employee1
values
(1, "adam", 25000),
(2, "bob", 30000),
(3, "casey", 40000);

select * from employee1;
-- show tables;