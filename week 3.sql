
DROP DATABASE IF EXISTS PET_SUPPLIES_SHOP;

CREATE DATABASE PET_SUPPLIES_SHOP;

USE PET_SUPPLIES_SHOP;


CREATE TABLE Product
(
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    Brand VARCHAR(50)
);



INSERT INTO Product VALUES
(101,'Premium Dog Food','Pet Food',850.00,'Royal Canin'),
(102,'Adult Cat Food','Pet Food',650.00,'Whiskas'),
(103,'Puppy Food','Pet Food',750.00,'Pedigree'),
(104,'Dog Biscuits','Treats',250.00,'Pedigree'),
(105,'Cat Treats','Treats',220.00,'Whiskas'),
(106,'Dog Chew Toy','Toys',300.00,'Kong'),
(107,'Cat Ball Toy','Toys',180.00,'PetSafe'),
(108,'Dog Rope Toy','Toys',250.00,'Kong'),
(109,'Pet Grooming Brush','Grooming',350.00,'Hertzko'),
(110,'Dog Shampoo','Grooming',420.00,'Himalaya'),
(111,'Cat Shampoo','Grooming',390.00,'Beaphar'),
(112,'Pet Nail Clipper','Grooming',200.00,'Safari'),
(113,'Dog Collar','Accessories',280.00,'Trixie'),
(114,'Cat Collar','Accessories',220.00,'Trixie'),
(115,'Pet Leash','Accessories',450.00,'Rogz'),
(116,'Pet Feeding Bowl','Accessories',300.00,'Trixie'),
(117,'Automatic Water Bowl','Accessories',650.00,'PetSafe'),
(118,'Dog Bed','Beds',1200.00,'AmazonBasics'),
(119,'Cat Bed','Beds',950.00,'Trixie'),
(120,'Pet Blanket','Beds',700.00,'Pet Comfort'),
(121,'Dog Toothpaste','Healthcare',280.00,'Virbac'),
(122,'Pet Ear Cleaner','Healthcare',350.00,'Beaphar'),
(123,'Pet First Aid Kit','Healthcare',750.00,'PetCare'),
(124,'Flea Control Spray','Healthcare',550.00,'Beaphar'),
(125,'Pet Vitamins','Healthcare',600.00,'Himalaya'),
(126,'Dog Harness','Accessories',650.00,'Rogz'),
(127,'Cat Litter','Pet Care',500.00,'Me-O'),
(128,'Litter Box','Pet Care',850.00,'Trixie'),
(129,'Pet Travel Bag','Accessories',1100.00,'Petsfit'),
(130,'Pet Carrier','Accessories',1500.00,'AmazonBasics');



SELECT * FROM Product;



CREATE TABLE Seller
(
    SellerID INT PRIMARY KEY,
    SellerName VARCHAR(100),
    ContactNo VARCHAR(15),
    Email VARCHAR(100),
    Address VARCHAR(150)
);



INSERT INTO Seller VALUES
(201,'PET CARE MART','9876500001','petcaremart@gmail.com','Chennai'),
(202,'PAWS & TAILS','9876500002','pawsandtails@gmail.com','Madurai'),
(203,'PET WORLD','9876500003','petworld@gmail.com','Coimbatore'),
(204,'HAPPY PET STORE','9876500004','happypetstore@gmail.com','Salem'),
(205,'PET ESSENTIALS','9876500005','petessentials@gmail.com','Trichy'),
(206,'PAWS MART','9876500006','pawsmart@gmail.com','Chennai'),
(207,'PET SUPPLY HUB','9876500007','petsupplyhub@gmail.com','Madurai'),
(208,'FURRY FRIENDS','9876500008','furryfriends@gmail.com','Coimbatore'),
(209,'PET CARE WORLD','9876500009','petcareworld@gmail.com','Salem'),
(210,'ANIMAL NEEDS','9876500010','animalneeds@gmail.com','Trichy'),
(211,'PET LOVERS MART','9876500011','petloversmart@gmail.com','Chennai'),
(212,'PAWS HOUSE','9876500012','pawshouse@gmail.com','Madurai'),
(213,'PET FOOD MART','9876500013','petfoodmart@gmail.com','Coimbatore'),
(214,'PET HEALTH CARE','9876500014','pethealthcare@gmail.com','Salem'),
(215,'FRESH PET STORE','9876500015','freshpetstore@gmail.com','Trichy'),
(216,'PET ACCESSORIES HUB','9876500016','petaccessorieshub@gmail.com','Chennai'),
(217,'PET FOOD WORLD','9876500017','petfoodworld@gmail.com','Madurai'),
(218,'PAWS & CARE','9876500018','pawsandcare@gmail.com','Coimbatore'),
(219,'PET SHOP CENTER','9876500019','petshopcenter@gmail.com','Salem'),
(220,'ANIMAL CARE MART','9876500020','animalcaremart@gmail.com','Trichy'),
(221,'PREMIUM PETS','9876500021','premiumpets@gmail.com','Chennai'),
(222,'PET CHOICE','9876500022','petchoice@gmail.com','Madurai'),
(223,'PET EXPRESS','9876500023','petexpress@gmail.com','Coimbatore'),
(224,'PAWS CARE STORE','9876500024','pawscarestore@gmail.com','Salem'),
(225,'BEST PET SUPPLIES','9876500025','bestpetsupplies@gmail.com','Trichy');




