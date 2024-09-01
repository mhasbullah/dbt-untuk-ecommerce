-- Insert sample data into Payments table
INSERT INTO Payments (Payment_ID, Order_ID, Payment_Date, Amount, Payment_Method, Status) VALUES
(gen_random_uuid(), (SELECT Order_ID FROM Orders ORDER BY RANDOM() LIMIT 1), '2024-07-10', 5678.90, 'Credit Card', 'Completed'),
(gen_random_uuid(), (SELECT Order_ID FROM Orders ORDER BY RANDOM() LIMIT 1), '2024-07-11', 1234.50, 'Online Banking', 'Pending'),
(gen_random_uuid(), (SELECT Order_ID FROM Orders ORDER BY RANDOM() LIMIT 1), '2024-07-12', 892.75, 'PayPal', 'Completed'),
(gen_random_uuid(), (SELECT Order_ID FROM Orders ORDER BY RANDOM() LIMIT 1), '2024-07-13', 345.25, 'Credit Card', 'Failed'),
(gen_random_uuid(), (SELECT Order_ID FROM Orders ORDER BY RANDOM() LIMIT 1), '2024-07-14', 2299.99, 'Debit Card', 'Completed'),
(gen_random_uuid(), (SELECT Order_ID FROM Orders ORDER BY RANDOM() LIMIT 1), '2024-07-15', 1299.00, 'Cash on Delivery', 'Pending'),
(gen_random_uuid(), (SELECT Order_ID FROM Orders ORDER BY RANDOM() LIMIT 1), '2024-07-16', 678.80, 'Credit Card', 'Completed'),
(gen_random_uuid(), (SELECT Order_ID FROM Orders ORDER BY RANDOM() LIMIT 1), '2024-07-17', 1999.99, 'Online Banking', 'Completed'),
(gen_random_uuid(), (SELECT Order_ID FROM Orders ORDER BY RANDOM() LIMIT 1), '2024-07-18', 259.99, 'PayPal', 'Refunded'),
(gen_random_uuid(), (SELECT Order_ID FROM Orders ORDER BY RANDOM() LIMIT 1), '2024-07-19', 179.90, 'Debit Card', 'Completed');
