-- Users Table
CREATE TABLE Users (
    User_ID VARCHAR(256) PRIMARY KEY DEFAULT gen_random_uuid(),
    Username VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Password VARCHAR(100) NOT NULL,
    Full_Name VARCHAR(100),
    Address VARCHAR(255),
    Phone_Number VARCHAR(20),
    Date_Joined DATE NOT NULL
);

-- Categories Table
CREATE TABLE Categories (
    Category_ID VARCHAR(256) PRIMARY KEY DEFAULT gen_random_uuid(),
    Category_Name VARCHAR(50) NOT NULL
);

-- Products Table
CREATE TABLE Products (
    Product_ID VARCHAR(256) PRIMARY KEY DEFAULT gen_random_uuid(),
    Name VARCHAR(100) NOT NULL,
    Description TEXT,
    Price DECIMAL(10, 2) NOT NULL,
    Stock INT NOT NULL,
    Category_ID INT REFERENCES Categories(Category_ID)
);

-- Orders Table
CREATE TABLE Orders (
    Order_ID VARCHAR(256) PRIMARY KEY DEFAULT gen_random_uuid(),
    User_ID INT REFERENCES Users(User_ID),
    Order_Date DATE NOT NULL,
    Total_Amount DECIMAL(10, 2) NOT NULL,
    Status VARCHAR(50) NOT NULL
);

-- Order_Items Table
CREATE TABLE Order_Items (
    Order_Item_ID VARCHAR(256) PRIMARY KEY DEFAULT gen_random_uuid(),
    Order_ID INT REFERENCES Orders(Order_ID),
    Product_ID INT REFERENCES Products(Product_ID),
    Quantity INT NOT NULL,
    Price DECIMAL(10, 2) NOT NULL
);

-- Reviews Table
CREATE TABLE Reviews (
    Review_ID VARCHAR(256) PRIMARY KEY,
    Product_ID INT REFERENCES Products(Product_ID),
    User_ID INT REFERENCES Users(User_ID),
    Rating INT NOT NULL CHECK (Rating >= 1 AND Rating <= 5),
    Comment TEXT,
    Date DATE NOT NULL
);

-- Payments Table
CREATE TABLE Payments (
    Payment_ID VARCHAR(256) PRIMARY KEY DEFAULT gen_random_uuid(),
    Order_ID INT REFERENCES Orders(Order_ID),
    Payment_Date DATE NOT NULL,
    Amount DECIMAL(10, 2) NOT NULL,
    Payment_Method VARCHAR(50) NOT NULL
);

-- Shipping Table
CREATE TABLE Shipping (
    Shipping_ID VARCHAR(256) PRIMARY KEY DEFAULT gen_random_uuid(),
    Order_ID INT REFERENCES Orders(Order_ID),
    Shipping_Address VARCHAR(255) NOT NULL,
    Shipping_Method VARCHAR(50) NOT NULL,
    Shipping_Date DATE NOT NULL,
    Delivery_Date DATE NOT NULL
);
