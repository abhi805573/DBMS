-- CREATE DATABASE Codex_db;
-- SHOW DATABASES;
-- USE Codex_db;

-- CREATE TABLE Student (
--     student_id INT PRIMARY KEY AUTO_INCREMENT,
--     name VARCHAR(50),
--     age INT,
--     city VARCHAR(50)
-- );

-- INSERT INTO Student (name, age, city) 
-- VALUES
--     ('Alice', 20, 'New York'),
--     ('Bob', 22, 'Los Angeles'),
--     ('Charlie', 21, 'Chicago'),
--     ('Diana', 23, 'Miami'),
--     ('Eve', 20, 'New York');

-- CREATE TABLE Marks (
--     profile_id INT,
--     student_id INT,
--     email VARCHAR(50),
--     gpa DECIMAL(3,2),
--     FOREIGN KEY (student_id) REFERENCES Student(student_id)
-- );

-- INSERT INTO Marks (profile_id, student_id, email, gpa)
-- VALUES
--     (1, 1, 'alice@mail.com', 3.6),
--     (2, 2, 'bob@mail.com', 3.1),
--     (3, 3, 'charlie@outlook.com', 2.9),
--     (4, 4, 'diana@yahoo.com', 3.8),
--     (5, 5, 'ethan@gmail.com', 3.4);

-- SELECT * FROM Student;
-- SELECT * FROM Marks;

-- //Joins two table together
-- SELECT * FROM Student
-- INNER JOIN Marks
-- ON Student.student_id = Marks.student_id;


-- //Q1. Select all students who are from New York.
-- SELECT * 
-- FROM Student
-- WHERE city = 'New York';

-- //Q2.Get top 3 students with highest GPA.
-- SELECT s.name, m.gpa
-- FROM Student s
-- JOIN Marks m ON s.student_id = m.student_id
-- ORDER BY m.gpa DESC
-- LIMIT 3;

-- //Q3.Count how many students are from each city
-- SELECT city, COUNT(*) AS student_count
-- FROM Student
-- GROUP BY city;

-- //Q4.Get student names along with their GPA.
-- SELECT s.name, m.gpa
-- FROM Student s
-- JOIN Marks m ON s.student_id = m.student_id;

-- //Q5.Get all students and their emails.
SELECT s.name, m.email
FROM Student s
JOIN Marks m ON s.student_id = m.student_id;

-- //Q6.Find students with GPA greater than 3.5.
SELECT s.name, m.gpa
FROM Student s
JOIN Marks m ON s.student_id = m.student_id
WHERE m.gpa > 3.5;

-- //Q7.Find average GPA of students from each city.
SELECT s.city, AVG(m.gpa) AS average_gpa
FROM Student s
JOIN Marks m ON s.student_id = m.student_id
GROUP BY s.city;
