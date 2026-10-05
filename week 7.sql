CREATE DATABASE PET_SUPPLIES;

USE PET_SUPPLIES;

CREATE TABLE Product
(
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    Stock INT
);

INSERT INTO Product VALUES
(101, 'Dog Food', 'Food', 500, 20),
(102, 'Cat Food', 'Food', 450, 15),
(103, 'Dog Toy', 'Toys', 250, 30),
(104, 'Cat Toy', 'Toys', 200, 25),
(105, 'Pet Shampoo', 'Grooming', 350, 10),
(106, 'Dog Collar', 'Accessories', 150, 40),
(107, 'Cat Collar', 'Accessories', 180, 35),
(108, 'Pet Vitamins', 'Healthcare', 600, 12);


SELECT * FROM Product;


SELECT DISTINCT Category FROM Product;


SELECT * FROM Product
WHERE Price > 300;


SELECT * FROM Product
ORDER BY Price DESC;