CREATE DATABASE IF NOT EXISTS WEB_Lab01_ITDSIU24035_HuaThuyHongNgoc;
USE WEB_Lab01_ITDSIU24035_HuaThuyHongNgoc;

CREATE TABLE IF NOT EXISTS Student (
	StudentID INT PRIMARY KEY,
	StudentName VARCHAR(100),
    DoB DATE,
    Major VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS Course (
	CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS Department (
	DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS Lecturer (
	LecturerID INT PRIMARY KEY, 
    LecturerName VARCHAR(100),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

CREATE TABLE IF NOT EXISTS Register (
    StudentID INT,
    CourseID INT,
    PRIMARY KEY (StudentID, CourseID),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);
 
 CREATE TABLE IF NOT EXISTS Teach (
    LecturerID INT,
    CourseID INT,
    PRIMARY KEY (LecturerID, CourseID),
    FOREIGN KEY (LecturerID) REFERENCES Lecturer(LecturerID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);

INSERT INTO Department VALUES
(1, 'Computer Science'),
(2, 'Information Technology'),
(3, 'Data Science');

INSERT INTO Lecturer VALUES
(101, 'Dr. Smith', 1),
(102, 'Dr. John', 2),
(103, 'Dr. Tom', 3);

INSERT INTO Course VALUES
(201, 'Database Management'),
(202, 'Web Application Development'),
(203, 'Object-Oriented Programming');

INSERT INTO Student VALUES
(301, 'Alice', '2003-05-10', 'IT'),
(302, 'Bob', '2002-09-21', 'CS'),
(303, 'Hanna', '2003-05-10', 'DS');

INSERT INTO Register VALUES
(301, 201),
(301, 202),
(303, 201);

INSERT INTO Teach VALUES 
(101, 203),
(101, 201),
(102, 202),
(103, 203);



    


