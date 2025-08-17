create database if not exists lab10;
use lab10;

-- Main table
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100),
    Marks INT
);

-- Audit table to log trigger actions
CREATE TABLE Student_Audit (
    AuditID INT AUTO_INCREMENT PRIMARY KEY,
    ActionType VARCHAR(10),
    StudentID INT,
    StudentName VARCHAR(100),
    Marks INT,
    ActionTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DELIMITER $$

CREATE TRIGGER trg_after_insert
AFTER INSERT ON Student
FOR EACH ROW
BEGIN
    INSERT INTO Student_Audit (ActionType, StudentID, StudentName, Marks)
    VALUES ('INSERT', NEW.StudentID, NEW.StudentName, NEW.Marks);
END$$

DELIMITER ;


DELIMITER $$

CREATE TRIGGER trg_after_update
AFTER UPDATE ON Student
FOR EACH ROW
BEGIN
    INSERT INTO Student_Audit (ActionType, StudentID, StudentName, Marks)
    VALUES ('UPDATE', NEW.StudentID, NEW.StudentName, NEW.Marks);
END$$

DELIMITER ;


DELIMITER $$

CREATE TRIGGER trg_after_delete
AFTER DELETE ON Student
FOR EACH ROW
BEGIN
    INSERT INTO Student_Audit (ActionType, StudentID, StudentName, Marks)
    VALUES ('DELETE', OLD.StudentID, OLD.StudentName, OLD.Marks);
END$$

DELIMITER ;


INSERT INTO Student VALUES (1, 'Alice', 90), (2, 'Bob', 75);

UPDATE Student SET Marks = 80 WHERE StudentID = 2;

DELETE FROM Student WHERE StudentID = 1;


SELECT * FROM Student_Audit;

