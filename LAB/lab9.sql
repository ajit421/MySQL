create database if not exists lab9;
use lab9;

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


INSERT INTO Department VALUES
(1, 'CSE'), (2, 'ECE'), (3, 'ME');

INSERT INTO Student VALUES
(101, 'Alice', 20, 'Female', 1, 85),
(102, 'Bob', 21, 'Male', 2, 78),
(103, 'Charlie', 22, 'Male', 1, 88),
(104, 'David', 23, 'Male', 3, 74),
(105, 'Eva', 20, 'Female', 2, 90),
(106, 'Frank', 19, 'Male', NULL, 65);


-- Count total students
SELECT COUNT(*) AS TotalStudents FROM Student;

-- Sum of marks of all students
SELECT SUM(Marks) AS TotalMarks FROM Student;

-- Average marks
SELECT AVG(Marks) AS AverageMarks FROM Student;

-- Highest and lowest marks
SELECT MAX(Marks) AS MaxMarks, MIN(Marks) AS MinMarks FROM Student;

-- Average marks per department
SELECT DeptID, AVG(Marks) AS AvgMarks
FROM Student
GROUP BY DeptID;

-- Departments where average marks are greater than 80
SELECT DeptID, AVG(Marks) AS AvgMarks
FROM Student
GROUP BY DeptID
HAVING AVG(Marks) > 80;

-- Create a view of top performing students
CREATE VIEW TopStudents AS
SELECT StudentID, StudentName, Marks
FROM Student
WHERE Marks > 80;

-- Select from view
SELECT * FROM TopStudents;

DROP VIEW TopStudents;

