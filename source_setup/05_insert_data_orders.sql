-- Insert sample data into Orders table
INSERT INTO Orders (Order_ID, User_ID, Order_Date, Total_Amount, Status) VALUES
(gen_random_uuid(), (SELECT User_ID FROM Users ORDER BY RANDOM() LIMIT 1), '2024-07-10', 5678.90, 'Completed'),
(gen_random_uuid(), (SELECT User_ID FROM Users ORDER BY RANDOM() LIMIT 1), '2024-07-11', 1234.50, 'Processing'),
(gen_random_uuid(), (SELECT User_ID FROM Users ORDER BY RANDOM() LIMIT 1), '2024-07-12', 892.75, 'Shipped'),
(gen_random_uuid(), (SELECT User_ID FROM Users ORDER BY RANDOM() LIMIT 1), '2024-07-13', 345.25, 'Delivered'),
(gen_random_uuid(), (SELECT User_ID FROM Users ORDER BY RANDOM() LIMIT 1), '2024-07-14', 2299.99, 'Completed'),
(gen_random_uuid(), (SELECT User_ID FROM Users ORDER BY RANDOM() LIMIT 1), '2024-07-15', 1299.00, 'Processing'),
(gen_random_uuid(), (SELECT User_ID FROM Users ORDER BY RANDOM() LIMIT 1), '2024-07-16', 678.80, 'Completed'),
(gen_random_uuid(), (SELECT User_ID FROM Users ORDER BY RANDOM() LIMIT 1), '2024-07-17', 1999.99, 'Shipped'),
(gen_random_uuid(), (SELECT User_ID FROM Users ORDER BY RANDOM() LIMIT 1), '2024-07-18', 259.99, 'Delivered'),
(gen_random_uuid(), (SELECT User_ID FROM Users ORDER BY RANDOM() LIMIT 1), '2024-07-19', 179.90, 'Completed');


-- Insert sample data into Order_Items table
INSERT INTO Order_Items (Order_Item_ID, Order_ID, Product_ID, Quantity, Price) VALUES
(gen_random_uuid(), (SELECT Order_ID FROM Orders ORDER BY RANDOM() LIMIT 1), (SELECT Product_ID FROM Products ORDER BY RANDOM() LIMIT 1), 1, 2999.00),
(gen_random_uuid(), (SELECT Order_ID FROM Orders ORDER BY RANDOM() LIMIT 1), (SELECT Product_ID FROM Products ORDER BY RANDOM() LIMIT 1), 2, 1499.00),
(gen_random_uuid(), (SELECT Order_ID FROM Orders ORDER BY RANDOM() LIMIT 1), (SELECT Product_ID FROM Products ORDER BY RANDOM() LIMIT 1), 1, 799.00),
(gen_random_uuid(), (SELECT Order_ID FROM Orders ORDER BY RANDOM() LIMIT 1), (SELECT Product_ID FROM Products ORDER BY RANDOM() LIMIT 1), 3, 69.90),
(gen_random_uuid(), (SELECT Order_ID FROM Orders ORDER BY RANDOM() LIMIT 1), (SELECT Product_ID FROM Products ORDER BY RANDOM() LIMIT 1), 1, 2199.00),
(gen_random_uuid(), (SELECT Order_ID FROM Orders ORDER BY RANDOM() LIMIT 1), (SELECT Product_ID FROM Products ORDER BY RANDOM() LIMIT 1), 1, 4399.00),
(gen_random_uuid(), (SELECT Order_ID FROM Orders ORDER BY RANDOM() LIMIT 1), (SELECT Product_ID FROM Products ORDER BY RANDOM() LIMIT 1), 2, 49.00),
(gen_random_uuid(), (SELECT Order_ID FROM Orders ORDER BY RANDOM() LIMIT 1), (SELECT Product_ID FROM Products ORDER BY RANDOM() LIMIT 1), 1, 299.00),
(gen_random_uuid(), (SELECT Order_ID FROM Orders ORDER BY RANDOM() LIMIT 1), (SELECT Product_ID FROM Products ORDER BY RANDOM() LIMIT 1), 4, 12.90),
(gen_random_uuid(), (SELECT Order_ID FROM Orders ORDER BY RANDOM() LIMIT 1), (SELECT Product_ID FROM Products ORDER BY RANDOM() LIMIT 1), 1, 2499.00);
