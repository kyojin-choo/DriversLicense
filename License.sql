-- license.sql
--
-- Author(s):   Daniel Choo, Ryan Hagedorn
-- Date:        11/20/20
-- URL:         https://www.github.com/kyoogoo/TBD-491
--
-- Description: This creates a master drivers license table which information such as the 
--              picture, drivers id, first/last name, address, et cetera of the driver can
--              be accessed due to a unique identifier.

DROP TABLE IF EXISTS License;
#CREATE DATABASE DriversLicense;
USE DriversLicense;

CREATE TABLE License (
	uid VARCHAR(50) NOT NULL,
	picture VARCHAR(50) NOT NULL,
	driver_id VARCHAR(17) NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	address VARCHAR(50) NOT NULL,
	city VARCHAR(50) NOT NULL,
	state VARCHAR(20) NOT NULL,
	zip_code MEDIUMINT NOT NULL,
	dob DATE NOT NULL,
	issue_date DATE NOT NULL,
	expire_date DATE NOT NULL,
	restriction VARCHAR(1) NOT NULL,
	classification VARCHAR(1) NOT NULL,
	endorsement VARCHAR(1),
	organ_donor BOOLEAN NOT NULL,
	sex VARCHAR(1) NOT NULL,
	height VARCHAR(6) NOT NULL,
	weight SMALLINT NOT NULL,
	
	PRIMARY KEY (uid, driver_id)
) DEFAULT CHARSET=utf8;

DESCRIBE LICENSE;

/* Template for our license table.

	("asf93jkfaj", "pictures/fakeperson.jpg", "H-123-456-789", "Daniel", "Choo", "1234 Hi Road", "Baltimore", "MD", 21250,
	 date('1997-02-14'), date('2020-11-21'), date('2024-11-21'), "C", "B", NULL, TRUE, "M", "5'10", 120),

*/
INSERT INTO License
VALUES 
	("asf93jkfaj", "pictures/fakeperson.jpg", "H-123-456-789", "Daniel", "Choo", "1234 Hi Road", "Baltimore", "MD", 21250,
	 date('1997-02-14'), date('2020-11-21'), date('2024-11-21'), "C", "B", NULL, TRUE, "M", "5'10", 120),
	 
	 ("412jsf129", "pictures/", "C-432-633-718", "Ronnie", "Chamblee", "290 Lyndon Street", "Plymouth Meeting", "PA", 19462,
	 date('1957-11-29'), date('2011-04-07'), date('2021-04-06'), "C", "B", NULL, TRUE, "M", "6'1", 160),
	 
	 ("fa23590afk", "pictures/", "A-841-714-525", "Rigoberto", "Lemke", "2502 Petunia Way", "Pell City", "AL", 35125,
	 date('1962-07-02'), date('2019-11-24'), date('2023-03-13'), "C", "B", NULL, TRUE, "M", "6'2", 208),
	 
	 ("fa3fsd3", "pictures/", "V-782-957-712", "John", "Murillo", "2502 Petunia Way", "San Jose", "CA", 95113,
	 date('1996-12-03'), date('2018-11-21'), date('2022-09-25'), "C", "B", NULL, TRUE, "M", "5'10", 200),
	 
	 ("2a35awfasf", "pictures/", "X-412-655-455", "Heidi ", "Preston", "1651 Edgewood Road", "Prim", "AR", 72130,
	 date('1992-03-10'), date('2018-11-14'), date('2022-01-10'), "C", "B", NULL, TRUE, "M", "5'8", 123),
	 
	 ("2412fsdaf4sfds", "pictures/", "A-047-455-108", "Sheena ", "Masuda", "4219 Sand Fork Road", "South Bend", "IN", 46625,
	 date('1994-07-09'), date('2019-04-28'), date('2023-01-07'), "C", "B", NULL, TRUE, "M", "5'6", 100);
     
SELECT * FROM License;
