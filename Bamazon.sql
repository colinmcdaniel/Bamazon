CREATE database Bamazon;

USE Bamazon;

CREATE TABLE Products (
  ItemID INT AUTO_INCREMENT NOT NULL,
  ProductName VARCHAR(100) NULL,
  DepartmentName VARCHAR(100) NULL,
  Price DECIMAL(10,2) NULL,
  StockQuantity INT NULL,
  PRIMARY KEY (ItemID)
);
  
SELECT * FROM Products;

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity)
VALUES (1,'Floor Lamp','Home & Kitchen',19.99,50);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity)
VALUES (2,'Dining Room Table','Home & Kitchen',100.78,25);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity)
VALUES (3,'13" MacBook Pro','Electronics',1174.99,250);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity)
VALUES (4,'T-Shirt','Clothing',13.01,100);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity)
VALUES (5,'XBox One','Electronics',299.00,125);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity)
VALUES (6,'Harry Potter and the Cursed Child','Books',17.87,500);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity)
VALUES (7,'Zildjian Constantinople 22" Ride Cymbal','Musical Instruments',539.95,5);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity)
VALUES (8,'Scientific Calculator','Office Products',14.00,100);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity)
VALUES (9,'Pencils','Office Products',5.79,200);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity)
VALUES (10,'Ankle Socks','Clothing',14.50,75);