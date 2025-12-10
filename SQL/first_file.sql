CREATE TABLE student(
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT CHECK (age > 0),
    enrollment_date DATE DEFAULT CURRENT_DATE
);
CREATE TABLE course(
    id INT PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    credits INT CHECK (credits > 0)
);
CREATE TABLE enrollment(
    student_id INT,
    course_id INT,
    enrollment_date DATE DEFAULT CURRENT_DATE,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES student(id),
    FOREIGN KEY (course_id) REFERENCES course(id)
);
CREATE TABLE instructor(
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    department VARCHAR(100) NOT NULL
);

SELECT * FROM student;
SELECT * FROM course;
SELECT * FROM enrollment;
SELECT * FROM instructor;

SELECT DISTINCT department FROM instructor;