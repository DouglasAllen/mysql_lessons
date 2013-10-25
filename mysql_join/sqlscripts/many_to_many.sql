/* Drop tables if they exist */
DROP TABLE IF EXISTS student_course; 
DROP TABLE IF EXISTS student;  
DROP TABLE IF EXISTS course;
 
/* Create student table */
CREATE TABLE student (  
	student_id INT NOT NULL AUTO_INCREMENT,  
	sname varchar(255) NOT NULL,   
	PRIMARY KEY  (student_id) 
) ENGINE=InnoDB; 

 
/* Create course table */
CREATE TABLE course (  
	course_id INT NOT NULL AUTO_INCREMENT,  
	cname varchar(255) NOT NULL,   
	PRIMARY KEY  (course_id) 
) ENGINE=InnoDB; 

/* Create "student_course" join table with FOREIGN KEY to
 * both student and course tables. */ 
CREATE TABLE student_course (   
	student_course_id INT NOT NULL AUTO_INCREMENT,   
	s_id INT NOT NULL, 
	c_id INT NOT NULL,  
	PRIMARY KEY  (student_course_id),
    FOREIGN KEY (s_id) REFERENCES student (student_id),
    FOREIGN KEY (c_id) REFERENCES course (course_id)
) ENGINE=InnoDB;   

  
/* Data for the table student */
INSERT INTO student(student_id, sname)
VALUES
(1,'jack'),
(2,'mary'),
(3,'nichole'),
(4,'mike');
 
/* Data for the table course */
INSERT INTO course(course_id, cname) 
VALUES
(11,'Computer Science 101'),       
(22,'MySQL'),
(33,'Java programming');

/* Data for the table student_course */
INSERT INTO student_course(s_id, c_id) 
VALUES
(1, 11),       
(1, 22),
(3, 22),
(4, 22);


/* Display data in the tables */
SELECT * FROM course;
SELECT * FROM student;
SELECT * FROM student_course;

/* Display all courses that 'jack' is taking */
SELECT course.cname AS 'courses jack is taking'
FROM student, course, student_course
WHERE student.student_id = student_course.s_id AND
      course.course_id = student_course.c_id AND
      student.sname = 'jack';
      
/* Display all courses that 'nichole' is taking */
SELECT course.cname AS 'courses nichole is taking'
FROM student, course, student_course
WHERE student.student_id = student_course.s_id AND
      course.course_id = student_course.c_id AND
      student.sname = 'nichole';

/* Display all students who take 'MySQL' */
SELECT student.sname AS 'students who take MySQL'
FROM student, course, student_course
WHERE student.student_id = student_course.s_id AND
      course.course_id = student_course.c_id AND
      course.cname = 'MySQL';

/* Display number of students for each course */
SELECT course.cname AS course, 
       COUNT(student.sname) AS 'number of students'
FROM student, course, student_course
WHERE student.student_id = student_course.s_id AND
      course.course_id = student_course.c_id 
GROUP BY course.cname;

/* Display number of courses for each student */
SELECT student.sname AS student, 
       COUNT(course.cname) AS 'number of courses'
FROM student, course, student_course
WHERE student.student_id = student_course.s_id AND
      course.course_id = student_course.c_id 
GROUP BY student.sname;


 
