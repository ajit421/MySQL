-- create database temp2;
-- drop database temp2;
-- create database college;

create database if not exists college;
use college;

create table if not exists student(
	id int primary key,
    name varchar(20),
    age int not null
);

insert into student values(1, "Ajit", 21);
insert into student values(2, "sohan", 22);
insert into student values(3, "r", 18);

delete from student where id = 3; 

select * from student;
