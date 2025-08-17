create database if not exists lab1;
use lab1;
-- SQL Schema for a Library Management System

-- Create the Author table
-- This table stores information about the authors of the books.
CREATE TABLE Author (
    AuthorID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255) NOT NULL,
    DateOfBirth DATE
);

-- Create the Publisher table
-- This table stores information about the publishers of the books.
CREATE TABLE Publisher (
    PublisherID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255) NOT NULL,
    Location VARCHAR(255)
);

-- Create the Book table
-- This table stores information about each book in the library.
-- It includes foreign keys for the Publisher.
CREATE TABLE Book (
    ISBN VARCHAR(20) PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    Genre VARCHAR(100),
    PublicationYear INT,
    CopiesAvailable INT NOT NULL DEFAULT 1,
    PublisherID INT,
    FOREIGN KEY (PublisherID) REFERENCES Publisher(PublisherID)
);

-- Create the Member table
-- This table stores information about the library members.
CREATE TABLE Member (
    MemberID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255) NOT NULL,
    Address VARCHAR(255),
    ContactEmail VARCHAR(255) UNIQUE,
    JoinDate DATE NOT NULL
);

-- Create a linking table for the many-to-many relationship between Book and Author
-- This allows a book to have multiple authors and an author to have multiple books.
CREATE TABLE Book_Author (
    BookISBN VARCHAR(20),
    AuthorID INT,
    PRIMARY KEY (BookISBN, AuthorID),
    FOREIGN KEY (BookISBN) REFERENCES Book(ISBN),
    FOREIGN KEY (AuthorID) REFERENCES Author(AuthorID)
);

-- Create the Borrowing table
-- This table records each time a member borrows a book.
CREATE TABLE Borrowing (
    BorrowingID INT PRIMARY KEY AUTO_INCREMENT,
    BookISBN VARCHAR(20),
    MemberID INT,
    BorrowDate DATE NOT NULL,
    DueDate DATE NOT NULL,
    ReturnDate DATE,
    FOREIGN KEY (BookISBN) REFERENCES Book(ISBN),
    FOREIGN KEY (MemberID) REFERENCES Member(MemberID)
);

