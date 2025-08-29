-- Create views for analytics
USE retail_db;

CREATE VIEW TopCustomers AS
SELECT c.CustomerID, c.Name, SUM(o.TotalAmount) AS TotalSpent
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.Name
ORDER BY TotalSpent DESC;

CREATE VIEW MonthlySales AS
SELECT DATE_FORMAT(OrderDate, '%Y-%m') AS Month, SUM(TotalAmount) AS Revenue
FROM Orders
GROUP BY Month
ORDER BY Month DESC;

CREATE VIEW InventoryStatus AS
SELECT ProductID, Name, Stock
FROM Products
ORDER BY Stock ASC;
