var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
    host: "localhost",

    // Your port; if not 3000
    port: 3000,

    // Your username
    user: "root",

    // Your password
    password: "root",
    database: "bamazon_db"
});

connection.connect(function (err) {
    if (err) throw err;
    // run the start function after the connection is made to prompt the user
    start();
});

function start() {
    inquirer
        .prompt({
            name: "buyOrView",
            type: "rawlist",
            message: "Would you like to buy or bye?",
            choices: ["BUY", "BYE"]
        })
        .then(function (answer) {
            // based on their answer, either call the bid or the post functions
            if (answer.buyOrView.toUpperCase() === "BUY") {
                buyItem();
            }
            else {
                buyBye();
            }
        });
}

function viewItem() {

    connection.query("SELECT * FROM products", function (err, results) {
        if (err) throw err;
        // once you have the items, prompt the user for which they'd like to bid on
        inquirer
            .prompt([
                {
                    name: "choice",
                    type: "rawlist",
                    choices: function () {
                        var choiceArray = [];
                        for (var i = 0; i < results.length; i++) {
                            choiceArray.push(results[i].product_name);
                        }
                        return choiceArray;
                    },
                    message: "What would you like to purchase today?"
                },
                {
                    name: "buy",
                    type: "input",
                    message: "How many would you like to buy?"
                }
            ])
            .then(function(answer)  {
                //getting item information
                var chosenProduct;
                for (var i = 0; i < results.length; i++) {
                    if (results[i].item_name === answer.choice) {
                      chosenItem = results[i];
                    }
                  }
                  if (chosenProduct.stock_quantity > parseInt(answer.quantity))  {
                      connection.query(
                          "UPDATE products SET ? WHERE ?",
                          [
                              {
                                  stock_quantity: new_quantity
                              }
                          ]
                      )
                  }
            })
    })
}