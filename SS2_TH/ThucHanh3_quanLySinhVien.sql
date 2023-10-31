create database student_management ;
use student_management ;

CREATE TABLE class (
    class_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    class_name VARCHAR(50) NOT NULL

);

CREATE TABLE student (
    student_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    studentName VARCHAR(30) NOT NULL,
    class_id INT NOT NULL,
    FOREIGN KEY (class_id)
        REFERENCES class (class_id)
);


CREATE TABLE subject  (
    sub_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    sub_name VARCHAR(50) NOT NULL
);

CREATE TABLE student_subject (
    student_id INT,
    sub_id INT,
    Mark FLOAT DEFAULT 0 CHECK (Mark BETWEEN 0 AND 100),
    ExamTimes TINYINT DEFAULT 1,
    PRIMARY KEY (student_id , sub_id),
    FOREIGN KEY (student_id)
        REFERENCES student (student_id),
    FOREIGN KEY (sub_id)
        REFERENCES subject (sub_id)
)

