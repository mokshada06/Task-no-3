CREATE DATABASE Task3;
USE Task3;

CREATE TABLE CourseEnrollments(
EnrollmentID INT(20) PRIMARY KEY,
StudentName VARCHAR(50),
CourseName VARCHAR(50),
EnrollmentDate DATE,
CourseFee DECIMAL(10,2),
Status VARCHAR(30));

INSERT INTO CourseEnrollments VALUES
(1110111, 'Aarav Singh', 'Python Basics', '2025-01-15', 3500.00, 'Completed'),
(2220222, 'Sanaya Verma', 'Data Science', '2025-04-25', 9500.00, 'In Progress'),
(5550555, 'Rohan kapoor', 'Web Development', '2025-02-05', 6000.00, 'Completed'),
(6660666, 'Aditya Mehta', 'Excel for Business', '2025-06-15', 3000.00, 'Completed'),
(8880888, 'Nidhi Das', 'Machine Learning', '2025-05-15', 12000.00, 'Not Started'),
(3330333, 'Meera Deshmukh', 'Power BI', '2023-06-08', 5500.00, 'In Progress'),
(7770777, 'Ishaan Rao', 'Statistics with R', '2023-06-15', 7500.00, 'Completed'),
(1110118, 'Ananya Joshi', 'Python Basics', '2023-07-20', 3500.00, 'In Progress'),
(9990999, 'Yash Pawar', 'SQL Fundamentals', '2023-08-01', 4000.00, 'Completed'),
(1110113, 'Kavya Shah', 'Data Science', '2023-08-25', 9500.00, 'Completed'),
(8880811, 'Tara Kulkarni', 'Machine Learning', '2023-09-12', 12000.00, 'In Progress'),
(5550512, 'Omkar Nair', 'Web Development', '2023-09-30', 6000.00, 'Not Started'),
(6660613, 'Divya Singh', 'Excel for Business', '2023-10-10', 3000.00, 'Completed'),
(3330314, 'Sameer Salvi', 'Power BI', '2023-10-20', 5500.00, 'In Progress'),
(1110115, 'Reena Patel', 'Python Basics', '2023-11-01', 3500.00, 'Completed'),
(7770716, 'Arjun Menon', 'Statistics with R', '2023-11-15', 7500.00, 'In Progress'),
(9990917, 'Sneha Thakur', 'SQL Fundamentals', '2023-12-01', 4000.00, 'Completed'),
(5550518, 'Nikhil Jadhav', 'Web Development', '2024-01-05', 6000.00, 'Completed'),
(8880819, 'Pooja Iyer', 'Machine Learning', '2024-01-20', 12000.00, 'In Progress'),
(2220220, 'Rahul Jain', 'Data Science', '2024-02-10', 9500.00, 'Completed'),
(6660621, 'Tanvi Bhatt', 'Excel for Business', '2024-02-25', 3000.00, 'Not Started'),
(3330232, 'Kunal Shinde', 'Power BI', '2024-03-10', 5500.00, 'Completed'),
(9990293, 'Neha Gokhale', 'SQL Fundamentals', '2024-03-22', 4000.00, 'In Progress'),
(7770724, 'Harsh Vyas', 'Statistics with R', '2024-04-05', 7500.00, 'Completed'),
(1110125, 'Prachi Sawant', 'Data Science', '2024-04-18', 9500.00, 'In Progress');

SELECT * FROM CourseEnrollments;

## USING WHERE COMMAND
SELECT * FROM CourseEnrollments WHERE CourseName = 'Machine Learning';

SELECT * FROM CourseEnrollments WHERE Status = 'In Progress';

SELECT * FROM CourseEnrollments WHERE CourseFee > 6000;

## USING BETWEEN & AND COMMAND
SELECT * FROM CourseEnrollments 
WHERE EnrollmentDate BETWEEN '2023-03-01' AND '2023-07-31';

SELECT * FROM CourseEnrollments 
WHERE CourseFee BETWEEN 5000 AND 13000;

## USING ORDER BY COMMAND
SELECT * FROM CourseEnrollments 
ORDER BY CourseFee DESC;

SELECT * FROM CourseEnrollments 
ORDER BY CourseName DESC;

## USING LIMIT COMMAND
SELECT * FROM CourseEnrollments 
ORDER BY EnrollmentDate DESC 
LIMIT 5;

SELECT * FROM CourseEnrollments 
ORDER BY CourseFee DESC 
LIMIT 5;

## USING LIKE COMMAND
SELECT * FROM CourseEnrollments 
WHERE StudentName LIKE '%a%';

SELECT * FROM CourseEnrollments 
WHERE StudentName LIKE 'A%';

## USING OR COMMAND
SELECT * FROM CourseEnrollments 
WHERE CourseName = 'Data Science' 
   OR CourseName = 'Python Basics';

SELECT * FROM CourseEnrollments 
WHERE CourseFee BETWEEN 3000 AND 8000
   OR CourseName = 'SQL Fundamentals';
