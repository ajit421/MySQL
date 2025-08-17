
create database if not exists lab4;
use lab4;
-- ==========================
-- TABLE: Publisher
-- ==========================
CREATE TABLE Publisher (
    PublisherID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255) NOT NULL,
    Location VARCHAR(255)
);

-- ==========================
-- TABLE: Book
-- ==========================
CREATE TABLE Book (
    ISBN VARCHAR(20) PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    Genre VARCHAR(100),
    PublicationYear INT,
    CopiesAvailable INT DEFAULT 0,
    PublisherID INT,
    FOREIGN KEY (PublisherID) REFERENCES Publisher(PublisherID)
);

-- ==========================
-- TABLE: Author
-- ==========================
CREATE TABLE Author (
    AuthorID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255) NOT NULL,
    DateOfBirth DATE
);

-- ==========================
-- TABLE: Book_Author (Many-to-Many)
-- ==========================
CREATE TABLE Book_Author (
    ISBN VARCHAR(20),
    AuthorID INT,
    PRIMARY KEY (ISBN, AuthorID),
    FOREIGN KEY (ISBN) REFERENCES Book(ISBN),
    FOREIGN KEY (AuthorID) REFERENCES Author(AuthorID)
);

-- ==========================
-- TABLE: Member
-- ==========================
CREATE TABLE Member (
    MemberID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255) NOT NULL,
    Address VARCHAR(255),
    ContactEmail VARCHAR(255),
    JoinDate DATE
);

-- ==========================
-- TABLE: Borrowing
-- ==========================
CREATE TABLE Borrowing (
    BorrowingID INT PRIMARY KEY AUTO_INCREMENT,
    ISBN VARCHAR(20),
    MemberID INT,
    BorrowDate DATE NOT NULL,
    DueDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (ISBN) REFERENCES Book(ISBN),
    FOREIGN KEY (MemberID) REFERENCES Member(MemberID)
);
