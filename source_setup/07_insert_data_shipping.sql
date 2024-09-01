-- Insert sample data into Shipping table
INSERT INTO Shipping (Shipping_ID, Order_ID, Shipping_Address, City, State, Postal_Code, Country, Shipping_Date, Delivery_Date, Shipping_Method, Shipping_Status) VALUES
(gen_random_uuid(), (SELECT Order_ID FROM Orders ORDER BY RANDOM() LIMIT 1), '123 Jalan Ampang', 'Kuala Lumpur', 'WP Kuala Lumpur', '50450', 'Malaysia', '2024-07-10', '2024-07-12', 'Standard', 'Delivered'),
(gen_random_uuid(), (SELECT Order_ID FROM Orders ORDER BY RANDOM() LIMIT 1), '456 Jalan Tun Razak', 'Kuala Lumpur', 'WP Kuala Lumpur', '50400', 'Malaysia', '2024-07-11', '2024-07-13', 'Express', 'Delivered'),
(gen_random_uuid(), (SELECT Order_ID FROM Orders ORDER BY RANDOM() LIMIT 1), '789 Jalan Bukit Bintang', 'Kuala Lumpur', 'WP Kuala Lumpur', '55100', 'Malaysia', '2024-07-12', '2024-07-14', 'Standard', 'In Transit'),
(gen_random_uuid(), (SELECT Order_ID FROM Orders ORDER BY RANDOM() LIMIT 1), '1011 Persiaran Gurney', 'George Town', 'Penang', '10250', 'Malaysia', '2024-07-13', '2024-07-15', 'Express', 'Delivered'),
(gen_random_uuid(), (SELECT Order_ID FROM Orders ORDER BY RANDOM() LIMIT 1), '1213 Jalan Mahkota', 'Kuantan', 'Pahang', '25200', 'Malaysia', '2024-07-14', '2024-07-16', 'Standard', 'Pending'),
(gen_random_uuid(), (SELECT Order_ID FROM Orders ORDER BY RANDOM() LIMIT 1), '1415 Jalan Wong Ah Fook', 'Johor Bahru', 'Johor', '80000', 'Malaysia', '2024-07-15', '2024-07-17', 'Standard', 'Delivered'),
(gen_random_uuid(), (SELECT Order_ID FROM Orders ORDER BY RANDOM() LIMIT 1), '1617 Jalan Tebrau', 'Johor Bahru', 'Johor', '81100', 'Malaysia', '2024-07-16', '2024-07-18', 'Express', 'In Transit'),
(gen_random_uuid(), (SELECT Order_ID FROM Orders ORDER BY RANDOM() LIMIT 1), '1819 Jalan Sultan', 'Kota Bharu', 'Kelantan', '15000', 'Malaysia', '2024-07-17', '2024-07-19', 'Standard', 'Delivered'),
(gen_random_uuid(), (SELECT Order_ID FROM Orders ORDER BY RANDOM() LIMIT 1), '2021 Jalan Merdeka', 'Shah Alam', 'Selangor', '40100', 'Malaysia', '2024-07-18', '2024-07-20', 'Express', 'Pending'),
(gen_random_uuid(), (SELECT Order_ID FROM Orders ORDER BY RANDOM() LIMIT 1), '2223 Jalan Besar', 'Ipoh', 'Perak', '30000', 'Malaysia', '2024-07-19', '2024-07-21', 'Standard', 'In Transit');
