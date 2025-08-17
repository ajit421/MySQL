create database if not exists lab7;
use lab7;

-- Department Table with CONSTRAINTS
CREATE TABLE Department (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(100) UNIQUE NOT NULL
);

-- Student Table with CONSTRAINTS
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100) NOT NULL,
    DeptID INT,
    Email VARCHAR(100) UNIQUE,
    Age INT CHECK (Age >= 17),
    Gender VARCHAR(10) DEFAULT 'Not Specified',
    FOREIGN KEY (DeptID) REFERENCES Department(DeptID)
);

INSERT INTO Department VALUES (1, 'CSE'), (2, 'ECE'), (3, 'ME');

INSERT INTO Student (StudentID, StudentName, DeptID, Email, Age, Gender) VALUES
(101, 'Alice', 1, 'alice@univ.com', 20, 'Female'),
(102, 'Bob', 2, 'bob@univ.com', 21, 'Male'),
(103, 'Charlie', 1, 'charlie@univ.com', 22, 'Male'),
(104, 'David', 3, 'david@univ.com', 23, 'Male'),
(105, 'Eva', 2, 'eva@univ.com', 19, 'Female');


-- Students older than ANY student in DeptID = 1
SELECT StudentName FROM Student
WHERE Age > ANY (SELECT Age FROM Student WHERE DeptID = 1);

-- Students older than ALL students in DeptID = 2
SELECT StudentName FROM Student
WHERE Age > ALL (SELECT Age FROM Student WHERE DeptID = 2);


-- Students from CSE and ECE departments
SELECT StudentName FROM Student
WHERE DeptID IN (1, 2);

-- Students who belong to a department that exists
SELECT StudentName FROM Student s
WHERE EXISTS (
    SELECT 1 FROM Department d WHERE d.DeptID = s.DeptID
);

-- Students whose department does NOT exist (should return empty)
SELECT StudentName FROM Student s
WHERE NOT EXISTS (
    SELECT 1 FROM Department d WHERE d.DeptID = s.DeptID
);


-- Union of students from Dept 1 and 2
SELECT StudentName FROM Student WHERE DeptID = 1
UNION
SELECT StudentName FROM Student WHERE DeptID = 2;

-- Students common in both Dept 1 and 2 (INTERSECT is DBMS-specific; use JOIN for portability)
SELECT StudentName FROM Student WHERE DeptID = 1
INNER JOIN 
SELECT StudentName FROM Student WHERE DeptID = 2;


-- Check table structure
DESC Student;


SELECT StudentName FROM Student WHERE Age > ALL (SELECT Age FROM Student WHERE DeptID = 2);
