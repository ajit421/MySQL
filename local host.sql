create database geck;
use geck;

CREATE TABLE if not exists student_geckh (
    name VARCHAR(50),
    age INT,
    branch VARCHAR(10),
    cgpa FLOAT, 
    phone_no VARCHAR(15) primary key
);

INSERT INTO student_geckh 
(name, age, branch, cgpa, phone_no) 
VALUES
('abc', 22, 'CSE', 8.10, '1234'),
('def', 22, 'EE', 7.50, '2345'),
('ghi', 23, 'EE', 7.80, '3456'),
('jkl', 22, 'CSE', 9.10, '1230'),
('mno', 22, 'ME', 6.50, '7631');


select * from student_geckh;
