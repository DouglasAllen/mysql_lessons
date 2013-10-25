SELECT first_name, age FROM `mydb`.`student`;
DELETE FROM `mydb`.`student` WHERE first_name = 'mao';
INSERT INTO `mydb`.`student` (student_id, first_name, last_name, age, grade)
VALUES
(7, 'mao', 'asada', 19, 5);
SELECT * FROM `mydb`.`student`;