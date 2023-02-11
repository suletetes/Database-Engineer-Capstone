CREATE DATABASE  IF NOT EXISTS `littlelemondb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `littlelemondb`;
-- MySQL dump 10.13  Distrib 5.6.11, for Win32 (x86)
--
-- Host: localhost    Database: littlelemondb
-- ------------------------------------------------------
-- Server version	5.5.61

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookings` (
  `bookingID` int(11) NOT NULL,
  `Date` date DEFAULT NULL,
  `tableNumber` int(11) DEFAULT NULL,
  PRIMARY KEY (`bookingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (1,'2022-01-02',1),(2,'2022-01-03',2),(3,'2022-01-04',3),(4,'2022-01-05',4),(5,'2022-01-06',5),(6,'2022-01-07',6),(7,'2022-01-08',7),(8,'2022-01-09',8),(9,'2022-01-10',9),(10,'2022-01-11',10),(11,'2022-01-12',11),(12,'2022-01-13',12),(13,'2022-01-14',13),(14,'2022-01-15',14),(15,'2022-01-16',15),(16,'2022-01-17',16),(17,'2022-01-18',17),(18,'2022-01-19',18),(19,'2022-01-20',19),(20,'2022-01-21',20),(21,'2022-01-22',21),(22,'2022-01-23',22),(23,'2022-01-24',23),(24,'2022-01-25',24),(25,'2022-01-26',25),(26,'2022-01-27',26),(27,'2022-01-28',27),(28,'2022-01-29',28),(29,'2022-01-30',29),(30,'2022-01-31',30),(31,'2022-02-01',31),(32,'2022-02-02',32),(33,'2022-02-03',33),(34,'2022-02-04',34),(35,'2022-02-05',35),(36,'2022-02-06',36),(37,'2022-02-07',37),(38,'2022-02-08',38),(39,'2022-02-09',39),(40,'2022-02-10',40),(41,'2022-02-11',41),(42,'2022-02-12',42),(43,'2022-02-13',43),(44,'2022-02-14',44),(45,'2022-02-15',45),(46,'2022-02-16',46),(47,'2022-02-17',47),(48,'2022-02-18',48),(49,'2022-02-19',49),(50,'2022-02-20',50);
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `customerID` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phoneNo` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`customerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'John Doe',1234567890,'johndoe@example.com'),(2,'Jane Doe',9876543210,'janedoe@example.com'),(3,'Michael Smith',1111111111,'michael@example.com'),(4,'Emily Brown',2222222222,'emily@example.com'),(5,'William Johnson',3333333333,'william@example.com'),(6,'Olivia Miller',4444444444,'olivia@example.com'),(7,'James Wilson',5555555555,'james@example.com'),(8,'Ava Thomas',6666666666,'ava@example.com'),(9,'Alexander Davis',7777777777,'alexander@example.com'),(10,'Sophia Anderson',8888888888,'sophia@example.com'),(11,'Jacob Wilson',9999999999,'jacob@example.com'),(12,'Isabella Brown',1000000000,'isabella@example.com'),(13,'Ethan Martinez',1111111111,'ethan@example.com'),(14,'Mia Robinson',2222222222,'mia@example.com'),(15,'William Jackson',3333333333,'williamj@example.com'),(16,'Ava Lewis',4444444444,'avaL@example.com'),(17,'Alexander Hill',5555555555,'alexanderh@example.com'),(18,'Sophia Baker',6666666666,'sophiab@example.com'),(19,'Jacob Nelson',7777777777,'jacobn@example.com'),(20,'Isabella Carter',8888888888,'isabellac@example.com'),(21,'Ethan Mitchell',9999999999,'ethanm@example.com'),(22,'Mia Perez',1000000000,'miaperez@example.com'),(23,'William Roberts',1111111111,'williamr@example.com'),(24,'Ava Turner',2222222222,'avat@example.com'),(25,'Alexander Phillips',3333333333,'alexanderp@example.com'),(26,'Sophia Campbell',4444444444,'sophiac@example.com'),(27,'Jacob Parker',5555555555,'jacobp@example.com'),(28,'Isabella Evans',6666666666,'isabellae@example.com'),(29,'Ethan Edwards',7777777777,'ethane@example.com'),(30,'Mia Collins',8888888888,'miac@example.com'),(31,'William Stewart',9999999999,'williams@example.com'),(32,'Ava Sanchez',1234567890,'avas@example.com'),(33,'Alexander Morris',9876543210,'alexanderm@example.com'),(34,'Sophia Rogers',1111111111,'sophiar@example.com'),(35,'Jacob Reed',2222222222,'jacobr@example.com'),(36,'Isabella Cook',3333333333,'isabellacook@example.com'),(37,'Ethan Bailey',4444444444,'ethanb@example.com'),(38,'Mia Bell',5555555555,'miab@example.com'),(39,'William Cooper',6666666666,'williamc@example.com'),(40,'Ava Richardson',7777777777,'avar@example.com'),(41,'Alexander Cox',8888888888,'alexanderc@example.com'),(42,'Sophia Howard',9999999999,'sophiah@example.com'),(43,'Jacob Ward',1000000000,'jacobw@example.com'),(44,'Isabella Torres',1111111111,'isabellat@example.com'),(45,'Ethan Peterson',2222222222,'ethanp@example.com'),(46,'Mia Gray',3333333333,'miag@example.com'),(47,'William Ramirez',4444444444,'williamr@example.com'),(48,'Ava James',5555555555,'avaj@example.com'),(49,'Alexander Watson',6666666666,'alexanderw@example.com'),(50,'Sophia Brooks',7777777777,'sophiab@example.com');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `menuID` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`menuID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'Pancakes','Breakfast',6),(2,'Waffles','Breakfast',6),(3,'French Toast','Breakfast',7),(4,'Omelette','Breakfast',8),(5,'Eggs Benedict','Breakfast',10),(6,'Bacon and Eggs','Breakfast',8),(7,'Sausage and Eggs','Breakfast',8),(8,'Hamburger','Lunch',9),(9,'Cheeseburger','Lunch',10),(10,'Chicken Sandwich','Lunch',10),(11,'BLT','Lunch',8),(12,'Grilled Cheese','Lunch',6),(13,'Caesar Salad','Lunch',8),(14,'Cobb Salad','Lunch',9),(15,'Greek Salad','Lunch',9),(16,'Steak','Dinner',20),(17,'Seafood Platter','Dinner',22),(18,'Pasta Carbonara','Dinner',13),(19,'Chicken Alfredo','Dinner',14),(20,'Lasagna','Dinner',13),(21,'Pizza','Dinner',10),(22,'Soup','Lunch',5),(23,'Chowder','Lunch',6),(24,'Chili','Lunch',7),(25,'Sandwich','Lunch',8),(26,'Roast Beef','Lunch',9),(27,'Tuna Salad','Lunch',8),(28,'Grilled Chicken','Lunch',10),(29,'Fried Chicken','Lunch',9),(30,'Fish and Chips','Lunch',10),(31,'Salmon','Dinner',18),(32,'Shrimp Scampi','Dinner',17),(33,'Crab Cakes','Dinner',19),(34,'Lobster Bisque','Dinner',13),(35,'Baked Potato','Dinner',6),(36,'Sweet Potato','Dinner',7),(37,'Mashed Potatoes','Dinner',5),(38,'Roasted Vegetables','Dinner',8),(39,'Grilled Asparagus','Dinner',9),(40,'Steamed Rice','Dinner',4),(41,'Fried Rice','Dinner',5),(42,'Lo Mein','Dinner',11),(43,'Beef and Broccoli','Main Course',13),(44,'Chicken Teriyaki','Main Course',12),(45,'Vegetable Stir Fry','Main Course',11),(46,'Fried Rice','Main Course',10),(47,'Egg Rolls','Appetizer',6),(48,'Wonton Soup','Soup',4),(49,'Hot and Sour Soup','Soup',5),(50,'Miso Soup','Soup',3);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdelivery`
--

DROP TABLE IF EXISTS `orderdelivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderdelivery` (
  `orderID` int(11) NOT NULL,
  `deliveryDate` date DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`orderID`),
  CONSTRAINT `order` FOREIGN KEY (`orderID`) REFERENCES `orders` (`orderID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdelivery`
--

LOCK TABLES `orderdelivery` WRITE;
/*!40000 ALTER TABLE `orderdelivery` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderdelivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `orderID` int(11) NOT NULL,
  `BookingID` int(11) NOT NULL,
  `orderDate` date DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `totalCost` decimal(10,0) DEFAULT NULL,
  `customerID` int(11) NOT NULL,
  `menuID` int(11) NOT NULL,
  PRIMARY KEY (`orderID`,`BookingID`,`menuID`,`customerID`),
  KEY `bookingID_idx` (`BookingID`),
  KEY `customerID_idx` (`customerID`),
  KEY `itemID_idx` (`menuID`),
  CONSTRAINT `bookingID` FOREIGN KEY (`BookingID`) REFERENCES `bookings` (`bookingID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `customerID` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `itemID` FOREIGN KEY (`menuID`) REFERENCES `menu` (`menuID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,'2022-01-01',1,100,1,1),(2,2,'2022-01-02',2,200,2,2),(3,3,'2022-01-03',3,300,3,3),(4,4,'2022-01-04',4,400,4,4),(5,5,'2022-01-05',5,500,5,5),(6,6,'2022-01-06',6,600,6,6),(7,7,'2022-01-07',7,700,7,7),(8,8,'2022-01-08',8,800,8,8),(9,9,'2022-01-09',9,900,9,9),(10,10,'2022-01-10',10,1000,10,10),(11,11,'2022-01-11',11,1100,11,11),(12,12,'2022-01-12',12,1200,12,12),(13,13,'2022-01-13',13,1300,13,13),(14,14,'2022-01-14',14,1400,14,14),(15,15,'2022-01-15',15,1500,15,15),(16,16,'2022-01-16',16,1600,16,16),(17,17,'2022-01-17',17,1700,17,17),(18,18,'2022-01-18',18,1800,18,18),(19,19,'2022-01-19',19,1900,19,19),(20,20,'2022-01-20',20,2000,20,20),(21,21,'2022-01-21',21,2100,21,21),(22,22,'2022-01-22',22,2200,22,22),(23,23,'2022-01-23',23,2300,23,23),(24,24,'2022-01-24',24,2400,24,24),(25,25,'2022-01-25',25,2500,25,25),(26,26,'2022-01-26',26,2600,26,26),(27,27,'2022-01-27',27,2700,27,27),(28,28,'2022-01-28',28,2800,28,28),(29,29,'2022-01-29',29,2900,29,29),(30,30,'2022-01-30',30,3000,30,30),(31,31,'2022-01-31',31,3100,31,31),(32,32,'2022-02-01',32,3200,32,32),(33,33,'2022-02-02',33,3300,33,33),(34,34,'2022-02-03',34,3400,34,34),(35,35,'2022-02-04',35,3500,35,35),(36,36,'2022-02-05',36,3600,36,36),(37,37,'2022-02-06',37,3700,37,37),(38,38,'2022-02-07',38,3800,38,38),(39,39,'2022-02-08',39,3900,39,39),(40,40,'2022-02-09',40,4000,40,40),(41,41,'2022-02-10',41,4100,41,41),(42,42,'2022-02-11',42,4200,42,42),(43,43,'2022-02-12',43,4300,43,43),(44,44,'2022-02-13',44,4400,44,44),(45,45,'2022-02-14',45,4500,45,45),(46,46,'2022-02-15',46,4600,46,46),(47,47,'2022-02-16',47,4700,47,47),(48,48,'2022-02-17',48,4800,48,48),(49,49,'2022-02-18',49,4900,49,49),(50,50,'2022-02-19',50,5000,50,50);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff` (
  `staffID` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  `salary` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`staffID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'John Doe','Manager',55000),(2,'Jane Doe','Assistant Manager',50000),(3,'Jim Smith','Chef',45000),(4,'Sara Johnson','Server',30000),(5,'Bob Brown','Bartender',27000),(6,'Tom Green','Dishwasher',25000),(7,'Chris Black','Server',30000),(8,'Kelly White','Bartender',27000),(9,'Emily Davis','Dishwasher',25000),(10,'Sarah Brown','Server',30000),(11,'Mike Johnson','Bartender',27000),(12,'John Green','Dishwasher',25000),(13,'Jane Black','Server',30000),(14,'Jim White','Bartender',27000),(15,'Sara Davis','Dishwasher',25000),(16,'Bob Brown','Server',30000),(17,'Tom Green','Bartender',27000),(18,'Chris Black','Dishwasher',25000),(19,'Kelly White','Server',30000),(20,'Emily Davis','Bartender',27000),(21,'Sarah Brown','Dishwasher',25000),(22,'Mike Johnson','Server',30000),(23,'John Green','Bartender',27000),(24,'Jane Black','Dishwasher',25000),(25,'Jim White','Server',30000),(26,'Sara Davis','Bartender',27000),(27,'Bob Brown','Dishwasher',25000),(28,'Tom Green','Server',30000),(29,'Chris Black','Bartender',27000),(30,'Kelly White','Dishwasher',25000),(31,'Emily Davis','Server',30000),(32,'Sarah Brown','Bartender',27000),(33,'Mike Johnson','Dishwasher',25000),(34,'John Green','Server',30000),(35,'Jane Black','Bartender',27000),(36,'Jim White','Dishwasher',25000),(37,'Sara Davis','Server',30000),(38,'Bob Brown','Bartender',27000),(39,'Tom Green','Dishwasher',25000),(40,'Chris Black','Server',30000),(41,'Kelly White','Bartender',27000),(42,'Emily Davis','Dishwasher',25000),(43,'Sarah Brown','Server',30000),(44,'Mike Johnson','Bartender',27000),(45,'John Green','Dishwasher',25000),(46,'Jane Black','Server',30000),(47,'Jim White','Bartender',27000),(48,'Sara Davis','Dishwasher',25000),(49,'BobJohnson','Head Chef',55000),(50,'Jessica Smith','Manager',65000);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-10 23:52:23
