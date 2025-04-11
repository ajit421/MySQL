create database student;
use student;

create table result(
name varchar(20),
reg int not null,
mask int not null,
city varchar (20) not null,
primary key (reg)
);

insert into result
(name, reg, mask)
values
("satya", 15, 75),
("so", 18, 80),
("aj", 36, 90),
("ru", 02, 95);

select *from result;
select *from result where mask>80;
select name, mask from result;


