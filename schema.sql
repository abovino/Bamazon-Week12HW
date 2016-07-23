CREATE DATABASE BamazonDB;

USE BamazonDB;

CREATE TABLE Products (
    ItemID INTEGER(11) AUTO_INCREMENT NOT NULL,
    ProductName VARCHAR(500) NOT NULL,
    DepartmentName VARCHAR(30) NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    StockQuantity INT NOT NULL,
    PRIMARY KEY (ItemID)
);

USE bamazonDB;

INSERT INTO Products (ProductName, DepartmentName, Price, StockQuantity) VALUES ("Apple Iphone 6s Plus", "Mobile Phones", 749.99, 3);
INSERT INTO Products (ProductName, DepartmentName, Price, StockQuantity) VALUES ("Apple Iphone 6s", "Mobile Phones", 649.99, 10);
INSERT INTO Products (ProductName, DepartmentName, Price, StockQuantity) VALUES ("Apple Iphone 5s", "Mobile Phones", 199.99, 25);
INSERT INTO Products (ProductName, DepartmentName, Price, StockQuantity) VALUES ("BWS IoT Button", "BWS Dev Tools", 19.95, 0);
INSERT INTO Products (ProductName, DepartmentName, Price, StockQuantity) VALUES ("Acer Aspire POS-5746", "Laptops", 499.99, 50);
INSERT INTO Products (ProductName, DepartmentName, Price, StockQuantity) VALUES ("Apple MacBook Air HIPSTA9000", "Laptops", 4999.99, 4);
INSERT INTO Products (ProductName, DepartmentName, Price, StockQuantity) VALUES ("You Don't Know JS: ES6 & Beyond", "Books", 11.49, 25);
INSERT INTO Products (ProductName, DepartmentName, Price, StockQuantity) VALUES ("Data Visualization with Python and JavaScript: Scrape, Clean, Explore & Transform Your Data", "Books", 27.68, 70);
INSERT INTO Products (ProductName, DepartmentName, Price, StockQuantity) VALUES ("Web Design with HTML, CSS, JavaScript and jQuery Set", "Books", 33.95, 45);
INSERT INTO Products (ProductName, DepartmentName, Price, StockQuantity) VALUES ("Automate the Boring Stuff with Python: Practical Programming for Total Beginners", "Books", 25.45, 67);


SELECT * FROM Products;