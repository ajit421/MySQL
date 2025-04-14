create database joints;
use joints;

create table student(
student_id int not null primary key,
name varchar(20)
);

insert into student
(student_id, name)
values
(101, "adam"),
(102, "bob"),
(103, "casey");

select *
from student;

create table course(
student_id int not null primary key,
course varchar(20)
);

insert into course
(student_id, course)
values
(102, "english"),
(105, "math"),
(103, "science"),
(107, "computer science");

select *
from course;

-- inner join 
select *
from student
inner join course
on student.student_id=course.student_id;

-- left join 
select *
from student
left join course
on student.student_id=course.student_id;

-- right join
select *
from student
right join course
on student.student_id=course.student_id; 

-- full join
select *
from student
left join course
on student.student_id=course.student_id
union
select *
from student
right join course
on student.student_id=course.student_id; 

