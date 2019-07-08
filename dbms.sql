-- MySQL dump 10.13  Distrib 5.7.21, for macos10.13 (x86_64)
--
-- Host: localhost    Database: dbms_project
-- ------------------------------------------------------
-- Server version	5.7.21

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
-- Current Database: `dbms_project`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `dbms_project` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `dbms_project`;

--
-- Table structure for table `destination`
--

DROP TABLE IF EXISTS `destination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `destination` (
  `dest_id` int(11) NOT NULL AUTO_INCREMENT,
  `dest_name` varchar(30) NOT NULL,
  `dest_desc` varchar(400) NOT NULL,
  `dest_image` varchar(400) NOT NULL,
  PRIMARY KEY (`dest_id`),
  UNIQUE KEY `dest_id` (`dest_id`),
  UNIQUE KEY `dest_name` (`dest_name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `destination`
--

LOCK TABLES `destination` WRITE;
/*!40000 ALTER TABLE `destination` DISABLE KEYS */;
INSERT INTO `destination` VALUES (2,'Kasol','Kasol. Kasol is a hamlet in the district Kullu, Himachal Pradesh, northern India. It is situated in Parvati Valley, on the banks of the Parvati River, on the way between Bhuntar and Manikaran. It is located 31.2 km from Bhuntar and 5 km from Manikaran.','https://image3.mouthshut.com/images/imagesp/925052828s.jpg'),(3,'Goa','Goa is a land that redefines holidays, with its exquisite mix of sun, surf, and beaches; Goa has become the ultimate tourist destination. Goa is a tiny emeralds land with its natural scenic beauty, attractive beaches and temples, famous for its architecture, feast and festivals and hospitable people with a rich culture.',''),(4,'Mumbai','Mumbai, formerly Bombay, is big. It’s full of dreamers and hard-labourers, starlets and gangsters, stray dogs and exotic birds, artists and servants, fisherfolk and crorepatis (millionaires), and lots and lots of people.',''),(5,'Shimla','Earlier pronounced as Simla, it was once declared as the summer capital of the British Raj in India. The best time to visit this place is either between April to August or December to January. The first option lets you escape from the heat wave, and the latter lets you enjoy the mildly falling snow during winters. A new year trip to Shimla should be next in your to-do list.','http://www.weekendthrill.com/wp-content/uploads/2016/12/Shimla-Tour-1.jpg'),(7,'Jaipur','safsnafjbafsbofspo','https://image3.mouthshut.com/images/imagesp/925052828s.jpg');
/*!40000 ALTER TABLE `destination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotel` (
  `hotel_id` int(11) NOT NULL AUTO_INCREMENT,
  `hotel_name` varchar(30) NOT NULL,
  `hotel_address` varchar(100) NOT NULL,
  `hotel_contact` varchar(20) NOT NULL,
  UNIQUE KEY `hotel_id` (`hotel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel`
--

LOCK TABLES `hotel` WRITE;
/*!40000 ALTER TABLE `hotel` DISABLE KEYS */;
INSERT INTO `hotel` VALUES (1,'The Taj Mahal Palace Hotel','Apollo Bandar, Colaba, Mumbai, Maharashtra 400001','022 6665 3366'),(2,'The Oberoi','Vinay K Shah Marg, Near Air India Building, Nariman Point, Mumbai, Maharashtra 400021','022 6632 5757'),(3,'The Leela Mumbai','Andheri Kurla Road, Sahar, Andheri East, Mumbai, Maharashtra 400059','022 6691 1234');
/*!40000 ALTER TABLE `hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package`
--

DROP TABLE IF EXISTS `package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `package` (
  `package_id` int(11) NOT NULL AUTO_INCREMENT,
  `dest_id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `package_name` varchar(30) NOT NULL,
  `package_desc` varchar(400) NOT NULL,
  `rate` double(10,2) NOT NULL,
  `package_image` varchar(400) NOT NULL,
  PRIMARY KEY (`package_id`),
  KEY `dest_id` (`dest_id`),
  KEY `hotel_id` (`hotel_id`),
  CONSTRAINT `package_ibfk_1` FOREIGN KEY (`dest_id`) REFERENCES `destination` (`dest_id`),
  CONSTRAINT `package_ibfk_2` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`hotel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package`
--

LOCK TABLES `package` WRITE;
/*!40000 ALTER TABLE `package` DISABLE KEYS */;
INSERT INTO `package` VALUES (1,4,1,'Platinum Package','Great value for money, enjoy Mumbai!',20000.00,'https://www.topuniversities.com/sites/default/files/articles/lead-images/mumbai.jpg'),(2,4,1,'Silver Package','This delivers the beauty of mumbai at a reasonable price.',7000.00,'http://s3.india.com/travel/wp-content/uploads/2014/09/Taj-Mahal-Palace-625x470.jpg'),(3,4,2,'Bronze Package','Enjoy the culture and heritage of the city of Mumbai',8000.00,'https://akm-img-a-in.tosshub.com/indiatoday/images/story/201708/marine-drive-story-647_041717113519_080617072702.jpg'),(4,2,1,'Mountain Package','Enjoy the essence of the mountains',10000.00,'https://tmi2-tourmyindiapvtlt.netdna-ssl.com/blog/wp-content/uploads/2017/09/Top-Places-to-Visit-and-things-to-do-in-kasol.jpg'),(5,7,2,'Jaipur package','lorem',10000.00,'http://www.jaipur-travel-guide.com/images/600px/jaipur-skyline.jpg');
/*!40000 ALTER TABLE `package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `package_id` int(11) NOT NULL,
  `booking_date` date NOT NULL,
  `username` varchar(30) NOT NULL,
  `person_count` int(11) NOT NULL,
  `amount` double(10,2) NOT NULL,
  PRIMARY KEY (`transaction_id`),
  KEY `package_id` (`package_id`),
  KEY `username` (`username`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`package_id`) REFERENCES `package` (`package_id`),
  CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`username`) REFERENCES `user` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,1,'2018-04-15','maanas',2,20000.00),(2,1,'2018-04-15','Shubham',5,50000.00),(3,1,'2018-04-15','maanas',1,10000.00),(4,1,'2018-04-15','admin',4,40000.00),(5,1,'2018-04-16','admin',7,70000.00),(6,2,'2018-04-17','maanas',5,30000.00),(7,3,'2018-04-17','admin',5,20000.00),(8,1,'2018-04-18','Shubham',1,20000.00),(9,3,'2018-04-18','Shubham',4,32000.00),(10,1,'2018-04-18','Maxwell',1,20000.00),(11,2,'2018-04-18','Maxwell',4,28000.00),(12,4,'2018-04-18','Shubham',4,40000.00),(13,2,'2018-04-18','Shubham',4,28000.00);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_type` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `wallet_money` int(11) NOT NULL,
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('admin','admin','admin','iiita','1234567890','iiita@iiita.ac.in',34000),('user','akash','undefined','akash','akash124','apisnf@gamilc.om',60000),('user','Austin','austin','Austin Kispotta','1234','austin@gmail.com',50000),('admin','maanas','undefined','Maanas Vohra','9421072','maanasvohra1998@gmail.com',0),('user','Madara','uchiha','madara uchiha','1234','madara@gmail.com',50000),('user','Maxwell','maxwell','maxwell','1234','maxwell@gmail.com',2000),('user','Naruto','123','Naruto Uzumaki','912313','naruto@gmail.com',50000),('user','Prajal','prajal','Prajal Bhandari','214145','prajal@praja.com',50000),('user','Shubham','shubham','Shubham','3245','shubham@gmail.com',14000),('user','Swapnil','admin','Swapnil Gharat','1234','swapnil@gmail.com',50000);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-25  1:13:32
