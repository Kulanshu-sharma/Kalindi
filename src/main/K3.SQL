-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: KALINDI_DB
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `college_tbl`
--

DROP TABLE IF EXISTS `college_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `college_tbl` (
  `COLLEGE_ID` int NOT NULL,
  `COLLEGE_NAME` varchar(100) NOT NULL,
  `ADDRESS` varchar(200) DEFAULT NULL,
  `PRINCIPAL` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`COLLEGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `college_tbl`
--

LOCK TABLES `college_tbl` WRITE;
/*!40000 ALTER TABLE `college_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `college_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_tbl`
--

DROP TABLE IF EXISTS `course_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_tbl` (
  `COURSE_ID` int NOT NULL,
  `DEPARTMENT_ID` int DEFAULT NULL,
  `COURSE_NAME` varchar(100) DEFAULT NULL,
  `NO_OF_STUDENTS` int DEFAULT NULL,
  PRIMARY KEY (`COURSE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_tbl`
--

LOCK TABLES `course_tbl` WRITE;
/*!40000 ALTER TABLE `course_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `day_tbl`
--

DROP TABLE IF EXISTS `day_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `day_tbl` (
  `DAY_ID` int NOT NULL,
  `DAY_NAME` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`DAY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `day_tbl`
--

LOCK TABLES `day_tbl` WRITE;
/*!40000 ALTER TABLE `day_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `day_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department_tbl`
--

DROP TABLE IF EXISTS `department_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department_tbl` (
  `DEPARTMENT_ID` int NOT NULL,
  `DEPARTMENT_NAME` varchar(100) NOT NULL,
  `HOD` varchar(50) DEFAULT NULL,
  `NO_OF_TEACHERS` int DEFAULT NULL,
  `NON_TEACHING_STAFF` int DEFAULT NULL,
  `LOCATION` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`DEPARTMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department_tbl`
--

LOCK TABLES `department_tbl` WRITE;
/*!40000 ALTER TABLE `department_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `department_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slot_tbl`
--

DROP TABLE IF EXISTS `slot_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slot_tbl` (
  `SLOT_ID` int NOT NULL,
  `DURATION` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`SLOT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slot_tbl`
--

LOCK TABLES `slot_tbl` WRITE;
/*!40000 ALTER TABLE `slot_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `slot_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `STUDENT_ID` int NOT NULL,
  `STUDENT_NAME` varchar(50) NOT NULL,
  `COLLEGE_ROLLNO` int NOT NULL,
  `ENROLLMENT_NO` varchar(20) NOT NULL,
  `EMAIL_ID` varchar(60) DEFAULT NULL,
  `COURSE_NAME` varchar(100) DEFAULT NULL,
  `DATE_OF_ADMISSION` date DEFAULT NULL,
  `YEAR` smallint DEFAULT NULL,
  `SEMESTER` smallint DEFAULT NULL,
  `PROFILE_PICTURE` longblob,
  PRIMARY KEY (`ENROLLMENT_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject_tbl`
--

DROP TABLE IF EXISTS `subject_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject_tbl` (
  `SUBJECT_ID` int NOT NULL,
  `SUBJECT_NAME` varchar(100) DEFAULT NULL,
  `NO_OF_HOURS` int DEFAULT NULL,
  `NO_OF_UNITS` int DEFAULT NULL,
  PRIMARY KEY (`SUBJECT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject_tbl`
--

LOCK TABLES `subject_tbl` WRITE;
/*!40000 ALTER TABLE `subject_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `subject_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher_tbl`
--

DROP TABLE IF EXISTS `teacher_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher_tbl` (
  `TEACHER_ID` int NOT NULL,
  `TEACHER_NAME` varchar(50) DEFAULT NULL,
  `DESIGNATION` varchar(50) DEFAULT NULL,
  `SALUTION` varchar(10) DEFAULT NULL,
  `DEPARTMENT_ID` int DEFAULT NULL,
  `EMAIL_ID` varchar(60) DEFAULT NULL,
  `PHONE_NO` char(10) DEFAULT NULL,
  `QUALIFICATIONS` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`TEACHER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher_tbl`
--

LOCK TABLES `teacher_tbl` WRITE;
/*!40000 ALTER TABLE `teacher_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `teacher_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timetable`
--

DROP TABLE IF EXISTS `timetable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `timetable` (
  `SLOT_ID` int DEFAULT NULL,
  `DAY_ID` int DEFAULT NULL,
  `COLLEGE_ID` int DEFAULT NULL,
  `DEPARTMENT_ID` int DEFAULT NULL,
  `COURSE_ID` int DEFAULT NULL,
  `SEMESTER_ID` int NOT NULL,
  `GROUP_ID` int DEFAULT NULL,
  `TEACHER_ID` int DEFAULT NULL,
  `SUBJECT_ID` int DEFAULT NULL,
  `LAB_TUT` smallint DEFAULT NULL,
  `LOCATION` varchar(50) DEFAULT NULL,
  `MODE` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timetable`
--

LOCK TABLES `timetable` WRITE;
/*!40000 ALTER TABLE `timetable` DISABLE KEYS */;
/*!40000 ALTER TABLE `timetable` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-27 23:59:15
