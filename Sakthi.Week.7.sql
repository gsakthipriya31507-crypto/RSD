USE PetSuppliesDB;


SELECT * FROM Customer;
SELECT DISTINCT name FROM Customer;
SELECT * FROM Customer WHERE customer_id = 1;
SELECT * FROM Customer ORDER BY name;


SELECT * FROM Product;
SELECT DISTINCT category FROM Product;
SELECT * FROM Product WHERE price > 100;
SELECT * FROM Product ORDER BY price DESC;


SELECT * FROM Cart;
SELECT DISTINCT customer_id FROM Cart;
SELECT * FROM Cart WHERE quantity >= 2;
SELECT * FROM Cart ORDER BY quantity DESC;


SELECT * FROM Orders;
SELECT DISTINCT order_status FROM Orders;
SELECT * FROM Orders WHERE order_status = 'Pending';
SELECT * FROM Orders ORDER BY total_amount DESC;


SELECT * FROM Order_Items;
SELECT DISTINCT product_id FROM Order_Items;
SELECT * FROM Order_Items WHERE quantity >= 2;
SELECT * FROM Order_Items ORDER BY price DESC;


SELECT * FROM Payment;
SELECT DISTINCT payment_method FROM Payment;
SELECT * FROM Payment WHERE payment_status = 'SUCCESSFUL';
SELECT * FROM Payment ORDER BY amount DESC;


SELECT * FROM Delivery;
SELECT DISTINCT delivery_status FROM Delivery;
SELECT * FROM Delivery WHERE delivery_status = 'Processing';
SELECT * FROM Delivery ORDER BY delivery_date DESC;