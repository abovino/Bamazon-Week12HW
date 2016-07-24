//Declares Dependencies
var mysql = require('mysql');
var inquirer = require('inquirer');
var Table = require('cli-table2');

//Connects to the MySQL localhost
var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root", //username
    password: "", //password
    database: "bamazondb"
})

//Checks for connection error, starts app
connection.connect(function(err) {
    if (err) throw err;
    console.log("Connected as ID " + connection.threadID);
    start();
})

var productTable = new Table({
  head: ['ID#', 'Product Name', 'Department', 'Price', 'Stock'],
  colWidths: [4, 50, 15, 10, 10],
  wordWrap:true
});

//Displays all products in the database
var start = function() {
  console.log(" -------------------------------");
  console.log("* Welcome to Bamazon CMD Store! *");
  console.log(" -------------------------------\n");
  var query = 'SELECT * FROM Products';
  connection.query(query, function(err, res) {
    
    for (var i = 0; i < res.length; i++) {
      productTable.push(
        [res[i].ItemID, res[i].ProductName, res[i].DepartmentName, "$" + res[i].Price, res[i].StockQuantity]
      );
      /*
      console.log("Item ID Number: " + res[i].ItemID + " | " + res[i].ProductName + " | " + res[i].DepartmentName + " | " + res[i].Price + " | " + res[i].StockQuantity + "\n");*/
    }
    console.log(productTable.toString());
  })

}