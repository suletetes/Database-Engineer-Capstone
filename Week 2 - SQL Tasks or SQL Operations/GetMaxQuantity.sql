DELIMITER $$

CREATE PROCEDURE GetMaxQuantity()
BEGIN
SELECT MAX(quantity) AS maximum_quantity
FROM orders;
END$$

DELIMITER ;