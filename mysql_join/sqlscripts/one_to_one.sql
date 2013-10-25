/* Drop tables if they exist */
DROP TABLE IF EXISTS primary_address;
DROP TABLE IF EXISTS person;  
 
/* Create "person" table */
CREATE TABLE person (  
	person_id INT NOT NULL AUTO_INCREMENT,  
	pname varchar(255) NOT NULL,   
	PRIMARY KEY  (person_id) 
) ENGINE=InnoDB; 
  
 
/* Create "primary_address" table with FOREIGN KEY */ 
 CREATE TABLE primary_address (   
	primary_address_id INT NOT NULL,  
	address varchar(255) NOT NULL,  
	p_id INT NOT NULL,
	PRIMARY KEY  (primary_address_id),
    FOREIGN KEY (p_id) REFERENCES person (person_id)
) ENGINE=InnoDB;   

/* Data for the table person */
INSERT INTO person(person_id, pname) 
VALUES
(1,'Sang Shin'),       
(2,'Casey Jones'),      
(3,'Bull Fighter'),
(4,'Passion You');

/* Data for the table primary_address */
INSERT INTO primary_address(primary_address_id, address, p_id)
VALUES
(11,'11 dreamland', 1),
(12,'5 king road', 2),
(13,'67 nichole st', 3),
(14,'32 Washington st', 4);

/* Display data in the tables */
SELECT * FROM person;
SELECT * FROM primary_address;

/* Perforn Inner Joined SELECT */
SELECT person.pname, primary_address.address
FROM person, primary_address
WHERE person.person_id=primary_address.p_id;

/* Display number of primary_addresses for each person */
SELECT person.pname AS 'person', 
       COUNT(primary_address.address) AS 'number of primary addresses'
FROM person, primary_address
WHERE person.person_id = primary_address.p_id 
GROUP BY primary_address.address;

/* Display number of person for each primary_address */
SELECT primary_address.address AS 'primary address', 
       COUNT(person.pname) AS 'person'
FROM person, primary_address
WHERE person.person_id = primary_address.p_id 
GROUP BY person.pname;



 
