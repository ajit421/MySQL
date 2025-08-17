-- 1. Department Table
CREATE TABLE Department (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(100) NOT NULL
);

INSERT INTO Department VALUES 
(1, 'Computer Science'),
(2, 'Electrical Engineering'),
(3, 'Mechanical Engineering');

-- 2. Student Table
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100),
    DeptID INT,
    FOREIGN KEY (DeptID) REFERENCES Department(DeptID)
);

INSERT INTO Student VALUES 
(101, 'Alice', 1),
(102, 'Bob', 2),
(103, 'Charlie', 1),
(104, 'David', 3);

-- 3. Book Table
CREATE TABLE Book (
    BookID INT PRIMARY KEY,
    Title VARCHAR(200),
    Author VARCHAR(100),
    Publisher VARCHAR(100)
);

INSERT INTO Book VALUES 
(201, 'Database Systems', 'R. Elmasri', 'Pearson'),
(202, 'Operating Systems', 'Galvin', 'Wiley'),
(203, 'Computer Networks', 'Tanenbaum', 'PHI');

-- 4. Borrowing Table
CREATE TABLE Borrowing (
    BorrowID INT PRIMARY KEY,
    StudentID INT,
    BookID INT,
    BorrowDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (BookID) REFERENCES Book(BookID)
);

INSERT INTO Borrowing VALUES
(1, 101, 201, '2025-07-01', '2025-07-10'),
(2, 102, 202, '2025-07-05', '2025-07-15'),
(3, 103, 203, '2025-07-10', NULL);
