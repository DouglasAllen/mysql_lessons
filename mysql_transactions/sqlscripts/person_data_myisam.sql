/* Set the default (current) database */
USE mydb;
/* Drop 'person_myisam' table */
DROP TABLE IF EXISTS person_myisam;

/* Create and populate 'person_myisam" table */
CREATE TABLE person_myisam (
person_id SMALLINT UNSIGNED NOT NULL,
first_name VARCHAR(45) NOT NULL,
last_name VARCHAR(45) NOT NULL,
age smallint(3) unsigned not null,
PRIMARY KEY  (person_id)
) ENGINE=MYISAM;

INSERT INTO person_myisam (person_id, first_name, last_name, age)
VALUES
(1, 'sang', 'shin', 88),
(2, 'kelly', 'jones', 22),
(3, 'jack', 'kennedy', 56),
(4, 'paul', 'kennedy', 34),
(5, 'daniel', 'song', 24);
