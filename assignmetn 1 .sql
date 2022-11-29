DROP DATABASE IF EXISTS Testing_System_Assignment_1;

CREATE DATABASE IF NOT EXISTS Testing_System_Assignmetn_1;

DROP DATABASE IF EXISTS Testing_System_Assignmetn_1;

CREATE DATABASE IF NOT EXISTS Testing_System_Assignment_1;

USE Testing_System_Assignment_1;

CREATE TABLE department(
    Department_id INT PRIMARY KEY auto_increment,
    Department_name VARCHAR(50) NOT NULL
);
CREATE TABLE positions(
    Position_id INT PRIMARY KEY auto_increment,
    Position_name VARCHAR(50) NOT NULL
);
CREATE  TABLE Accounts(
    Account_id INT PRIMARY KEY auto_increment,
    Email VARCHAR(50) NOT NULL UNIQUE,
    Username VARCHAR(50) NOT NULL,
    Fullname VARCHAR(50),
    Department_id INT,
    Position_id INT,
    Create_date DATE,
    CONSTRAINT FOREIGN KEY fk_Accounts_Department(Department_id) REFERENCES department(Department_id)
);
CREATE TABLE Groups_(
    Group_id INT PRIMARY KEY auto_increment,
    Group_name VARCHAR(50),
    Creator_id INT,
    Create_date DATE
);
CREATE TABLE Group_Account(
    Group_id INT PRIMARY KEY auto_increment,
    Account_id INT NOT NULL,
    Join_date DATE 
);
CREATE TABLE Type_question(
    Type_id INT PRIMARY KEY auto_increment,
    Type_name VARCHAR(50)
);
CREATE TABLE Category_question(
    Category_id INT PRIMARY KEY auto_increment,
    Category_name VARCHAR(50)
);
CREATE TABLE Questions(
    Question_id INT PRIMARY KEY auto_increment,
    Content VARCHAR(200),
    Category_id INT,
    Type_id INT,
    Creator_id INT,
    Create_date DATE,
    CONSTRAINT FOREIGN KEY fk_Questions_Category(Category_id) REFERENCES Category_question(Category_id)
);
CREATE TABLE Answer(
    Answer_id INT PRIMARY KEY auto_increment,
    Content VARCHAR(200),
    Question_id INT,
    Is_correct ENUM ('Yes', 'No')
);
CREATE TABLE Exam(
    Exam_id INT PRIMARY KEY auto_increment,
    Code_number CHAR(5),
    Title VARCHAR(20),
    Category_id INT,
    Duration TIME,
    Creator_id INT,
    Create_date DATE,
    CONSTRAINT FOREIGN KEY fk_Exam_Ca(Category_id) REFERENCES Category_question(Category_id)
);








