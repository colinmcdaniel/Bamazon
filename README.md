# Bamazon

* [GitHub Repository](https://github.com/colinmcdaniel/Bamazon)

## Functionality

This Node.js application allows users to act as a Bamazon customer or manager. Customers can view and buy products, reducing the item's stock in a MySQL database. Managers can view products, see what items need to be restocked (inventory count below 5), add to inventory, and add new products to the database.

### Manager View:

![manager](https://cloud.githubusercontent.com/assets/18273101/22231265/58090c72-e197-11e6-8a13-a5825e582230.gif)

### Customer View:

![customer](https://cloud.githubusercontent.com/assets/18273101/22231266/5819f91a-e197-11e6-92a1-af925861c209.gif)

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
