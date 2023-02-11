DELIMITER $$
CREATE PROCEDURE CheckBooking (IN BookingDate DATE, IN TableNumber INT)
BEGIN
DECLARE TableStatus VARCHAR(10);

SELECT
CASE
WHEN COUNT(*) > 0 THEN  TableStatus = 'Booked'
ELSE  TableStatus = 'Available'
END AS TableStatus
FROM Bookings
WHERE BookingDate = BookingDate AND TableNumber = TableNumber;

SELECT TableStatus;
END $$
DELIMITER ;