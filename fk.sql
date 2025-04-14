create database fk;
use fk;

create table dept(
id int not null,
name varbinary(20),
primary key (id)
);

insert dept
(id, name)
values
(101, "science"),
(102, "English"),
(103, "Hindi");

create table teacher(
id int not null,
name varchar (20),
dep_id int not null,
foreign key (dep_id) references dept(id)
);

insert teacher
(id, name, dep_id)
values
(101, "Admin", 101),
(102, "BOB", 103),
(103, "casy", 102),
(104, "Donald", 102);


select *
from dept;

