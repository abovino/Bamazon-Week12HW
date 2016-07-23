//Declares Dependencies
var mysql = require('mysql');
var inquirer = require('inquirer');

//Connects to the MySQL localhost
var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "",
    database: "bamazondb"
})

//Checks for connection error, starts app
connection.connect(function(err) {
    if (err) throw err;
    console.log("Connected as ID " + connection.threadID);
    start();
})

//Displays all products in the database
var start = function() {
  console.log("start");
}