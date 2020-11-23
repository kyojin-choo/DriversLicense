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
			 DriverID INT UNIQUE NOT NULL,
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
			 Weight SMALLINT NOT NULL
) DEFAULT CHARSET=utf8;

CREATE TABLE LicenseBool (

) DEFAULT CHARSET=utf8;

SELECT * FROM LICENSE;
DESCRIBE LICENSE;

/* Template for our license table.

	 ("x", 12345678, "Daniel", "Choo", "1234 Hi Road", "Baltimore", "MD", 21250,
	 date('2020-11-21'), date('2020-11-21'), date('2020-11-21'), "C", "B", NULL, TRUE,
	 "M", "5'10", 120),

*/
