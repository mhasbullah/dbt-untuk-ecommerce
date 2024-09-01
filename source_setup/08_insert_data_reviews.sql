-- Insert sample data into Reviews table
INSERT INTO Reviews (Review_ID, Product_ID, User_ID, Rating, Comment, Date) VALUES
(gen_random_uuid(), (SELECT Product_ID FROM Products ORDER BY RANDOM() LIMIT 1), (SELECT User_ID FROM Users ORDER BY RANDOM() LIMIT 1), 5, 'Amazing product! Highly recommended.', '2024-07-10'),
(gen_random_uuid(), (SELECT Product_ID FROM Products ORDER BY RANDOM() LIMIT 1), (SELECT User_ID FROM Users ORDER BY RANDOM() LIMIT 1), 4, 'Good value for the price, will buy again.', '2024-07-11'),
(gen_random_uuid(), (SELECT Product_ID FROM Products ORDER BY RANDOM() LIMIT 1), (SELECT User_ID FROM Users ORDER BY RANDOM() LIMIT 1), 3, 'Average quality, but not too bad.', '2024-07-12'),
(gen_random_uuid(), (SELECT Product_ID FROM Products ORDER BY RANDOM() LIMIT 1), (SELECT User_ID FROM Users ORDER BY RANDOM() LIMIT 1), 2, 'Expected better quality for the price.', '2024-07-13'),
(gen_random_uuid(), (SELECT Product_ID FROM Products ORDER BY RANDOM() LIMIT 1), (SELECT User_ID FROM Users ORDER BY RANDOM() LIMIT 1), 1, 'Very disappointed, will not buy again.', '2024-07-14'),
(gen_random_uuid(), (SELECT Product_ID FROM Products ORDER BY RANDOM() LIMIT 1), (SELECT User_ID FROM Users ORDER BY RANDOM() LIMIT 1), 4, 'Product meets expectations, fast delivery.', '2024-07-15'),
(gen_random_uuid(), (SELECT Product_ID FROM Products ORDER BY RANDOM() LIMIT 1), (SELECT User_ID FROM Users ORDER BY RANDOM() LIMIT 1), 5, 'Excellent quality, worth every penny!', '2024-07-16'),
(gen_random_uuid(), (SELECT Product_ID FROM Products ORDER BY RANDOM() LIMIT 1), (SELECT User_ID FROM Users ORDER BY RANDOM() LIMIT 1), 3, 'I have seen better.', '2024-07-17'),
(gen_random_uuid(), (SELECT Product_ID FROM Products ORDER BY RANDOM() LIMIT 1), (SELECT User_ID FROM Users ORDER BY RANDOM() LIMIT 1), 2, 'Not satisfied with the product.', '2024-07-18'),
(gen_random_uuid(), (SELECT Product_ID FROM Products ORDER BY RANDOM() LIMIT 1), (SELECT User_ID FROM Users ORDER BY RANDOM() LIMIT 1), 5, 'Fast shipping and great product!', '2024-07-19');
