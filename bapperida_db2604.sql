-- MySQL dump 10.13  Distrib 9.6.0, for macos26.2 (arm64)
--
-- Host: localhost    Database: opera_ink_db
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_expiration_index` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_locks_expiration_index` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MASTER_BIDANG`
--

DROP TABLE IF EXISTS `MASTER_BIDANG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MASTER_BIDANG` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NAMA_BIDANG` varchar(150) NOT NULL,
  `FLAG_ACTIVE` tinyint(1) DEFAULT '1',
  `LOG_ENTRY_NAME` varchar(100) DEFAULT NULL,
  `LOG_ENTRY_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LOG_UPDATE_NAME` varchar(100) DEFAULT NULL,
  `LOG_UPDATE_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MASTER_BIDANG`
--

LOCK TABLES `MASTER_BIDANG` WRITE;
/*!40000 ALTER TABLE `MASTER_BIDANG` DISABLE KEYS */;
INSERT INTO `MASTER_BIDANG` VALUES (1,'BIDANG P2EPD',1,NULL,'2026-04-01 22:32:32',NULL,'2026-04-01 22:46:52'),(2,'BIDANG PPM',1,NULL,'2026-04-01 22:32:32',NULL,'2026-04-01 22:46:52'),(3,'BIDANG PIK',1,NULL,'2026-04-01 22:32:32',NULL,'2026-04-01 22:46:52'),(4,'SUBBAGIAN PERENCANAAN',1,NULL,'2026-04-01 22:32:32',NULL,'2026-04-01 22:46:52'),(5,'SUBBAGIAN KEUANGAN',1,NULL,'2026-04-01 22:32:32',NULL,'2026-04-01 22:46:52'),(6,'SUBBAGIAN UMUM DAN KEPEGAWAIAN',1,NULL,'2026-04-01 22:32:32',NULL,'2026-04-01 22:46:52'),(7,'BIDANG LITBANG',1,NULL,'2026-04-01 22:32:32',NULL,'2026-04-01 22:46:52');
/*!40000 ALTER TABLE `MASTER_BIDANG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MASTER_INDIKATOR`
--

DROP TABLE IF EXISTS `MASTER_INDIKATOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MASTER_INDIKATOR` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `INDIKATOR_UTAMA_ID` int NOT NULL,
  `KODE_INDIKATOR` varchar(50) NOT NULL,
  `NAMA_INDIKATOR` varchar(200) NOT NULL,
  `SATUAN` varchar(50) DEFAULT NULL,
  `FLAG_ACTIVE` tinyint(1) DEFAULT '1',
  `LOG_ENTRY_NAME` varchar(100) DEFAULT NULL,
  `LOG_ENTRY_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LOG_UPDATE_NAME` varchar(100) DEFAULT NULL,
  `LOG_UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `MASTER_INDIKATOR_MASTER_INDIKATOR_UTAMA_FK` (`INDIKATOR_UTAMA_ID`),
  CONSTRAINT `MASTER_INDIKATOR_MASTER_INDIKATOR_UTAMA_FK` FOREIGN KEY (`INDIKATOR_UTAMA_ID`) REFERENCES `MASTER_INDIKATOR_UTAMA` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MASTER_INDIKATOR`
--

LOCK TABLES `MASTER_INDIKATOR` WRITE;
/*!40000 ALTER TABLE `MASTER_INDIKATOR` DISABLE KEYS */;
INSERT INTO `MASTER_INDIKATOR` VALUES (1,1,'IND001','Analisis Kondisi Daerah, Permasalahan, dan Isu Strategis Pembangunan Daerah','Kegiatan',1,NULL,'2026-04-01 22:45:52',NULL,'2026-04-01 22:49:14'),(2,1,'IND002','Analisis Data dan Informasi Pemerintahan Daerah Bidang Perencanaan Pembangunan Daerah',NULL,1,NULL,'2026-04-18 00:32:44',NULL,NULL);
/*!40000 ALTER TABLE `MASTER_INDIKATOR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MASTER_INDIKATOR_UTAMA`
--

DROP TABLE IF EXISTS `MASTER_INDIKATOR_UTAMA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MASTER_INDIKATOR_UTAMA` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `PROGRAM_ID` int NOT NULL,
  `KODE_INDIKATOR_UTAMA` varchar(50) NOT NULL,
  `NAMA_INDIKATOR_UTAMA` varchar(200) NOT NULL,
  `FLAG_ACTIVE` tinyint(1) DEFAULT '1',
  `LOG_ENTRY_NAME` varchar(100) DEFAULT NULL,
  `LOG_ENTRY_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LOG_UPDATE_NAME` varchar(100) DEFAULT NULL,
  `LOG_UPDATE_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `FK_INDIKATOR_UTAMA_PROGRAM` (`PROGRAM_ID`),
  CONSTRAINT `FK_INDIKATOR_UTAMA_PROGRAM` FOREIGN KEY (`PROGRAM_ID`) REFERENCES `MASTER_PROGRAM` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MASTER_INDIKATOR_UTAMA`
--

LOCK TABLES `MASTER_INDIKATOR_UTAMA` WRITE;
/*!40000 ALTER TABLE `MASTER_INDIKATOR_UTAMA` DISABLE KEYS */;
INSERT INTO `MASTER_INDIKATOR_UTAMA` VALUES (1,1,'IU001','Penyusunan Perencanaan dan Pendanaan',1,NULL,'2026-04-01 22:39:16',NULL,'2026-04-18 01:43:01'),(2,1,'IU002','Analisis Data dan Informasi Pemerintahan Daerah Bidang Perencanaan Pembangunan Daerah',1,NULL,'2026-04-18 01:43:00',NULL,NULL),(3,2,'IU003','Pengendalian, Evaluasi dan Pelaporan Bidang Perencanaan Pembangunan Daerah',1,NULL,'2026-04-18 01:46:26',NULL,NULL);
/*!40000 ALTER TABLE `MASTER_INDIKATOR_UTAMA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MASTER_JENIS_KEGIATAN`
--

DROP TABLE IF EXISTS `MASTER_JENIS_KEGIATAN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MASTER_JENIS_KEGIATAN` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NAMA_KEGIATAN` varchar(250) NOT NULL,
  `FLAG_ACTIVE` tinyint DEFAULT '1',
  `LOG_ENTRY_NAME` varchar(50) DEFAULT NULL,
  `LOG_ENTRY_DATE` datetime DEFAULT NULL,
  `LOG_UPDATE_NAME` varchar(50) DEFAULT NULL,
  `LOG_UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MASTER_JENIS_KEGIATAN`
--

LOCK TABLES `MASTER_JENIS_KEGIATAN` WRITE;
/*!40000 ALTER TABLE `MASTER_JENIS_KEGIATAN` DISABLE KEYS */;
INSERT INTO `MASTER_JENIS_KEGIATAN` VALUES (1,'Rapat Koordinasi',1,'SYSTEM','2026-04-18 04:24:28',NULL,NULL),(2,'Pembuatan SK Tim',1,'SYSTEM','2026-04-18 04:24:28',NULL,NULL),(3,'Sosialisasi',1,'SYSTEM','2026-04-18 04:24:28',NULL,NULL),(4,'Penyelarasan dengan Provinsi',1,'SYSTEM','2026-04-18 04:24:28',NULL,NULL);
/*!40000 ALTER TABLE `MASTER_JENIS_KEGIATAN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MASTER_PERIODE`
--

DROP TABLE IF EXISTS `MASTER_PERIODE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MASTER_PERIODE` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NAMA_PERIODE` varchar(100) NOT NULL,
  `START_DATE` datetime NOT NULL,
  `END_DATE` datetime NOT NULL,
  `STATUS` enum('OPEN','LOCKED') DEFAULT 'OPEN',
  `FLAG_ACTIVE` tinyint(1) DEFAULT '1',
  `LOG_ENTRY_NAME` varchar(100) DEFAULT NULL,
  `LOG_ENTRY_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LOG_UPDATE_NAME` varchar(100) DEFAULT NULL,
  `LOG_UPDATE_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MASTER_PERIODE`
--

LOCK TABLES `MASTER_PERIODE` WRITE;
/*!40000 ALTER TABLE `MASTER_PERIODE` DISABLE KEYS */;
INSERT INTO `MASTER_PERIODE` VALUES (1,'2025','2025-01-01 00:00:00','2025-12-31 00:00:00','LOCKED',0,NULL,'2026-04-01 22:33:18','Admin','2026-04-15 17:49:31'),(2,'2026','2026-01-01 00:00:00','2026-12-31 00:00:00','OPEN',1,NULL,'2026-04-01 22:33:18','Admin','2026-04-15 17:49:19');
/*!40000 ALTER TABLE `MASTER_PERIODE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MASTER_PROGRAM`
--

DROP TABLE IF EXISTS `MASTER_PROGRAM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MASTER_PROGRAM` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `KODE_PROGRAM` varchar(50) NOT NULL,
  `NAMA_PROGRAM` varchar(255) DEFAULT NULL,
  `FLAG_ACTIVE` tinyint DEFAULT '1',
  `LOG_ENTRY_NAME` varchar(100) DEFAULT NULL,
  `LOG_ENTRY_DATE` datetime DEFAULT NULL,
  `LOG_UPDATE_NAME` varchar(100) DEFAULT NULL,
  `LOG_UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MASTER_PROGRAM`
--

LOCK TABLES `MASTER_PROGRAM` WRITE;
/*!40000 ALTER TABLE `MASTER_PROGRAM` DISABLE KEYS */;
INSERT INTO `MASTER_PROGRAM` VALUES (1,'PRG001','PROGRAM PERENCANAAN, PENGENDALIAN DAN EVALUASI PEMBANGUNAN DAERAH',1,NULL,NULL,NULL,NULL),(2,'PRG002','PROGRAM KOORDINASI DAN SINKRONISASI PERENCANAAN PEMBANGUNAN DAERAH',1,NULL,NULL,NULL,NULL),(3,'PRG003','PROGRAM PENUNJANG URUSAN PEMERINTAHAN DAERAH KABUPATEN/KOTA',1,NULL,NULL,NULL,NULL),(4,'PRG004','PROGRAM PENELITIAN DAN PENGEMBANGAN DAERAH',1,NULL,NULL,NULL,NULL),(5,'PRG005','PROGRAM RISET DAN INOVASI DAERAH',1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `MASTER_PROGRAM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
INSERT INTO `personal_access_tokens` VALUES (1,'App\\Models\\User',1,'api-token','eef9d669400dba177fff31955db67fa2834314ee2266500b5b58daf2f7b234bf','[\"*\"]','2026-04-08 08:38:20',NULL,'2026-04-08 08:25:29','2026-04-08 08:38:20'),(2,'App\\Models\\User',1,'api-token','dcb466bf973da7eaa02885d18a058258aebb15de006fede7323d033ce968d3c3','[\"*\"]','2026-04-11 08:27:18',NULL,'2026-04-08 08:51:24','2026-04-11 08:27:18'),(3,'App\\Models\\User',1,'api-token','cc796d988b04c70ece4d85c3ea650efb686eb10dab4b6eea2a3cb98c6f94774e','[\"*\"]',NULL,NULL,'2026-04-11 07:05:49','2026-04-11 07:05:49'),(4,'App\\Models\\User',1,'api-token','1f5f9bee819594087ad0d68c9ef3f9e7fa5d2f9c9182058daec0fbecf914658c','[\"*\"]',NULL,NULL,'2026-04-11 07:06:00','2026-04-11 07:06:00'),(5,'App\\Models\\User',1,'api-token','0210e4c87f3be33f2d984f442e3aa1d980872533c0485a00033d1f202db88226','[\"*\"]','2026-04-11 07:20:44',NULL,'2026-04-11 07:07:35','2026-04-11 07:20:44'),(6,'App\\Models\\User',1,'api-token','0de401afb4e6a481e4e24ccb4e756ef6f7e55c8c81d5558ef9814074e72101c5','[\"*\"]',NULL,NULL,'2026-04-13 06:42:43','2026-04-13 06:42:43'),(7,'App\\Models\\User',1,'api-token','7311d1db3976c23bb02e98d08b322f94261fb08cc0daf8041e84443a59c93db2','[\"*\"]','2026-04-13 06:46:13',NULL,'2026-04-13 06:42:50','2026-04-13 06:46:13'),(10,'App\\Models\\User',1,'api-token','a47b61492cb527f49fc30e61594107c786788549d396c54dbc6bf17a613e398f','[\"*\"]','2026-04-15 02:16:36',NULL,'2026-04-14 03:59:26','2026-04-15 02:16:36'),(11,'App\\Models\\User',1,'api-token','c840421e3ed52aca9b021506c233e9d7880f1b8d04855b43736efee9884eaa70','[\"*\"]','2026-04-15 09:52:30',NULL,'2026-04-15 08:56:03','2026-04-15 09:52:30'),(12,'App\\Models\\User',1,'api-token','74644e679f90e35ab79f9b3b4daa416d76296e803c969f540d531b7b401c945a','[\"*\"]','2026-04-22 07:21:44',NULL,'2026-04-16 06:49:11','2026-04-22 07:21:44'),(13,'App\\Models\\User',1,'api-token','e526e305c63c992aa12c75c17b03c14a9da2d678ffd21ae67a025cb65558092f','[\"*\"]','2026-04-16 07:15:38',NULL,'2026-04-16 07:15:21','2026-04-16 07:15:38'),(14,'App\\Models\\User',1,'api-token','2ecd0fd1c74bf9e1e106286a450bc8518f09296b1a15b01d73ecf8c899f13a0b','[\"*\"]','2026-04-22 07:24:23',NULL,'2026-04-17 07:31:30','2026-04-22 07:24:23'),(15,'App\\Models\\User',1,'api-token','eb4054549903c5f0abb4cf6dd1bf9c7ab4bc87ad473a51534b15347119f82f61','[\"*\"]','2026-04-17 08:19:53',NULL,'2026-04-17 08:17:39','2026-04-17 08:19:53'),(16,'App\\Models\\User',1,'api-token','7f8110ec058093d6afd1b056a81149be67720789568a40158a5b22de18c5d703','[\"*\"]','2026-04-17 09:06:40',NULL,'2026-04-17 08:35:48','2026-04-17 09:06:40'),(17,'App\\Models\\User',1,'api-token','f92b5ed1603caad7031f239e2214cd897529acaee08494a93ea8318191aac78c','[\"*\"]','2026-04-18 10:10:58',NULL,'2026-04-18 04:39:43','2026-04-18 10:10:58'),(19,'App\\Models\\User',1,'api-token','c4a31ceb66d78ec70f30beec7e858b0a4b72bf6ddf3a0019255dbd2f24e22845','[\"*\"]','2026-04-19 08:34:57',NULL,'2026-04-19 08:27:14','2026-04-19 08:34:57'),(21,'App\\Models\\User',1,'api-token','370c71a716309039a5914f2283f920253519f097dd0d5b540e163d2c0df2ca4f','[\"*\"]','2026-04-22 06:02:15',NULL,'2026-04-22 05:49:45','2026-04-22 06:02:15'),(22,'App\\Models\\User',1,'api-token','71dc697b1506c861ae2b08dfb81061661a06c5e62c1d9eaa58db5b88ffdffd59','[\"*\"]','2026-04-22 23:58:23',NULL,'2026-04-22 06:02:07','2026-04-22 23:58:23'),(23,'App\\Models\\User',1,'api-token','65cf97a7efe1a9347488311ffe6c001a607214a95baccf90f205bf798e6b4c31','[\"*\"]',NULL,NULL,'2026-04-22 06:24:44','2026-04-22 06:24:44'),(24,'App\\Models\\User',1,'api-token','514bccaf1f9a2f8bf3714cf7140712f1c8fd184777f7ce3d9a3c6633d817e498','[\"*\"]','2026-04-26 07:17:53',NULL,'2026-04-22 07:55:06','2026-04-26 07:17:53'),(25,'App\\Models\\User',1,'api-token','2a77fe6b5e83c62de43b48c11953014b99d1a816a81f883702be11ca7e4e59ec','[\"*\"]',NULL,NULL,'2026-04-22 07:56:31','2026-04-22 07:56:31'),(26,'App\\Models\\User',1,'api-token','2963e0650e510bbdb00be6ce535fd7a55f39cc1163e9fc5ff74412d21646d570','[\"*\"]','2026-04-26 07:41:23',NULL,'2026-04-23 08:11:24','2026-04-26 07:41:23');
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('0XcoosxB0tj64qykBWjEg7AyX8YYS70SNzq93dfu',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJOVVEwenV0VEdrWUFQM25hdWVkaDhPdVpyTDRSOGRONWNCcHhOdU0yIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwXC9zYW5jdHVtXC9jc3JmLWNvb2tpZSIsInJvdXRlIjoic2FuY3R1bS5jc3JmLWNvb2tpZSJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1776515688),('21pH0RbfJpzKvNk5OyrTu37SZwiUdpfkRt3obQno',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJBdHp3M0hodmFwYmc3Z3dSbkJERG1nUVZtRWl5VkNIRmlUOHhUakF5IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL2xvY2FsaG9zdDo4MDAwXC9zYW5jdHVtXC9jc3JmLWNvb2tpZSIsInJvdXRlIjoic2FuY3R1bS5jc3JmLWNvb2tpZSJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1776443748),('6esef5uZcHdpl03mr2eZ4jOM7YlTzPpEP30ahwSo',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJOREh3RDZId0M3d3hzTG14VXNaNTNDcG9KN1dCUHpjQ21VMmNCV1cwIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwXC9zYW5jdHVtXC9jc3JmLWNvb2tpZSIsInJvdXRlIjoic2FuY3R1bS5jc3JmLWNvb2tpZSJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1776515680),('6oeV6RF6VxJx3aWdvN3NLJYiLD5bXCUMtx4F6jaW',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJ6eWNBU05PWUMwakl5YXVXckJ3dTZVRmdrTGtNTlEzdnVnSHZDeDR0IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwXC9zYW5jdHVtXC9jc3JmLWNvb2tpZSIsInJvdXRlIjoic2FuY3R1bS5jc3JmLWNvb2tpZSJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1776537393),('8lJvYRLfLqutPHUOeC2RrM9VioHig3TWEAHATuvh',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJtRDMxRUJudXlGSG05dUVPV2JZZlVMOEhVaTczcHlBZ3d5OWZvYngxIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL2xvY2FsaG9zdDo4MDAwXC9zYW5jdHVtXC9jc3JmLWNvb2tpZSIsInJvdXRlIjoic2FuY3R1bS5jc3JmLWNvb2tpZSJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1776515531),('eL07TncGdjfdppzLU86vxQQ8gm8EZ0xEUxZv6gP7',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJmaXJHUmN0cG1maUw5OXVLMlNEZUhyemdSb1BiVTlVUUt0VkJlQVBFIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwXC9zYW5jdHVtXC9jc3JmLWNvb2tpZSIsInJvdXRlIjoic2FuY3R1bS5jc3JmLWNvb2tpZSJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1776865784),('g2qI6spRXwFawtYxz6tz57duINU7eCpLUpTnuH7T',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJ1dUcxR3VPdU1TRENKOUljZHFQSEloWmlYaFRCVHF5QkFsZmN4eDVxIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwXC9zYW5jdHVtXC9jc3JmLWNvb2tpZSIsInJvdXRlIjoic2FuY3R1bS5jc3JmLWNvb2tpZSJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1776515811),('gAUP75qDYnt6EbcbeTSAkk3EM7DX0YC4UbeIxaqw',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJhbHZacEd1dUo3Sko2N20xMzNiSFNRNlJhV1VzWmQ5V2daaU0zMTB1IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwIiwicm91dGUiOm51bGx9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1776356885),('hrPXgxKBT3SDZoaCSzEhaAQp0tysAYSNEpMc3QYV',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJsWVZtcFZLREwzNjc3N3dqbWlQRm54MTRFWG9yQ0tkY29OWlhlMXFuIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL2xvY2FsaG9zdDo4MDAwXC9zYW5jdHVtXC9jc3JmLWNvb2tpZSIsInJvdXRlIjoic2FuY3R1bS5jc3JmLWNvb2tpZSJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1776091814),('iLQrYyim2M07kxo1XQsVzsddDYi4nR40xX8c9d0T',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJpQnhMclNCbjNaMVlDc2E3cjQ5YVRuSmN4SXNiZ0tNZW9hT1gwaWtmIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwIiwicm91dGUiOm51bGx9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1775048361),('IR16Jh4OPaK5evuatoqiQWDbdrhW2j6QSZDx4n9S',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJla1dDMkhTRE01UmR4em44N3BZdlVIbmxodE1OcDR4czFhMVh0NTY0IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwXC9zYW5jdHVtXC9jc3JmLWNvb2tpZSIsInJvdXRlIjoic2FuY3R1bS5jc3JmLWNvb2tpZSJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1776616990),('l6dAnnxVVFfsqCiRfJoetyYUENXsLZvoSnYBgrcf',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJSMElVQWRJY3BSTWRMMkU4OW5aUVNNWTgwZ1Q4enh3RXU0UW5pU1ZkIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwXC9zYW5jdHVtXC9jc3JmLWNvb2tpZSIsInJvdXRlIjoic2FuY3R1bS5jc3JmLWNvb2tpZSJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1776960683),('o26NHnCbUH7XuD4qEjNLCzCmbfLfSiZtFSLwI6W2',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJYTnRlU2lFc2FQYTFEb000STFURktwUmx2WEw5MjJua1J2SUJhVDN4IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwXC9hcGktZG9jcyIsInJvdXRlIjpudWxsfSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==',1775666383),('o769OvzNtZMdo4M1hovXokzefEBh3WAYVdYdFZop',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJWaFdIdzlYeWI5SUJ0NlNkb0xUeEt0Y1pLejVqUU1EZ3dUY0U2aklXIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL2xvY2FsaG9zdDo4MDAwXC9zYW5jdHVtXC9jc3JmLWNvb2tpZSIsInJvdXRlIjoic2FuY3R1bS5jc3JmLWNvb2tpZSJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1776443416),('q0xh52hzfoeDhlSNMgZRvj2bHg7QWLdmHATOOS3e',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJud2Z4TEt5akZpZ0VQbmtSOHM3YUFTRGNVSjd3ajVsTTZIVGo1bkpjIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwXC9zYW5jdHVtXC9jc3JmLWNvb2tpZSIsInJvdXRlIjoic2FuY3R1bS5jc3JmLWNvb2tpZSJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1776866527),('QtLQvyYbkJGP4rb34nzaZxChTPvWTgSrP6XuivAU',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36','eyJfdG9rZW4iOiI2TUhtZ29kWmpNRFVUMDJFNGxSRkUzUzJwdXRjVElSczVUNms4V2cwIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL2xvY2FsaG9zdDo4MDAwXC9zYW5jdHVtXC9jc3JmLWNvb2tpZSIsInJvdXRlIjoic2FuY3R1bS5jc3JmLWNvb2tpZSJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1776167966),('r9oMHO2FVw4sYIsBK9LWwDdaXVmG3aGpPD0VzegI',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJqaXRmN2dQUnQ0MnBDNW03cTZBZzVFQWpPQWZxcmRjOGpMUnRlOHFEIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwXC9zYW5jdHVtXC9jc3JmLWNvb2tpZSIsInJvdXRlIjoic2FuY3R1bS5jc3JmLWNvb2tpZSJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1776515682),('rSV8xDghP4Jib2xg0uMA4lKrboAmmgTIMknFE4w3',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','eyJfdG9rZW4iOiI4bVBSM2h4U2NycFlGQktSTDR5cndUUUppWERrbXRQc3FuT1JpQ1FXIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwXC9zYW5jdHVtXC9jc3JmLWNvb2tpZSIsInJvdXRlIjoic2FuY3R1bS5jc3JmLWNvb2tpZSJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1776616034),('RYb4muzc4MmkhEz5ktaVaZI0STtlWqFh7aQzZVtE',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJReHZKczJpZVIwNGo3Y05ZMkx5VHg5UnY1R25obnJqZzlwa1hGVWlwIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwIiwicm91dGUiOm51bGx9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1775667890),('SfU19QRjkdyypxf2DyrfV7KhDPWkQcv8VLRmLxm2',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJLeHJsNmwyMEwwc0NmQlpkR3Jja2toQWN0MkhVenEySUNka3VFdFFUIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL2xvY2FsaG9zdDo4MDAwXC9zYW5jdHVtXC9jc3JmLWNvb2tpZSIsInJvdXRlIjoic2FuY3R1bS5jc3JmLWNvb2tpZSJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1776352521),('VF4GaX7JaJXwhmr7YdiuzsoTelyxKm5b0Pu40pa4',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJMRUdtQTNUajJwZ0pFdlJPb3hubEsxZWdQQVBPRnZhSjlyRTVZa2l2IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL2xvY2FsaG9zdDo4MDAwXC9zYW5jdHVtXC9jc3JmLWNvb2tpZSIsInJvdXRlIjoic2FuY3R1bS5jc3JmLWNvb2tpZSJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1776272163),('x3Qxs2dLQtW5MsRVOwObGWYV3FhdmfOksWt7KWaD',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJxazRPNWUzaERoZjY0VHhFNmtXSG5PMUR0bWFYSW8zWldpNjJiTXhWIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwXC9zYW5jdHVtXC9jc3JmLWNvb2tpZSIsInJvdXRlIjoic2FuY3R1bS5jc3JmLWNvb2tpZSJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1776515824),('xsnrQozDovcQViUuPjn7MgdrFUulJvwggHCBxuH6',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJqaG1YSHR0T0xCMzVranNLOWR6dUtaUzJaOFUzcGhaRDlJVmJkMWxpIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwIiwicm91dGUiOm51bGx9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1774774367),('zfyvk5aLpbF6VIjLrw5OkGP35om5hyT8mnwKrOsC',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJsZnR6OE1WUEw1cmJrTUgybVJDWnBVWTB2TElsWkdmcGQ2eDBNUUl4IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwXC9zYW5jdHVtXC9jc3JmLWNvb2tpZSIsInJvdXRlIjoic2FuY3R1bS5jc3JmLWNvb2tpZSJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1776515982),('ZkDBXZagQ79PHexTgrNI9dZBXDzvdNBMqvAI7LaF',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJKakIzbXFBYlVXM3FmbUhGa1QyU2dDeDhTQ3p4Y0s4Yk5NZk9iNEYwIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL2xvY2FsaG9zdDo4MDAwXC9zYW5jdHVtXC9jc3JmLWNvb2tpZSIsInJvdXRlIjoic2FuY3R1bS5jc3JmLWNvb2tpZSJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1776442659),('zvBemVCX6JLKga7NlCIj26ZXfsW5yCIF4utz27PR',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJnMWJ6a0dLNEszTnkzcnlPRzhXeDFIM21qMW1aNFpod3F0aVAyVVlRIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwIiwicm91dGUiOm51bGx9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1775919450);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TRANS_CAPAIAN_INDIKATOR`
--

DROP TABLE IF EXISTS `TRANS_CAPAIAN_INDIKATOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TRANS_CAPAIAN_INDIKATOR` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `INDIKATOR_BIDANG_ID` int NOT NULL,
  `TARGET` int DEFAULT '0',
  `REALISASI` int DEFAULT '0',
  `PERSENTASE` decimal(5,2) DEFAULT '0.00',
  `TOTAL_KEGIATAN` int DEFAULT '0',
  `LAST_CALCULATE_DATE` datetime DEFAULT NULL,
  `FLAG_ACTIVE` tinyint(1) DEFAULT '1',
  `LOG_ENTRY_NAME` varchar(100) DEFAULT NULL,
  `LOG_ENTRY_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LOG_UPDATE_NAME` varchar(100) DEFAULT NULL,
  `LOG_UPDATE_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_CAPAIAN_INDIKATOR` (`INDIKATOR_BIDANG_ID`),
  KEY `FK_CAPAIAN_TIB` (`INDIKATOR_BIDANG_ID`),
  CONSTRAINT `FK_CAPAIAN_TIB` FOREIGN KEY (`INDIKATOR_BIDANG_ID`) REFERENCES `TRANS_INDIKATOR_BIDANG` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TRANS_CAPAIAN_INDIKATOR`
--

LOCK TABLES `TRANS_CAPAIAN_INDIKATOR` WRITE;
/*!40000 ALTER TABLE `TRANS_CAPAIAN_INDIKATOR` DISABLE KEYS */;
INSERT INTO `TRANS_CAPAIAN_INDIKATOR` VALUES (1,1,19,19,100.00,19,'2026-04-17 15:38:56',1,NULL,'2026-04-01 23:13:58',NULL,'2026-04-17 23:38:56'),(2,57,10,1,10.00,1,'2026-04-18 04:40:01',1,'Admin','2026-04-17 17:32:11',NULL,'2026-04-18 12:40:01'),(3,58,10,0,0.00,0,NULL,1,'Admin','2026-04-17 17:35:23',NULL,NULL),(4,59,1,1,100.00,1,'2026-04-18 04:51:40',1,'Admin','2026-04-17 17:37:14',NULL,'2026-04-18 12:51:40'),(5,60,1,1,100.00,1,'2026-04-18 04:46:09',1,'Admin','2026-04-17 18:14:10',NULL,'2026-04-18 12:46:09'),(6,61,5,1,20.00,1,'2026-04-18 06:10:01',1,'Admin','2026-04-17 18:15:17',NULL,'2026-04-18 14:10:01'),(7,62,15,0,0.00,0,NULL,1,'Admin','2026-04-17 18:17:12',NULL,NULL),(8,63,29,2,6.90,2,'2026-04-22 15:26:15',1,'Admin','2026-04-17 18:20:24',NULL,'2026-04-22 23:26:15'),(9,64,5,2,40.00,2,'2026-04-22 15:39:48',1,'Admin','2026-04-18 14:46:27',NULL,'2026-04-22 23:39:48'),(10,65,5,0,0.00,0,NULL,1,'Admin','2026-04-26 14:00:45',NULL,NULL);
/*!40000 ALTER TABLE `TRANS_CAPAIAN_INDIKATOR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TRANS_INDIKATOR_BIDANG`
--

DROP TABLE IF EXISTS `TRANS_INDIKATOR_BIDANG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TRANS_INDIKATOR_BIDANG` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `PERIODE_ID` int NOT NULL,
  `BIDANG_ID` int NOT NULL,
  `MASTER_INDIKATOR_ID` int NOT NULL,
  `FLAG_ACTIVE` tinyint(1) DEFAULT '1',
  `LOG_ENTRY_NAME` varchar(100) DEFAULT NULL,
  `LOG_ENTRY_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LOG_UPDATE_NAME` varchar(100) DEFAULT NULL,
  `LOG_UPDATE_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UNQ_PERIODE_BIDANG_INDIKATOR` (`PERIODE_ID`,`BIDANG_ID`,`MASTER_INDIKATOR_ID`),
  KEY `FK_TIB_BIDANG` (`BIDANG_ID`),
  KEY `FK_TIB_MASTER_INDIKATOR` (`MASTER_INDIKATOR_ID`),
  KEY `idx_bidang` (`BIDANG_ID`),
  CONSTRAINT `FK_TIB_BIDANG` FOREIGN KEY (`BIDANG_ID`) REFERENCES `MASTER_BIDANG` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_TIB_MASTER_INDIKATOR` FOREIGN KEY (`MASTER_INDIKATOR_ID`) REFERENCES `MASTER_INDIKATOR` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_TIB_PERIODE` FOREIGN KEY (`PERIODE_ID`) REFERENCES `MASTER_PERIODE` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TRANS_INDIKATOR_BIDANG`
--

LOCK TABLES `TRANS_INDIKATOR_BIDANG` WRITE;
/*!40000 ALTER TABLE `TRANS_INDIKATOR_BIDANG` DISABLE KEYS */;
INSERT INTO `TRANS_INDIKATOR_BIDANG` VALUES (1,1,1,1,1,NULL,'2026-04-01 23:08:56',NULL,'2026-04-01 23:09:36'),(2,1,2,1,1,NULL,'2026-04-02 00:51:48',NULL,'2026-04-02 00:52:17'),(3,1,3,1,1,NULL,'2026-04-02 00:52:17',NULL,'2026-04-02 00:52:17'),(4,1,4,1,1,NULL,'2026-04-02 00:52:39',NULL,'2026-04-02 00:52:39'),(56,2,3,1,1,'Admin','2026-04-13 14:54:11',NULL,NULL),(57,2,5,1,1,'Admin','2026-04-17 17:32:11',NULL,NULL),(58,2,5,2,1,'Admin','2026-04-17 17:35:23',NULL,NULL),(59,2,2,2,1,'Admin','2026-04-17 17:37:14',NULL,NULL),(60,2,3,2,1,'Admin','2026-04-17 18:14:10',NULL,NULL),(61,2,4,2,1,'Admin','2026-04-17 18:15:17',NULL,NULL),(62,2,6,2,1,'Admin','2026-04-17 18:17:12',NULL,NULL),(63,2,7,2,1,'Admin','2026-04-17 18:20:24',NULL,NULL),(64,2,7,1,1,'Admin','2026-04-18 14:46:27',NULL,NULL),(65,2,6,1,1,'Admin','2026-04-26 14:00:45',NULL,NULL);
/*!40000 ALTER TABLE `TRANS_INDIKATOR_BIDANG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TRANS_INDIKATOR_DETAIL`
--

DROP TABLE IF EXISTS `TRANS_INDIKATOR_DETAIL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TRANS_INDIKATOR_DETAIL` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `INDIKATOR_BIDANG_ID` int NOT NULL,
  `JENIS_KEGIATAN` varchar(100) DEFAULT NULL,
  `TARGET` decimal(12,2) DEFAULT '0.00',
  PRIMARY KEY (`ID`),
  KEY `idx_indikator_bidang` (`INDIKATOR_BIDANG_ID`),
  CONSTRAINT `FK_DETAIL_TIB` FOREIGN KEY (`INDIKATOR_BIDANG_ID`) REFERENCES `TRANS_INDIKATOR_BIDANG` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TRANS_INDIKATOR_DETAIL`
--

LOCK TABLES `TRANS_INDIKATOR_DETAIL` WRITE;
/*!40000 ALTER TABLE `TRANS_INDIKATOR_DETAIL` DISABLE KEYS */;
INSERT INTO `TRANS_INDIKATOR_DETAIL` VALUES (1,1,'Rapat Koordinasi',10.00),(2,1,'Pembuatan SK Tim',1.00),(3,1,'Sosialisasi',5.00),(4,1,'Penyelarasan dengan Provinsi',3.00),(13,57,'Rapat Koordinasi',10.00),(14,58,'Rapat Koordinasi',10.00),(15,59,'Pembuatan SK Tim',1.00),(16,60,'Pembuatan SK Tim',1.00),(17,61,'Pembuatan SK Tim',5.00),(18,62,'Rapat Koordinasi',10.00),(19,62,'Pembuatan SK Tim',5.00),(20,63,'Rapat Koordinasi',10.00),(21,63,'Pembuatan SK Tim',5.00),(22,63,'Penyelarasan dengan Provinsi',7.00),(23,63,'Input data RKPD dan RKPD Perubahan',7.00),(24,64,'Sosialisasi',5.00),(25,65,'Pembuatan SK Tim',5.00);
/*!40000 ALTER TABLE `TRANS_INDIKATOR_DETAIL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TRANS_REALISASI_KEGIATAN`
--

DROP TABLE IF EXISTS `TRANS_REALISASI_KEGIATAN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TRANS_REALISASI_KEGIATAN` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `INDIKATOR_DETAIL_ID` int DEFAULT NULL,
  `TANGGAL_KEGIATAN` date NOT NULL,
  `KETERANGAN` text,
  `FILE_FOTO` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `LOG_ENTRY_NAME` varchar(100) DEFAULT NULL,
  `LOG_ENTRY_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LOG_UPDATE_NAME` varchar(100) DEFAULT NULL,
  `LOG_UPDATE_DATE` datetime DEFAULT NULL,
  `FLAG_ACTIVE` tinyint(1) DEFAULT '1',
  `FILE_DOCUMENT` longtext,
  PRIMARY KEY (`ID`),
  KEY `FK_REALISASI_DETAIL` (`INDIKATOR_DETAIL_ID`),
  CONSTRAINT `FK_REALISASI_DETAIL` FOREIGN KEY (`INDIKATOR_DETAIL_ID`) REFERENCES `TRANS_INDIKATOR_DETAIL` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TRANS_REALISASI_KEGIATAN`
--

LOCK TABLES `TRANS_REALISASI_KEGIATAN` WRITE;
/*!40000 ALTER TABLE `TRANS_REALISASI_KEGIATAN` DISABLE KEYS */;
INSERT INTO `TRANS_REALISASI_KEGIATAN` VALUES (5,2,'2026-03-05',NULL,NULL,NULL,'2026-04-02 00:53:26',NULL,'2026-04-02 00:53:26',1,NULL),(6,3,'2026-03-05',NULL,NULL,NULL,'2026-04-02 00:54:07',NULL,'2026-04-02 00:54:07',1,NULL),(7,3,'2026-03-09',NULL,NULL,NULL,'2026-04-02 00:54:16',NULL,'2026-04-02 00:54:16',1,NULL),(8,4,'2026-03-15',NULL,NULL,NULL,'2026-04-02 00:54:46',NULL,'2026-04-02 00:54:46',1,NULL),(26,3,'2026-04-02',NULL,NULL,NULL,'2026-04-02 01:05:18',NULL,'2026-04-02 01:05:18',1,NULL),(27,3,'2026-04-02',NULL,NULL,NULL,'2026-04-02 01:05:18',NULL,'2026-04-02 01:05:18',1,NULL),(28,3,'2026-04-02',NULL,NULL,NULL,'2026-04-02 01:05:18',NULL,'2026-04-02 01:05:18',1,NULL),(36,4,'2026-04-02',NULL,NULL,NULL,'2026-04-02 01:08:35',NULL,'2026-04-02 01:08:35',1,NULL),(37,4,'2026-04-02',NULL,NULL,NULL,'2026-04-02 01:08:35',NULL,'2026-04-02 01:08:35',1,NULL),(39,1,'2026-04-08','Kegiatan Sosialisasi','\"[\\\"realisasi\\\\\\/foto\\\\\\/ksoSBS5RqaA5rbOhVpvtwR2LFJd3skd4tcuoBIKH.png\\\"]\"',NULL,'2026-04-08 15:54:05',NULL,'2026-04-08 23:54:05',1,'realisasi/dokumen/JbxQYseloeIfSVK7vzVFYL9xGxo6AKXkNK8OJJ38.docx'),(40,1,'2026-04-08','Kegiatan Sosialisasi','\"[\\\"realisasi\\\\\\/foto\\\\\\/zX2IxxZJcWfVUS4HIsXodM1bJl5SCysr4XM3ipyM.png\\\"]\"',NULL,'2026-04-08 15:56:12',NULL,'2026-04-08 23:56:12',1,'realisasi/dokumen/ihYXXZBgJqDejVF2D81TDJb66K3j5A7zKnNzzFtu.docx'),(41,1,'2026-04-08','Kegiatan Sosialisasi','\"[\\\"realisasi\\\\\\/foto\\\\\\/Pe6vbXesHXKdjtO42rxsVQmqSdoFQ6DmPNbQqRSf.png\\\",\\\"realisasi\\\\\\/foto\\\\\\/ak7sho6fTNDcj2xTjBBaZB5e7t1jXi0Lim8WF5Yx.png\\\"]\"',NULL,'2026-04-08 15:56:15',NULL,'2026-04-08 23:56:15',1,'realisasi/dokumen/paLfBfkdD4lTz1VUx2FgpqUPrYF5n17AVbniQ3ik.docx'),(42,1,'2026-04-08','Kegiatan Sosialisasi','\"[\\\"realisasi\\\\\\/foto\\\\\\/peQLByu4ra1PbL5R9eOjOH7vja4UKF4HlyTWvgS5.png\\\",\\\"realisasi\\\\\\/foto\\\\\\/vy8karsM2Q9mgiFMfG74L3agykLSggv3Jpi676V6.png\\\"]\"','Admin','2026-04-08 16:51:43',NULL,'2026-04-09 00:51:43',1,'realisasi/dokumen/cLYecfr5wjcwDtwsSTsmnVWipsXXh2fndzoibhg7.docx'),(43,1,'2026-04-08','Kegiatan Sosialisasi','\"[\\\"realisasi\\\\\\/foto\\\\\\/zIX4XoOtLJhm9E9qH9KlyLpY4nLHagOYv122ika9.png\\\",\\\"realisasi\\\\\\/foto\\\\\\/xHdsNO8LCcVZkx8crB4kFJIfrpGmCzpaXfwkkILF.png\\\"]\"','Admin','2026-04-08 16:52:58',NULL,'2026-04-09 00:52:58',1,'realisasi/dokumen/qVToiROotP0ywOATuzNmLmcsKFk9lynV7jqfcfVh.docx'),(44,1,'2026-04-08','Kegiatan Sosialisasi','\"[\\\"realisasi\\\\\\/foto\\\\\\/u3i4z7RNorAl3HTj4PsXeoRubWk06oeEwiEm97Tf.png\\\",\\\"realisasi\\\\\\/foto\\\\\\/8NzUYm3eT1kzdFy2aHD1ZHGJjKQRmBWinalop5Fd.png\\\"]\"','Admin','2026-04-08 16:55:11',NULL,NULL,1,'realisasi/dokumen/ZSPBOt58gjJ8m3d6xFZFYfa7U8G2sy41L0NnIZmG.docx'),(48,1,'2026-04-08','Kegiatan Sosialisasi','\"[\\\"realisasi\\/foto\\/DCQ8w1vliEFybY1SDSXPA1f4D5T4kViIMdfx5IaS.png\\\",\\\"realisasi\\/foto\\/G3FLD1hgfghuwD7FgYfX9OoYanEBYZEQB11Li3Tx.png\\\"]\"','Admin','2026-04-11 16:20:50',NULL,NULL,1,'realisasi/dokumen/WbkDJBIf1mt93Nz4ewgNkE3lgnVfxtrcThX4JcsA.pdf'),(49,1,'2026-04-14','fbnz','[\"realisasi\\/foto\\/evAVGccffCAHh4R50NF1RL2nfn0JVqO3klVv6hgN.png\"]','Admin','2026-04-14 11:55:54',NULL,NULL,1,'realisasi/dokumen/JDqvY1HD4BkfF7Q9RgxnzSaAsOEStK243DJhlwk4.pdf'),(50,1,'2026-04-17','Rapat koordinasi tahap 2','\"[\\\"\\/storage\\/realisasi\\/foto\\/yrvW0xl9PL2PEv0zww59Z1AVBfyNvyYDcwdG09Rc.png\\\",\\\"\\/storage\\/realisasi\\/foto\\/4Or3tvPVhi6AAjOgy3N1nmOM9ZlfsxH5iwXS8ABr.png\\\"]\"','Admin','2026-04-17 15:36:27',NULL,NULL,1,'/storage/realisasi/dokumen/i1CExngcTKL2yhySbVQeGf6X0wTkAC0hTjJDqgSo.pdf'),(51,1,'2026-04-17','Rapat koordinasi tahap 10','\"[\\\"\\/storage\\/realisasi\\/foto\\/iqvTloQ3Yl4snZL6yVAQLWoaHX6JDinOGtVx3cSg.png\\\",\\\"\\/storage\\/realisasi\\/foto\\/HsSybvqkBIQ2d944iJkWFi3eXmJwKHQxoxp9swG7.png\\\"]\"','Admin','2026-04-17 15:38:56',NULL,NULL,1,'/storage/realisasi/dokumen/6S1M1Vc9wxNDN41ukP1FMhqq4ikMvxfCpcbfNhpS.pdf'),(52,13,'2026-04-17','Rapat koordinasi tahap 10','\"[\\\"\\/storage\\/realisasi\\/foto\\/RZeGLgGy6Nj4Bp1ZZTwZYFo1C8zOKaUB5fJZZz0G.png\\\",\\\"\\/storage\\/realisasi\\/foto\\/6pA7oUqt7gJ4OpR0GoczQWYuZj6BT2szu250JPdt.png\\\"]\"','Admin','2026-04-18 04:40:01',NULL,NULL,1,'/storage/realisasi/dokumen/SPugcl9RvY7KrvEDWkL6FZzXeVgvQqIvLrfKhmlM.pdf'),(53,16,'2026-04-17','Pembuatan SK Tim','\"[\\\"\\/storage\\/realisasi\\/foto\\/Ahq0JELFWbiPaDggU880GIXB27rmEhxTwrzAzHTe.png\\\",\\\"\\/storage\\/realisasi\\/foto\\/5p0sieCsEyIlXrFlHT4JjSEYIcUJ7uQPRZmlTWJt.png\\\"]\"','Admin','2026-04-18 04:46:09',NULL,NULL,1,'/storage/realisasi/dokumen/GQH1losq6TpYHN5rtlN87qpI4J0ZkZTVCHoSzzm8.pdf'),(54,22,'2026-04-17','Penyelarasan dengan Provinsi 1','\"[\\\"\\/storage\\/realisasi\\/foto\\/0SoLOcQLxISFEufUuspBnex6Zv1d7AgnoazhbCTI.png\\\",\\\"\\/storage\\/realisasi\\/foto\\/E81y3QfBvCB2EgkxiNI3ZC2FmSPvgogWOGxwF2VD.png\\\"]\"','Admin','2026-04-18 04:48:59',NULL,NULL,1,'/storage/realisasi/dokumen/OMtLLVyKoiZIJgVV94eSr8Wg2QAyO5zvVkAjjkO8.pdf'),(55,22,'2026-04-17','Penyelarasan dengan Provinsi 1','\"[\\\"\\/storage\\/realisasi\\/foto\\/lOSwCllpLYolRhyKvjKpQKBhlVxlHhYjAUknerwF.png\\\",\\\"\\/storage\\/realisasi\\/foto\\/xmq5PY1vMMURz13LiVtCD0vJAAjT9B87MEGuAUKG.png\\\"]\"','Admin','2026-04-18 04:49:00',NULL,NULL,1,'/storage/realisasi/dokumen/Big0Ptb1nPN8lLjVRh3v7IjLQrJHPl3FygTcuYqo.pdf'),(58,15,'2026-04-17','Pembuatan SK Tim','\"[\\\"\\/storage\\/realisasi\\/foto\\/dUQsqjC0MdtP1hL3NLMFZ91tRL8KDVJX4m5928Tm.png\\\",\\\"\\/storage\\/realisasi\\/foto\\/Q5ARnbeUnkkRmrUnIlomOBEeOfBsio1bHMTKJgUO.png\\\"]\"','Admin','2026-04-18 04:51:40',NULL,NULL,1,'/storage/realisasi/dokumen/ldNqKbGVdXmC3RVggCzr0CFFAwa82Y5m2rvGxLV7.pdf'),(59,17,'2026-04-17','Pembuatan SK Tim','\"[\\\"\\/storage\\/realisasi\\/foto\\/OmxsQFScPRTlsHeX7I2mcDnD9PlJPePrxOh8KiGY.png\\\",\\\"\\/storage\\/realisasi\\/foto\\/pIBPpGzHX9xhqWkij5Ory9OdgmmRj9rK6PCuHwws.png\\\"]\"','Admin','2026-04-18 06:10:01',NULL,NULL,1,'/storage/realisasi/dokumen/52MTLHPhYcJNmUbvP1euIspZyiarDWQT1j4wSvOI.pdf'),(73,24,'2026-04-22','fshaejhJ','\"[\\\"realisasi\\/foto\\/cwWD1Y4vlUtS4eXc5BIOS4qsgZA8YuEx8hBgv5pj.png\\\",\\\"realisasi\\/foto\\/W4TNi5LkhBXpnXMfV3IDoGuXk6gfEAiX1Kdf16pz.png\\\"]\"','Admin','2026-04-22 15:04:58',NULL,NULL,1,NULL),(74,24,'2026-04-22','bcgmfdky','\"[\\\"realisasi\\/foto\\/mYGbpQyMtyhgLI1q1WDWHwhs6E2avyPzotlPgU0X.png\\\"]\"','Admin','2026-04-22 15:39:48',NULL,NULL,1,'/storage/realisasi/dokumen/NvLrhHSm2SgRC9BPVVAkAI0AME2Bzj3rtmqp6jFB.pdf');
/*!40000 ALTER TABLE `TRANS_REALISASI_KEGIATAN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin','admin@example.com',NULL,'$2y$12$91KOSTL/5SobYyhWYdRfPezF09L4CEfrNTa5ddYAuZKNgBKVZVRhu',NULL,'2026-04-08 08:20:09','2026-04-08 08:20:09');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `v_trans_indikator_bidang`
--

DROP TABLE IF EXISTS `v_trans_indikator_bidang`;
/*!50001 DROP VIEW IF EXISTS `v_trans_indikator_bidang`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_trans_indikator_bidang` AS SELECT 
 1 AS `ID`,
 1 AS `NAMA_PROGRAM`,
 1 AS `NAMA_INDIKATOR_UTAMA`,
 1 AS `NAMA_INDIKATOR`,
 1 AS `NAMA_BIDANG`,
 1 AS `NAMA_PERIODE`,
 1 AS `FLAG_ACTIVE`,
 1 AS `LOG_ENTRY_NAME`,
 1 AS `LOG_ENTRY_DATE`,
 1 AS `LOG_UPDATE_NAME`,
 1 AS `LOG_UPDATE_DATE`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_trans_indikator_rekap`
--

DROP TABLE IF EXISTS `v_trans_indikator_rekap`;
/*!50001 DROP VIEW IF EXISTS `v_trans_indikator_rekap`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_trans_indikator_rekap` AS SELECT 
 1 AS `INDIKATOR_BIDANG_ID`,
 1 AS `NAMA_BIDANG`,
 1 AS `NAMA_INDIKATOR_UTAMA`,
 1 AS `NAMA_INDIKATOR`,
 1 AS `DETAIL_ID`,
 1 AS `JENIS_KEGIATAN`,
 1 AS `TARGET`,
 1 AS `REALISASI`,
 1 AS `BOBOT`,
 1 AS `PERSENTASE`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_dashboard_bidang`
--

DROP TABLE IF EXISTS `vw_dashboard_bidang`;
/*!50001 DROP VIEW IF EXISTS `vw_dashboard_bidang`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_dashboard_bidang` AS SELECT 
 1 AS `BIDANG_ID`,
 1 AS `NAMA_BIDANG`,
 1 AS `PERSENTASE`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_dashboard_bidang_program`
--

DROP TABLE IF EXISTS `vw_dashboard_bidang_program`;
/*!50001 DROP VIEW IF EXISTS `vw_dashboard_bidang_program`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_dashboard_bidang_program` AS SELECT 
 1 AS `BIDANG_ID`,
 1 AS `NAMA_BIDANG`,
 1 AS `PROGRAM_ID`,
 1 AS `NAMA_PROGRAM`,
 1 AS `TOTAL_INDIKATOR`,
 1 AS `TOTAL_REALISASI`,
 1 AS `TOTAL_TARGET`,
 1 AS `PERSENTASE`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_dashboard_detail_bidang`
--

DROP TABLE IF EXISTS `vw_dashboard_detail_bidang`;
/*!50001 DROP VIEW IF EXISTS `vw_dashboard_detail_bidang`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_dashboard_detail_bidang` AS SELECT 
 1 AS `BIDANG_ID`,
 1 AS `NAMA_BIDANG`,
 1 AS `INDIKATOR_ID`,
 1 AS `NAMA_INDIKATOR`,
 1 AS `TARGET`,
 1 AS `REALISASI`,
 1 AS `PERSENTASE`,
 1 AS `TOTAL_KEGIATAN`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_dashboard_detail_bidang_header`
--

DROP TABLE IF EXISTS `vw_dashboard_detail_bidang_header`;
/*!50001 DROP VIEW IF EXISTS `vw_dashboard_detail_bidang_header`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_dashboard_detail_bidang_header` AS SELECT 
 1 AS `BIDANG_ID`,
 1 AS `NAMA_BIDANG`,
 1 AS `TOTAL_INDIKATOR`,
 1 AS `TOTAL_KEGIATAN`,
 1 AS `RATA_RATA_CAPAIAN`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_dashboard_distribusi`
--

DROP TABLE IF EXISTS `vw_dashboard_distribusi`;
/*!50001 DROP VIEW IF EXISTS `vw_dashboard_distribusi`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_dashboard_distribusi` AS SELECT 
 1 AS `NAMA_BIDANG`,
 1 AS `PERSENTASE`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_dashboard_radar`
--

DROP TABLE IF EXISTS `vw_dashboard_radar`;
/*!50001 DROP VIEW IF EXISTS `vw_dashboard_radar`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_dashboard_radar` AS SELECT 
 1 AS `LABEL`,
 1 AS `VALUE`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_dashboard_summary`
--

DROP TABLE IF EXISTS `vw_dashboard_summary`;
/*!50001 DROP VIEW IF EXISTS `vw_dashboard_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_dashboard_summary` AS SELECT 
 1 AS `TOTAL_PROGRAM`,
 1 AS `TOTAL_BIDANG`,
 1 AS `CAPAIAN_RATA_RATA`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_trans_capaian_indikator`
--

DROP TABLE IF EXISTS `vw_trans_capaian_indikator`;
/*!50001 DROP VIEW IF EXISTS `vw_trans_capaian_indikator`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_trans_capaian_indikator` AS SELECT 
 1 AS `CAPAIAN_ID`,
 1 AS `INDIKATOR_BIDANG_ID`,
 1 AS `PERIODE_ID`,
 1 AS `NAMA_PERIODE`,
 1 AS `BIDANG_ID`,
 1 AS `NAMA_BIDANG`,
 1 AS `PROGRAM_ID`,
 1 AS `NAMA_PROGRAM`,
 1 AS `INDIKATOR_UTAMA_ID`,
 1 AS `NAMA_INDIKATOR_UTAMA`,
 1 AS `INDIKATOR_ID`,
 1 AS `NAMA_INDIKATOR`,
 1 AS `TARGET`,
 1 AS `REALISASI`,
 1 AS `PERSENTASE`,
 1 AS `TOTAL_KEGIATAN`,
 1 AS `LAST_CALCULATE_DATE`,
 1 AS `FLAG_ACTIVE`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_trans_realisasi`
--

DROP TABLE IF EXISTS `vw_trans_realisasi`;
/*!50001 DROP VIEW IF EXISTS `vw_trans_realisasi`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_trans_realisasi` AS SELECT 
 1 AS `ID`,
 1 AS `TANGGAL_KEGIATAN`,
 1 AS `KETERANGAN`,
 1 AS `FILE_FOTO`,
 1 AS `FILE_DOCUMENT`,
 1 AS `INDIKATOR_BIDANG_ID`,
 1 AS `JENIS_KEGIATAN`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `v_trans_indikator_bidang`
--

/*!50001 DROP VIEW IF EXISTS `v_trans_indikator_bidang`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_trans_indikator_bidang` AS select `tib`.`ID` AS `ID`,`mp`.`NAMA_PROGRAM` AS `NAMA_PROGRAM`,`miu`.`NAMA_INDIKATOR_UTAMA` AS `NAMA_INDIKATOR_UTAMA`,`mi`.`NAMA_INDIKATOR` AS `NAMA_INDIKATOR`,`mb`.`NAMA_BIDANG` AS `NAMA_BIDANG`,`mpd`.`NAMA_PERIODE` AS `NAMA_PERIODE`,`tib`.`FLAG_ACTIVE` AS `FLAG_ACTIVE`,`tib`.`LOG_ENTRY_NAME` AS `LOG_ENTRY_NAME`,`tib`.`LOG_ENTRY_DATE` AS `LOG_ENTRY_DATE`,`tib`.`LOG_UPDATE_NAME` AS `LOG_UPDATE_NAME`,`tib`.`LOG_UPDATE_DATE` AS `LOG_UPDATE_DATE` from (((((`trans_indikator_bidang` `tib` left join `master_bidang` `mb` on((`mb`.`ID` = `tib`.`BIDANG_ID`))) left join `master_periode` `mpd` on((`mpd`.`ID` = `tib`.`PERIODE_ID`))) left join `master_indikator` `mi` on((`mi`.`ID` = `tib`.`MASTER_INDIKATOR_ID`))) left join `master_indikator_utama` `miu` on((`miu`.`ID` = `mi`.`INDIKATOR_UTAMA_ID`))) left join `master_program` `mp` on((`mp`.`ID` = `miu`.`PROGRAM_ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_trans_indikator_rekap`
--

/*!50001 DROP VIEW IF EXISTS `v_trans_indikator_rekap`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_trans_indikator_rekap` AS select `tib`.`ID` AS `INDIKATOR_BIDANG_ID`,`mb`.`NAMA_BIDANG` AS `NAMA_BIDANG`,`miu`.`NAMA_INDIKATOR_UTAMA` AS `NAMA_INDIKATOR_UTAMA`,`mi`.`NAMA_INDIKATOR` AS `NAMA_INDIKATOR`,`tid`.`ID` AS `DETAIL_ID`,`tid`.`JENIS_KEGIATAN` AS `JENIS_KEGIATAN`,`tid`.`TARGET` AS `TARGET`,count(`trk`.`ID`) AS `REALISASI`,(case when (`total`.`TOTAL_TARGET` = 0) then 0 else (`tid`.`TARGET` / `total`.`TOTAL_TARGET`) end) AS `BOBOT`,(case when (`tid`.`TARGET` = 0) then 0 else ((count(`trk`.`ID`) / `tid`.`TARGET`) * 100) end) AS `PERSENTASE` from ((((((`trans_indikator_detail` `tid` join `trans_indikator_bidang` `tib` on((`tib`.`ID` = `tid`.`INDIKATOR_BIDANG_ID`))) join `master_bidang` `mb` on((`mb`.`ID` = `tib`.`BIDANG_ID`))) join `master_indikator` `mi` on((`mi`.`ID` = `tib`.`MASTER_INDIKATOR_ID`))) join `master_indikator_utama` `miu` on((`miu`.`ID` = `mi`.`INDIKATOR_UTAMA_ID`))) join (select `trans_indikator_detail`.`INDIKATOR_BIDANG_ID` AS `INDIKATOR_BIDANG_ID`,sum(`trans_indikator_detail`.`TARGET`) AS `TOTAL_TARGET` from `trans_indikator_detail` group by `trans_indikator_detail`.`INDIKATOR_BIDANG_ID`) `total` on((`total`.`INDIKATOR_BIDANG_ID` = `tid`.`INDIKATOR_BIDANG_ID`))) left join `trans_realisasi_kegiatan` `trk` on((`trk`.`INDIKATOR_DETAIL_ID` = `tid`.`ID`))) group by `tib`.`ID`,`mb`.`NAMA_BIDANG`,`miu`.`NAMA_INDIKATOR_UTAMA`,`mi`.`NAMA_INDIKATOR`,`tid`.`ID`,`tid`.`JENIS_KEGIATAN`,`tid`.`TARGET`,`total`.`TOTAL_TARGET` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_dashboard_bidang`
--

/*!50001 DROP VIEW IF EXISTS `vw_dashboard_bidang`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_dashboard_bidang` AS select `MB`.`ID` AS `BIDANG_ID`,`MB`.`NAMA_BIDANG` AS `NAMA_BIDANG`,round(avg(`TCI`.`PERSENTASE`),2) AS `PERSENTASE` from ((`trans_capaian_indikator` `TCI` join `trans_indikator_bidang` `TIB` on((`TCI`.`INDIKATOR_BIDANG_ID` = `TIB`.`ID`))) join `master_bidang` `MB` on((`TIB`.`BIDANG_ID` = `MB`.`ID`))) where (`TCI`.`FLAG_ACTIVE` = 1) group by `MB`.`ID`,`MB`.`NAMA_BIDANG` order by `PERSENTASE` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_dashboard_bidang_program`
--

/*!50001 DROP VIEW IF EXISTS `vw_dashboard_bidang_program`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_dashboard_bidang_program` AS select `v`.`BIDANG_ID` AS `BIDANG_ID`,`v`.`NAMA_BIDANG` AS `NAMA_BIDANG`,`v`.`PROGRAM_ID` AS `PROGRAM_ID`,`v`.`NAMA_PROGRAM` AS `NAMA_PROGRAM`,count(distinct `v`.`INDIKATOR_ID`) AS `TOTAL_INDIKATOR`,sum(`v`.`REALISASI`) AS `TOTAL_REALISASI`,sum(`v`.`TARGET`) AS `TOTAL_TARGET`,round((case when (sum(`v`.`TARGET`) > 0) then ((sum(`v`.`REALISASI`) / sum(`v`.`TARGET`)) * 100) else 0 end),2) AS `PERSENTASE` from `vw_trans_capaian_indikator` `V` where (`v`.`FLAG_ACTIVE` = 1) group by `v`.`BIDANG_ID`,`v`.`NAMA_BIDANG`,`v`.`PROGRAM_ID`,`v`.`NAMA_PROGRAM` order by `v`.`NAMA_PROGRAM` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_dashboard_detail_bidang`
--

/*!50001 DROP VIEW IF EXISTS `vw_dashboard_detail_bidang`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_dashboard_detail_bidang` AS select `MB`.`ID` AS `BIDANG_ID`,`MB`.`NAMA_BIDANG` AS `NAMA_BIDANG`,`MI`.`ID` AS `INDIKATOR_ID`,`MI`.`NAMA_INDIKATOR` AS `NAMA_INDIKATOR`,`TCI`.`TARGET` AS `TARGET`,`TCI`.`REALISASI` AS `REALISASI`,`TCI`.`PERSENTASE` AS `PERSENTASE`,`TCI`.`TOTAL_KEGIATAN` AS `TOTAL_KEGIATAN` from (((`trans_capaian_indikator` `TCI` join `trans_indikator_bidang` `TIB` on((`TCI`.`INDIKATOR_BIDANG_ID` = `TIB`.`ID`))) join `master_bidang` `MB` on((`TIB`.`BIDANG_ID` = `MB`.`ID`))) join `master_indikator` `MI` on((`TIB`.`MASTER_INDIKATOR_ID` = `MI`.`ID`))) where (`TCI`.`FLAG_ACTIVE` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_dashboard_detail_bidang_header`
--

/*!50001 DROP VIEW IF EXISTS `vw_dashboard_detail_bidang_header`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_dashboard_detail_bidang_header` AS select `MB`.`ID` AS `BIDANG_ID`,`MB`.`NAMA_BIDANG` AS `NAMA_BIDANG`,count(distinct `MI`.`ID`) AS `TOTAL_INDIKATOR`,sum(`TCI`.`TOTAL_KEGIATAN`) AS `TOTAL_KEGIATAN`,round(avg(`TCI`.`PERSENTASE`),2) AS `RATA_RATA_CAPAIAN` from (((`trans_capaian_indikator` `TCI` join `trans_indikator_bidang` `TIB` on((`TCI`.`INDIKATOR_BIDANG_ID` = `TIB`.`ID`))) join `master_bidang` `MB` on((`TIB`.`BIDANG_ID` = `MB`.`ID`))) join `master_indikator` `MI` on((`TIB`.`MASTER_INDIKATOR_ID` = `MI`.`ID`))) where (`TCI`.`FLAG_ACTIVE` = 1) group by `MB`.`ID`,`MB`.`NAMA_BIDANG` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_dashboard_distribusi`
--

/*!50001 DROP VIEW IF EXISTS `vw_dashboard_distribusi`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_dashboard_distribusi` AS select `MB`.`NAMA_BIDANG` AS `NAMA_BIDANG`,round(((sum(`TCI`.`REALISASI`) / nullif(sum(`TCI`.`TARGET`),0)) * 100),2) AS `PERSENTASE` from ((`trans_capaian_indikator` `TCI` join `trans_indikator_bidang` `TIB` on((`TCI`.`INDIKATOR_BIDANG_ID` = `TIB`.`ID`))) join `master_bidang` `MB` on((`TIB`.`BIDANG_ID` = `MB`.`ID`))) where (`TCI`.`FLAG_ACTIVE` = 1) group by `MB`.`NAMA_BIDANG` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_dashboard_radar`
--

/*!50001 DROP VIEW IF EXISTS `vw_dashboard_radar`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_dashboard_radar` AS select `MB`.`NAMA_BIDANG` AS `LABEL`,round(avg(`TCI`.`PERSENTASE`),2) AS `VALUE` from ((`trans_capaian_indikator` `TCI` join `trans_indikator_bidang` `TIB` on((`TCI`.`INDIKATOR_BIDANG_ID` = `TIB`.`ID`))) join `master_bidang` `MB` on((`TIB`.`BIDANG_ID` = `MB`.`ID`))) where (`TCI`.`FLAG_ACTIVE` = 1) group by `MB`.`NAMA_BIDANG` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_dashboard_summary`
--

/*!50001 DROP VIEW IF EXISTS `vw_dashboard_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_dashboard_summary` AS select count(distinct `MP`.`ID`) AS `TOTAL_PROGRAM`,count(distinct `MB`.`ID`) AS `TOTAL_BIDANG`,round(avg(`TCI`.`PERSENTASE`),2) AS `CAPAIAN_RATA_RATA` from (((((`trans_capaian_indikator` `TCI` join `trans_indikator_bidang` `TIB` on((`TCI`.`INDIKATOR_BIDANG_ID` = `TIB`.`ID`))) join `master_indikator` `MI` on((`TIB`.`MASTER_INDIKATOR_ID` = `MI`.`ID`))) join `master_indikator_utama` `MIU` on((`MI`.`INDIKATOR_UTAMA_ID` = `MIU`.`ID`))) join `master_program` `MP` on((`MIU`.`PROGRAM_ID` = `MP`.`ID`))) join `master_bidang` `MB` on((`TIB`.`BIDANG_ID` = `MB`.`ID`))) where (`TCI`.`FLAG_ACTIVE` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_trans_capaian_indikator`
--

/*!50001 DROP VIEW IF EXISTS `vw_trans_capaian_indikator`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_trans_capaian_indikator` AS select `TCI`.`ID` AS `CAPAIAN_ID`,`TIB`.`ID` AS `INDIKATOR_BIDANG_ID`,`MPD`.`ID` AS `PERIODE_ID`,`MPD`.`NAMA_PERIODE` AS `NAMA_PERIODE`,`MB`.`ID` AS `BIDANG_ID`,`MB`.`NAMA_BIDANG` AS `NAMA_BIDANG`,`MPR`.`ID` AS `PROGRAM_ID`,`MPR`.`NAMA_PROGRAM` AS `NAMA_PROGRAM`,`MIU`.`ID` AS `INDIKATOR_UTAMA_ID`,`MIU`.`NAMA_INDIKATOR_UTAMA` AS `NAMA_INDIKATOR_UTAMA`,`MI`.`ID` AS `INDIKATOR_ID`,`MI`.`NAMA_INDIKATOR` AS `NAMA_INDIKATOR`,`TCI`.`TARGET` AS `TARGET`,`TCI`.`REALISASI` AS `REALISASI`,`TCI`.`PERSENTASE` AS `PERSENTASE`,`TCI`.`TOTAL_KEGIATAN` AS `TOTAL_KEGIATAN`,`TCI`.`LAST_CALCULATE_DATE` AS `LAST_CALCULATE_DATE`,`TCI`.`FLAG_ACTIVE` AS `FLAG_ACTIVE` from ((((((`trans_capaian_indikator` `TCI` join `trans_indikator_bidang` `TIB` on((`TCI`.`INDIKATOR_BIDANG_ID` = `TIB`.`ID`))) join `master_periode` `MPD` on((`TIB`.`PERIODE_ID` = `MPD`.`ID`))) join `master_bidang` `MB` on((`TIB`.`BIDANG_ID` = `MB`.`ID`))) join `master_indikator` `MI` on((`TIB`.`MASTER_INDIKATOR_ID` = `MI`.`ID`))) join `master_indikator_utama` `MIU` on((`MI`.`INDIKATOR_UTAMA_ID` = `MIU`.`ID`))) join `master_program` `MPR` on((`MIU`.`PROGRAM_ID` = `MPR`.`ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_trans_realisasi`
--

/*!50001 DROP VIEW IF EXISTS `vw_trans_realisasi`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_trans_realisasi` AS select `TRK`.`ID` AS `ID`,`TRK`.`TANGGAL_KEGIATAN` AS `TANGGAL_KEGIATAN`,`TRK`.`KETERANGAN` AS `KETERANGAN`,`TRK`.`FILE_FOTO` AS `FILE_FOTO`,`TRK`.`FILE_DOCUMENT` AS `FILE_DOCUMENT`,`TID`.`INDIKATOR_BIDANG_ID` AS `INDIKATOR_BIDANG_ID`,`TID`.`JENIS_KEGIATAN` AS `JENIS_KEGIATAN` from (`trans_realisasi_kegiatan` `TRK` join `trans_indikator_detail` `TID` on((`TRK`.`INDIKATOR_DETAIL_ID` = `TID`.`ID`))) where (`TRK`.`FLAG_ACTIVE` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-26 23:42:18
