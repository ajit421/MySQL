create database if not exists lab8;
use lab8;

CREATE TABLE Department (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50)
);

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100),
    Age INT,
    Gender VARCHAR(10),
    DeptID INT,
    Marks INT,
    FOREIGN KEY (DeptID) REFERENCES Department(DeptID)
);


CREATE TABLE Department (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50)
);

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100),
    Age INT,
    Gender VARCHAR(10),
    DeptID INT,
    Marks INT,
    FOREIGN KEY (DeptID) REFERENCES Department(DeptID)
);


-- Find students who scored more than the average marks of all students
SELECT StudentName FROM Student
WHERE Marks > (SELECT AVG(Marks) FROM Student);


-- Find students who are the top scorer in their department
SELECT s1.StudentName, s1.Marks, s1.DeptID
FROM Student s1
WHERE Marks = (
    SELECT MAX(s2.Marks)
    FROM Student s2
    WHERE s1.DeptID = s2.DeptID
);


-- List students with their department names
SELECT s.StudentName, d.DeptName
FROM Student s
INNER JOIN Department d ON s.DeptID = d.DeptID;


-- Show all students including those without departments
SELECT s.StudentName, d.DeptName
FROM Student s
LEFT JOIN Department d ON s.DeptID = d.DeptID;


-- Show all departments even if no students are enrolled
SELECT s.StudentName, d.DeptName
FROM Student s
RIGHT JOIN Department d ON s.DeptID = d.DeptID;


-- Same as INNER JOIN but using WHERE clause
SELECT s.StudentName, d.DeptName
FROM Student s, Department d
WHERE s.DeptID = d.DeptID;


