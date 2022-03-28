CREATE DATABASE sql_database;
SHOW DATABASES;
DROP DATABASE TEST;
DROP DATABASE testdatabase;
CREATE TABLE employee
(id INT AUTO_INCREMENT PRIMARY KEY,
Name VARCHAR(20) NOT NULL,
surname VARCHAR(20) NOT NULL,
team VARCHAR(20) NOT NULL);
CREATE TABLE employer
(id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(20) NOT NULL,
surname VARCHAR(20) NOT NULL,
team VARCHAR(20) NOT NULL,
FOREIGN KEY (id) references employee(id));
INSERT INTO employee (name, surname, team) value ("Aashvi", "Divisha", "Rutvi", "Aadvika," "Kayra", "Saanvi", "Shreyanvi", "Charlotte", "Livie", "Olivia", "Sophie", "Saffi", "Jones", "Davis", "Johnson", "Williams", "Smith", "Garcia", "Rodriguez", "Brown", "Miller", "Martinez", "Lopez", "Hernandez", "QA", "Dev", "PM", "PR", "Sales", "Analyst", "PM", "QA", "PR", "Dev", "Dev", "Dev");
SHOW TABLES;
INSERT INTO employee (Name, surname, team) value (Aashvi, Jones, QA);
INSERT INTO employee (name, surname, team) value ("Aashvi", "Divisha", "Rutvi", "Aadvika," "Kayra", "Saanvi", "Shreyanvi", "Charlotte", "Livie", "Olivia", "Sophie", "Saffi", "Jones", "Davis", "Johnson", "Williams", "Smith", "Garcia", "Rodriguez", "Brown", "Miller", "Martinez", "Lopez", "Hernandez", "QA", "Dev", "PM", "PR", "Sales", "Analyst", "PM", "QA", "PR", "Dev", "Dev", "Dev");
INSERT INTO employee (name, surname, team) value ("Aashvi", "Jones", "QA");
INSERT INTO employee (name, surname, team) value ("Divisha",  "Davis", "QA");
INSERT INTO employee (name, surname, team) value ("Rutvi",   "Johnson",  "Dev");
INSERT INTO employee (name, surname, team) value ( "Aadvika", "Johnson", "PM");
SELECT * FROM employee;
UPDATE employee SET Name="Mary" WHERE id=1;
UPDATE employee SET Name="Anna" WHERE id=4;
SELECT * FROM employee;
UPDATE employee SET Name="Nadia" WHERE id=7;
UPDATE employee SET Name="Olivia" WHERE id=8;
UPDATE employee SET Name="Emma" WHERE id=9;
UPDATE employee SET Name="Charlotte" WHERE id=10;
UPDATE employee SET surname="Elsher" WHERE id=3;
UPDATE employee SET surname="Solace" WHERE id=4;
UPDATE employee SET surname="Levine" WHERE id=5;
UPDATE employee SET surname="Raven" WHERE id=7;
UPDATE employee SET surname="Bardot" WHERE id=8;
UPDATE employee SET surname="Hansley" WHERE id=9;
INSERT INTO employer (Name, surname, team, id) value (6,"Aashvi", "Jones", "QA", 8 );
SELECT* FROM employer;
DROP TABLE employer;
CREATE TABLE employer
(id INT AUTO_INCREMENT PRIMARY KEY,
employee_id INT NOT NULL,
name VARCHAR(20) NOT NULL,
surname VARCHAR(20) NOT NULL,
team VARCHAR(20) NOT NULL,
FOREIGN KEY (employee_id) references employee(id));
INSERT INTO employer (employee_id, name, surname, team) value (1, "Emilia", "Rojas", "QA");
INSERT INTO employer (employee_id, name, surname, team) value (2, "Emilia", "Rojas", "QA");
INSERT INTO employer (employee_id, name, surname, team) value (3, "Emilia", "Rojas", "QA");
INSERT INTO employer (employee_id, name, surname, team) value (4, "Emilia", "Rojas", "QA");
INSERT INTO employer (employee_id, name, surname, team) value (7, "Emilia", "Rojas", "QA");
INSERT INTO employer (employee_id, name, surname, team) value (8, "Emilia", "Rojas", "QA");
INSERT INTO employer (employee_id, name, surname, team) value (5, "Zoe", "Yancy", "dev");
INSERT INTO employer (employee_id, name, surname, team) value (9, "Zoe", "Yancy", "dev");
INSERT INTO employer (employee_id, name, surname, team) value (6, "Everly", "Winslet", "PM"); 
INSERT INTO employer (employee_id, name, surname, team) value (10, "Everly", "Winslet", "PM");
INSERT INTO employer (employee_id, name, surname, team) value (12, "Leah", "Quinn", "Sales"); 
INSERT INTO employer (employee_id, name, surname, team) value (11, "Lillian", "Kinle", "PR"); 
INSERT INTO employer (employee_id, name, surname, team) value (13, "Theodore ", "Seuss", "Analyst");
SELECT* FROM employer;
SELECT* FROM employee;
UPDATE employer SET id=1 WHERE id=2;
ALTER TABLE employer DROP COLUMN id;
ALTER TABLE employer ADD COLUMN id INT FIRST;
UPDATE employer SET id=1 WHERE employee_id=1;
UPDATE employer SET id=1 WHERE employee_id=2;
UPDATE employer SET id=1 WHERE employee_id=3;
UPDATE employer SET id=1 WHERE employee_id=4;
UPDATE employer SET id=1 WHERE employee_id=7;
UPDATE employer SET id=1 WHERE employee_id=8;
UPDATE employer SET id=2 WHERE employee_id=5;
UPDATE employer SET id=2 WHERE employee_id=9;
UPDATE employer SET id=3 WHERE employee_id=6;
UPDATE employer SET id=3 WHERE employee_id=10;
UPDATE employer SET id=4 WHERE employee_id=11;
UPDATE employer SET id=5 WHERE employee_id=12;
UPDATE employer SET id=6 WHERE employee_id=13;
SELECT id, employee_id FROM employer WHERE id=5 OR id=6;
SELECT id AS "номер" FROM employee;
SELECT surname FROM employer WHERE surname LIKE "R%";
SELECT* FROM employer;
SELECT* FROM employee;
SELECT employee.team, employer.name FROM employee JOIN employer ON employee.id = employer.employee_id;
SELECT employee.name, employer.name FROM employer LEFT JOIN employee ON employee.id = employer.employee_id; 