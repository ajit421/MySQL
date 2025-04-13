create database student3;
use student3;

create table student(
name varchar(20),
reg int not null primary key,
marks int not null,
grades varbinary(2)
);

insert into student 
(name, reg, marks, grades)
values
("aa", 1, 70, "d"),
("bb", 2, 75, "c"),
("cc", 3, 80, "b"),
("dd", 4, 85, "a"),
("ee", 5, 90, "f");

SET SQL_SAFE_UPDATES = 0;

select * from student;

alter table student
change name fullname varchar(50);

delete from student
where marks <80;

alter table student
drop column grades;