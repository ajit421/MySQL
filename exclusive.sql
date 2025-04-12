create database exclusive_join;
use exclusive_join;

create table student(
id int not null primary key,
name varchar(20)
);

insert into student
(id, name)
values
(101, "adam"),
(102, "bob"),
(103, "casey");

select *
from student;

create table course(
id int not null primary key,
course varchar(20)
);

insert into course
(id, course)
values
(102, "english"),
(105, "math"),
(103, "science"),
(107, "computer science");

select *
from student;

-- left exclusive join 
select *
from student as a
left join course as b
on a.id=b.id
where b.id is null;

-- right execute join
select *
from student as a
right join course as b
on a.id=b.id
where a.id is null; 

-- full execute join
select *
from student as a
left join course as b
on a.id=b.id
where a.id is null
union
select *
from student as a
right join course as b
on a.id=b.id
where b.id is null;

