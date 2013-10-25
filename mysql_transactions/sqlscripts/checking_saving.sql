/* Set the default (current) database */
USE mydb;

/* Drop tables */
DROP TABLE IF EXISTS checking;
DROP TABLE IF EXISTS savings;

/* Create and populate 'checking" table */
CREATE TABLE checking (
   checking_id SMALLINT UNSIGNED NOT NULL,
   name VARCHAR(45) NOT NULL,
   balance INT unsigned NOT NULL,
   PRIMARY KEY  (checking_id)
) ENGINE=InnoDB;

INSERT INTO checking (checking_id, name, balance)
VALUES
(1, 'sang shin', 1000),
(2, 'bill gates', 2000);

/* Create and populate 'savings" table */
CREATE TABLE savings (
   savings_id SMALLINT UNSIGNED NOT NULL,
   name VARCHAR(45) NOT NULL,
   balance INT unsigned NOT NULL,
   PRIMARY KEY  (savings_id)
) ENGINE=InnoDB;

INSERT INTO savings (savings_id, name, balance)
VALUES
(1, 'sang shin', 100),
(2, 'bill gates', 100);