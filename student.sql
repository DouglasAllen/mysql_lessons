CREATE TABLE  student (
 student_id SMALLINT UNSIGNED NOT NULL,
 first_name VARCHAR(45) NOT NULL,
 last_name VARCHAR(45) NOT NULL,
 age SMALLINT UNSIGNED NOT NULL,
 grade SMALLINT UNSIGNED NOT NULL,
 PRIMARY KEY  (student_id)
 );

INSERT INTO student (student_id, first_name, last_name, age, grade)
 VALUES 
 (1, 'yuna', 'kim', 19, 4),
 (2, 'kelly', 'jones', 22, 5),
 (3, 'jack', 'kennedy', 56, 5),
 (4, 'paul', 'kennedy', 34, 7),
 (5, 'daniel', 'song', 24, 2),
 (6, 'nichole', 'scott', 9, 6);