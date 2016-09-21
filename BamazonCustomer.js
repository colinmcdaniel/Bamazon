var mysql = require('mysql');
var inquirer = require('inquirer');
var numProducts;

var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "drummrboy1",
    database: "Bamazon"
});

connection.connect(function(err) {
    if (err) throw err;
    displayItems();
});

var displayItems = function() {
    connection.query('SELECT * FROM Products', function(err, res) {
        numProducts = res.length;
        for (var i = 0; i < numProducts; i++) {
            console.log("");
            console.log("ID: " + res[i].ItemID);
            console.log("Name: " + res[i].ProductName);
            console.log("Price: $" + res[i].Price);
        }
        console.log("");
        promptUser();
    });
};

var promptUser = function(){
	inquirer.prompt([{
        name: "productID",
        type: "input",
        message: "Enter the ID of the product you would like to buy: ",
        validate: function(value) {
            if (isNaN(value)==false && value>0 && value<=numProducts)
                return true;
            else
                return false;
        }
    }, {
        name: "numUnits",
        type: "input",
        message: "How many units would you like to buy? ",
        validate: function(value) {
            if (isNaN(value) == false) {
                return true;
            } else {
                return false;
            }
        }
    }]).then(function(answer) {
        connection.query('SELECT * FROM Products WHERE ItemID = '+answer.productID, function(err, res) {
            if(res[0].StockQuantity < answer.numUnits)
            	console.log("Insufficient quantity!");
            else{
            	connection.query("UPDATE Products SET ? WHERE ?", [{
		            StockQuantity: res[0].StockQuantity - answer.numUnits
		        },
		        {
		        	ItemID: answer.productID
		        }], function(err, resp) {
		            console.log("Thank you for your purchase. You spent $" + res[0].Price*answer.numUnits);
		        });
            }
        });
    });
};