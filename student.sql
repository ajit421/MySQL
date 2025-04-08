create database if not exists college;
use college;

create table if not exists student(
rollno int primary key,
name varchar (20)
);

-- delete from student where rollno = 36;
-- insert into student values(36, "Aj");

insert into student
(rollno, name)
values
(36, "Ajit"),
(37, "Anuj"),
(38, "vikash");

select *from student;