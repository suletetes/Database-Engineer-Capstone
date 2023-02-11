SELECT customer.customerID, customer.name, orders.orderID, orders.totalCost, menu.name AS menuName, menu.type AS menuType
FROM customer
JOIN orders ON customer.customerID = orders.customerID
JOIN menu ON orders.menuID = menu.menuID
WHERE orders.totalCost > 150;