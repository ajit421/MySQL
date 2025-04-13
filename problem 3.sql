create database class;
use class;

create table class_list(
roll_no int not null primary key,
name varchar(20),
marks int not null);

insert into class_list
(roll_no, name, marks)
values
(101, "anil", 78),
(102, "bhumika", 93),
(103, "chetan", 85),
(104, "dhruv", 96),
(105, "emanuel", 92),
(106, "farah", 82);

select*
from class_list;

select avg(marks)
from class_list;

select name,marks
from class_list
where marks> 87.6667;

select *
from class_list
where marks>
(select avg(marks)
from class_list);

-- even roll number 
select roll_no
from class_list
where roll_no%2=0;

-- name of student even roll number
select name, roll_no
from class_list
where  roll_no%2=0;

-- max 
