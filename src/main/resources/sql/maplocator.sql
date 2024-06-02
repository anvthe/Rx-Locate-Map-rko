-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: spring_security_db
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `divisions`
--

DROP TABLE IF EXISTS `divisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `divisions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `lat` (`lat`),
  UNIQUE KEY `lng` (`lng`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `divisions`
--

LOCK TABLES `divisions` WRITE;
/*!40000 ALTER TABLE `divisions` DISABLE KEYS */;
INSERT INTO `divisions` VALUES (1,'DHAKA',23.810332,90.412518),(2,'CHITTAGONG',22.356851,91.783182),(3,'KHULNA',22.845641,89.540328),(4,'BARISHAL',22.701002,90.353451),(5,'RAJSHAHI',24.363589,88.624135),(6,'RANGPUR',25.743892,89.275227),(7,'MYMENSINGH',24.747149,90.420273),(8,'SYLHET',24.894929,91.868706);
/*!40000 ALTER TABLE `divisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `bmdc` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bmdc` (`bmdc`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` VALUES (1,'Dr. Ashraful Islam','1051'),(2,'Dr. Zahid Hossain','1933'),(3,'Dr. Omar Ahmed','3418'),(4,'Dr. Rafi Khan','1294'),(5,'Dr. Anwar Ali','4214'),(6,'Dr. Alam Rahman','7189'),(7,'Dr. Shahid Karim','4304'),(8,'Dr. Rubel Uddin','7954'),(9,'Dr. Reza Miah','7859'),(10,'Dr. Hasan Chowdhury','5431'),(11,'Dr. Ashraful Islam','1000'),(12,'Dr. Zahid Hossain','1001'),(13,'Dr. Omar Ahmed','1002'),(14,'Dr. Fahmida Rahman','1003'),(15,'Dr. Saifur Rahman','1004'),(16,'Dr. Ayesha Siddiqua','1005'),(17,'Dr. Nasrin Akter','1006'),(18,'Dr. Kazi Hasan','1007'),(19,'Dr. Mahbubur Rahman','1008'),(20,'Dr. Taslima Begum','1009'),(21,'Dr. Anisur Rahman','1010'),(22,'Dr. Rasheda Chowdhury','1011'),(23,'Dr. Shamsul Alam','1012'),(24,'Dr. Farzana Haque','1013'),(25,'Dr. Golam Mostafa','1014'),(26,'Dr. Nilufa Yasmin','1015'),(27,'Dr. Zakir Hossain','1016'),(28,'Dr. Khaled Mahmud','1017'),(29,'Dr. Razia Sultana','1018'),(30,'Dr. Mahfuzur Rahman','1019'),(31,'Dr. Humayun Kabir','1020'),(32,'Dr. Ashraful Islam','1021'),(33,'Dr. Ashraful Islam','1022'),(34,'Dr. Nafis Rahman','1023'),(35,'Dr. Ayesha Siddiqui','1024'),(36,'Dr. Omar Farooq','1025'),(37,'Dr. Rehana Begum','1026'),(38,'Dr. Tahmid Karim','1027'),(39,'Dr. Nusrat Jahan','1028'),(40,'Dr. Hasan Mahmud','1029'),(41,'Dr. Kamal Ahmed','1030'),(42,'Dr. Saima Chowdhury','1031'),(43,'Dr. Ashraful Islam','1032'),(44,'Dr. Nafis Rahma','1033'),(45,'Dr. Ayesha Siddiqui','1034'),(46,'Dr. Omar Farooq','1035'),(47,'Dr. Rehana Begum','1036'),(48,'Dr. Tahmid Karim','1037'),(49,'Dr. Nusrat Jahan','1038'),(50,'Dr. Hasan Mahmud','1039'),(51,'Dr. Kamal Ahmed','1040'),(52,'Dr. Saima Chowdhury','1041'),(53,'Dr. Ashraful Islam','1042'),(54,'Dr. Nafis Rahman','1043'),(55,'Dr. Ayesha Siddiqu','1044'),(56,'Dr. Omar Farooq','1045'),(57,'Dr. Rehana Begum','1046'),(58,'Dr. Tahmid Karim','1047'),(59,'Dr. Nusrat Jahan','1048'),(60,'Dr. Hasan Mahmud','1049'),(61,'Dr. Kamal Ahmed','1050');
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drugs`
--

DROP TABLE IF EXISTS `drugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drugs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `drug_name` varchar(255) NOT NULL,
  `formula` varchar(255) DEFAULT NULL,
  `strength` varchar(255) DEFAULT NULL,
  `generic_id` int DEFAULT NULL,
  `vendor_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `generic_id` (`generic_id`),
  KEY `vendor_id` (`vendor_id`),
  CONSTRAINT `drugs_ibfk_1` FOREIGN KEY (`generic_id`) REFERENCES `generics` (`id`),
  CONSTRAINT `drugs_ibfk_2` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=347 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drugs`
--

LOCK TABLES `drugs` WRITE;
/*!40000 ALTER TABLE `drugs` DISABLE KEYS */;
INSERT INTO `drugs` VALUES (1,'Napa','Tablet','500mg',38,3),(2,'Abecab','Capsule','20mg',1,2),(3,'Diasulin','Liquid','100ml',1,3),(4,'Micoral','Injection','5ml',1,4),(5,'Abetis','Cream','100gm',1,5),(6,'Ibuprofen','Tablet','200mg',1,1),(7,'Amoxicillin','Capsule','500mg',2,2),(8,'Cetirizine','Liquid','5mg/5ml',3,3),(9,'Insulin Glargine','Injection','100U/ml',4,4),(10,'Clotrimazole','Cream','1%',5,5),(11,'Hydrocortisone','Ointment','2.5%',6,6),(12,'Monas','Tablet','500mg',7,7),(13,'Omeprazole','Capsule','20mg',8,8),(14,'Salbutamol','Inhaler','100mcg',9,9),(15,'Loratadine','Syrup','5mg/5ml',10,10),(16,'Paracetamol','Tablet','500mg',11,11),(17,'Aspirin','Tablet','81mg',12,1),(18,'Azithromycin','Tablet','250mg',13,2),(19,'Doxycycline','Capsule','100mg',14,3),(20,'Furosemide','Injection','10mg/ml',15,4),(21,'Gabapentin','Tablet','300mg',16,5),(22,'Lisinopril','Tablet','10mg',17,6),(23,'Montelukast','Tablet','10mg',18,7),(24,'Prednisolone','Liquid','15mg/5ml',19,8),(25,'Ranitidine','Tablet','150mg',20,9),(26,'Simvastatin','Tablet','20mg',1,10),(27,'Amlodipine','Tablet','5mg',2,11),(28,'Ciprofloxacin','Tablet','500mg',3,1),(29,'Fluconazole','Capsule','150mg',4,2),(30,'Ibuprofen','Suspension','100mg/5ml',5,3),(31,'Metronidazole','Tablet','400mg',6,4),(32,'Tramadol','Capsule','50mg',7,5),(33,'Duloxetine','Capsule','30mg',8,6),(34,'Gabapentin','Capsule','300mg',9,7),(35,'Levothyroxine','Tablet','50mcg',10,8),(36,'Metformin','Tablet','850mg',11,9),(37,'Naprosyn','Tablet','500mg',12,10),(38,'Sildenafil','Tablet','50mg',13,11),(39,'Tadalafil','Tablet','5mg',14,1),(40,'Atorvastatin','Tablet','10mg',15,2),(41,'Diclofenac','Gel','1%',16,3),(42,'Esomeprazole','Tablet','40mg',17,4),(43,'Folic Acid','Tablet','5mg',18,5),(44,'Glyburide','Tablet','5mg',19,6),(45,'Hydrochlorothiazide','Tablet','25mg',20,7),(46,'Ivermectin','Tablet','3mg',1,8),(47,'Lamotrigine','Tablet','100mg',2,9),(48,'Methylphenidate','Tablet','10mg',3,10),(49,'Nitrofurantoin','Capsule','100mg',4,11),(50,'Ondansetron','Tablet','8mg',5,1),(51,'Pantoprazole','Tablet','40mg',6,2),(52,'Quetiapine','Tablet','25mg',7,3),(53,'Rosuvastatin','Tablet','10mg',8,4),(54,'Sertraline','Tablet','50mg',9,5),(55,'Topiramate','Tablet','25mg',10,6),(56,'Valacyclovir','Tablet','500mg',11,7),(57,'Warfarin','Tablet','5mg',12,8),(58,'Xarelto','Tablet','20mg',13,9),(59,'Yasmin','Tablet','3mg',14,10),(60,'Zolpidem','Tablet','10mg',15,11),(61,'Acetaminophen','Tablet','325mg',16,1),(62,'Benazepril','Tablet','10mg',17,2),(63,'Candesartan','Tablet','16mg',18,3),(64,'Desloratadine','Tablet','5mg',19,4),(65,'Erythromycin','Tablet','500mg',20,5),(66,'Fluoxetine','Capsule','20mg',1,6),(67,'Glipizide','Tablet','10mg',2,7),(68,'Hydroxychloroquine','Tablet','200mg',3,8),(69,'Indomethacin','Capsule','25mg',4,9),(70,'Januvia','Tablet','100mg',5,10),(71,'Keppra','Tablet','500mg',6,11),(72,'Levofloxacin','Tablet','500mg',7,1),(73,'Methotrexate','Tablet','2.5mg',8,2),(74,'Naproxen','Tablet','250mg',9,3),(75,'Olanzapine','Tablet','10mg',10,4),(76,'Propranolol','Tablet','40mg',11,5),(77,'Quinapril','Tablet','20mg',12,6),(78,'Risperidone','Tablet','1mg',13,7),(79,'Spironolactone','Tablet','25mg',14,8),(80,'Trazodone','Tablet','50mg',15,9),(81,'Ursodiol','Capsule','250mg',16,10),(82,'Vardenafil','Tablet','10mg',17,11),(83,'Wellbutrin','Tablet','150mg',18,1),(84,'Xanax','Tablet','0.5mg',19,2),(85,'Yohimbine','Tablet','5mg',20,3),(86,'Zithromax','Tablet','500mg',1,4),(87,'Napa One','Tablet','1000mg',1,1),(88,'Panadol','Tablet','500mg',2,2),(89,'Brufen','Tablet','400mg',3,3),(90,'Flagyl','Tablet','500mg',4,4),(91,'Cipro','Tablet','500mg',5,5),(92,'Lasix','Tablet','40mg',6,6),(93,'Zantac','Tablet','150mg',7,7),(94,'Voltaren','Tablet','50mg',8,8),(95,'Advil','Tablet','200mg',9,9),(96,'Motrin','Tablet','400mg',10,10),(97,'Aspirin','Tablet','100mg',11,11),(98,'Lipitor','Tablet','20mg',12,1),(99,'Plavix','Tablet','75mg',13,2),(100,'Zocor','Tablet','40mg',14,3),(101,'Crestor','Tablet','10mg',15,4),(102,'Nexium','Capsule','20mg',16,5),(103,'Prilosec','Capsule','20mg',17,6),(104,'Prevacid','Capsule','15mg',18,7),(105,'Protonix','Tablet','40mg',19,8),(106,'Zoloft','Tablet','50mg',20,9),(107,'Lexapro','Tablet','10mg',21,10),(108,'Prozac','Capsule','20mg',22,11),(109,'Cymbalta','Capsule','30mg',23,1),(110,'Effexor','Tablet','75mg',24,2),(111,'Wellbutrin','Tablet','150mg',25,3),(112,'Paxil','Tablet','20mg',26,4),(113,'Celexa','Tablet','20mg',27,5),(114,'Desyrel','Tablet','50mg',28,6),(115,'Ativan','Tablet','1mg',29,7),(116,'Valium','Tablet','5mg',30,8),(117,'Xanax','Tablet','0.5mg',31,9),(118,'Klonopin','Tablet','1mg',1,10),(119,'Restoril','Capsule','15mg',2,11),(120,'Halcion','Tablet','0.25mg',3,1),(121,'Ambien','Tablet','10mg',4,2),(122,'Lunesta','Tablet','2mg',5,3),(123,'Sonata','Capsule','10mg',6,4),(124,'Dalmane','Capsule','15mg',7,5),(125,'Rozerem','Tablet','8mg',8,6),(126,'Belsomra','Tablet','10mg',9,7),(127,'Hetlioz','Capsule','20mg',10,8),(128,'Zulresso','Injection','100mg',11,9),(129,'Silenor','Tablet','3mg',12,10),(130,'Seconal','Capsule','100mg',13,11),(131,'Nembutal','Injection','50mg',14,1),(132,'Lyrica','Capsule','75mg',15,2),(133,'Neurontin','Capsule','300mg',16,3),(134,'Gabitril','Tablet','10mg',17,4),(135,'Topamax','Tablet','50mg',18,5),(136,'Lamictal','Tablet','100mg',19,6),(137,'Tegretol','Tablet','200mg',20,7),(138,'Dilantin','Capsule','100mg',21,8),(139,'Depakote','Tablet','250mg',22,9),(140,'Keppra','Tablet','500mg',23,10),(141,'Trileptal','Tablet','300mg',24,11),(142,'Zonegran','Capsule','25mg',25,1),(143,'Vimpat','Tablet','100mg',26,2),(144,'Sabril','Tablet','500mg',27,3),(145,'Fycompa','Tablet','2mg',28,4),(146,'Onfi','Tablet','10mg',29,5),(147,'Banzel','Tablet','200mg',30,6),(148,'Briviact','Tablet','25mg',31,7),(149,'Xcopri','Tablet','50mg',1,8),(150,'Zarontin','Capsule','250mg',2,9),(151,'Diamox','Tablet','250mg',3,10),(152,'Felbatol','Tablet','600mg',4,11),(153,'Gabapentin','Capsule','100mg',5,1),(154,'Pregabalin','Capsule','50mg',6,2),(155,'Carbamazepine','Tablet','100mg',7,3),(156,'Oxcarbazepine','Tablet','150mg',8,4),(157,'Phenytoin','Capsule','50mg',9,5),(158,'Valproic Acid','Capsule','250mg',10,6),(159,'Levetiracetam','Tablet','1000mg',11,7),(160,'Lacosamide','Tablet','50mg',12,8),(161,'Rufinamide','Tablet','200mg',13,9),(162,'Perampanel','Tablet','4mg',14,10),(163,'Clobazam','Tablet','10mg',15,11),(164,'Stiripentol','Capsule','250mg',16,1),(165,'Fenfluramine','Tablet','200mg',17,2),(166,'Cannabidiol','Tablet','100mg',18,3),(167,'Epidiolex','Solution','100mg/ml',19,4),(168,'Vigabatrin','Tablet','500mg',20,5),(169,'Diacomit','Capsule','250mg',21,6),(170,'Ataluren','Tablet','10mg',22,7),(171,'Bosentan','Tablet','125mg',23,8),(172,'Ambrisentan','Tablet','5mg',24,9),(173,'Macitentan','Tablet','10mg',25,10),(174,'Selexipag','Tablet','200mcg',26,11),(175,'Treprostinil','Injection','2.5mg/ml',27,1),(176,'Epoprostenol','Injection','1.5mg',28,2),(177,'Iloprost','Inhalation','10mcg/ml',29,3),(178,'Ventavis','Inhalation','20mcg/ml',30,4),(179,'Uptravi','Tablet','400mcg',31,5),(180,'Opsumit','Tablet','10mg',1,6),(181,'Tracleer','Tablet','62.5mg',2,7),(182,'Adcirca','Tablet','20mg',3,8),(183,'Revatio','Tablet','20mg',4,9),(184,'Sildenafil','Tablet','50mg',5,10),(185,'Tadalafil','Tablet','10mg',6,11),(186,'Vardenafil','Tablet','10mg',7,1),(187,'Avanafil','Tablet','100mg',8,2),(188,'Alprostadil','Injection','20mcg',9,3),(189,'Caverject','Injection','20mcg',10,4),(190,'Muse','Suppository','125mcg',11,5),(191,'Stendra','Tablet','200mg',12,6),(192,'Fentanyl','Patch','25mcg/hr',13,7),(193,'Morphine','Injection','10mg/ml',14,8),(194,'Hydromorphone','Tablet','4mg',15,9),(195,'Oxycodone','Tablet','10mg',16,10),(196,'Hydrocodone','Tablet','10mg',17,11),(197,'Tramadol','Tablet','50mg',18,1),(198,'Methadone','Tablet','10mg',19,2),(199,'Buprenorphine','Tablet','8mg',20,3),(200,'Naloxone','Injection','0.4mg/ml',21,4),(201,'Naltrexone','Tablet','50mg',22,5),(202,'Acetaminophen','Tablet','500mg',23,6),(203,'Ibuprofen','Tablet','400mg',24,7),(204,'Naproxen','Tablet','500mg',25,8),(205,'Celecoxib','Capsule','200mg',26,9),(206,'Meloxicam','Tablet','15mg',27,10),(207,'Diclofenac','Tablet','75mg',28,11),(208,'Indomethacin','Capsule','50mg',29,1),(209,'Piroxicam','Capsule','20mg',30,2),(210,'Sulindac','Tablet','200mg',31,3),(211,'Aspirin','Tablet','325mg',1,4),(212,'Clopidogrel','Tablet','75mg',2,5),(213,'Warfarin','Tablet','5mg',3,6),(214,'Heparin','Injection','5000units/ml',4,7),(215,'Enoxaparin','Injection','100mg/ml',5,8),(216,'Dalteparin','Injection','10000units/ml',6,9),(217,'Fondaparinux','Injection','2.5mg/ml',7,10),(218,'Rivaroxaban','Tablet','20mg',8,11),(219,'Apixaban','Tablet','5mg',9,1),(220,'Edoxaban','Tablet','60mg',10,2),(221,'Betrixaban','Tablet','80mg',11,3),(222,'Dabigatran','Capsule','150mg',12,4),(223,'Argatroban','Injection','100mg/ml',13,5),(224,'Bivalirudin','Injection','250mg',14,6),(225,'Desirudin','Injection','15mg',15,7),(226,'Alteplase','Injection','50mg',16,8),(227,'Tenecteplase','Injection','50mg',17,9),(228,'Reteplase','Injection','10mg',18,10),(229,'Streptokinase','Injection','1.5million units',19,11),(230,'Urokinase','Injection','250000units',20,1),(231,'Aminocaproic Acid','Tablet','500mg',21,2),(232,'Tranexamic Acid','Tablet','500mg',22,3),(233,'Factor VIII','Injection','1000units',23,4),(234,'Factor IX','Injection','1000units',24,5),(235,'Factor VIIa','Injection','1mg',25,6),(236,'Factor XIII','Injection','2500units',26,7),(237,'Prothrombin Complex','Injection','500units',27,8),(238,'Fibrinogen','Injection','1g',28,9),(239,'Thrombin','Injection','5000units',29,10),(240,'Desmopressin','Injection','4mcg/ml',30,11),(241,'Cryoprecipitate','Injection','1unit/ml',31,1),(242,'Losartan','Tablet','50mg',1,1),(243,'Valsartan','Tablet','50mg',2,2),(244,'Irbesartan','Tablet','50mg',3,3),(245,'Candesartan','Tablet','50mg',4,4),(246,'Olmesartan','Tablet','50mg',5,5),(247,'Telmisartan','Tablet','50mg',6,6),(248,'Eprosartan','Tablet','50mg',7,7),(249,'Azilsartan','Tablet','50mg',8,8),(250,'Losartan','Tablet','100mg',9,9),(251,'Valsartan','Tablet','100mg',10,10),(252,'Irbesartan','Tablet','100mg',11,11),(253,'Candesartan','Tablet','100mg',12,1),(254,'Olmesartan','Tablet','100mg',13,2),(255,'Telmisartan','Tablet','100mg',14,3),(256,'Eprosartan','Tablet','100mg',15,4),(257,'Azilsartan','Tablet','100mg',16,5),(258,'Losartan','Capsule','50mg',17,6),(259,'Valsartan','Capsule','50mg',18,7),(260,'Irbesartan','Capsule','50mg',19,8),(261,'Candesartan','Capsule','50mg',20,9),(262,'Olmesartan','Capsule','50mg',21,10),(263,'Telmisartan','Capsule','50mg',22,11),(264,'Eprosartan','Capsule','50mg',23,1),(265,'Azilsartan','Capsule','50mg',24,2),(266,'Losartan','Capsule','100mg',25,3),(267,'Valsartan','Capsule','100mg',26,4),(268,'Irbesartan','Capsule','100mg',27,5),(269,'Candesartan','Capsule','100mg',28,6),(270,'Olmesartan','Capsule','100mg',29,7),(271,'Telmisartan','Capsule','100mg',30,8),(272,'Eprosartan','Capsule','100mg',31,9),(273,'Azilsartan','Capsule','100mg',1,10),(274,'Losartan','Solution','10mg/mL',2,11),(275,'Valsartan','Solution','10mg/mL',3,1),(276,'Irbesartan','Solution','10mg/mL',4,2),(277,'Candesartan','Solution','10mg/mL',5,3),(278,'Olmesartan','Solution','10mg/mL',6,4),(279,'Telmisartan','Solution','10mg/mL',7,5),(280,'Eprosartan','Solution','10mg/mL',8,6),(281,'Azilsartan','Solution','10mg/mL',9,7),(282,'Losartan','Suspension','10mg/mL',10,8),(283,'Valsartan','Suspension','10mg/mL',11,9),(284,'Irbesartan','Suspension','10mg/mL',12,10),(285,'Candesartan','Suspension','10mg/mL',13,11),(286,'Olmesartan','Suspension','10mg/mL',14,1),(287,'Telmisartan','Suspension','10mg/mL',15,2),(288,'Eprosartan','Suspension','10mg/mL',16,3),(289,'Azilsartan','Suspension','10mg/mL',17,4),(290,'Losartan','Injection','20mg/mL',18,5),(291,'Valsartan','Injection','20mg/mL',19,6),(292,'Irbesartan','Injection','20mg/mL',20,7),(293,'Candesartan','Injection','20mg/mL',21,8),(294,'Olmesartan','Injection','20mg/mL',22,9),(295,'Telmisartan','Injection','20mg/mL',23,10),(296,'Eprosartan','Injection','20mg/mL',24,11),(297,'Azilsartan','Injection','20mg/mL',25,1),(298,'Losartan','Tablet','50mg',26,2),(299,'Valsartan','Tablet','50mg',27,3),(300,'Irbesartan','Tablet','50mg',28,4),(301,'Candesartan','Tablet','50mg',29,5),(302,'Olmesartan','Tablet','50mg',30,6),(303,'Telmisartan','Tablet','50mg',31,7),(304,'Eprosartan','Tablet','50mg',1,8),(305,'Azilsartan','Tablet','50mg',2,9),(306,'Losartan','Tablet','100mg',3,10),(307,'Valsartan','Tablet','100mg',4,11),(308,'Irbesartan','Tablet','100mg',5,1),(309,'Candesartan','Tablet','100mg',6,2),(310,'Olmesartan','Tablet','100mg',7,3),(311,'Telmisartan','Tablet','100mg',8,4),(312,'Eprosartan','Tablet','100mg',9,5),(313,'Azilsartan','Tablet','100mg',10,6),(314,'Losartan','Capsule','50mg',11,7),(315,'Valsartan','Capsule','50mg',12,8),(316,'Irbesartan','Capsule','50mg',13,9),(317,'Candesartan','Capsule','50mg',14,10),(318,'Olmesartan','Capsule','50mg',15,11),(319,'Telmisartan','Capsule','50mg',16,1),(320,'Eprosartan','Capsule','50mg',17,2),(321,'Azilsartan','Capsule','50mg',18,3),(322,'Losartan','Capsule','100mg',19,4),(323,'Valsartan','Capsule','100mg',20,5),(324,'Irbesartan','Capsule','100mg',21,6),(325,'Candesartan','Capsule','100mg',22,7),(326,'Olmesartan','Capsule','100mg',23,8),(327,'Telmisartan','Capsule','100mg',24,9),(328,'Eprosartan','Capsule','100mg',25,10),(329,'Azilsartan','Capsule','100mg',26,11),(330,'Losartan','Solution','10mg/mL',27,1),(331,'Valsartan','Solution','10mg/mL',28,2),(332,'Irbesartan','Solution','10mg/mL',29,3),(333,'Candesartan','Solution','10mg/mL',30,4),(334,'Olmesartan','Solution','10mg/mL',31,5),(335,'Telmisartan','Solution','10mg/mL',1,6),(336,'Eprosartan','Solution','10mg/mL',2,7),(337,'Azilsartan','Solution','10mg/mL',3,8),(338,'Losartan','Suspension','10mg/mL',4,9),(339,'Valsartan','Suspension','10mg/mL',5,10),(340,'Irbesartan','Suspension','10mg/mL',6,11),(341,'Candesartan','Suspension','10mg/mL',7,1),(342,'Olmesartan','Suspension','10mg/mL',8,2),(343,'Telmisartan','Suspension','10mg/mL',9,3),(344,'Eprosartan','Suspension','10mg/mL',10,4),(345,'Azilsartan','Suspension','10mg/mL',11,5),(346,'Losartan','Injection','20mg/mL',12,6);
/*!40000 ALTER TABLE `drugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generics`
--

DROP TABLE IF EXISTS `generics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generics` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generics`
--

LOCK TABLES `generics` WRITE;
/*!40000 ALTER TABLE `generics` DISABLE KEYS */;
INSERT INTO `generics` VALUES (1,'Aceclofenac'),(2,'Ambroxol-Hydrochloride'),(19,'Amlodipine Besilate + Olmesartan Medoxomil'),(5,'Amlodipine-+-Telmisartan'),(3,'Amlodipine-Besylate'),(4,'Amlodipine-Besylate-+-Atenolol'),(6,'Amoxicillin-+-Clavulanic-Acid'),(7,'Atorvastatin'),(29,'Atorvastatin Calcium'),(8,'Azithromycin'),(30,'Azithromycin Dihydrate'),(9,'Baclofen'),(10,'Bilastine'),(11,'Bisoprolol'),(12,'Butamirate-Citrate'),(14,'Calcium-(Coral-source)-+-Vitamin-D3'),(13,'Calcium-Carbonate-&-vitamin-D3'),(15,'Calcium-Orotate'),(16,'Carbonyl-Iron_Folic-Acid_Zinc-Sulphate'),(17,'Cefepime'),(37,'Cefuroxime Axetil + Clavulanic Acid'),(32,'Cetirizine Hydrochloride'),(33,'Ciprofloxacin'),(25,'Domperidone Maleate'),(24,'Esomeprazole'),(36,'Fexofenadine Hydrochloride'),(20,'Insulin Human [rDNA]'),(35,'Levothyroxine Sodium'),(21,'Miconazole Nitrate'),(23,'Montelukast Sodium'),(22,'Olmesartan Medoxomil'),(26,'Omeprazole'),(38,'Paracetamol'),(28,'Paracetamol + Caffeine'),(18,'Rabeprazole Sodium'),(27,'Salmeterol + Fluticasone Propionate'),(34,'Tiemonium Methylsulphate'),(31,'Vitamin C [Ascorbic acid]');
/*!40000 ALTER TABLE `generics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `location_name` varchar(255) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `division_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `location_name` (`location_name`),
  UNIQUE KEY `latitude` (`latitude`),
  UNIQUE KEY `longitude` (`longitude`),
  KEY `division_id` (`division_id`),
  CONSTRAINT `locations_ibfk_1` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,'Dhaka',23.7115253,90.4111451,1),(2,'Faridpur',23.6070822,89.8429406,1),(3,'Gazipur',24.0022858,90.4264283,1),(4,'Gopalganj',23.0050857,89.8266059,1),(5,'Jamalpur',24.937533,89.937775,7),(6,'Kishoreganj',24.444937,90.776575,1),(7,'Madaripur',23.164102,90.1896805,1),(8,'Manikganj',23.8644,90.0047,1),(9,'Munshiganj',23.5422,90.5305,1),(10,'Mymensingh',24.7471,90.4203,7),(11,'Narayanganj',23.63366,90.496482,1),(12,'Narsingdi',23.932233,90.71541,1),(13,'Netrokona',24.870955,90.727887,7),(14,'Rajbari',23.7574305,89.6444665,1),(15,'Shariatpur',23.2423,90.4348,1),(16,'Sherpur',25.0204933,90.0152966,7),(17,'Tangail',24.2513,89.9167,1),(18,'Bogura',24.8465228,89.377755,5),(19,'Joypurhat',25.0968,89.0227,5),(20,'Naogaon',24.7936,88.9318,5),(21,'Natore',24.420556,89.000282,5),(22,'Nawabganj',24.5965034,88.2775122,1),(23,'Pabna',23.998524,89.233645,5),(24,'Rajshahi',24.3745,88.6042,5),(25,'Sirajgonj',24.4533978,89.7006815,5),(26,'Dinajpur',25.6217061,88.6354504,6),(27,'Gaibandha',25.328751,89.528088,6),(28,'Kurigram',25.805445,89.636174,6),(29,'Lalmonirhat',25.9923,89.2847,6),(30,'Nilphamari',25.931794,88.856006,6),(31,'Panchagarh',26.3411,88.5541606,6),(32,'Rangpur',25.7558096,89.244462,6),(33,'Thakurgaon',26.0336945,88.4616834,6),(34,'Barguna',22.0953,90.1121,4),(35,'Barishal',22.701,90.3535,4),(36,'Bhola',22.685923,90.648179,4),(37,'Jhalokati',22.6406,90.1987,4),(38,'Patuakhali',22.3596316,90.3298712,4),(39,'Pirojpur',22.5841,89.972,4),(40,'Bandarban',22.1953275,92.2183773,2),(41,'Brahmanbaria',23.9570904,91.1119286,2),(42,'Chandpur',23.2332585,90.6712912,2),(43,'Chattogram',22.335109,91.834073,2),(44,'Cumilla',23.4682747,91.1788135,2),(45,'Cox\'s Bazar',21.4272,92.0058,2),(46,'Feni',23.0159,91.3976,2),(47,'Khagrachari',23.119285,91.984663,2),(48,'Lakshmipur',22.942477,90.841184,2),(49,'Noakhali',22.869563,91.099398,2),(50,'Rangamati',22.7324,92.2985,2),(51,'Habiganj',24.374945,91.41553,8),(52,'Maulvibazar',24.482934,91.777417,8),(53,'Sunamganj',25.0658042,91.3950115,8),(54,'Sylhet',24.8897956,91.8697894,8),(55,'Bagerhat',22.651568,89.785938,3),(56,'Chuadanga',23.6401961,88.841841,3),(57,'Jashore',23.16643,89.2081126,3),(58,'Jhenaidah',23.5448176,89.1539213,3),(59,'Khulna',22.815774,89.568679,3),(60,'Kushtia',23.901258,89.120482,3),(61,'Magura',23.487337,89.419956,3),(62,'Meherpur',23.762213,88.631821,3),(63,'Narail',23.172534,89.512672,3),(64,'Satkhira',22.7185,89.0705,3);
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `age` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (1,'John Doe','01234567890','55'),(2,'Alice Smith','09876543210','25'),(3,'Bob Johnson','05551234567','36'),(4,'Emily Brown','05559876543','88'),(5,'Michael Wilson','09998887776','63'),(6,'Emma Lee','01239874560','55'),(7,'William Taylor','07894561230','40'),(8,'Olivia Martinez','09517534680','52'),(9,'James Anderson','04561237890','93'),(10,'Sophia Garcia','03692581470','27'),(11,'Alexander Hernandez','07539518520','45'),(12,'Mia Lopez','03216549870','27'),(13,'Ethan Perez','06543219870','33'),(14,'Charlotte Gonzalez','02589631470','45'),(15,'Daniel Ramirez','07896541230','60'),(16,'Amelia Torres','09638527410','70'),(17,'Matthew Flores','01472583690','90'),(18,'Harper Diaz','01593578520','90'),(19,'Henry Rivera','03579514560','61'),(20,'Ava Cruz','08529637410','99'),(21,'Abul Kalam','01711253964','55'),(22,'Bashir Ahmed','01711253965','45'),(23,'Chowdhury Rahman','01711253966','60'),(24,'Dilara Khan','01711253967','50'),(25,'Emran Hossain','01711253968','35'),(26,'Farhana Begum','01711253969','40'),(27,'Golam Mostafa','01711253970','70'),(28,'Hasan Mahmud','01711253971','32'),(29,'Irfan Ahmed','01711253972','28'),(30,'Jahanara Khatun','01711253973','25'),(31,'Kabir Uddin','01711253974','65'),(32,'Laila Sultana','01711253975','37'),(33,'Mamun Rashid','01711253976','41'),(34,'Nabila Akter','01711253977','23'),(35,'Omar Faruk','01711253978','48'),(36,'Parveen Akhter','01711253979','54'),(37,'Quadir Hossain','01711253980','31'),(38,'Rafiq Islam','01711253981','52'),(39,'Selina Begum','01711253982','29'),(40,'Tariq Aziz','01711253983','27'),(41,'Umme Habiba','01711253984','36'),(42,'Vaskar Das','01711253985','44'),(43,'Wasim Akram','01711253986','38'),(44,'Xenia Rahman','01711253987','42'),(45,'Yasir Ali','01711253988','50'),(46,'Zakia Khatun','01711253989','39'),(47,'Asif Rahman','01711253990','26'),(48,'Bina Rani','01711253991','47'),(49,'Chanchal Kumar','01711253992','49'),(50,'Dilruba Zaman','01711253993','33'),(51,'Ehsanul Karim','01711253994','53'),(52,'Farid Hossain','01711253995','58'),(53,'Gulshan Ara','01711253996','40'),(54,'Hafizur Rahman','01711253997','62'),(55,'Imran Khan','01711253998','34'),(56,'Jannatul Ferdous','01711253999','46'),(57,'Kamal Hossain','01711254000','57'),(58,'Lubna Hasan','01711254001','45'),(59,'Mahbub Alam','01711254002','60'),(60,'Nusrat Jahan','01711254003','55'),(61,'Obaidul Haque','01711254004','28'),(62,'Parvez Khan','01711254005','37'),(63,'Qamrul Islam','01711254006','41'),(64,'Rabeya Begum','01711254007','52'),(65,'Shamim Ahmed','01711254008','63'),(66,'Tania Islam','01711254009','29'),(67,'Umme Salma','01711254010','35'),(68,'Vincent Gomez','01711254011','43');
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prescription_drugs`
--

DROP TABLE IF EXISTS `prescription_drugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prescription_drugs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `prescription_id` int DEFAULT NULL,
  `drug_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prescription_id` (`prescription_id`),
  KEY `drug_id` (`drug_id`),
  CONSTRAINT `prescription_drugs_ibfk_1` FOREIGN KEY (`prescription_id`) REFERENCES `prescriptions` (`id`),
  CONSTRAINT `prescription_drugs_ibfk_2` FOREIGN KEY (`drug_id`) REFERENCES `drugs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=364 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prescription_drugs`
--

LOCK TABLES `prescription_drugs` WRITE;
/*!40000 ALTER TABLE `prescription_drugs` DISABLE KEYS */;
INSERT INTO `prescription_drugs` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,4),(5,2,5),(6,2,6),(7,3,7),(8,3,8),(9,3,9),(10,4,10),(11,4,11),(12,4,12),(13,5,13),(14,5,14),(15,5,15),(16,6,16),(17,6,17),(18,6,18),(19,7,19),(20,7,20),(21,7,21),(22,8,22),(23,8,23),(24,8,24),(25,9,25),(26,9,26),(27,9,27),(28,10,28),(29,10,29),(30,10,30),(31,11,31),(32,11,32),(33,11,33),(34,12,34),(35,12,35),(36,12,36),(37,13,37),(38,13,38),(39,13,39),(40,14,40),(41,14,41),(42,14,42),(43,15,43),(44,15,44),(45,15,45),(46,16,46),(47,16,47),(48,16,48),(49,17,49),(50,17,50),(51,17,51),(52,18,52),(53,18,53),(54,18,54),(55,19,55),(56,19,56),(57,19,57),(58,20,58),(59,20,59),(60,20,60),(61,21,61),(62,21,62),(63,21,63),(64,22,64),(65,22,65),(66,22,66),(67,23,67),(68,23,68),(69,23,69),(70,24,70),(71,24,71),(72,24,72),(73,25,73),(74,25,74),(75,25,75),(76,26,76),(77,26,77),(78,26,78),(79,27,79),(80,27,80),(81,27,81),(82,28,82),(83,28,83),(84,28,84),(85,29,85),(86,29,86),(87,30,1),(88,30,4),(89,30,7),(90,31,10),(91,31,13),(92,31,16),(93,32,19),(94,32,22),(95,32,25),(96,33,28),(97,33,31),(98,33,34),(99,34,37),(100,34,40),(101,34,43),(102,35,46),(103,35,49),(104,35,52),(105,36,55),(106,36,58),(107,36,61),(108,37,64),(109,37,67),(110,37,70),(111,38,73),(112,38,76),(113,38,79),(114,39,82),(115,39,85),(116,2,2),(117,2,5),(118,2,8),(119,3,11),(120,3,14),(121,3,17),(122,4,20),(123,4,23),(124,4,26),(125,5,29),(126,5,32),(127,5,35),(128,6,38),(129,6,41),(130,6,44),(131,7,47),(132,7,50),(133,7,53),(134,8,56),(135,8,59),(136,8,62),(137,9,65),(138,9,68),(139,9,71),(140,10,74),(141,10,77),(142,10,80),(143,11,83),(144,11,86),(145,12,1),(146,12,4),(147,12,7),(148,13,10),(149,13,13),(150,13,16),(151,14,19),(152,14,22),(153,14,25),(154,15,28),(155,15,31),(156,15,34),(157,16,37),(158,16,40),(159,16,43),(160,17,46),(161,17,49),(162,17,52),(163,18,55),(164,18,58),(165,18,61),(166,19,64),(167,19,67),(168,19,70),(169,20,73),(170,20,76),(171,20,79),(172,21,82),(173,21,85),(174,22,2),(175,22,5),(176,22,8),(177,23,11),(178,23,14),(179,23,17),(180,24,20),(181,24,23),(182,24,26),(183,25,29),(184,25,32),(185,25,35),(186,26,38),(187,26,41),(188,26,44),(189,27,47),(190,27,50),(191,27,53),(192,28,56),(193,28,59),(194,28,62),(195,29,65),(196,29,68),(197,29,71),(198,30,74),(199,30,77),(200,30,80),(201,31,83),(202,31,86),(203,40,1),(204,41,2),(205,42,3),(206,43,4),(207,44,5),(208,45,6),(209,46,7),(210,47,8),(211,48,9),(212,49,10),(213,50,11),(214,51,12),(215,52,13),(216,53,14),(217,54,15),(218,55,16),(219,56,17),(220,57,18),(221,58,19),(222,59,20),(223,60,21),(224,61,22),(225,62,23),(226,63,24),(227,64,25),(228,65,26),(229,66,27),(230,67,28),(231,68,29),(232,69,30),(233,70,31),(234,71,32),(235,72,33),(236,73,34),(237,74,35),(238,75,36),(239,76,37),(240,77,38),(241,78,39),(242,79,40),(243,80,41),(244,81,42),(245,82,43),(246,83,44),(247,84,45),(248,85,46),(249,86,47),(250,87,48),(251,88,49),(252,89,50),(253,90,51),(254,91,52),(255,92,53),(256,93,54),(257,94,55),(258,95,56),(259,96,57),(260,97,58),(261,98,59),(262,99,60),(263,100,61),(264,101,62),(265,102,63),(266,103,64),(267,104,65),(268,105,66),(269,106,67),(270,107,68),(271,108,69),(272,109,70),(273,110,71),(274,111,72),(275,112,73),(276,113,74),(277,114,75),(278,115,76),(279,116,77),(280,117,78),(281,118,79),(282,119,80),(283,120,81),(284,121,82),(285,122,83),(286,123,84),(287,124,85),(288,125,86),(289,126,1),(290,127,2),(291,128,3),(292,129,4),(293,130,5),(294,131,6),(295,132,7),(296,133,8),(297,134,9),(298,135,10),(299,136,11),(300,137,12),(301,138,13),(302,139,14),(303,140,15),(304,141,16),(305,142,17),(306,143,18),(307,144,19),(308,145,20),(309,146,21),(310,147,22),(311,148,23),(312,149,24),(313,150,25),(314,151,26),(315,152,27),(316,153,28),(317,154,29),(318,155,30),(319,156,31),(320,157,32),(321,158,33),(322,159,34),(323,160,35),(324,161,36),(325,162,37),(326,163,38),(327,164,39),(328,165,40),(329,166,41),(330,167,42),(331,168,43),(332,169,44),(333,170,45),(334,171,46),(335,172,47),(336,173,48),(337,174,49),(338,175,50),(339,176,51),(340,177,52),(341,178,53),(342,179,54),(343,180,55),(344,181,56),(345,182,57),(346,183,58),(347,184,59),(348,185,60),(349,186,61),(350,187,62),(351,188,63),(352,189,64),(353,190,65),(354,191,66),(355,192,67),(356,193,68),(357,194,69),(358,195,70),(359,196,71),(360,197,72),(361,198,73),(362,199,74),(363,200,75);
/*!40000 ALTER TABLE `prescription_drugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prescriptions`
--

DROP TABLE IF EXISTS `prescriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prescriptions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `doctor_id` int DEFAULT NULL,
  `patient_id` int DEFAULT NULL,
  `location_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `doctor_id` (`doctor_id`),
  KEY `patient_id` (`patient_id`),
  KEY `location_id` (`location_id`),
  CONSTRAINT `prescriptions_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`),
  CONSTRAINT `prescriptions_ibfk_2` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`),
  CONSTRAINT `prescriptions_ibfk_3` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prescriptions`
--

LOCK TABLES `prescriptions` WRITE;
/*!40000 ALTER TABLE `prescriptions` DISABLE KEYS */;
INSERT INTO `prescriptions` VALUES (1,1,1,1),(2,1,2,2),(3,1,3,3),(4,1,4,4),(5,1,5,5),(6,2,6,6),(7,2,7,7),(8,2,8,8),(9,2,9,9),(10,2,10,10),(11,3,11,11),(12,3,12,12),(13,3,13,13),(14,3,14,14),(15,3,15,15),(16,4,16,16),(17,4,17,17),(18,4,18,18),(19,4,19,19),(20,4,20,20),(21,5,21,21),(22,5,22,22),(23,5,23,23),(24,5,24,24),(25,5,25,25),(26,6,26,26),(27,6,27,27),(28,6,28,28),(29,6,29,29),(30,6,30,30),(31,7,31,31),(32,7,32,32),(33,7,33,33),(34,7,34,34),(35,7,35,35),(36,8,36,36),(37,8,37,37),(38,8,38,38),(39,8,39,39),(40,8,40,40),(41,9,41,41),(42,9,42,42),(43,9,43,43),(44,9,44,44),(45,9,45,45),(46,10,46,46),(47,10,47,47),(48,10,48,48),(49,10,49,49),(50,10,50,50),(51,11,1,51),(52,11,2,52),(53,11,3,53),(54,11,4,54),(55,11,5,55),(56,12,6,56),(57,12,7,57),(58,12,8,58),(59,12,9,59),(60,12,10,60),(61,13,11,61),(62,13,12,62),(63,13,13,63),(64,13,14,64),(65,13,15,1),(66,14,16,2),(67,14,17,3),(68,14,18,4),(69,14,19,5),(70,14,20,6),(71,15,21,7),(72,15,22,8),(73,15,23,9),(74,15,24,10),(75,15,25,11),(76,16,26,12),(77,16,27,13),(78,16,28,14),(79,16,29,15),(80,16,30,16),(81,17,31,17),(82,17,32,18),(83,17,33,19),(84,17,34,20),(85,17,35,21),(86,18,36,22),(87,18,37,23),(88,18,38,24),(89,18,39,25),(90,18,40,26),(91,19,41,27),(92,19,42,28),(93,19,43,29),(94,19,44,30),(95,19,45,31),(96,20,46,32),(97,20,47,33),(98,20,48,34),(99,20,49,35),(100,20,50,36),(101,21,1,37),(102,21,2,38),(103,21,3,39),(104,21,4,40),(105,21,5,41),(106,22,6,42),(107,22,7,43),(108,22,8,44),(109,22,9,45),(110,22,10,46),(111,23,11,47),(112,23,12,48),(113,23,13,49),(114,23,14,50),(115,23,15,51),(116,24,16,52),(117,24,17,53),(118,24,18,54),(119,24,19,55),(120,24,20,56),(121,25,21,57),(122,25,22,58),(123,25,23,59),(124,25,24,60),(125,25,25,61),(126,26,26,62),(127,26,27,63),(128,26,28,64),(129,26,29,1),(130,26,30,2),(131,27,31,3),(132,27,32,4),(133,27,33,5),(134,27,34,6),(135,27,35,7),(136,28,36,8),(137,28,37,9),(138,28,38,10),(139,28,39,11),(140,28,40,12),(141,29,41,13),(142,29,42,14),(143,29,43,15),(144,29,44,16),(145,29,45,17),(146,30,46,18),(147,30,47,19),(148,30,48,20),(149,30,49,21),(150,30,50,22),(151,31,1,23),(152,31,2,24),(153,31,3,25),(154,31,4,26),(155,31,5,27),(156,32,6,28),(157,32,7,29),(158,32,8,30),(159,32,9,31),(160,32,10,32),(161,33,11,33),(162,33,12,34),(163,33,13,35),(164,33,14,36),(165,33,15,37),(166,34,16,38),(167,34,17,39),(168,34,18,40),(169,34,19,41),(170,34,20,42),(171,35,21,43),(172,35,22,44),(173,35,23,45),(174,35,24,46),(175,35,25,47),(176,36,26,48),(177,36,27,49),(178,36,28,50),(179,36,29,51),(180,36,30,52),(181,37,31,53),(182,37,32,54),(183,37,33,55),(184,37,34,56),(185,37,35,57),(186,38,36,58),(187,38,37,59),(188,38,38,60),(189,38,39,61),(190,38,40,62),(191,39,41,63),(192,39,42,64),(193,39,43,1),(194,39,44,2),(195,39,45,3),(196,40,46,4),(197,40,47,5),(198,40,48,6),(199,40,49,7),(200,40,50,8);
/*!40000 ALTER TABLE `prescriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('ROLE_USER','USER','ROLE_ADMIN') DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'farhan','jack','farhanjack','$2a$10$U5.TUCJjxbrhXwP4dN8JAu1cEM8/yNZ9N7LYvlPNvWk9xPGxUE.gy','USER'),(2,'roney','jack','roneyjack','$2a$10$c/YuwVlKVbn0lQfrxLVM1.zdR.yrEyrbRYWDh2oLY64ZWbGxogqha','USER'),(3,'jack','pritom','jackpritom','$2a$10$AWmBUDpnjIF/T2IVBMXE..xYTTl3c0hWdlZ9iYw6/eR2irY0Xo1H2','USER'),(4,'rana','pritom','ranapritom','$2a$10$uRVSkTECv/a.nl6CHErpM.DRQQWS9Q.KHoBTc582L1PA01M7tRfp.','USER'),(5,'rana','pritom','raom','$2a$10$tJiXA2MqWBH4uWCrrjmSuOJeAQF/J6t6rn4SF1F4oPnoQIkmCpgWm','USER'),(6,'rana','pritom','kolla1234','$2a$10$.vJyfImlJjelCPg0Cb1rneP5U0/rYEB8VuXvGl6g3F2W2chsbCJ3m','USER'),(7,'kala','pritom','kolla','$2a$10$Ed7KwO7XT1C2An5GsHWNr.E6HWxo5RSuUUMy9eLKRrUKCQU0mssti','USER'),(8,'kala','pritom','kallks3','$2a$10$xRk1gCPwOnrVactC.gZU4O0dJN5dBoLimcg73CBOA3UekPC.K4dey','USER'),(9,'kala','pritom','gfgfg','$2a$10$/UAylFNcwVNyAkkvH6/rDuZLxPc9Q8ogreSinABb2locToICJ34sa','USER'),(10,'kala','pritom','jfjfjf','$2a$10$gWWazAf3DNWgx/I5sm6bIuPvmnH1k5s1rcpxgyNGvkr5d/1h8Db2u','USER'),(11,'rko','jack','rko123','$2a$10$QsknzCHVuih66sMfRuRxT.eAkpq/YvD2HvVYtGkrCwskfOPBSCq4W','USER'),(12,'rko','jack','rkojack','$2a$10$Z1ilcjsjxmpV125nlDavYO.HgAt2ytmQLSjj6tobJURqfe51drdjC','USER'),(13,'roney','khan','roneykhan','$2a$10$.lt/7RBmDVvbLco33sZtVOXSd1hqr0UEtNV29IEzkbilpEAa2dyQC','USER'),(14,'roney','khan','rjf123','$2a$10$DFd4ycqzB0uL8v5hlhZhaOATrpSZZn42lXrdY2ckEoJqRIwksZO.S','USER'),(15,'jalal','khan','jalal','$2a$10$gGP/Qdrz57vsJp6L2Q7mruDTCHI.akn2vOlSm92Q2EjwSltzenili','USER'),(16,'zakir','khan','zakir123','$2a$10$cxBmEMSm94qWKJpzF0exd.piZBzY0arbTSb/Hb2xnX88T0gVbgdN.','USER'),(19,'zakir','khan','tamim123','$2a$10$i/ahrY5b44mnUEEWIA49GucyKm5LdgySVMtqunjLeELW899hv/HSO','USER'),(20,'zakir','khan','kamal123','$2a$10$nOE2iTfjV92hq2T.ucE.LO8mHGwHh4V5LAG5XV22Fjw8GNUIdecRu','USER'),(22,'zakir','khan','sahin123','$2a$10$ExaBnJfDGAP6RZLg9fjIIuo4QMRl9jwht1D4DGq58UAsgIgmXzzsy','USER'),(23,'zakir','khan','lackman123','$2a$10$PlJKhNt6JquNlOl3MUHd6eWGOKlTTZ/lgflQvnMai.rk9wV4YLMS2','USER'),(24,'zakir','khan','rakib1234566','$2a$10$/bXWy//e5ujKrMaOkru/BusPrhg11UbRDGnNpJ6mZxHeAvGlcCOcS','USER'),(25,'zakir','khan','akibul123','$2a$10$1W0lciHEzX0pU/bZvTDTb.b0oPE8m7clUlJzAGT/tp8CIxwfqSRTi','USER'),(26,'zakir','khan','jakir123','$2a$10$6TaRE2KUnV5m5b3usesn6OjZAuDiwgMUSwYf5r.6IKnxcGO4l37ne','USER'),(27,'sawon','khan','sawon123','$2a$10$P3503afKtZHa6Mwhp3.j/.CWOQ5e1H7V6XXfTaEEZ/uAvLsW0h.Da','USER'),(28,'Square','Health','square','$2a$10$xJFbp3MtZFvr/cAV0UC2iONGB9kEq6bSJCSqN2FboCNYYoD4BgIDm','USER');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendors`
--

DROP TABLE IF EXISTS `vendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendors`
--

LOCK TABLES `vendors` WRITE;
/*!40000 ALTER TABLE `vendors` DISABLE KEYS */;
INSERT INTO `vendors` VALUES (1,'ACI Limited'),(2,'ACME Laboratories Ltd'),(3,'Beximco Pharmaceuticals Ltd'),(4,'Square Pharmaceuticals PLC'),(5,'Renata Limited'),(6,'Alco Pharma Ltd'),(7,'Allied Pharmaceuticals-Ltd'),(8,'Ambee Pharmaceuticals-Ltd'),(9,'Amico Laboratories-Ltd'),(10,'Amulet Pharmaceuticals-Ltd'),(11,'APC Pharma Ltd');
/*!40000 ALTER TABLE `vendors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-02 17:16:00
