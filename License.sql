-- license.sql
--
-- Author(s):   Daniel Choo, Ryan Hagedorn
-- Date:        11/20/20
-- URL:         https://www.github.com/kyoogoo/TBD-491
--
-- Description: This creates a master drivers license table which information such as the 
--              picture, drivers id, first/last name, address, et cetera of the driver can
--              be accessed due to a unique identifier.

#CREATE DATABASE DriversLicense;
USE DriversLicense;

CREATE TABLE License (
	UID VARCHAR(50) NOT NULL,
	Picture VARCHAR(50) NOT NULL,
	DriverID VARCHAR(17) NOT NULL,
	FirstName VARCHAR(20) NOT NULL,
	LastName VARCHAR(20) NOT NULL,
	Address VARCHAR(50) NOT NULL,
	City VARCHAR(50) NOT NULL,
	State VARCHAR(20) NOT NULL,
	ZipCode MEDIUMINT NOT NULL,
	DOB DATE NOT NULL,
	IssueDate DATE NOT NULL,
	ExpireDate DATE NOT NULL,
	Restriction VARCHAR(1) NOT NULL,
	Classification VARCHAR(1) NOT NULL,
	Endorsement VARCHAR(1),
	OrganDonor BOOLEAN NOT NULL,
	Sex VARCHAR(1) NOT NULL,
	Height VARCHAR(6) NOT NULL,
	Weight SMALLINT NOT NULL,
	
	PRIMARY KEY (UID, DriverID)
) DEFAULT CHARSET=utf8;

/*CREATE VIEW IF NOT EXISTS PublicLicense(UID, Picture, FirstName, State, DOB) AS 
	Select Picture, FirstName, State, DOB 
	FROM License
	WHERE UID = "[insert whatever uid you need to access]";*/
	
/*to select from the veiw:
*/
SELECT * FROM PublicLicense;

CREATE TABLE PublicLicense (
	Picture VARCHAR(50) NOT NULL,
	FirstName VARCHAR(20) NOT NULL,
	State VARCHAR(20) NOT NULL,
	DOB DATE NOT NULL,

	FOREIGN KEY (Picture) REFERENCES License(Picture),
	FOREIGN KEY (FirstName) REFERENCES License(FirstName),
	FOREIGN KEY (State) REFERENCES License(State),
	FOREIGN KEY (DOB) REFERENCES License(DOB)

) DEFAULT CHARSET=utf8;

SELECT * FROM LICENSE;
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