SELECT * FROM Seller;



CREATE TABLE Inventory
(
    InventoryID INT PRIMARY KEY,
    ProductID INT,
    SellerID INT,
    AvailabilityStatus VARCHAR(20),
    Stock INT,

    FOREIGN KEY (ProductID)
    REFERENCES Product(ProductID),

    FOREIGN KEY (SellerID)
    REFERENCES Seller(SellerID)
);




INSERT INTO Inventory VALUES
(301,101,201,'AVAILABLE',25),
(302,102,202,'AVAILABLE',15),
(303,103,203,'AVAILABLE',10),
(304,104,204,'AVAILABLE',12),
(305,105,205,'AVAILABLE',30),
(306,106,206,'AVAILABLE',20),
(307,107,207,'UNAVAILABLE',0),
(308,108,208,'AVAILABLE',18),
(309,109,209,'AVAILABLE',15),
(310,110,210,'AVAILABLE',30),
(311,111,211,'UNAVAILABLE',0),
(312,112,212,'AVAILABLE',15),
(313,113,213,'AVAILABLE',20),
(314,114,214,'UNAVAILABLE',0),
(315,115,215,'AVAILABLE',15),
(316,116,216,'AVAILABLE',12),
(317,117,217,'UNAVAILABLE',0),
(318,118,218,'AVAILABLE',10),
(319,119,219,'AVAILABLE',20),
(320,120,220,'UNAVAILABLE',0),
(321,126,221,'AVAILABLE',10),
(322,127,222,'AVAILABLE',5),
(323,128,223,'UNAVAILABLE',0),
(324,129,224,'AVAILABLE',15),
(325,130,225,'AVAILABLE',50);



SELECT * FROM Inventory;


UPDATE Inventory
SET Stock = 20,
    AvailabilityStatus = 'AVAILABLE'
WHERE InventoryID = 307;

SELECT * FROM Inventory
WHERE InventoryID = 307;




UPDATE Inventory
SET Stock = 0,
    AvailabilityStatus = 'UNAVAILABLE'
WHERE InventoryID = 302;

SELECT * FROM Inventory
WHERE InventoryID = 302;




UPDATE Inventory
SET Stock = 15,
    AvailabilityStatus = 'AVAILABLE'
WHERE InventoryID = 311;

SELECT * FROM Inventory
WHERE InventoryID = 311;


UPDATE Seller
SET ContactNo = '9876599999',
    Address = 'Madurai'
WHERE SellerID = 201;

SELECT * FROM Seller
WHERE SellerID = 201;


DELETE FROM Inventory
WHERE InventoryID = 325;

SELECT * FROM Inventory;



SELECT *
FROM Inventory
WHERE AvailabilityStatus = 'AVAILABLE';



SELECT *
FROM Inventory
WHERE AvailabilityStatus = 'UNAVAILABLE';


SELECT COUNT(*) AS Available_Products
FROM Inventory
WHERE AvailabilityStatus = 'AVAILABLE';



SELECT COUNT(*) AS Unavailable_Products
FROM Inventory
WHERE AvailabilityStatus = 'UNAVAILABLE';


SELECT *
FROM Inventory
ORDER BY Stock DESC;


SELECT
    I.InventoryID,
    P.ProductName,
    P.Category,
    P.Price,
    S.SellerName,
    S.Address,
    I.Stock,
    I.AvailabilityStatus
FROM Inventory I
JOIN Product P
ON I.ProductID = P.ProductID
JOIN Seller S
ON I.SellerID = S.SellerID;



SELECT * FROM Product;
SELECT * FROM Seller;
SELECT * FROM Inventory;