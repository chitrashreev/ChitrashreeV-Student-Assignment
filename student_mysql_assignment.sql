-- 1. Create Tables

CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50)
);

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    marks INT,
    course_id INT,
    city VARCHAR(50),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

-- 2. Insert Data (Student List)

INSERT INTO Courses VALUES
(301, 'Computer Science'),
(302, 'Data Science'),
(303, 'Artificial Intelligence');

INSERT INTO Students VALUES
(1, 'Abhinay', 82, 301, 'Vijayawada'),
(2, 'Suresh', 65, 301, 'Hyderabad'),
(3, 'Anitha', 74, 302, 'Chennai'),
(4, 'Ramesh', 91, 303, 'Bangalore'),
(5, 'Kavya', 58, 302, 'Pune');

-- 3. Logical Operators (AND, OR, NOT)

-- AND: Students from Vijayawada with marks > 80
SELECT * FROM Students
WHERE city = 'Vijayawada' AND marks > 80;

-- OR: Students from Chennai OR Pune
SELECT * FROM Students
WHERE city = 'Chennai' OR city = 'Pune';

-- NOT: Students NOT from Hyderabad
SELECT * FROM Students
WHERE NOT city = 'Hyderabad';

-- 4. Arithmetic / Aggregate Functions

-- SUM: Total marks of all students
SELECT SUM(marks) AS total_marks FROM Students;

-- AVG: Average marks of students
SELECT AVG(marks) AS average_marks FROM Students;

-- COUNT: Total number of students
SELECT COUNT(student_id) AS total_students FROM Students;

-- 5. ORDER BY Queries

-- Sort students by marks (highest first)
SELECT student_name, marks FROM Students
ORDER BY marks DESC;

-- Sort students alphabetically by name
SELECT * FROM Students
ORDER BY student_name ASC;
