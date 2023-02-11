SELECT m.name
FROM menu m
WHERE (
  SELECT COUNT(*)
  FROM orders o
  WHERE o.quantity > 2 AND o.menuID = m.menuID
) > 0;