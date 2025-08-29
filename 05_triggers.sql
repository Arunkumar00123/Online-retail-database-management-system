-- Triggers for auto calculation
USE retail_db;

DELIMITER //
CREATE TRIGGER after_orderdetail_insert
AFTER INSERT ON OrderDetails
FOR EACH ROW
BEGIN
    UPDATE Orders
    SET TotalAmount = (
        SELECT SUM(Quantity * Price) FROM OrderDetails WHERE OrderID = NEW.OrderID
    )
    WHERE OrderID = NEW.OrderID;
END //
DELIMITER ;
