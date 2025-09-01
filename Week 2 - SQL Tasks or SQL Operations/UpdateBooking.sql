DELIMITER $$
CREATE PROCEDURE UpdateBooking (IN BookingID INT, IN date DATE)
BEGIN
UPDATE Bookings
SET date = Date
WHERE BookingID = BookingID;
SELECT "Booking updated successfully.";
END $$
DELIMITER ;

