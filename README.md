# Bamazon

* [GitHub Repository](https://github.com/colinmcdaniel/Bamazon)

## Functionality

This Node.js application allows users to act as a Bamazon customer or manager. Customers can view and buy products, reducing the item's stock in a MySQL database. Managers can view products, see what items need to be restocked, add to inventory, and add new products to the database.

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

