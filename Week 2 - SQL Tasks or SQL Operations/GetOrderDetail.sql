DELIMITER $$
CREATE PROCEDURE GetOrderDetail (IN CustomerID INT)
BEGIN
  SELECT orderID, quantity, totalCost 
  FROM Orders
  WHERE customer_id = CustomerID;
END $$
DELIMITER ;


