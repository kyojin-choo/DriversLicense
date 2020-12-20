// main.js -*- our express.js web app
//
// Author:       Daniel Choo
// Date:         11/28/20
// URL:          https://www.github.com/TBD-491
//
// Description:  Express.js framework will allow us to connect
//               to our                


// Initializing dependancies.
const url = require('url')
const mysql = require('mysql')
const express = require('express');
const db = require('./db');

// Initializing variables
const app = express();
const port = 3000;
const hostname = 'localhost';
router = express.Router();
con = db.connect()

console.log("Connected to port " + port);

app.get('/', (req, res, next) => {
		con.query('SELECT * FROM License;', function(err, rows, fields) {
				if(err){
						next(err);
						return;
				}

				res.send(rows);
		});
});

app.get('/:uid', (req, res, next) => {
		var str = req.url;
		var uid = str.split("/")[1];
		console.log(uid)
		
		con.query("SELECT * FROM License WHERE uid='" + uid + "';" , function(err, rows, fields) {
				if(err){
						next(err);
						return;
				}
				res.send(rows)
		});
});

app.listen(port, () => {
  console.log(`Server listening at http://localhost:${port}`)
});
