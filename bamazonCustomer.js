var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
	host: "localhost",
	port: 8889,
	user: "root",
	password: "Lobo2016",
	database: "bamazon"
});

connection.connect(function(err){
	if (err) throw err;
	start();
});

function start(){
	connection.query("SELECT item_name, item_price, item_id FROM product_list", function(err, res){
		if (err) throw err;
		for (i = 0; i < res.length; i++){
		console.log("\n-------------------------" + "\n" + res[i].item_name + "\nPrice: " + res[i].item_price + " || Item Id: " + res[i].item_id + "\n-------------------------");
	}
	console.log("\n");
	mainMenu();
	});
}

function mainMenu(){
	inquirer
		.prompt([
		{
			name: "response",
			type: "input",
			message: "What is the Item Id of the item you wish to buy?"
		},
		{
			name: "response2",
			type: "input",
			message: "How many would you like to buy?",
			validate: function(value){
				if (isNaN(value) === false) {
					return true;
				}
				return false;
			}
		}
	])
	.then(function(answer){
		var query = "SELECT item_quantity FROM product_list WHERE ?"
		connection.query(query, {response: answer.response2}, function(err, res){
			if (answer.response2 > 1){
				console.log("Sorry, item out of stock");
			} else {
				console.log("Thank you, your order has been placed");
			}
		});
	});

}