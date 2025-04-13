create database unions;
use unions;

create table employee(
id int primary key,
name varchar(20),
manager_id int
);

insert into employee
(id, name, manager_id)
values
(101, "adam", 103),
(102, "bob", 104),
(103, "casey", null),
(104, "donald", 103);

select * from employee;

-- self join
select *
from employee as a
join employee as b
on a.id=b.manager_id;

-- union
select name from employee
union
select name from employee;


