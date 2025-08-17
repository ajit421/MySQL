
create database if not exists lab2;
use lab2;
-- Create Department table (optional, if you want departments for students)
CREATE TABLE Department (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50) NOT NULL
);

-- Book Table
CREATE TABLE Book (
    BookID INT PRIMARY KEY,
    Title VARCHAR(100) NOT NULL,
    Author VARCHAR(100),
    Publisher VARCHAR(100),
    Category VARCHAR(50),
    AvailabilityStatus BOOLEAN DEFAULT TRUE -- TRUE means available
);

-- Student Table
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    RollNumber VARCHAR(20) UNIQUE NOT NULL,
    DepartmentID INT,
    ContactNumber VARCHAR(15),
    FOREIGN KEY (DepartmentID) REFERENCES Department(DeptID)
);

-- Transaction Table
CREATE TABLE Transaction (
    TransactionID INT PRIMARY KEY,
    BookID INT,
    StudentID INT,
    IssueDate DATE,
    ReturnDate DATE,
    Fine DECIMAL(6,2) DEFAULT 0.00,
    FOREIGN KEY (BookID) REFERENCES Book(BookID),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);
