create database if not exists lab3;
use lab3;
-- Drop existing tables if they exist
DROP TABLE IF EXISTS borrowing, book_author, book, author, publisher, facultyMember, member, student, department;

-- 1. Department Table
CREATE TABLE department (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(100) NOT NULL
);

-- 2. Student Table
CREATE TABLE student (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(100),
    RollNumber VARCHAR(20) UNIQUE,
    ContactNumber VARCHAR(15),
    DeptID INT,
    FOREIGN KEY (DeptID) REFERENCES department(DeptID)
);

-- 3. Member Table (superclass)
CREATE TABLE member (
    MemberID INT PRIMARY KEY,
    Name VARCHAR(100),
    Address VARCHAR(255),
    ContactEmail VARCHAR(100),
    JoinDate DATE
);

-- 4. FacultyMember Table (subclass of Member)
CREATE TABLE facultyMember (
    MemberID INT PRIMARY KEY,
    Department VARCHAR(100),
    FOREIGN KEY (MemberID) REFERENCES member(MemberID)
);

-- 5. Publisher Table
CREATE TABLE publisher (
    PublisherID INT PRIMARY KEY,
    Name VARCHAR(100),
    Location VARCHAR(100)
);

-- 6. Author Table
CREATE TABLE author (
    AuthorID INT PRIMARY KEY,
    Name VARCHAR(100),
    DateOfBirth DATE
);

-- 7. Book Table
CREATE TABLE book (
    ISBN VARCHAR(20) PRIMARY KEY,
    Title VARCHAR(200),
    Genre VARCHAR(50),
    PublicationYear INT,
    CopiesAvailable INT,
    PublisherID INT,
    FOREIGN KEY (PublisherID) REFERENCES publisher(PublisherID)
);

-- 8. Book_Author Table (Many-to-Many relationship)
CREATE TABLE book_author (
    BookISBN VARCHAR(20),
    AuthorID INT,
    PRIMARY KEY (BookISBN, AuthorID),
    FOREIGN KEY (BookISBN) REFERENCES book(ISBN),
    FOREIGN KEY (AuthorID) REFERENCES author(AuthorID)
);

-- 9. Borrowing Table
CREATE TABLE borrowing (
    BorrowingID INT PRIMARY KEY,
    BookISBN VARCHAR(20),
    MemberID INT,
    BorrowDate DATE,
    DueDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (BookISBN) REFERENCES book(ISBN),
    FOREIGN KEY (MemberID) REFERENCES member(MemberID)
);

