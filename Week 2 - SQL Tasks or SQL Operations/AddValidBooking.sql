DELIMITER $$
CREATE PROCEDURE AddValidBooking (IN date DATE, IN TableNumber INT)
BEGIN
DECLARE TableStatus INT DEFAULT 0;
DECLARE BookingID INT DEFAULT 1;

SELECT MAX(BookingID) INTO BookingID FROM Bookings;
SET BookingID = BookingID + 1;

START TRANSACTION;

SELECT COUNT(*) INTO TableStatus
FROM Bookings
WHERE date = date AND TableNumber = TableNumber;

IF TableStatus = 1 THEN
ROLLBACK;
SELECT "Booking failed. Table already booked.";
ELSE
INSERT INTO Bookings (BookingID, date, TableNumber)
VALUES (BookingID, date, TableNumber);
COMMIT;
SELECT "Booking successful.";
END IF;
END $$
DELIMITER ;