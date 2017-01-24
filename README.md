# Bamazon

* [GitHub Repository](https://github.com/colinmcdaniel/Bamazon)

## Functionality

This Node.js application allows users to act as a Bamazon customer or manager. Customers can view and buy products, reducing the item's stock in a MySQL database. Managers can view products, see what items need to be restocked (inventory count below 5), add to inventory, and add new products to the database.

## Usage

1. Download or clone the repository. 
2. Navigate to directory via the command line.
3. Open MySQL command-line tool.
 `
 mysql -u USERNAME -p
 `
4. Run the MySQL text file within the MySQL command-line tool.
 `
 source Bamazon.sql
 `
5. Exit out of the MySQL command-line tool.
 `
 exit
 `
6. Edit BamazonCustomer.js and BamazonManager.js, lines 6-9 to reflect your MySQL database information.
7. You're all set. Now run BamazonCustomer.js to run program as a customer, and BamazonManager.js to run program as a manager.
 `
 node BamazonCustomer.js
 `
 or
 `
 node BamazonManager.js
 `

## Technologies

* MySQL
* Node.js
* Inquirer npm package

Customer:
![customer](https://cloud.githubusercontent.com/assets/18273101/22231160/7e1a0d04-e196-11e6-9990-8935a4718fa5.gif)

Manager:
![manager](https://cloud.githubusercontent.com/assets/18273101/22231172/a0957b16-e196-11e6-9b96-5a26d7edc35a.gif)
