-- Insert sample data
USE retail_db;

INSERT INTO Customers (Name, Email, Phone, Address) VALUES
('Alice Johnson', 'alice@example.com', '1234567890', '123 Main St'),
('Bob Smith', 'bob@example.com', '2345678901', '456 Park Ave'),
('Carol Davis', 'carol@example.com', '3456789012', '789 Broadway');

INSERT INTO Products (Name, Category, Price, Stock) VALUES
('Laptop', 'Electronics', 900.00, 50),
('Headphones', 'Electronics', 120.00, 200),
('Coffee Maker', 'Home Appliances', 75.50, 80);

INSERT INTO Orders (CustomerID) VALUES (1), (2);

INSERT INTO OrderDetails (OrderID, ProductID, Quantity, Price) VALUES
(1, 1, 1, 900.00),
(1, 2, 2, 120.00),
(2, 3, 1, 75.50);
