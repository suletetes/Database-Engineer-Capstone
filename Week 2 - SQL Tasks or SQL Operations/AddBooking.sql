DELIMITER $$
CREATE PROCEDURE AddBooking (IN BookingID INT, IN date DATE, IN TableNumber INT)
BEGIN
INSERT INTO Bookings (BookingID,  date, TableNumber)
VALUES (BookingID,  date, TableNumber);
END $$
DELIMITER ;