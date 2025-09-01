DELIMITER $$
CREATE PROCEDURE CancelBooking (IN BookingID INT)
BEGIN
  DELETE FROM Bookings
  WHERE BookingID = BookingID;
  
  SELECT "Booking cancelled successfully.";
END $$
DELIMITER ;