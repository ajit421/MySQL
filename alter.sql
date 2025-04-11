create database student2;
use student;

create table student_list (
roll int,
name varchar(20),
mask int not null,
gread varchar(2),
city varchar(20)
);

insert into student_list
(roll, name, mask, gread, city)
values
(101, "anil", 78, "C", "pune"),
(102, "bhumika", 93, "A", "mumbai"),
(103, "chetan", 85, "B", "mumbai"),
(104, "dhruv", 96, "A", "Delhi"),
(105, "emauel", 12, "F", "Delhi"),
(106, "farah", 82, "B", "Delhi");

select *from student_list;
