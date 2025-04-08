create database student0;
use student0;

create table if not exists result0(
name varchar(20),
reg int not null,
mask int not null,
city varchar (20) not null,
primary key (reg)
);

insert into result0
(name, reg, mask, city)
values
("satya", 15, 75, "bha"),
("so", 18, 80, "m"),
("aj", 36, 90, " ara"),
("ru", 02, 95, "pa");

select *from result0;

select *
from result0
order by mask desc;

select *
from result0
order by mask asc;

-- select * 
-- from result0
-- where mask>=80
-- limit 2;

-- select *from result0 where mask between 80 and 100;
-- select *from result0 where city in ("ara", "pa");
-- select *from result0 where city not in ("ara", "pa");

-- select *from result0 where mask>80;
-- select name, mask from result0;


