// license.js -*-
//
// Author:       Daniel Choo
// Date:         11/28/20
// URL:          https://www.github.com/TBD-491
//
// Description:  
//

// Dependencies
const express = require('express');
const typescript = require('typescript');
const db = require('./db')

// License object
const License = function(license) {
		// Contains all of the variables in our license
	  this.uid = license.uid;
	  this.picture = license.picture;
	  this.driverID = license.driverID;
	  this.firstName = license.firstName;
	  this.lastName = license.lastName;
	  this.address = license.address;
	  this.city = license.city;n
	  this.state = license.state;
	  this.zipCode = license.zipCode;
	  this.dob = license.dob;
	  this.issueDate = license.issueDate;
	  this.expireDate = license.expireDate;
	  this.restriction = license.restriction;
	  this.classifcation = license.classification;
	  this.endorsement = license.endorsement;
	  this.organDonor = license.organDonor;
	  this.sex = license.sex;
	  this.height = license.height;
	  this.weight = license.weight;
}

License.create = (newLicense, result) => {
		sql.query("INSERT INTO License SET ?", newLicense, (err, res) => {
				// Break if we have retrieved an error
				if (err) {
						console.log(err);
						return;
				}
		})
};

License.getID = (uid, result) => {
		db.query(`SELECT * FROM customers WHERE UID = ${uid}`, (err, res) => {
				if (err) {
						console.log(err);
						result(err, null)
						return;
				}

				// If we obtained 
				if (res.length) {
						console.log("License: ", res[0])
						result(null, res[0])
						return;
				}

				result({kind: "not_found"}, null);
		})
};


module.exports = {License};
