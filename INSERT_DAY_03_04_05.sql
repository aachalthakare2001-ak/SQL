show databases;
use aachal;
select database();
show tables;
create table students(
name varchar (15),
email varchar(20),
phone varchar(20)
);
desc students;
select *from students;
-- Simple Insert (All columns,Single Row)
insert into students(name,email,phone) values( 'Aachall', 'aachal@gmail.com', 9653241780);
select *from Students;
-- INSERT WITHOUT COLUMN NAMES(order matters)  
INSERT INTO Students VALUES('neel chawde','neel@gmail.com','9876543222');

-- RETRIVE
SELECT *FROM Students;
-- INSERT WITH MULTIPLE ROWS(BULK INSERT)
INSERT INTO Students(name,email,phone) values
("nitin chawde", "dipanshu@gmail.com",9922447802),
("rucha gaware","rucha@gmail.com","7890345672"),
("rajasi gaware","rajasi@gmail.com","8976543456");
SELECT *FROM Students;
-- INSERT SELECTED COLUMN 
INSERT INTO Students (email,phone) VALUES('Tanish@gail.com',9876543219);
SELECT *FROM Students;

-- INSERT FROM ANOTHER TABLE
CREATE TABLE temp_Students(
name varchar (15),
email varchar(20),
phone varchar(20)
);
show tables;
INSERT INTO temp_Students VALUES
('Amit Sharma', 'amit@mail.com', '9876543210'),
('Priya Verma', 'priya@mail.com', '9123456780'),
('Rahul Singh', 'rahul@mail.com', '9811122233'),
('Sneha Patil', 'sneha@mail.com', '9898989898'),
('Arjun Reddy', 'arjun@mail.com', '9765432101');
SELECT *FROM Students;
SELECT *FROM temp_Students;
INSERT INTO Students SELECT *FROM temp_Students;
-------------------------------------------------------------------------
SELECT *FROM Students;
Select *from temp_Students; 
SHOW DATABASES;
USE aachal;
SHOW TABLES;
CREATE TABLE temp_Students(
name VARCHAR(20),
email_id VARCHAR(20),
mobile VARCHAR(10),
location VARCHAR(50),
age int
);
INSERT INTO  temp_Students( name, email_id, mobile, location, age) VALUES 
('John Doe', 'john@mail.com', '9876543210', 'Pune', 25),
('Alice Smith', 'alice@mail.com', '9123456780', 'Mumbai', 28),
('Bob Lee', 'bob@mail.com', '9811122233', 'Delhi', 30),
('Emma Watson', 'emma@mail.com', '9898989898', 'Bangalore', 27),
('Liam Brown', 'liam@mail.com', '9765432101', 'Hyderabad', 24);
SELECT *FROM  temp_Students;

CREATE TABLE Studentss(
fullName VARCHAR(20),
email_id VARCHAR(20),
phone VARCHAR(10)
);

SELECT *FROM Studentss;
INSERT INTO Studentss (fullName,email_id,phone) SELECT name,email_id,mobile FROM temp_Students  WHERE location='Pune';
SELECT *FROM Studentss;

INSERT INTO Studentss (fullName,email_id,phone) SELECT name,email_id,mobile FROM temp_Students WHERE age>25;

-- INSERT USING "SET" SYNTAX
INSERT INTO Studentss
SET fullName ='Aaachal Thakar',
email_id='aachal@gmail.com',
phone=9876543210;
SELECT *FROM Studentss;

