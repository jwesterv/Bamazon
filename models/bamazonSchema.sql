-- Copy and paste into MySql workbench for data

CREATE DATABASE bamazon_db;

USE bamazon_db;

CREATE TABLE products (
	ID INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    product_name TEXT NOT NULL,
    department_name TEXT NOT NULL,
    price INT NOT NULL,
	stock_quantity INT NOT NULL
	)
    
SELECT * FROM products;

-- ITEM 1 --
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("bagel bites", "frozen", 4, 30);

-- ITEM 2 --
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("mozarella sticks", "dairy", 4, 50);

-- ITEM 3 --
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Nintendo Switch", "electronics", 300, 10)

-- ITEM 4 --
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("PS4", "electronics", 300, 15);

-- ITEM 5 --
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Mascara", "cosmetics", 9, 45);

-- ITEM 6 --
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Beauty Blender", "cosmetics", 3, 70);

-- ITEM 7 --
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Red Bull", "soft drinks", 2, 50);

-- ITEM 8 --
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Vodka", "alcohol", 17, 30);

-- ITEM 9 --
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Gin", "alcohol", 20, 20);

-- ITEM 10 --
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Sharpies", "stationary", 2, 45);
