create database if not exists lab3;
use lab3;

-- Department Table
CREATE TABLE Department (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(100)
);

-- Student Table
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100),
    DeptID INT,
    Email VARCHAR(100),
    FOREIGN KEY (DeptID) REFERENCES Department(DeptID)
);


-- Inserting into Department
INSERT INTO Department (DeptID, DeptName) VALUES 
(1, 'Computer Science'), 
(2, 'Electrical Engineering'),
(3, 'Mechanical Engineering');

-- Inserting into Student
INSERT INTO Student (StudentID, StudentName, DeptID, Email) VALUES
(101, 'Alice', 1, 'alice@university.com'),
(102, 'Bob', 2, 'bob@university.com'),
(103, 'Charlie', 1, 'charlie@university.com'),
(104, 'David', 3, 'david@university.com');


-- View all students
SELECT * FROM Student;

-- View students from 'Computer Science' department
SELECT StudentName 
FROM Student 
JOIN Department ON Student.DeptID = Department.DeptID
WHERE DeptName = 'Computer Science';


-- Update Bob's email
UPDATE Student
SET Email = 'bob_new@university.com'
WHERE StudentID = 102;

-- Update Department name
UPDATE Department
SET DeptName = 'CSE'
WHERE DeptID = 1;


SELECT * FROM Student WHERE StudentID = 102;

-- Delete student David
DELETE FROM Student
WHERE StudentName = 'David';

-- Delete department 'Mechanical Engineering' (only if no students reference it)
DELETE FROM Department
WHERE DeptName = 'Mechanical Engineering';
