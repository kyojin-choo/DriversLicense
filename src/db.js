// db.js -*- connecting to the database
//
// Author:       Daniel Choo
// Date:         11/28/20
// URL:          https://www.github.com/TBD-491
//
// Description:  Bootstrapper for the MySQL database connection.

const mysql = require('mysql')

function connect() {
		/* connect():
			 connect will connect to our MySQL database.

			 Return(s):    Boolean
    */
		// Establish connection with our mysql database
		var db = mysql.createConnection({
				host: 'localhost',
				user: 'root',
				password: 'password',
				database: 'DriversLicense'
		})

		// Attempt to establish connection with our database.
		db.connect(function(err) {
				if (err) throw err;
				console.log("Connected to database.")
		});

		return db
}

// Export our retrieve function.
module.exports = {connect};
