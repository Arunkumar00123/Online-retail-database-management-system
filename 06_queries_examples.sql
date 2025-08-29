-- Sample business queries
USE retail_db;

-- 1. Find top 5 customers by spending
SELECT * FROM TopCustomers LIMIT 5;

-- 2. Check monthly revenue trends
SELECT * FROM MonthlySales;

-- 3. Low stock products (below 20)
SELECT * FROM InventoryStatus WHERE Stock < 20;

-- 4. Orders with details
SELECT o.OrderID, c.Name, p.Name AS Product, od.Quantity, od.Price
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
JOIN OrderDetails od ON o.OrderID = od.OrderID
JOIN Products p ON od.ProductID = p.ProductID;
