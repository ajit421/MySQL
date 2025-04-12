create database r1;
use r1;

create table ma1(
regno int not null,
name1 varchar(20),
mas1 int not null,
city1 varchar(20),
age int not null,
primary key (regno)
);

insert into ma1
(regno, name1, mas1, city1, age)
values
(1, "dee", 75, "man", 18),
(3, "Ama", 77, "bh", 20),
(5, "ret", 79, "ar", 21),
(15, "sat", 80, "bh", 18);

select *
from ma1;

select city1, avg(mas1)
from ma1
group by city1
order by avg(age) asc;

select city1, count(regno)
from ma1
group by city1;

select count(name1)
from ma1;

select avg(mas1)
from ma1;

select max(mas1)
from ma1;

select lower(mas1)
from ma1;