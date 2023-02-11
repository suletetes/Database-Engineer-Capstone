DELIMITER $$
CREATE PROCEDURE CancelOrder (IN order_id INT)
BEGIN
DELETE FROM Orders
WHERE orderID  = order_id;
SELECT CONCAT("Order ", orderID, " has been cancelled") AS Result;
END $$
DELIMITER ;