-- Stored procedures for order handling
USE retail_db;

DELIMITER //
CREATE PROCEDURE UpdateStock(IN prod_id INT, IN qty INT)
BEGIN
    UPDATE Products SET Stock = Stock - qty WHERE ProductID = prod_id;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE CreateOrder(IN cust_id INT, IN prod_id INT, IN qty INT)
BEGIN
    DECLARE price DECIMAL(10,2);
    SELECT Price INTO price FROM Products WHERE ProductID = prod_id;
    INSERT INTO Orders (CustomerID) VALUES (cust_id);
    SET @last_order_id = LAST_INSERT_ID();
    INSERT INTO OrderDetails (OrderID, ProductID, Quantity, Price)
    VALUES (@last_order_id, prod_id, qty, price);
    CALL UpdateStock(prod_id, qty);
END //
DELIMITER ;
