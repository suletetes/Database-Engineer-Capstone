SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `littleLemonDB` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `littleLemonDB` ;

-- -----------------------------------------------------
-- Table `littleLemonDB`.`Bookings`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `littleLemonDB`.`Bookings` (
  `bookingID` INT NOT NULL,
  `Date` DATE NULL,
  `tableNumber` INT NULL,
  PRIMARY KEY (`bookingID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `littleLemonDB`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `littleLemonDB`.`customer` (
  `customerID` INT NOT NULL,
  `name` VARCHAR(255) NULL,
  `phoneNo` INT(35) NULL,
  `email` VARCHAR(255) NULL,
  PRIMARY KEY (`customerID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `littleLemonDB`.`menu`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `littleLemonDB`.`menu` (
  `menuID` INT NOT NULL,
  `name` VARCHAR(255) NULL,
  `type` VARCHAR(45) NULL,
  `price` DECIMAL NULL,
  PRIMARY KEY (`menuID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `littleLemonDB`.`orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `littleLemonDB`.`orders` (
  `orderID` INT NOT NULL,
  `BookingID` INT NOT NULL,
  `orderDate` DATE NULL,
  `quantity` INT NULL,
  `totalCost` DECIMAL NULL,
  `customerID` INT NOT NULL,
  `menuID` INT NOT NULL,
  PRIMARY KEY (`orderID`, `BookingID`, `menuID`, `customerID`),
  INDEX `bookingID_idx` (`BookingID` ASC),
  INDEX `customerID_idx` (`customerID` ASC),
  INDEX `itemID_idx` (`menuID` ASC),
  CONSTRAINT `bookingID`
    FOREIGN KEY (`BookingID`)
    REFERENCES `littleLemonDB`.`Bookings` (`bookingID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `customerID`
    FOREIGN KEY (`customerID`)
    REFERENCES `littleLemonDB`.`customer` (`customerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `itemID`
    FOREIGN KEY (`menuID`)
    REFERENCES `littleLemonDB`.`menu` (`menuID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `littleLemonDB`.`orderDelivery`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `littleLemonDB`.`orderDelivery` (
  `orderID` INT NOT NULL,
  `deliveryDate` DATE NULL,
  `status` VARCHAR(45) NULL,
  PRIMARY KEY (`orderID`),
  CONSTRAINT `order`
    FOREIGN KEY (`orderID`)
    REFERENCES `littleLemonDB`.`orders` (`orderID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `littleLemonDB`.`staff`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `littleLemonDB`.`staff` (
  `staffID` INT NOT NULL,
  `name` VARCHAR(255) NULL,
  `role` VARCHAR(45) NULL,
  `salary` DECIMAL NULL,
  PRIMARY KEY (`staffID`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
