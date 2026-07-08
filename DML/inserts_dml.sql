-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bd_nicolas_guarin_clan8
-- ------------------------------------------------------
-- Server version	8.0.46

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `riwi_branches`
--

LOCK TABLES `riwi_branches` WRITE;
/*!40000 ALTER TABLE `riwi_branches` DISABLE KEYS */;
INSERT INTO `riwi_branches` VALUES (1,'North Office Branch',1),(2,'Headquarters',2),(3,'West Branch',3),(4,'Main Office Branch',4),(5,'Coast Branch',5),(6,'Coffee Branch',6),(7,'East Branch',7),(8,'North East Branch',8),(9,'Central Office Branch',9),(10,'Caribbean Branch',10);
/*!40000 ALTER TABLE `riwi_branches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `riwi_cities`
--

LOCK TABLES `riwi_cities` WRITE;
/*!40000 ALTER TABLE `riwi_cities` DISABLE KEYS */;
INSERT INTO `riwi_cities` VALUES (1,'BogotÃ¡'),(2,'MedellÃ­n'),(3,'Cali'),(4,'Barranquilla'),(5,'Cartagena'),(6,'Pereira'),(7,'Bucaramanga'),(8,'CÃºcuta'),(9,'Manizales'),(10,'Santa Marta');
/*!40000 ALTER TABLE `riwi_cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `riwi_clients`
--

LOCK TABLES `riwi_clients` WRITE;
/*!40000 ALTER TABLE `riwi_clients` DISABLE KEYS */;
INSERT INTO `riwi_clients` VALUES (1,'ACME LTDA'),(2,'Innova S.A.S.'),(3,'Nova Tech'),(4,'Bio Health'),(5,'Soft Corp'),(6,'Vision S.A.'),(7,'Retail One'),(8,'EduCenter'),(9,'Health Plus'),(10,'Mega Foods');
/*!40000 ALTER TABLE `riwi_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `riwi_equipment_categories`
--

LOCK TABLES `riwi_equipment_categories` WRITE;
/*!40000 ALTER TABLE `riwi_equipment_categories` DISABLE KEYS */;
INSERT INTO `riwi_equipment_categories` VALUES (1,'Laptop'),(2,'Desktop'),(3,'Network'),(4,'Printer');
/*!40000 ALTER TABLE `riwi_equipment_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `riwi_equipments`
--

LOCK TABLES `riwi_equipments` WRITE;
/*!40000 ALTER TABLE `riwi_equipments` DISABLE KEYS */;
INSERT INTO `riwi_equipments` VALUES (1,'Dell Latitude 5420',1),(2,'HP Pro Desk',2),(3,'Cisco Switch 2960',3),(4,'Canon Printer',4),(5,'Lenovo ThinkPad',1);
/*!40000 ALTER TABLE `riwi_equipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `riwi_orders`
--

LOCK TABLES `riwi_orders` WRITE;
/*!40000 ALTER TABLE `riwi_orders` DISABLE KEYS */;
INSERT INTO `riwi_orders` VALUES (1,'WO1001','2026-05-01',1,2,1,1,1,1,120),(2,'WO1002','2026-05-02',1,3,1,1,1,1,180),(3,'WO1003','2026-05-03',2,4,2,2,2,2,250),(4,'WO1004','2026-05-04',2,2,2,2,2,2,150),(5,'WO1005','2026-05-05',3,5,3,3,3,3,500),(6,'WO1006','2026-05-06',3,4,3,3,3,3,450),(7,'WO1007','2026-05-07',4,2,4,4,2,4,130),(8,'WO1008','2026-05-08',4,3,4,4,2,4,200),(9,'WO1009','2026-05-09',5,2,5,5,1,5,140),(10,'WO1010','2026-05-10',5,3,5,5,1,5,190),(11,'WO1011','2026-05-11',6,6,1,2,3,6,550),(12,'WO1012','2026-05-12',6,5,1,2,3,6,520),(13,'WO1013','2026-05-13',7,2,2,1,2,7,160),(14,'WO1014','2026-05-14',7,3,2,1,2,7,210),(15,'WO1015','2026-05-15',8,2,3,3,1,8,125),(16,'WO1016','2026-05-16',8,2,3,3,1,8,135),(17,'WO1017','2026-05-17',9,4,4,4,3,9,400),(18,'WO1018','2026-05-18',9,5,4,4,3,9,430),(19,'WO1019','2026-05-19',10,3,5,5,2,10,220),(20,'WO1020','2026-05-20',10,4,5,5,2,10,260);
/*!40000 ALTER TABLE `riwi_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `riwi_services`
--

LOCK TABLES `riwi_services` WRITE;
/*!40000 ALTER TABLE `riwi_services` DISABLE KEYS */;
INSERT INTO `riwi_services` VALUES (1,'Preventive Maintenance'),(2,'Repair'),(3,'Installation');
/*!40000 ALTER TABLE `riwi_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `riwi_technicians`
--

LOCK TABLES `riwi_technicians` WRITE;
/*!40000 ALTER TABLE `riwi_technicians` DISABLE KEYS */;
INSERT INTO `riwi_technicians` VALUES (1,'Juan Perez'),(2,'Maria Gomez'),(3,'Carlos Ruiz'),(4,'Laura Diaz'),(5,'Andres Mora');
/*!40000 ALTER TABLE `riwi_technicians` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-08  6:26:45
