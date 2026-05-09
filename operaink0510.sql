-- MySQL dump 10.13  Distrib 9.6.0, for macos26.2 (arm64)
--
-- Host: localhost    Database: opera
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
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
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
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `MASTER_AKTIFITAS_UTAMA`
--

DROP TABLE IF EXISTS `MASTER_AKTIFITAS_UTAMA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MASTER_AKTIFITAS_UTAMA` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `INDIKATOR_UTAMA_ID` int NOT NULL COMMENT 'FK ke MASTER_INDIKATOR_UTAMA',
  `NAMA_AKTIFITAS` varchar(300) NOT NULL COMMENT 'Nama dokumen output, misal: Dok. Rancangan Awal RPJMD/RKPD',
  `BOBOT_TARGET` decimal(5,2) NOT NULL DEFAULT '35.00' COMMENT 'Bobot per dokumen. Total aktivitas utama 1 subkegiatan ≤ 70%',
  `URUTAN` int NOT NULL DEFAULT '1',
  `FLAG_ACTIVE` tinyint(1) DEFAULT '1',
  `LOG_ENTRY_NAME` varchar(100) DEFAULT NULL,
  `LOG_ENTRY_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `idx_mau_ind_utama` (`INDIKATOR_UTAMA_ID`),
  CONSTRAINT `FK_MAU_IND_UTAMA` FOREIGN KEY (`INDIKATOR_UTAMA_ID`) REFERENCES `MASTER_INDIKATOR_UTAMA` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Master daftar dokumen output per subkegiatan (aktivitas utama)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MASTER_AKTIFITAS_UTAMA`
--

LOCK TABLES `MASTER_AKTIFITAS_UTAMA` WRITE;
/*!40000 ALTER TABLE `MASTER_AKTIFITAS_UTAMA` DISABLE KEYS */;
INSERT INTO `MASTER_AKTIFITAS_UTAMA` VALUES (1,2,'Dokumen Rancangan Awal RPJMD/RKPD',35.00,1,1,'SYSTEM','2026-05-07 00:31:25'),(2,2,'Dokumen Rancangan Awal RPJMD/RKPD',35.00,2,1,'SYSTEM','2026-05-07 00:31:25'),(3,3,'Telaahan Dokumen Perencanaan Pembangunan Daerah',23.33,1,1,'SYSTEM','2026-05-07 00:31:25'),(4,3,'Telaahan Dokumen Perencanaan Pembangunan Daerah',23.33,2,1,'SYSTEM','2026-05-07 00:31:25'),(5,3,'Telaahan Dokumen Perencanaan Pembangunan Daerah',23.34,3,1,'SYSTEM','2026-05-07 00:31:25'),(6,2,'Dokumen Rancangan Awal RPJMD/RKPD TES',35.00,2,1,'Admin','2026-05-08 18:35:22');
/*!40000 ALTER TABLE `MASTER_AKTIFITAS_UTAMA` ENABLE KEYS */;
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
  `BOBOT` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT 'Bobot bidang dalam persen (total semua bidang = 100%)',
  `FLAG_ACTIVE` tinyint(1) DEFAULT '1',
  `LOG_ENTRY_NAME` varchar(100) DEFAULT NULL,
  `LOG_ENTRY_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LOG_UPDATE_NAME` varchar(100) DEFAULT NULL,
  `LOG_UPDATE_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MASTER_BIDANG`
--

LOCK TABLES `MASTER_BIDANG` WRITE;
/*!40000 ALTER TABLE `MASTER_BIDANG` DISABLE KEYS */;
INSERT INTO `MASTER_BIDANG` VALUES (1,'BIDANG P2EPD',14.29,NULL,NULL,'2026-04-01 22:32:32','Admin','2026-05-08 17:44:01'),(2,'BIDANG PPM',14.29,1,NULL,'2026-04-01 22:32:32',NULL,'2026-05-07 00:31:25'),(3,'BIDANG PIK',14.29,1,NULL,'2026-04-01 22:32:32',NULL,'2026-05-07 00:31:25'),(4,'SUBBAGIAN PERENCANAAN',14.29,1,NULL,'2026-04-01 22:32:32',NULL,'2026-05-07 00:31:25'),(5,'SUBBAGIAN KEUANGAN',14.29,1,NULL,'2026-04-01 22:32:32',NULL,'2026-05-07 00:31:25'),(6,'SUBBAGIAN UMUM DAN KEPEGAWAIAN',14.29,1,NULL,'2026-04-01 22:32:32',NULL,'2026-05-07 00:31:25'),(7,'BIDANG LITBANG',14.29,1,NULL,'2026-04-01 22:32:32',NULL,'2026-05-07 00:31:25'),(16,'BIDANG P2EPD',0.00,1,'Admin','2026-05-08 17:25:59',NULL,NULL);
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
  `NAMA_INDIKATOR` varchar(500) NOT NULL COMMENT 'Nama indikator/aktivitas (diperpanjang dari 200 ke 500)',
  `TIPE_AKTIFITAS` enum('UTAMA','PENDUKUNG') NOT NULL DEFAULT 'PENDUKUNG' COMMENT 'UTAMA=output dokumen, PENDUKUNG=rapat/SK/sosialisasi/dll',
  `BOBOT_TARGET` decimal(5,2) NOT NULL DEFAULT '7.50' COMMENT 'Bobot target dalam persen. UTAMA ≈ 35%, PENDUKUNG = 7.5%',
  `URUTAN` int NOT NULL DEFAULT '0' COMMENT 'Urutan tampil (UTAMA tampil di atas PENDUKUNG)',
  `SATUAN` varchar(50) DEFAULT NULL,
  `FLAG_ACTIVE` tinyint(1) DEFAULT '1',
  `LOG_ENTRY_NAME` varchar(100) DEFAULT NULL,
  `LOG_ENTRY_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LOG_UPDATE_NAME` varchar(100) DEFAULT NULL,
  `LOG_UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `MASTER_INDIKATOR_MASTER_INDIKATOR_UTAMA_FK` (`INDIKATOR_UTAMA_ID`),
  CONSTRAINT `MASTER_INDIKATOR_MASTER_INDIKATOR_UTAMA_FK` FOREIGN KEY (`INDIKATOR_UTAMA_ID`) REFERENCES `MASTER_INDIKATOR_UTAMA` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MASTER_INDIKATOR`
--

LOCK TABLES `MASTER_INDIKATOR` WRITE;
/*!40000 ALTER TABLE `MASTER_INDIKATOR` DISABLE KEYS */;
INSERT INTO `MASTER_INDIKATOR` VALUES (1,2,'IND001','Analisis Kondisi Daerah, Permasalahan, dan Isu Strategis Pembangunan Daerah','PENDUKUNG',7.50,10,'Kegiatan',1,NULL,'2026-04-01 22:45:52',NULL,'2026-04-01 22:49:14'),(2,2,'IND002','Analisis Data dan Informasi Pemerintahan Daerah Bidang Perencanaan Pembangunan Daerah','PENDUKUNG',7.50,20,NULL,1,NULL,'2026-04-18 00:32:44',NULL,NULL),(14,2,'IU002-P01','Rapat Koordinasi Lintas Sektor Pemerintah Daerah - Konsultasi Publik - Musrenbang','PENDUKUNG',7.50,10,'Kali',1,'SYSTEM','2026-05-07 21:36:44',NULL,NULL),(15,2,'IU002-P02','Pembuatan SK Tim','PENDUKUNG',7.50,20,'Dokumen',1,'SYSTEM','2026-05-07 21:36:44',NULL,NULL),(16,2,'IU002-P03','Sosialisasi','PENDUKUNG',7.50,30,'Kali',1,'SYSTEM','2026-05-07 21:36:44',NULL,NULL),(17,2,'IU002-P04','Koordinasi dan Penyelarasan dengan Provinsi','PENDUKUNG',7.50,40,'Kali',1,'SYSTEM','2026-05-07 21:36:44',NULL,NULL),(18,3,'IU003-P01','Rapat Koordinasi Lintas Sektor Pemerintah Daerah - Konsultasi Publik - Musrenbang','PENDUKUNG',7.50,10,'Kali',1,'SYSTEM','2026-05-07 21:36:44',NULL,NULL),(19,3,'IU003-P02','Pembuatan SK Tim','PENDUKUNG',7.50,20,'Dokumen',1,'SYSTEM','2026-05-07 21:36:44',NULL,NULL),(20,3,'IU003-P03','Sosialisasi','PENDUKUNG',7.50,30,'Kali',1,'SYSTEM','2026-05-07 21:36:44',NULL,NULL),(21,3,'IU003-P04','Koordinasi dan Penyelarasan dengan Provinsi','PENDUKUNG',7.50,40,'Kali',1,'SYSTEM','2026-05-07 21:36:44',NULL,NULL);
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
  `INDIKATOR_KINERJA` text COMMENT 'Indikator Kinerja Subkegiatan. Kosong jika ini adalah header/group.',
  `TARGET_KINERJA` decimal(10,2) DEFAULT NULL COMMENT 'Nilai target kinerja, misal: 2',
  `SATUAN_KINERJA` varchar(50) DEFAULT NULL COMMENT 'Satuan target kinerja, misal: Dokumen, Laporan, Kegiatan',
  `OUTPUT_KINERJA` text COMMENT 'Deskripsi output/catatan kinerja subkegiatan',
  `FLAG_ACTIVE` tinyint(1) DEFAULT '1',
  `LOG_ENTRY_NAME` varchar(100) DEFAULT NULL,
  `LOG_ENTRY_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LOG_UPDATE_NAME` varchar(100) DEFAULT NULL,
  `LOG_UPDATE_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `FK_INDIKATOR_UTAMA_PROGRAM` (`PROGRAM_ID`),
  CONSTRAINT `FK_INDIKATOR_UTAMA_PROGRAM` FOREIGN KEY (`PROGRAM_ID`) REFERENCES `MASTER_PROGRAM` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MASTER_INDIKATOR_UTAMA`
--

LOCK TABLES `MASTER_INDIKATOR_UTAMA` WRITE;
/*!40000 ALTER TABLE `MASTER_INDIKATOR_UTAMA` DISABLE KEYS */;
INSERT INTO `MASTER_INDIKATOR_UTAMA` VALUES (1,1,'IU001','Penyusunan Perencanaan dan Pendanaan',NULL,NULL,NULL,NULL,1,NULL,'2026-04-01 22:39:16',NULL,'2026-04-18 01:43:01'),(2,1,'IU002','Analisis Data dan Informasi Pemerintahan Daerah Bidang Perencanaan Pembangunan Daerah','Jumlah Dokumen Rancangan Awal RPJMD/RKPD (Sesuai Kebutuhan Jika RPJMD Maka Rancangan Teknokratik)',2.00,'Dokumen',NULL,1,NULL,'2026-04-18 01:43:00',NULL,'2026-05-07 00:31:25'),(3,2,'IU003','Pengendalian, Evaluasi dan Pelaporan Bidang Perencanaan Pembangunan Daerah','Jumlah Telaahan Dokumen Perencanaan Pembangunan Daerah',3.00,'Dokumen','Misal: Pelaksanaan Kegiatan Konsultasi Dokumen Ke Kemendagri',1,NULL,'2026-04-18 01:46:26',NULL,'2026-05-07 00:31:25');
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
INSERT INTO `MASTER_JENIS_KEGIATAN` VALUES (1,'Rapat Koordinasi Lintas Sektor Pemerintah Daerah - Konsultasi Publik - Musrenbang',1,'SYSTEM','2026-04-18 04:24:28',NULL,NULL),(2,'Pembuatan SK Tim',1,'SYSTEM','2026-04-18 04:24:28',NULL,NULL),(3,'Sosialisasi',1,'SYSTEM','2026-04-18 04:24:28',NULL,NULL),(4,'Koordinasi dan Penyelarasan dengan Provinsi',1,'SYSTEM','2026-04-18 04:24:28',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MASTER_PROGRAM`
--

LOCK TABLES `MASTER_PROGRAM` WRITE;
/*!40000 ALTER TABLE `MASTER_PROGRAM` DISABLE KEYS */;
INSERT INTO `MASTER_PROGRAM` VALUES (1,'PRG001','PROGRAM PERENCANAAN, PENGENDALIAN DAN EVALUASI PEMBANGUNAN DAERAH',1,NULL,NULL,'Admin','2026-05-08 17:58:41'),(2,'PRG002','PROGRAM KOORDINASI DAN SINKRONISASI PERENCANAAN PEMBANGUNAN DAERAH',1,NULL,NULL,NULL,NULL),(3,'PRG003','PROGRAM PENUNJANG URUSAN PEMERINTAHAN DAERAH KABUPATEN/KOTA',1,NULL,NULL,NULL,NULL),(4,'PRG004','PROGRAM PENELITIAN DAN PENGEMBANGAN DAERAH',1,NULL,NULL,NULL,NULL),(5,'PRG005','PROGRAM RISET DAN INOVASI DAERAH',1,NULL,NULL,NULL,NULL);
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
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
INSERT INTO `personal_access_tokens` VALUES (1,'App\\Models\\User',1,'api-token','eef9d669400dba177fff31955db67fa2834314ee2266500b5b58daf2f7b234bf','[\"*\"]','2026-04-08 08:38:20',NULL,'2026-04-08 08:25:29','2026-04-08 08:38:20'),(2,'App\\Models\\User',1,'api-token','dcb466bf973da7eaa02885d18a058258aebb15de006fede7323d033ce968d3c3','[\"*\"]','2026-04-11 08:27:18',NULL,'2026-04-08 08:51:24','2026-04-11 08:27:18'),(3,'App\\Models\\User',1,'api-token','cc796d988b04c70ece4d85c3ea650efb686eb10dab4b6eea2a3cb98c6f94774e','[\"*\"]',NULL,NULL,'2026-04-11 07:05:49','2026-04-11 07:05:49'),(4,'App\\Models\\User',1,'api-token','1f5f9bee819594087ad0d68c9ef3f9e7fa5d2f9c9182058daec0fbecf914658c','[\"*\"]',NULL,NULL,'2026-04-11 07:06:00','2026-04-11 07:06:00'),(5,'App\\Models\\User',1,'api-token','0210e4c87f3be33f2d984f442e3aa1d980872533c0485a00033d1f202db88226','[\"*\"]','2026-04-11 07:20:44',NULL,'2026-04-11 07:07:35','2026-04-11 07:20:44'),(6,'App\\Models\\User',1,'api-token','0de401afb4e6a481e4e24ccb4e756ef6f7e55c8c81d5558ef9814074e72101c5','[\"*\"]',NULL,NULL,'2026-04-13 06:42:43','2026-04-13 06:42:43'),(7,'App\\Models\\User',1,'api-token','7311d1db3976c23bb02e98d08b322f94261fb08cc0daf8041e84443a59c93db2','[\"*\"]','2026-04-13 06:46:13',NULL,'2026-04-13 06:42:50','2026-04-13 06:46:13'),(10,'App\\Models\\User',1,'api-token','a47b61492cb527f49fc30e61594107c786788549d396c54dbc6bf17a613e398f','[\"*\"]','2026-04-15 02:16:36',NULL,'2026-04-14 03:59:26','2026-04-15 02:16:36'),(11,'App\\Models\\User',1,'api-token','c840421e3ed52aca9b021506c233e9d7880f1b8d04855b43736efee9884eaa70','[\"*\"]','2026-04-15 09:52:30',NULL,'2026-04-15 08:56:03','2026-04-15 09:52:30'),(12,'App\\Models\\User',1,'api-token','74644e679f90e35ab79f9b3b4daa416d76296e803c969f540d531b7b401c945a','[\"*\"]','2026-05-09 09:35:29',NULL,'2026-04-16 06:49:11','2026-05-09 09:35:29'),(13,'App\\Models\\User',1,'api-token','e526e305c63c992aa12c75c17b03c14a9da2d678ffd21ae67a025cb65558092f','[\"*\"]','2026-04-16 07:15:38',NULL,'2026-04-16 07:15:21','2026-04-16 07:15:38'),(14,'App\\Models\\User',1,'api-token','2ecd0fd1c74bf9e1e106286a450bc8518f09296b1a15b01d73ecf8c899f13a0b','[\"*\"]','2026-05-07 07:15:09',NULL,'2026-04-17 07:31:30','2026-05-07 07:15:09'),(15,'App\\Models\\User',1,'api-token','eb4054549903c5f0abb4cf6dd1bf9c7ab4bc87ad473a51534b15347119f82f61','[\"*\"]','2026-04-17 08:19:53',NULL,'2026-04-17 08:17:39','2026-04-17 08:19:53'),(16,'App\\Models\\User',1,'api-token','7f8110ec058093d6afd1b056a81149be67720789568a40158a5b22de18c5d703','[\"*\"]','2026-04-17 09:06:40',NULL,'2026-04-17 08:35:48','2026-04-17 09:06:40'),(17,'App\\Models\\User',1,'api-token','f92b5ed1603caad7031f239e2214cd897529acaee08494a93ea8318191aac78c','[\"*\"]','2026-04-18 10:10:58',NULL,'2026-04-18 04:39:43','2026-04-18 10:10:58'),(19,'App\\Models\\User',1,'api-token','c4a31ceb66d78ec70f30beec7e858b0a4b72bf6ddf3a0019255dbd2f24e22845','[\"*\"]','2026-04-19 08:34:57',NULL,'2026-04-19 08:27:14','2026-04-19 08:34:57'),(21,'App\\Models\\User',1,'api-token','370c71a716309039a5914f2283f920253519f097dd0d5b540e163d2c0df2ca4f','[\"*\"]','2026-04-22 06:02:15',NULL,'2026-04-22 05:49:45','2026-04-22 06:02:15'),(22,'App\\Models\\User',1,'api-token','71dc697b1506c861ae2b08dfb81061661a06c5e62c1d9eaa58db5b88ffdffd59','[\"*\"]','2026-04-22 23:58:23',NULL,'2026-04-22 06:02:07','2026-04-22 23:58:23'),(23,'App\\Models\\User',1,'api-token','65cf97a7efe1a9347488311ffe6c001a607214a95baccf90f205bf798e6b4c31','[\"*\"]',NULL,NULL,'2026-04-22 06:24:44','2026-04-22 06:24:44'),(24,'App\\Models\\User',1,'api-token','514bccaf1f9a2f8bf3714cf7140712f1c8fd184777f7ce3d9a3c6633d817e498','[\"*\"]','2026-05-07 07:13:51',NULL,'2026-04-22 07:55:06','2026-05-07 07:13:51'),(25,'App\\Models\\User',1,'api-token','2a77fe6b5e83c62de43b48c11953014b99d1a816a81f883702be11ca7e4e59ec','[\"*\"]',NULL,NULL,'2026-04-22 07:56:31','2026-04-22 07:56:31'),(26,'App\\Models\\User',1,'api-token','2963e0650e510bbdb00be6ce535fd7a55f39cc1163e9fc5ff74412d21646d570','[\"*\"]','2026-04-26 07:41:23',NULL,'2026-04-23 08:11:24','2026-04-26 07:41:23'),(27,'App\\Models\\User',1,'api-token','9e5c3f2f126638201a1ea67ace69571ed525969857f6183b4730183c0baed244','[\"*\"]','2026-05-09 08:53:41',NULL,'2026-05-07 07:08:26','2026-05-09 08:53:41'),(29,'App\\Models\\User',1,'api-token','6b2ef1aba5bcb858a165ec8890918c4fb5bcb48643a14df0f1aa056635a3a526','[\"*\"]','2026-05-09 11:17:15',NULL,'2026-05-08 09:00:29','2026-05-09 11:17:15'),(30,'App\\Models\\User',1,'api-token','94ca38f7a83bb00e97b6046f99c658f5778d70d55e0f637cc3aac9553895c80e','[\"*\"]',NULL,NULL,'2026-05-08 09:15:46','2026-05-08 09:15:46'),(31,'App\\Models\\User',1,'api-token','613ec38ca5de708946b34647570ead9cd88f50b202507613f669b7281b4c5473','[\"*\"]','2026-05-08 09:49:38',NULL,'2026-05-08 09:25:41','2026-05-08 09:49:38');
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Slug unik, contoh: admin_aplikasi',
  `label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nama tampil, contoh: Admin Aplikasi',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Deskripsi singkat hak akses role ini',
  `FLAG_ACTIVE` tinyint(1) NOT NULL DEFAULT '1',
  `LOG_ENTRY_NAME` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LOG_ENTRY_DATE` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Master daftar role akses sistem';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
INSERT INTO `sessions` VALUES ('0XcoosxB0tj64qykBWjEg7AyX8YYS70SNzq93dfu',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJOVVEwenV0VEdrWUFQM25hdWVkaDhPdVpyTDRSOGRONWNCcHhOdU0yIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwXC9zYW5jdHVtXC9jc3JmLWNvb2tpZSIsInJvdXRlIjoic2FuY3R1bS5jc3JmLWNvb2tpZSJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1776515688),('21pH0RbfJpzKvNk5OyrTu37SZwiUdpfkRt3obQno',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJBdHp3M0hodmFwYmc3Z3dSbkJERG1nUVZtRWl5VkNIRmlUOHhUakF5IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL2xvY2FsaG9zdDo4MDAwXC9zYW5jdHVtXC9jc3JmLWNvb2tpZSIsInJvdXRlIjoic2FuY3R1bS5jc3JmLWNvb2tpZSJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1776443748),('6esef5uZcHdpl03mr2eZ4jOM7YlTzPpEP30ahwSo',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJOREh3RDZId0M3d3hzTG14VXNaNTNDcG9KN1dCUHpjQ21VMmNCV1cwIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwXC9zYW5jdHVtXC9jc3JmLWNvb2tpZSIsInJvdXRlIjoic2FuY3R1bS5jc3JmLWNvb2tpZSJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1776515680),('6oeV6RF6VxJx3aWdvN3NLJYiLD5bXCUMtx4F6jaW',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJ6eWNBU05PWUMwakl5YXVXckJ3dTZVRmdrTGtNTlEzdnVnSHZDeDR0IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwXC9zYW5jdHVtXC9jc3JmLWNvb2tpZSIsInJvdXRlIjoic2FuY3R1bS5jc3JmLWNvb2tpZSJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1776537393),('8lJvYRLfLqutPHUOeC2RrM9VioHig3TWEAHATuvh',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJtRDMxRUJudXlGSG05dUVPV2JZZlVMOEhVaTczcHlBZ3d5OWZvYngxIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL2xvY2FsaG9zdDo4MDAwXC9zYW5jdHVtXC9jc3JmLWNvb2tpZSIsInJvdXRlIjoic2FuY3R1bS5jc3JmLWNvb2tpZSJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1776515531),('eL07TncGdjfdppzLU86vxQQ8gm8EZ0xEUxZv6gP7',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJmaXJHUmN0cG1maUw5OXVLMlNEZUhyemdSb1BiVTlVUUt0VkJlQVBFIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwXC9zYW5jdHVtXC9jc3JmLWNvb2tpZSIsInJvdXRlIjoic2FuY3R1bS5jc3JmLWNvb2tpZSJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1776865784),('g2qI6spRXwFawtYxz6tz57duINU7eCpLUpTnuH7T',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJ1dUcxR3VPdU1TRENKOUljZHFQSEloWmlYaFRCVHF5QkFsZmN4eDVxIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwXC9zYW5jdHVtXC9jc3JmLWNvb2tpZSIsInJvdXRlIjoic2FuY3R1bS5jc3JmLWNvb2tpZSJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1776515811),('gAUP75qDYnt6EbcbeTSAkk3EM7DX0YC4UbeIxaqw',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJhbHZacEd1dUo3Sko2N20xMzNiSFNRNlJhV1VzWmQ5V2daaU0zMTB1IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwIiwicm91dGUiOm51bGx9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1776356885),('hrPXgxKBT3SDZoaCSzEhaAQp0tysAYSNEpMc3QYV',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJsWVZtcFZLREwzNjc3N3dqbWlQRm54MTRFWG9yQ0tkY29OWlhlMXFuIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL2xvY2FsaG9zdDo4MDAwXC9zYW5jdHVtXC9jc3JmLWNvb2tpZSIsInJvdXRlIjoic2FuY3R1bS5jc3JmLWNvb2tpZSJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1776091814),('iLQrYyim2M07kxo1XQsVzsddDYi4nR40xX8c9d0T',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJpQnhMclNCbjNaMVlDc2E3cjQ5YVRuSmN4SXNiZ0tNZW9hT1gwaWtmIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwIiwicm91dGUiOm51bGx9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1775048361),('IR16Jh4OPaK5evuatoqiQWDbdrhW2j6QSZDx4n9S',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJla1dDMkhTRE01UmR4em44N3BZdlVIbmxodE1OcDR4czFhMVh0NTY0IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwXC9zYW5jdHVtXC9jc3JmLWNvb2tpZSIsInJvdXRlIjoic2FuY3R1bS5jc3JmLWNvb2tpZSJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1776616990),('l6dAnnxVVFfsqCiRfJoetyYUENXsLZvoSnYBgrcf',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJSMElVQWRJY3BSTWRMMkU4OW5aUVNNWTgwZ1Q4enh3RXU0UW5pU1ZkIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwXC9zYW5jdHVtXC9jc3JmLWNvb2tpZSIsInJvdXRlIjoic2FuY3R1bS5jc3JmLWNvb2tpZSJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1776960683),('nMU0Non7PLQDBKLBbvy2gbjYau38u3JfMuLfekXI',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJhRVp3dVMxZENlR29xd3JSWmE3alpMZU1rV2wxT3lueThIbEpEV0dyIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwXC9zYW5jdHVtXC9jc3JmLWNvb2tpZSIsInJvdXRlIjoic2FuY3R1bS5jc3JmLWNvb2tpZSJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1778167051),('o26NHnCbUH7XuD4qEjNLCzCmbfLfSiZtFSLwI6W2',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJYTnRlU2lFc2FQYTFEb000STFURktwUmx2WEw5MjJua1J2SUJhVDN4IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwXC9hcGktZG9jcyIsInJvdXRlIjpudWxsfSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==',1775666383),('o769OvzNtZMdo4M1hovXokzefEBh3WAYVdYdFZop',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJWaFdIdzlYeWI5SUJ0NlNkb0xUeEt0Y1pLejVqUU1EZ3dUY0U2aklXIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL2xvY2FsaG9zdDo4MDAwXC9zYW5jdHVtXC9jc3JmLWNvb2tpZSIsInJvdXRlIjoic2FuY3R1bS5jc3JmLWNvb2tpZSJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1776443416),('q0xh52hzfoeDhlSNMgZRvj2bHg7QWLdmHATOOS3e',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJud2Z4TEt5akZpZ0VQbmtSOHM3YUFTRGNVSjd3ajVsTTZIVGo1bkpjIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwXC9zYW5jdHVtXC9jc3JmLWNvb2tpZSIsInJvdXRlIjoic2FuY3R1bS5jc3JmLWNvb2tpZSJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1776866527),('QtLQvyYbkJGP4rb34nzaZxChTPvWTgSrP6XuivAU',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36','eyJfdG9rZW4iOiI2TUhtZ29kWmpNRFVUMDJFNGxSRkUzUzJwdXRjVElSczVUNms4V2cwIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL2xvY2FsaG9zdDo4MDAwXC9zYW5jdHVtXC9jc3JmLWNvb2tpZSIsInJvdXRlIjoic2FuY3R1bS5jc3JmLWNvb2tpZSJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1776167966),('r9oMHO2FVw4sYIsBK9LWwDdaXVmG3aGpPD0VzegI',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJqaXRmN2dQUnQ0MnBDNW03cTZBZzVFQWpPQWZxcmRjOGpMUnRlOHFEIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwXC9zYW5jdHVtXC9jc3JmLWNvb2tpZSIsInJvdXRlIjoic2FuY3R1bS5jc3JmLWNvb2tpZSJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1776515682),('rSV8xDghP4Jib2xg0uMA4lKrboAmmgTIMknFE4w3',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','eyJfdG9rZW4iOiI4bVBSM2h4U2NycFlGQktSTDR5cndUUUppWERrbXRQc3FuT1JpQ1FXIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwXC9zYW5jdHVtXC9jc3JmLWNvb2tpZSIsInJvdXRlIjoic2FuY3R1bS5jc3JmLWNvb2tpZSJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1776616034),('RYb4muzc4MmkhEz5ktaVaZI0STtlWqFh7aQzZVtE',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJReHZKczJpZVIwNGo3Y05ZMkx5VHg5UnY1R25obnJqZzlwa1hGVWlwIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwIiwicm91dGUiOm51bGx9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1775667890),('SfU19QRjkdyypxf2DyrfV7KhDPWkQcv8VLRmLxm2',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJLeHJsNmwyMEwwc0NmQlpkR3Jja2toQWN0MkhVenEySUNka3VFdFFUIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL2xvY2FsaG9zdDo4MDAwXC9zYW5jdHVtXC9jc3JmLWNvb2tpZSIsInJvdXRlIjoic2FuY3R1bS5jc3JmLWNvb2tpZSJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1776352521),('VF4GaX7JaJXwhmr7YdiuzsoTelyxKm5b0Pu40pa4',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJMRUdtQTNUajJwZ0pFdlJPb3hubEsxZWdQQVBPRnZhSjlyRTVZa2l2IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL2xvY2FsaG9zdDo4MDAwXC9zYW5jdHVtXC9jc3JmLWNvb2tpZSIsInJvdXRlIjoic2FuY3R1bS5jc3JmLWNvb2tpZSJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1776272163),('W3Jlby3c9QC8PMc7kozKBuujA7ZcfBtkhmO3a4ST',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJZS2lDSUxDWlpkMnBLOGdFNk05d1BEaVpqWXRSY0hlMXBpeWdKcFNOIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwXC9zYW5jdHVtXC9jc3JmLWNvb2tpZSIsInJvdXRlIjoic2FuY3R1bS5jc3JmLWNvb2tpZSJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1778259628),('x3Qxs2dLQtW5MsRVOwObGWYV3FhdmfOksWt7KWaD',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJxazRPNWUzaERoZjY0VHhFNmtXSG5PMUR0bWFYSW8zWldpNjJiTXhWIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwXC9zYW5jdHVtXC9jc3JmLWNvb2tpZSIsInJvdXRlIjoic2FuY3R1bS5jc3JmLWNvb2tpZSJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1776515824),('xsnrQozDovcQViUuPjn7MgdrFUulJvwggHCBxuH6',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJqaG1YSHR0T0xCMzVranNLOWR6dUtaUzJaOFUzcGhaRDlJVmJkMWxpIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwIiwicm91dGUiOm51bGx9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1774774367),('zfyvk5aLpbF6VIjLrw5OkGP35om5hyT8mnwKrOsC',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJsZnR6OE1WUEw1cmJrTUgybVJDWnBVWTB2TElsWkdmcGQ2eDBNUUl4IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwXC9zYW5jdHVtXC9jc3JmLWNvb2tpZSIsInJvdXRlIjoic2FuY3R1bS5jc3JmLWNvb2tpZSJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1776515982),('ZkDBXZagQ79PHexTgrNI9dZBXDzvdNBMqvAI7LaF',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJKakIzbXFBYlVXM3FmbUhGa1QyU2dDeDhTQ3p4Y0s4Yk5NZk9iNEYwIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL2xvY2FsaG9zdDo4MDAwXC9zYW5jdHVtXC9jc3JmLWNvb2tpZSIsInJvdXRlIjoic2FuY3R1bS5jc3JmLWNvb2tpZSJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1776442659),('zvBemVCX6JLKga7NlCIj26ZXfsW5yCIF4utz27PR',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJnMWJ6a0dLNEszTnkzcnlPRzhXeDFIM21qMW1aNFpod3F0aVAyVVlRIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwIiwicm91dGUiOm51bGx9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1775919450);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TRANS_AKTIFITAS_UTAMA`
--

DROP TABLE IF EXISTS `TRANS_AKTIFITAS_UTAMA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TRANS_AKTIFITAS_UTAMA` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `MASTER_AKTIFITAS_ID` int NOT NULL COMMENT 'FK ke MASTER_AKTIFITAS_UTAMA',
  `INDIKATOR_BIDANG_ID` int NOT NULL COMMENT 'FK ke TRANS_INDIKATOR_BIDANG',
  `PERIODE_ID` int NOT NULL COMMENT 'FK ke MASTER_PERIODE',
  `NAMA_AKTIFITAS` varchar(300) NOT NULL COMMENT 'Nama dokumen output (disalin dari master, bisa dioverride)',
  `TARGET` decimal(10,2) NOT NULL DEFAULT '1.00',
  `REALISASI` decimal(10,2) NOT NULL DEFAULT '0.00',
  `BOBOT_TARGET` decimal(5,2) NOT NULL DEFAULT '35.00' COMMENT 'Bobot target dokumen output dalam persen',
  `BOBOT_REALISASI` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT 'Auto-dihitung oleh trigger: BOBOT_TARGET × (REALISASI/TARGET)',
  `KETERANGAN` text,
  `FILE_BUKTI` varchar(255) DEFAULT NULL,
  `FLAG_ACTIVE` tinyint(1) DEFAULT '1',
  `LOG_ENTRY_NAME` varchar(100) DEFAULT NULL,
  `LOG_ENTRY_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LOG_UPDATE_NAME` varchar(100) DEFAULT NULL,
  `LOG_UPDATE_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `idx_tau_master` (`MASTER_AKTIFITAS_ID`),
  KEY `idx_tau_ind_bidang` (`INDIKATOR_BIDANG_ID`),
  KEY `idx_tau_periode` (`PERIODE_ID`),
  CONSTRAINT `FK_TAU_IND_BIDANG` FOREIGN KEY (`INDIKATOR_BIDANG_ID`) REFERENCES `TRANS_INDIKATOR_BIDANG` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_TAU_MASTER` FOREIGN KEY (`MASTER_AKTIFITAS_ID`) REFERENCES `MASTER_AKTIFITAS_UTAMA` (`ID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `FK_TAU_PERIODE` FOREIGN KEY (`PERIODE_ID`) REFERENCES `MASTER_PERIODE` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Realisasi aktivitas utama (dokumen output) per bidang per periode';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TRANS_AKTIFITAS_UTAMA`
--

LOCK TABLES `TRANS_AKTIFITAS_UTAMA` WRITE;
/*!40000 ALTER TABLE `TRANS_AKTIFITAS_UTAMA` DISABLE KEYS */;
INSERT INTO `TRANS_AKTIFITAS_UTAMA` VALUES (1,1,1,1,'Dokumen Rancangan Awal RPJMD/RKPD',1.00,0.00,35.00,0.00,'Dummy data aktifitas utama untuk indikator bidang #1',NULL,1,'Seeder','2026-05-09 08:10:01',NULL,NULL),(2,3,1,1,'Telaahan Dokumen Perencanaan Pembangunan Daerah',2.00,2.00,23.33,23.33,'Dummy data aktifitas utama untuk indikator bidang #1',NULL,1,'Seeder','2026-05-09 08:10:01',NULL,NULL),(3,2,1,1,'Dokumen Rancangan Awal RPJMD/RKPD',3.00,2.00,35.00,23.33,'Dummy data aktifitas utama untuk indikator bidang #1',NULL,1,'Seeder','2026-05-09 08:10:01',NULL,NULL),(4,4,1,1,'Telaahan Dokumen Perencanaan Pembangunan Daerah',1.00,1.00,23.33,23.33,'Dummy data aktifitas utama untuk indikator bidang #1',NULL,1,'Seeder','2026-05-09 08:10:01',NULL,NULL),(5,6,1,1,'Dokumen Rancangan Awal RPJMD/RKPD TES',2.00,1.00,35.00,17.50,'Dummy data aktifitas utama untuk indikator bidang #1',NULL,1,'Seeder','2026-05-09 08:10:01',NULL,NULL),(6,1,2,1,'Dokumen Rancangan Awal RPJMD/RKPD',1.00,1.00,35.00,35.00,'Dummy data aktifitas utama untuk indikator bidang #2',NULL,1,'Seeder','2026-05-09 08:10:01',NULL,NULL),(7,3,2,1,'Telaahan Dokumen Perencanaan Pembangunan Daerah',2.00,1.00,23.33,11.67,'Dummy data aktifitas utama untuk indikator bidang #2',NULL,1,'Seeder','2026-05-09 08:10:01',NULL,NULL),(8,2,2,1,'Dokumen Rancangan Awal RPJMD/RKPD',3.00,3.00,35.00,35.00,'Dummy data aktifitas utama untuk indikator bidang #2',NULL,1,'Seeder','2026-05-09 08:10:01',NULL,NULL),(9,4,2,1,'Telaahan Dokumen Perencanaan Pembangunan Daerah',1.00,0.00,23.33,0.00,'Dummy data aktifitas utama untuk indikator bidang #2',NULL,1,'Seeder','2026-05-09 08:10:01',NULL,NULL),(10,6,2,1,'Dokumen Rancangan Awal RPJMD/RKPD TES',2.00,2.00,35.00,35.00,'Dummy data aktifitas utama untuk indikator bidang #2',NULL,1,'Seeder','2026-05-09 08:10:01',NULL,NULL),(11,1,3,1,'Dokumen Rancangan Awal RPJMD/RKPD',1.00,0.00,35.00,0.00,'Dummy data aktifitas utama untuk indikator bidang #3',NULL,1,'Seeder','2026-05-09 08:10:01',NULL,NULL),(12,3,3,1,'Telaahan Dokumen Perencanaan Pembangunan Daerah',2.00,2.00,23.33,23.33,'Dummy data aktifitas utama untuk indikator bidang #3',NULL,1,'Seeder','2026-05-09 08:10:01',NULL,NULL),(13,2,3,1,'Dokumen Rancangan Awal RPJMD/RKPD',3.00,2.00,35.00,23.33,'Dummy data aktifitas utama untuk indikator bidang #3',NULL,1,'Seeder','2026-05-09 08:10:01',NULL,NULL),(14,4,3,1,'Telaahan Dokumen Perencanaan Pembangunan Daerah',1.00,1.00,23.33,23.33,'Dummy data aktifitas utama untuk indikator bidang #3',NULL,1,'Seeder','2026-05-09 08:10:01',NULL,NULL),(15,6,3,1,'Dokumen Rancangan Awal RPJMD/RKPD TES',2.00,1.00,35.00,17.50,'Dummy data aktifitas utama untuk indikator bidang #3',NULL,1,'Seeder','2026-05-09 08:10:01',NULL,NULL),(16,1,4,1,'Dokumen Rancangan Awal RPJMD/RKPD',1.00,1.00,35.00,35.00,'Dummy data aktifitas utama untuk indikator bidang #4',NULL,1,'Seeder','2026-05-09 08:10:01',NULL,NULL),(17,3,4,1,'Telaahan Dokumen Perencanaan Pembangunan Daerah',2.00,1.00,23.33,11.67,'Dummy data aktifitas utama untuk indikator bidang #4',NULL,1,'Seeder','2026-05-09 08:10:01',NULL,NULL),(18,2,4,1,'Dokumen Rancangan Awal RPJMD/RKPD',3.00,3.00,35.00,35.00,'Dummy data aktifitas utama untuk indikator bidang #4',NULL,1,'Seeder','2026-05-09 08:10:01',NULL,NULL),(19,4,4,1,'Telaahan Dokumen Perencanaan Pembangunan Daerah',1.00,0.00,23.33,0.00,'Dummy data aktifitas utama untuk indikator bidang #4',NULL,1,'Seeder','2026-05-09 08:10:01',NULL,NULL),(20,6,4,1,'Dokumen Rancangan Awal RPJMD/RKPD TES',2.00,2.00,35.00,35.00,'Dummy data aktifitas utama untuk indikator bidang #4',NULL,1,'Seeder','2026-05-09 08:10:01',NULL,NULL),(21,1,56,2,'Dokumen Rancangan Awal RPJMD/RKPD',1.00,1.00,35.00,35.00,'Dummy data aktifitas utama untuk indikator bidang #56',NULL,1,'Seeder','2026-05-09 08:10:01',NULL,NULL),(22,3,56,2,'Telaahan Dokumen Perencanaan Pembangunan Daerah',2.00,1.00,23.33,11.67,'Dummy data aktifitas utama untuk indikator bidang #56',NULL,1,'Seeder','2026-05-09 08:10:01',NULL,NULL),(23,2,56,2,'Dokumen Rancangan Awal RPJMD/RKPD',3.00,3.00,35.00,35.00,'Dummy data aktifitas utama untuk indikator bidang #56',NULL,1,'Seeder','2026-05-09 08:10:01',NULL,NULL),(24,4,56,2,'Telaahan Dokumen Perencanaan Pembangunan Daerah',1.00,0.00,23.33,0.00,'Dummy data aktifitas utama untuk indikator bidang #56',NULL,1,'Seeder','2026-05-09 08:10:01',NULL,NULL),(25,6,56,2,'Dokumen Rancangan Awal RPJMD/RKPD TES',2.00,2.00,35.00,35.00,'Dummy data aktifitas utama untuk indikator bidang #56',NULL,1,'Seeder','2026-05-09 08:10:01',NULL,NULL),(26,1,57,2,'Dokumen Rancangan Awal RPJMD/RKPD',1.00,0.00,35.00,0.00,'Dummy data aktifitas utama untuk indikator bidang #57',NULL,1,'Seeder','2026-05-09 08:10:01',NULL,NULL),(27,3,57,2,'Telaahan Dokumen Perencanaan Pembangunan Daerah',2.00,2.00,23.33,23.33,'Dummy data aktifitas utama untuk indikator bidang #57',NULL,1,'Seeder','2026-05-09 08:10:01',NULL,NULL),(28,2,57,2,'Dokumen Rancangan Awal RPJMD/RKPD',3.00,2.00,35.00,23.33,'Dummy data aktifitas utama untuk indikator bidang #57',NULL,1,'Seeder','2026-05-09 08:10:01',NULL,NULL),(29,4,57,2,'Telaahan Dokumen Perencanaan Pembangunan Daerah',1.00,1.00,23.33,23.33,'Dummy data aktifitas utama untuk indikator bidang #57',NULL,1,'Seeder','2026-05-09 08:10:01',NULL,NULL),(30,6,57,2,'Dokumen Rancangan Awal RPJMD/RKPD TES',2.00,1.00,35.00,17.50,'Dummy data aktifitas utama untuk indikator bidang #57',NULL,1,'Seeder','2026-05-09 08:10:01',NULL,NULL),(31,1,58,2,'Dokumen Rancangan Awal RPJMD/RKPD',1.00,1.00,35.00,35.00,'Dummy data aktifitas utama untuk indikator bidang #58',NULL,1,'Seeder','2026-05-09 08:10:01',NULL,NULL),(32,3,58,2,'Telaahan Dokumen Perencanaan Pembangunan Daerah',2.00,1.00,23.33,11.67,'Dummy data aktifitas utama untuk indikator bidang #58',NULL,1,'Seeder','2026-05-09 08:10:01',NULL,NULL),(33,2,58,2,'Dokumen Rancangan Awal RPJMD/RKPD',3.00,3.00,35.00,35.00,'Dummy data aktifitas utama untuk indikator bidang #58',NULL,1,'Seeder','2026-05-09 08:10:01',NULL,NULL),(34,4,58,2,'Telaahan Dokumen Perencanaan Pembangunan Daerah',1.00,0.00,23.33,0.00,'Dummy data aktifitas utama untuk indikator bidang #58',NULL,1,'Seeder','2026-05-09 08:10:01',NULL,NULL),(35,6,58,2,'Dokumen Rancangan Awal RPJMD/RKPD TES',2.00,2.00,35.00,35.00,'Dummy data aktifitas utama untuk indikator bidang #58',NULL,1,'Seeder','2026-05-09 08:10:01',NULL,NULL),(36,1,59,2,'Dokumen Rancangan Awal RPJMD/RKPD',1.00,0.00,35.00,0.00,'Dummy data aktifitas utama untuk indikator bidang #59',NULL,1,'Seeder','2026-05-09 08:10:01',NULL,NULL),(37,3,59,2,'Telaahan Dokumen Perencanaan Pembangunan Daerah',2.00,2.00,23.33,23.33,'Dummy data aktifitas utama untuk indikator bidang #59',NULL,1,'Seeder','2026-05-09 08:10:01',NULL,NULL),(38,2,59,2,'Dokumen Rancangan Awal RPJMD/RKPD',3.00,2.00,35.00,23.33,'Dummy data aktifitas utama untuk indikator bidang #59',NULL,1,'Seeder','2026-05-09 08:10:01',NULL,NULL),(39,4,59,2,'Telaahan Dokumen Perencanaan Pembangunan Daerah',1.00,1.00,23.33,23.33,'Dummy data aktifitas utama untuk indikator bidang #59',NULL,1,'Seeder','2026-05-09 08:10:01',NULL,NULL),(40,6,59,2,'Dokumen Rancangan Awal RPJMD/RKPD TES',2.00,1.00,35.00,17.50,'Dummy data aktifitas utama untuk indikator bidang #59',NULL,1,'Seeder','2026-05-09 08:10:01',NULL,NULL),(41,1,60,2,'Dokumen Rancangan Awal RPJMD/RKPD',1.00,1.00,35.00,35.00,'Dummy data aktifitas utama untuk indikator bidang #60',NULL,1,'Seeder','2026-05-09 08:10:01',NULL,NULL),(42,3,60,2,'Telaahan Dokumen Perencanaan Pembangunan Daerah',2.00,1.00,23.33,11.67,'Dummy data aktifitas utama untuk indikator bidang #60',NULL,1,'Seeder','2026-05-09 08:10:01',NULL,NULL),(43,2,60,2,'Dokumen Rancangan Awal RPJMD/RKPD',3.00,3.00,35.00,35.00,'Dummy data aktifitas utama untuk indikator bidang #60',NULL,1,'Seeder','2026-05-09 08:10:01',NULL,NULL),(44,4,60,2,'Telaahan Dokumen Perencanaan Pembangunan Daerah',1.00,0.00,23.33,0.00,'Dummy data aktifitas utama untuk indikator bidang #60',NULL,1,'Seeder','2026-05-09 08:10:01',NULL,NULL),(45,6,60,2,'Dokumen Rancangan Awal RPJMD/RKPD TES',2.00,2.00,35.00,35.00,'Dummy data aktifitas utama untuk indikator bidang #60',NULL,1,'Seeder','2026-05-09 08:10:01',NULL,NULL),(46,1,61,2,'Dokumen Rancangan Awal RPJMD/RKPD',1.00,0.00,35.00,0.00,'Dummy data aktifitas utama untuk indikator bidang #61',NULL,1,'Seeder','2026-05-09 08:10:01',NULL,NULL),(47,3,61,2,'Telaahan Dokumen Perencanaan Pembangunan Daerah',2.00,2.00,23.33,23.33,'Dummy data aktifitas utama untuk indikator bidang #61',NULL,1,'Seeder','2026-05-09 08:10:01',NULL,NULL),(48,2,61,2,'Dokumen Rancangan Awal RPJMD/RKPD',3.00,2.00,35.00,23.33,'Dummy data aktifitas utama untuk indikator bidang #61',NULL,1,'Seeder','2026-05-09 08:10:01',NULL,NULL),(49,4,61,2,'Telaahan Dokumen Perencanaan Pembangunan Daerah',1.00,1.00,23.33,23.33,'Dummy data aktifitas utama untuk indikator bidang #61',NULL,1,'Seeder','2026-05-09 08:10:01',NULL,NULL),(50,6,61,2,'Dokumen Rancangan Awal RPJMD/RKPD TES',2.00,1.00,35.00,17.50,'Dummy data aktifitas utama untuk indikator bidang #61',NULL,1,'Seeder','2026-05-09 08:10:01',NULL,NULL),(51,1,2,2,'Laporan Monitoring Triwulan 1',3.00,1.00,35.00,11.67,'Dokumen tahap awal','aktifitas-utama/bukti/3k897KR3YilPOKSizluz4ZKN38TSzDuR35wXUpRu.pdf',1,'Admin','2026-05-09 14:59:39',NULL,NULL);
/*!40000 ALTER TABLE `TRANS_AKTIFITAS_UTAMA` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_aktifitas_utama_insert` BEFORE INSERT ON `trans_aktifitas_utama` FOR EACH ROW BEGIN
  SET NEW.`BOBOT_REALISASI` = CASE
    WHEN NEW.`TARGET` > 0
    THEN ROUND(NEW.`BOBOT_TARGET` * (NEW.`REALISASI` / NEW.`TARGET`), 2)
    ELSE 0.00
  END;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_aktifitas_utama_update` BEFORE UPDATE ON `trans_aktifitas_utama` FOR EACH ROW BEGIN
  SET NEW.`BOBOT_REALISASI` = CASE
    WHEN NEW.`TARGET` > 0
    THEN ROUND(NEW.`BOBOT_TARGET` * (NEW.`REALISASI` / NEW.`TARGET`), 2)
    ELSE 0.00
  END;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
  `BOBOT_TARGET` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT 'Diambil dari TRANS_INDIKATOR_BIDANG.BOBOT_TARGET',
  `BOBOT_REALISASI` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT 'Dihitung: BOBOT_TARGET × (REALISASI / TARGET)',
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
INSERT INTO `TRANS_CAPAIAN_INDIKATOR` VALUES (1,1,19,7,36.84,7.50,2.76,4,'2026-05-07 21:36:44',1,NULL,'2026-04-01 23:13:58',NULL,'2026-05-07 21:36:44'),(2,57,10,1,10.00,7.50,0.75,1,'2026-04-18 04:40:01',1,'Admin','2026-04-17 17:32:11',NULL,'2026-05-07 00:31:25'),(3,58,10,0,0.00,7.50,0.00,0,NULL,1,'Admin','2026-04-17 17:35:23',NULL,'2026-05-07 00:31:25'),(4,59,1,1,100.00,7.50,7.50,1,'2026-04-18 04:51:40',1,'Admin','2026-04-17 17:37:14',NULL,'2026-05-07 00:31:25'),(5,60,1,1,100.00,7.50,7.50,1,'2026-04-18 04:46:09',1,'Admin','2026-04-17 18:14:10',NULL,'2026-05-07 00:31:25'),(6,61,5,1,20.00,7.50,1.50,1,'2026-04-18 06:10:01',1,'Admin','2026-04-17 18:15:17',NULL,'2026-05-07 00:31:25'),(7,62,15,0,0.00,7.50,0.00,0,NULL,1,'Admin','2026-04-17 18:17:12',NULL,'2026-05-07 00:31:25'),(8,63,29,2,6.90,7.50,0.52,2,'2026-04-22 15:26:15',1,'Admin','2026-04-17 18:20:24',NULL,'2026-05-07 00:31:25'),(9,64,5,2,40.00,7.50,3.00,2,'2026-04-22 15:39:48',1,'Admin','2026-04-18 14:46:27',NULL,'2026-05-07 00:31:25'),(10,65,5,0,0.00,7.50,0.00,0,NULL,1,'Admin','2026-04-26 14:00:45',NULL,'2026-05-07 00:31:25');
/*!40000 ALTER TABLE `TRANS_CAPAIAN_INDIKATOR` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_capaian_bobot_insert` BEFORE INSERT ON `trans_capaian_indikator` FOR EACH ROW BEGIN
  DECLARE v_bobot DECIMAL(5,2) DEFAULT 0.00;

  SELECT `BOBOT_TARGET` INTO v_bobot
  FROM `TRANS_INDIKATOR_BIDANG`
  WHERE `ID` = NEW.`INDIKATOR_BIDANG_ID`
  LIMIT 1;

  SET NEW.`BOBOT_TARGET`    = IFNULL(v_bobot, 0);
  SET NEW.`BOBOT_REALISASI` = CASE
    WHEN NEW.`TARGET` > 0
    THEN ROUND(IFNULL(v_bobot, 0) * (NEW.`REALISASI` / NEW.`TARGET`), 2)
    ELSE 0.00
  END;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_capaian_bobot_update` BEFORE UPDATE ON `trans_capaian_indikator` FOR EACH ROW BEGIN
  DECLARE v_bobot DECIMAL(5,2) DEFAULT 0.00;

  SELECT `BOBOT_TARGET` INTO v_bobot
  FROM `TRANS_INDIKATOR_BIDANG`
  WHERE `ID` = NEW.`INDIKATOR_BIDANG_ID`
  LIMIT 1;

  SET NEW.`BOBOT_TARGET`    = IFNULL(v_bobot, 0);
  SET NEW.`BOBOT_REALISASI` = CASE
    WHEN NEW.`TARGET` > 0
    THEN ROUND(IFNULL(v_bobot, 0) * (NEW.`REALISASI` / NEW.`TARGET`), 2)
    ELSE 0.00
  END;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
  `BOBOT_TARGET` decimal(5,2) NOT NULL DEFAULT '7.50' COMMENT 'Bobot target persen. Sinkron dari MASTER_INDIKATOR.BOBOT_TARGET',
  `BOBOT_REALISASI` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT 'Bobot Realisasi = BOBOT_TARGET × (Realisasi / Target). Diupdate trigger.',
  `OUTPUT_KINERJA` text COMMENT 'Catatan output kinerja spesifik baris ini',
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
INSERT INTO `TRANS_INDIKATOR_BIDANG` VALUES (1,1,1,1,7.50,2.76,NULL,1,NULL,'2026-04-01 23:08:56',NULL,'2026-05-07 21:36:45'),(2,1,2,1,7.50,0.00,NULL,1,NULL,'2026-04-02 00:51:48',NULL,'2026-04-02 00:52:17'),(3,1,3,1,7.50,0.00,NULL,1,NULL,'2026-04-02 00:52:17',NULL,'2026-04-02 00:52:17'),(4,1,4,1,7.50,0.00,NULL,1,NULL,'2026-04-02 00:52:39',NULL,'2026-04-02 00:52:39'),(56,2,3,1,7.50,0.00,NULL,1,'Admin','2026-04-13 14:54:11',NULL,NULL),(57,2,5,1,7.50,0.75,NULL,1,'Admin','2026-04-17 17:32:11',NULL,'2026-05-07 21:36:45'),(58,2,5,2,7.50,0.00,NULL,1,'Admin','2026-04-17 17:35:23',NULL,NULL),(59,2,2,2,7.50,7.50,NULL,1,'Admin','2026-04-17 17:37:14',NULL,'2026-05-07 21:36:45'),(60,2,3,2,7.50,7.50,NULL,1,'Admin','2026-04-17 18:14:10',NULL,'2026-05-07 21:36:45'),(61,2,4,2,7.50,1.50,NULL,1,'Admin','2026-04-17 18:15:17',NULL,'2026-05-07 21:36:45'),(62,2,6,2,7.50,0.00,NULL,1,'Admin','2026-04-17 18:17:12',NULL,NULL),(63,2,7,2,7.50,0.52,NULL,1,'Admin','2026-04-17 18:20:24',NULL,'2026-05-07 21:36:45'),(64,2,7,1,7.50,3.00,NULL,1,'Admin','2026-04-18 14:46:27',NULL,'2026-05-07 21:36:45'),(65,2,6,1,7.50,0.00,NULL,1,'Admin','2026-04-26 14:00:45',NULL,NULL);
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
  `JENIS_KEGIATAN_ID` int DEFAULT NULL COMMENT 'FK ke MASTER_JENIS_KEGIATAN (nullable untuk backward compat)',
  `TARGET` decimal(12,2) DEFAULT '0.00',
  `REALISASI` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT 'Jumlah realisasi aktual (angka, bukan jumlah baris entry)',
  `BOBOT_TARGET` decimal(5,2) NOT NULL DEFAULT '7.50' COMMENT 'Bobot target per jenis kegiatan pendukung dalam persen',
  PRIMARY KEY (`ID`),
  KEY `idx_indikator_bidang` (`INDIKATOR_BIDANG_ID`),
  KEY `idx_detail_jk` (`JENIS_KEGIATAN_ID`),
  CONSTRAINT `FK_DETAIL_JENIS_KEGIATAN` FOREIGN KEY (`JENIS_KEGIATAN_ID`) REFERENCES `MASTER_JENIS_KEGIATAN` (`ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK_DETAIL_TIB` FOREIGN KEY (`INDIKATOR_BIDANG_ID`) REFERENCES `TRANS_INDIKATOR_BIDANG` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TRANS_INDIKATOR_DETAIL`
--

LOCK TABLES `TRANS_INDIKATOR_DETAIL` WRITE;
/*!40000 ALTER TABLE `TRANS_INDIKATOR_DETAIL` DISABLE KEYS */;
INSERT INTO `TRANS_INDIKATOR_DETAIL` VALUES (1,1,'Rapat Koordinasi',1,10.00,3.00,7.50),(2,1,'Pembuatan SK Tim',2,1.00,1.00,7.50),(3,1,'Sosialisasi',3,5.00,2.00,7.50),(4,1,'Penyelarasan dengan Provinsi',4,3.00,1.00,7.50),(13,57,'Rapat Koordinasi',1,10.00,1.00,7.50),(14,58,'Rapat Koordinasi',1,10.00,0.00,7.50),(15,59,'Pembuatan SK Tim',2,1.00,1.00,7.50),(16,60,'Pembuatan SK Tim',2,1.00,1.00,7.50),(17,61,'Pembuatan SK Tim',2,5.00,1.00,7.50),(18,62,'Rapat Koordinasi',1,10.00,0.00,7.50),(19,62,'Pembuatan SK Tim',2,5.00,0.00,7.50),(20,63,'Rapat Koordinasi',1,10.00,0.00,7.50),(21,63,'Pembuatan SK Tim',2,5.00,0.00,7.50),(22,63,'Penyelarasan dengan Provinsi',4,7.00,2.00,7.50),(23,63,'Input data RKPD dan RKPD Perubahan',NULL,7.00,0.00,7.50),(24,64,'Sosialisasi',3,5.00,2.00,7.50),(25,65,'Pembuatan SK Tim',2,5.00,0.00,7.50);
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
  `LOG_ENTRY_NAME` varchar(100) DEFAULT NULL,
  `LOG_ENTRY_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LOG_UPDATE_NAME` varchar(100) DEFAULT NULL,
  `LOG_UPDATE_DATE` datetime DEFAULT NULL,
  `FLAG_ACTIVE` tinyint(1) DEFAULT '1',
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
INSERT INTO `TRANS_REALISASI_KEGIATAN` VALUES (5,2,'2026-03-05',NULL,NULL,'2026-04-02 00:53:26',NULL,'2026-04-02 00:53:26',1),(6,3,'2026-03-05',NULL,NULL,'2026-04-02 00:54:07',NULL,'2026-04-02 00:54:07',1),(7,3,'2026-03-09',NULL,NULL,'2026-04-02 00:54:16',NULL,'2026-04-02 00:54:16',1),(8,4,'2026-03-15',NULL,NULL,'2026-04-02 00:54:46',NULL,'2026-04-02 00:54:46',1),(26,3,'2026-04-02',NULL,NULL,'2026-04-02 01:05:18',NULL,'2026-04-02 01:05:18',1),(27,3,'2026-04-02',NULL,NULL,'2026-04-02 01:05:18',NULL,'2026-04-02 01:05:18',1),(28,3,'2026-04-02',NULL,NULL,'2026-04-02 01:05:18',NULL,'2026-04-02 01:05:18',1),(36,4,'2026-04-02',NULL,NULL,'2026-04-02 01:08:35',NULL,'2026-04-02 01:08:35',1),(37,4,'2026-04-02',NULL,NULL,'2026-04-02 01:08:35',NULL,'2026-04-02 01:08:35',1),(39,1,'2026-04-08','Kegiatan Sosialisasi',NULL,'2026-04-08 15:54:05',NULL,'2026-04-08 23:54:05',1),(40,1,'2026-04-08','Kegiatan Sosialisasi',NULL,'2026-04-08 15:56:12',NULL,'2026-04-08 23:56:12',1),(41,1,'2026-04-08','Kegiatan Sosialisasi',NULL,'2026-04-08 15:56:15',NULL,'2026-04-08 23:56:15',1),(42,1,'2026-04-08','Kegiatan Sosialisasi','Admin','2026-04-08 16:51:43',NULL,'2026-04-09 00:51:43',1),(43,1,'2026-04-08','Kegiatan Sosialisasi','Admin','2026-04-08 16:52:58',NULL,'2026-04-09 00:52:58',1),(44,1,'2026-04-08','Kegiatan Sosialisasi','Admin','2026-04-08 16:55:11',NULL,NULL,1),(48,1,'2026-04-08','Kegiatan Sosialisasi','Admin','2026-04-11 16:20:50',NULL,NULL,1),(49,1,'2026-04-14','fbnz','Admin','2026-04-14 11:55:54',NULL,NULL,1),(50,1,'2026-04-17','Rapat koordinasi tahap 2','Admin','2026-04-17 15:36:27',NULL,NULL,1),(51,1,'2026-04-17','Rapat koordinasi tahap 10','Admin','2026-04-17 15:38:56',NULL,NULL,1),(52,13,'2026-04-17','Rapat koordinasi tahap 10','Admin','2026-04-18 04:40:01',NULL,NULL,1),(53,16,'2026-04-17','Pembuatan SK Tim','Admin','2026-04-18 04:46:09',NULL,NULL,1),(54,22,'2026-04-17','Penyelarasan dengan Provinsi 1','Admin','2026-04-18 04:48:59',NULL,NULL,1),(55,22,'2026-04-17','Penyelarasan dengan Provinsi 1','Admin','2026-04-18 04:49:00',NULL,NULL,1),(58,15,'2026-04-17','Pembuatan SK Tim','Admin','2026-04-18 04:51:40',NULL,NULL,1),(59,17,'2026-04-17','Pembuatan SK Tim','Admin','2026-04-18 06:10:01',NULL,NULL,1),(73,24,'2026-04-22','fshaejhJ','Admin','2026-04-22 15:04:58',NULL,NULL,1),(74,24,'2026-04-22','bcgmfdky','Admin','2026-04-22 15:39:48',NULL,NULL,1);
/*!40000 ALTER TABLE `TRANS_REALISASI_KEGIATAN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TRANS_REALISASI_LAMPIRAN`
--

DROP TABLE IF EXISTS `TRANS_REALISASI_LAMPIRAN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TRANS_REALISASI_LAMPIRAN` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `REALISASI_ID` int NOT NULL COMMENT 'FK ke TRANS_REALISASI_KEGIATAN.ID',
  `TIPE` enum('FOTO','DOKUMEN') NOT NULL DEFAULT 'FOTO' COMMENT 'Jenis lampiran: FOTO atau DOKUMEN',
  `FILE_PATH` varchar(500) NOT NULL COMMENT 'Path file tunggal, tanpa escape, tanpa array',
  `URUTAN` int NOT NULL DEFAULT '1' COMMENT 'Urutan foto dalam satu kegiatan (1,2,3,...)',
  `FLAG_ACTIVE` tinyint(1) DEFAULT '1',
  `LOG_ENTRY_NAME` varchar(100) DEFAULT NULL,
  `LOG_ENTRY_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `idx_lamp_realisasi` (`REALISASI_ID`),
  KEY `idx_lamp_tipe` (`TIPE`),
  CONSTRAINT `FK_LAMP_REALISASI` FOREIGN KEY (`REALISASI_ID`) REFERENCES `TRANS_REALISASI_KEGIATAN` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Lampiran foto dan dokumen per realisasi kegiatan (1 baris per file)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TRANS_REALISASI_LAMPIRAN`
--

LOCK TABLES `TRANS_REALISASI_LAMPIRAN` WRITE;
/*!40000 ALTER TABLE `TRANS_REALISASI_LAMPIRAN` DISABLE KEYS */;
INSERT INTO `TRANS_REALISASI_LAMPIRAN` VALUES (1,39,'FOTO','realisasi/foto/ksoSBS5RqaA5rbOhVpvtwR2LFJd3skd4tcuoBIKH.png',1,1,'MIGRATION','2026-05-07 21:48:15'),(2,40,'FOTO','realisasi/foto/zX2IxxZJcWfVUS4HIsXodM1bJl5SCysr4XM3ipyM.png',1,1,'MIGRATION','2026-05-07 21:48:15'),(3,41,'FOTO','realisasi/foto/Pe6vbXesHXKdjtO42rxsVQmqSdoFQ6DmPNbQqRSf.png',1,1,'MIGRATION','2026-05-07 21:48:15'),(4,41,'FOTO','realisasi/foto/ak7sho6fTNDcj2xTjBBaZB5e7t1jXi0Lim8WF5Yx.png',2,1,'MIGRATION','2026-05-07 21:48:15'),(5,42,'FOTO','realisasi/foto/peQLByu4ra1PbL5R9eOjOH7vja4UKF4HlyTWvgS5.png',1,1,'MIGRATION','2026-05-07 21:48:15'),(6,42,'FOTO','realisasi/foto/vy8karsM2Q9mgiFMfG74L3agykLSggv3Jpi676V6.png',2,1,'MIGRATION','2026-05-07 21:48:15'),(7,43,'FOTO','realisasi/foto/zIX4XoOtLJhm9E9qH9KlyLpY4nLHagOYv122ika9.png',1,1,'MIGRATION','2026-05-07 21:48:15'),(8,43,'FOTO','realisasi/foto/xHdsNO8LCcVZkx8crB4kFJIfrpGmCzpaXfwkkILF.png',2,1,'MIGRATION','2026-05-07 21:48:15'),(9,44,'FOTO','realisasi/foto/u3i4z7RNorAl3HTj4PsXeoRubWk06oeEwiEm97Tf.png',1,1,'MIGRATION','2026-05-07 21:48:15'),(10,44,'FOTO','realisasi/foto/8NzUYm3eT1kzdFy2aHD1ZHGJjKQRmBWinalop5Fd.png',2,1,'MIGRATION','2026-05-07 21:48:15'),(11,48,'FOTO','realisasi/foto/DCQ8w1vliEFybY1SDSXPA1f4D5T4kViIMdfx5IaS.png',1,1,'MIGRATION','2026-05-07 21:48:15'),(12,48,'FOTO','realisasi/foto/G3FLD1hgfghuwD7FgYfX9OoYanEBYZEQB11Li3Tx.png',2,1,'MIGRATION','2026-05-07 21:48:15'),(13,49,'FOTO','realisasi/foto/evAVGccffCAHh4R50NF1RL2nfn0JVqO3klVv6hgN.png',1,1,'MIGRATION','2026-05-07 21:48:15'),(14,50,'FOTO','/storage/realisasi/foto/yrvW0xl9PL2PEv0zww59Z1AVBfyNvyYDcwdG09Rc.png',1,1,'MIGRATION','2026-05-07 21:48:15'),(15,50,'FOTO','/storage/realisasi/foto/4Or3tvPVhi6AAjOgy3N1nmOM9ZlfsxH5iwXS8ABr.png',2,1,'MIGRATION','2026-05-07 21:48:15'),(16,51,'FOTO','/storage/realisasi/foto/iqvTloQ3Yl4snZL6yVAQLWoaHX6JDinOGtVx3cSg.png',1,1,'MIGRATION','2026-05-07 21:48:15'),(17,51,'FOTO','/storage/realisasi/foto/HsSybvqkBIQ2d944iJkWFi3eXmJwKHQxoxp9swG7.png',2,1,'MIGRATION','2026-05-07 21:48:15'),(18,52,'FOTO','/storage/realisasi/foto/RZeGLgGy6Nj4Bp1ZZTwZYFo1C8zOKaUB5fJZZz0G.png',1,1,'MIGRATION','2026-05-07 21:48:15'),(19,52,'FOTO','/storage/realisasi/foto/6pA7oUqt7gJ4OpR0GoczQWYuZj6BT2szu250JPdt.png',2,1,'MIGRATION','2026-05-07 21:48:15'),(20,53,'FOTO','/storage/realisasi/foto/Ahq0JELFWbiPaDggU880GIXB27rmEhxTwrzAzHTe.png',1,1,'MIGRATION','2026-05-07 21:48:15'),(21,53,'FOTO','/storage/realisasi/foto/5p0sieCsEyIlXrFlHT4JjSEYIcUJ7uQPRZmlTWJt.png',2,1,'MIGRATION','2026-05-07 21:48:15'),(22,54,'FOTO','/storage/realisasi/foto/0SoLOcQLxISFEufUuspBnex6Zv1d7AgnoazhbCTI.png',1,1,'MIGRATION','2026-05-07 21:48:15'),(23,54,'FOTO','/storage/realisasi/foto/E81y3QfBvCB2EgkxiNI3ZC2FmSPvgogWOGxwF2VD.png',2,1,'MIGRATION','2026-05-07 21:48:15'),(24,55,'FOTO','/storage/realisasi/foto/lOSwCllpLYolRhyKvjKpQKBhlVxlHhYjAUknerwF.png',1,1,'MIGRATION','2026-05-07 21:48:15'),(25,55,'FOTO','/storage/realisasi/foto/xmq5PY1vMMURz13LiVtCD0vJAAjT9B87MEGuAUKG.png',2,1,'MIGRATION','2026-05-07 21:48:15'),(26,58,'FOTO','/storage/realisasi/foto/dUQsqjC0MdtP1hL3NLMFZ91tRL8KDVJX4m5928Tm.png',1,1,'MIGRATION','2026-05-07 21:48:15'),(27,58,'FOTO','/storage/realisasi/foto/Q5ARnbeUnkkRmrUnIlomOBEeOfBsio1bHMTKJgUO.png',2,1,'MIGRATION','2026-05-07 21:48:15'),(28,59,'FOTO','/storage/realisasi/foto/OmxsQFScPRTlsHeX7I2mcDnD9PlJPePrxOh8KiGY.png',1,1,'MIGRATION','2026-05-07 21:48:15'),(29,59,'FOTO','/storage/realisasi/foto/pIBPpGzHX9xhqWkij5Ory9OdgmmRj9rK6PCuHwws.png',2,1,'MIGRATION','2026-05-07 21:48:15'),(30,73,'FOTO','realisasi/foto/cwWD1Y4vlUtS4eXc5BIOS4qsgZA8YuEx8hBgv5pj.png',1,1,'MIGRATION','2026-05-07 21:48:15'),(31,73,'FOTO','realisasi/foto/W4TNi5LkhBXpnXMfV3IDoGuXk6gfEAiX1Kdf16pz.png',2,1,'MIGRATION','2026-05-07 21:48:15'),(32,74,'FOTO','realisasi/foto/mYGbpQyMtyhgLI1q1WDWHwhs6E2avyPzotlPgU0X.png',1,1,'MIGRATION','2026-05-07 21:48:15'),(33,39,'DOKUMEN','realisasi/dokumen/JbxQYseloeIfSVK7vzVFYL9xGxo6AKXkNK8OJJ38.docx',1,1,'MIGRATION','2026-05-07 21:48:15'),(34,40,'DOKUMEN','realisasi/dokumen/ihYXXZBgJqDejVF2D81TDJb66K3j5A7zKnNzzFtu.docx',1,1,'MIGRATION','2026-05-07 21:48:15'),(35,41,'DOKUMEN','realisasi/dokumen/paLfBfkdD4lTz1VUx2FgpqUPrYF5n17AVbniQ3ik.docx',1,1,'MIGRATION','2026-05-07 21:48:15'),(36,42,'DOKUMEN','realisasi/dokumen/cLYecfr5wjcwDtwsSTsmnVWipsXXh2fndzoibhg7.docx',1,1,'MIGRATION','2026-05-07 21:48:15'),(37,43,'DOKUMEN','realisasi/dokumen/qVToiROotP0ywOATuzNmLmcsKFk9lynV7jqfcfVh.docx',1,1,'MIGRATION','2026-05-07 21:48:15'),(38,44,'DOKUMEN','realisasi/dokumen/ZSPBOt58gjJ8m3d6xFZFYfa7U8G2sy41L0NnIZmG.docx',1,1,'MIGRATION','2026-05-07 21:48:15'),(39,48,'DOKUMEN','realisasi/dokumen/WbkDJBIf1mt93Nz4ewgNkE3lgnVfxtrcThX4JcsA.pdf',1,1,'MIGRATION','2026-05-07 21:48:15'),(40,49,'DOKUMEN','realisasi/dokumen/JDqvY1HD4BkfF7Q9RgxnzSaAsOEStK243DJhlwk4.pdf',1,1,'MIGRATION','2026-05-07 21:48:15'),(41,50,'DOKUMEN','/storage/realisasi/dokumen/i1CExngcTKL2yhySbVQeGf6X0wTkAC0hTjJDqgSo.pdf',1,1,'MIGRATION','2026-05-07 21:48:15'),(42,51,'DOKUMEN','/storage/realisasi/dokumen/6S1M1Vc9wxNDN41ukP1FMhqq4ikMvxfCpcbfNhpS.pdf',1,1,'MIGRATION','2026-05-07 21:48:15'),(43,52,'DOKUMEN','/storage/realisasi/dokumen/SPugcl9RvY7KrvEDWkL6FZzXeVgvQqIvLrfKhmlM.pdf',1,1,'MIGRATION','2026-05-07 21:48:15'),(44,53,'DOKUMEN','/storage/realisasi/dokumen/GQH1losq6TpYHN5rtlN87qpI4J0ZkZTVCHoSzzm8.pdf',1,1,'MIGRATION','2026-05-07 21:48:15'),(45,54,'DOKUMEN','/storage/realisasi/dokumen/OMtLLVyKoiZIJgVV94eSr8Wg2QAyO5zvVkAjjkO8.pdf',1,1,'MIGRATION','2026-05-07 21:48:15'),(46,55,'DOKUMEN','/storage/realisasi/dokumen/Big0Ptb1nPN8lLjVRh3v7IjLQrJHPl3FygTcuYqo.pdf',1,1,'MIGRATION','2026-05-07 21:48:15'),(47,58,'DOKUMEN','/storage/realisasi/dokumen/ldNqKbGVdXmC3RVggCzr0CFFAwa82Y5m2rvGxLV7.pdf',1,1,'MIGRATION','2026-05-07 21:48:15'),(48,59,'DOKUMEN','/storage/realisasi/dokumen/52MTLHPhYcJNmUbvP1euIspZyiarDWQT1j4wSvOI.pdf',1,1,'MIGRATION','2026-05-07 21:48:15'),(49,74,'DOKUMEN','/storage/realisasi/dokumen/NvLrhHSm2SgRC9BPVVAkAI0AME2Bzj3rtmqp6jFB.pdf',1,1,'MIGRATION','2026-05-07 21:48:15');
/*!40000 ALTER TABLE `TRANS_REALISASI_LAMPIRAN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL COMMENT 'FK ke users.id',
  `role_id` bigint unsigned NOT NULL COMMENT 'FK ke roles.id',
  `bidang_id` int DEFAULT NULL COMMENT 'FK ke MASTER_BIDANG.ID — NULL jika admin_aplikasi',
  `LOG_ENTRY_NAME` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LOG_ENTRY_DATE` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_user_role_bidang` (`user_id`,`role_id`,`bidang_id`),
  KEY `idx_ur_user_id` (`user_id`),
  KEY `idx_ur_role_id` (`role_id`),
  KEY `idx_ur_bidang_id` (`bidang_id`),
  CONSTRAINT `FK_UR_BIDANG` FOREIGN KEY (`bidang_id`) REFERENCES `MASTER_BIDANG` (`ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK_UR_ROLE` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_UR_USER` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Pivot user ke role';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
 1 AS `PERIODE_ID`,
 1 AS `NAMA_PERIODE`,
 1 AS `BIDANG_ID`,
 1 AS `NAMA_BIDANG`,
 1 AS `PROGRAM_ID`,
 1 AS `NAMA_PROGRAM`,
 1 AS `INDIKATOR_UTAMA_ID`,
 1 AS `KODE_INDIKATOR_UTAMA`,
 1 AS `NAMA_INDIKATOR_UTAMA`,
 1 AS `INDIKATOR_KINERJA`,
 1 AS `TARGET_KINERJA`,
 1 AS `SATUAN_KINERJA`,
 1 AS `INDIKATOR_ID`,
 1 AS `NAMA_INDIKATOR`,
 1 AS `TIPE_AKTIFITAS`,
 1 AS `BOBOT_TARGET_MASTER`,
 1 AS `BOBOT_TARGET`,
 1 AS `BOBOT_REALISASI`,
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
 1 AS `PERIODE_ID`,
 1 AS `NAMA_PERIODE`,
 1 AS `NAMA_BIDANG`,
 1 AS `NAMA_INDIKATOR_UTAMA`,
 1 AS `NAMA_INDIKATOR`,
 1 AS `TIPE_AKTIFITAS`,
 1 AS `DETAIL_ID`,
 1 AS `JENIS_KEGIATAN`,
 1 AS `TARGET`,
 1 AS `REALISASI`,
 1 AS `BOBOT_TARGET`,
 1 AS `BOBOT_REALISASI`,
 1 AS `PERSENTASE`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_trans_indikator_rekap1`
--

DROP TABLE IF EXISTS `v_trans_indikator_rekap1`;
/*!50001 DROP VIEW IF EXISTS `v_trans_indikator_rekap1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_trans_indikator_rekap1` AS SELECT 
 1 AS `INDIKATOR_BIDANG_ID`,
 1 AS `PERIODE_ID`,
 1 AS `NAMA_PERIODE`,
 1 AS `NAMA_BIDANG`,
 1 AS `NAMA_INDIKATOR_UTAMA`,
 1 AS `NAMA_INDIKATOR`,
 1 AS `TIPE_AKTIFITAS`,
 1 AS `DETAIL_ID`,
 1 AS `JENIS_KEGIATAN`,
 1 AS `TARGET`,
 1 AS `REALISASI`,
 1 AS `BOBOT_TARGET`,
 1 AS `BOBOT_REALISASI`,
 1 AS `PERSENTASE`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_capaian_subkegiatan`
--

DROP TABLE IF EXISTS `vw_capaian_subkegiatan`;
/*!50001 DROP VIEW IF EXISTS `vw_capaian_subkegiatan`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_capaian_subkegiatan` AS SELECT 
 1 AS `PERIODE_ID`,
 1 AS `NAMA_PERIODE`,
 1 AS `BIDANG_ID`,
 1 AS `NAMA_BIDANG`,
 1 AS `PROGRAM_ID`,
 1 AS `NAMA_PROGRAM`,
 1 AS `INDIKATOR_UTAMA_ID`,
 1 AS `KODE_INDIKATOR_UTAMA`,
 1 AS `NAMA_INDIKATOR_UTAMA`,
 1 AS `INDIKATOR_KINERJA`,
 1 AS `TARGET_KINERJA`,
 1 AS `SATUAN_KINERJA`,
 1 AS `TOTAL_BOBOT_TARGET_PENDUKUNG`,
 1 AS `BOBOT_REALISASI_PENDUKUNG`,
 1 AS `BOBOT_REALISASI_UTAMA`,
 1 AS `TOTAL_CAPAIAN_SUBKEGIATAN`*/;
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
 1 AS `PERIODE_ID`,
 1 AS `NAMA_PERIODE`,
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
 1 AS `PERIODE_ID`,
 1 AS `NAMA_PERIODE`,
 1 AS `TOTAL_SUBKEGIATAN`,
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
 1 AS `PERIODE_ID`,
 1 AS `NAMA_PERIODE`,
 1 AS `INDIKATOR_ID`,
 1 AS `NAMA_INDIKATOR`,
 1 AS `TIPE_AKTIFITAS`,
 1 AS `TARGET`,
 1 AS `REALISASI`,
 1 AS `PERSENTASE`,
 1 AS `BOBOT_TARGET`,
 1 AS `BOBOT_REALISASI`,
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
 1 AS `PERIODE_ID`,
 1 AS `NAMA_PERIODE`,
 1 AS `TOTAL_SUBKEGIATAN`,
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
 1 AS `PERIODE_ID`,
 1 AS `NAMA_PERIODE`,
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
 1 AS `PERIODE_ID`,
 1 AS `NAMA_PERIODE`,
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
 1 AS `PERIODE_ID`,
 1 AS `NAMA_PERIODE`,
 1 AS `TOTAL_PROGRAM`,
 1 AS `TOTAL_BIDANG`,
 1 AS `TOTAL_SUBKEGIATAN`,
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
 1 AS `KODE_INDIKATOR_UTAMA`,
 1 AS `NAMA_INDIKATOR_UTAMA`,
 1 AS `INDIKATOR_KINERJA`,
 1 AS `INDIKATOR_ID`,
 1 AS `NAMA_INDIKATOR`,
 1 AS `TIPE_AKTIFITAS`,
 1 AS `TARGET`,
 1 AS `REALISASI`,
 1 AS `PERSENTASE`,
 1 AS `BOBOT_TARGET`,
 1 AS `BOBOT_REALISASI`,
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
 1 AS `REALISASI_ID`,
 1 AS `INDIKATOR_DETAIL_ID`,
 1 AS `TANGGAL_KEGIATAN`,
 1 AS `KETERANGAN`,
 1 AS `JENIS_KEGIATAN`,
 1 AS `NAMA_JENIS_KEGIATAN`,
 1 AS `TARGET`,
 1 AS `REALISASI`,
 1 AS `BOBOT_TARGET`,
 1 AS `FOTO_PATHS`,
 1 AS `DOKUMEN_PATH`,
 1 AS `JUMLAH_FOTO`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_trans_realisasi_lampiran`
--

DROP TABLE IF EXISTS `vw_trans_realisasi_lampiran`;
/*!50001 DROP VIEW IF EXISTS `vw_trans_realisasi_lampiran`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_trans_realisasi_lampiran` AS SELECT 
 1 AS `LAMPIRAN_ID`,
 1 AS `REALISASI_ID`,
 1 AS `TIPE`,
 1 AS `FILE_PATH`,
 1 AS `URUTAN`,
 1 AS `INDIKATOR_DETAIL_ID`,
 1 AS `TANGGAL_KEGIATAN`,
 1 AS `KETERANGAN`,
 1 AS `JENIS_KEGIATAN`,
 1 AS `NAMA_JENIS_KEGIATAN`,
 1 AS `NAMA_BIDANG`,
 1 AS `NAMA_PERIODE`*/;
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
/*!50001 VIEW `v_trans_indikator_bidang` AS select `TIB`.`ID` AS `ID`,`TIB`.`PERIODE_ID` AS `PERIODE_ID`,`MPD`.`NAMA_PERIODE` AS `NAMA_PERIODE`,`MB`.`ID` AS `BIDANG_ID`,`MB`.`NAMA_BIDANG` AS `NAMA_BIDANG`,`MPR`.`ID` AS `PROGRAM_ID`,`MPR`.`NAMA_PROGRAM` AS `NAMA_PROGRAM`,`MIU`.`ID` AS `INDIKATOR_UTAMA_ID`,`MIU`.`KODE_INDIKATOR_UTAMA` AS `KODE_INDIKATOR_UTAMA`,`MIU`.`NAMA_INDIKATOR_UTAMA` AS `NAMA_INDIKATOR_UTAMA`,`MIU`.`INDIKATOR_KINERJA` AS `INDIKATOR_KINERJA`,`MIU`.`TARGET_KINERJA` AS `TARGET_KINERJA`,`MIU`.`SATUAN_KINERJA` AS `SATUAN_KINERJA`,`MI`.`ID` AS `INDIKATOR_ID`,`MI`.`NAMA_INDIKATOR` AS `NAMA_INDIKATOR`,`MI`.`TIPE_AKTIFITAS` AS `TIPE_AKTIFITAS`,`MI`.`BOBOT_TARGET` AS `BOBOT_TARGET_MASTER`,`TIB`.`BOBOT_TARGET` AS `BOBOT_TARGET`,`TIB`.`BOBOT_REALISASI` AS `BOBOT_REALISASI`,`TIB`.`FLAG_ACTIVE` AS `FLAG_ACTIVE`,`TIB`.`LOG_ENTRY_NAME` AS `LOG_ENTRY_NAME`,`TIB`.`LOG_ENTRY_DATE` AS `LOG_ENTRY_DATE`,`TIB`.`LOG_UPDATE_NAME` AS `LOG_UPDATE_NAME`,`TIB`.`LOG_UPDATE_DATE` AS `LOG_UPDATE_DATE` from (((((`trans_indikator_bidang` `TIB` join `master_periode` `MPD` on((`MPD`.`ID` = `TIB`.`PERIODE_ID`))) join `master_bidang` `MB` on((`MB`.`ID` = `TIB`.`BIDANG_ID`))) join `master_indikator` `MI` on((`MI`.`ID` = `TIB`.`MASTER_INDIKATOR_ID`))) join `master_indikator_utama` `MIU` on((`MIU`.`ID` = `MI`.`INDIKATOR_UTAMA_ID`))) join `master_program` `MPR` on((`MPR`.`ID` = `MIU`.`PROGRAM_ID`))) */;
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
/*!50001 VIEW `v_trans_indikator_rekap` AS select `TIB`.`ID` AS `INDIKATOR_BIDANG_ID`,`TIB`.`PERIODE_ID` AS `PERIODE_ID`,`MPD`.`NAMA_PERIODE` AS `NAMA_PERIODE`,`MB`.`NAMA_BIDANG` AS `NAMA_BIDANG`,`MIU`.`NAMA_INDIKATOR_UTAMA` AS `NAMA_INDIKATOR_UTAMA`,`MI`.`NAMA_INDIKATOR` AS `NAMA_INDIKATOR`,`MI`.`TIPE_AKTIFITAS` AS `TIPE_AKTIFITAS`,`TID`.`ID` AS `DETAIL_ID`,coalesce(`MJK`.`NAMA_KEGIATAN`,`TID`.`JENIS_KEGIATAN`) AS `JENIS_KEGIATAN`,`TID`.`TARGET` AS `TARGET`,`TID`.`REALISASI` AS `REALISASI`,`TID`.`BOBOT_TARGET` AS `BOBOT_TARGET`,(case when (`TID`.`TARGET` > 0) then round((`TID`.`BOBOT_TARGET` * (`TID`.`REALISASI` / `TID`.`TARGET`)),2) else 0.00 end) AS `BOBOT_REALISASI`,(case when (`TID`.`TARGET` > 0) then round(((`TID`.`REALISASI` / `TID`.`TARGET`) * 100),2) else 0.00 end) AS `PERSENTASE` from ((((((`trans_indikator_detail` `TID` join `trans_indikator_bidang` `TIB` on((`TIB`.`ID` = `TID`.`INDIKATOR_BIDANG_ID`))) join `master_indikator` `MI` on((`MI`.`ID` = `TIB`.`MASTER_INDIKATOR_ID`))) join `master_indikator_utama` `MIU` on((`MIU`.`ID` = `MI`.`INDIKATOR_UTAMA_ID`))) join `master_bidang` `MB` on((`MB`.`ID` = `TIB`.`BIDANG_ID`))) join `master_periode` `MPD` on((`MPD`.`ID` = `TIB`.`PERIODE_ID`))) left join `master_jenis_kegiatan` `MJK` on((`MJK`.`ID` = `TID`.`JENIS_KEGIATAN_ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_trans_indikator_rekap1`
--

/*!50001 DROP VIEW IF EXISTS `v_trans_indikator_rekap1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_trans_indikator_rekap1` AS select `TIB`.`ID` AS `INDIKATOR_BIDANG_ID`,`TIB`.`PERIODE_ID` AS `PERIODE_ID`,`MPD`.`NAMA_PERIODE` AS `NAMA_PERIODE`,`MB`.`NAMA_BIDANG` AS `NAMA_BIDANG`,`MIU`.`NAMA_INDIKATOR_UTAMA` AS `NAMA_INDIKATOR_UTAMA`,`MI`.`NAMA_INDIKATOR` AS `NAMA_INDIKATOR`,`MI`.`TIPE_AKTIFITAS` AS `TIPE_AKTIFITAS`,`TID`.`ID` AS `DETAIL_ID`,coalesce(`MJK`.`NAMA_KEGIATAN`,`TID`.`JENIS_KEGIATAN`) AS `JENIS_KEGIATAN`,`TID`.`TARGET` AS `TARGET`,`TID`.`REALISASI` AS `REALISASI`,`TID`.`BOBOT_TARGET` AS `BOBOT_TARGET`,(case when (`TID`.`TARGET` > 0) then round((`TID`.`BOBOT_TARGET` * (`TID`.`REALISASI` / `TID`.`TARGET`)),2) else 0.00 end) AS `BOBOT_REALISASI`,(case when (`TID`.`TARGET` > 0) then round(((`TID`.`REALISASI` / `TID`.`TARGET`) * 100),2) else 0.00 end) AS `PERSENTASE` from ((((((`trans_indikator_detail` `TID` join `trans_indikator_bidang` `TIB` on((`TIB`.`ID` = `TID`.`INDIKATOR_BIDANG_ID`))) join `master_indikator` `MI` on((`MI`.`ID` = `TIB`.`MASTER_INDIKATOR_ID`))) join `master_indikator_utama` `MIU` on((`MIU`.`ID` = `MI`.`INDIKATOR_UTAMA_ID`))) join `master_bidang` `MB` on((`MB`.`ID` = `TIB`.`BIDANG_ID`))) join `master_periode` `MPD` on((`MPD`.`ID` = `TIB`.`PERIODE_ID`))) left join `master_jenis_kegiatan` `MJK` on((`MJK`.`ID` = `TID`.`JENIS_KEGIATAN_ID`))) union all select `TIB`.`ID` AS `INDIKATOR_BIDANG_ID`,`TAU`.`PERIODE_ID` AS `PERIODE_ID`,`MPD`.`NAMA_PERIODE` AS `NAMA_PERIODE`,`MB`.`NAMA_BIDANG` AS `NAMA_BIDANG`,`MIU`.`NAMA_INDIKATOR_UTAMA` AS `NAMA_INDIKATOR_UTAMA`,coalesce(`MAU`.`NAMA_AKTIFITAS`,`TAU`.`NAMA_AKTIFITAS`) AS `NAMA_INDIKATOR`,'UTAMA' AS `TIPE_AKTIFITAS`,`TAU`.`ID` AS `DETAIL_ID`,coalesce(`MAU`.`NAMA_AKTIFITAS`,`TAU`.`NAMA_AKTIFITAS`) AS `JENIS_KEGIATAN`,`TAU`.`TARGET` AS `TARGET`,`TAU`.`REALISASI` AS `REALISASI`,`TAU`.`BOBOT_TARGET` AS `BOBOT_TARGET`,`TAU`.`BOBOT_REALISASI` AS `BOBOT_REALISASI`,(case when (`TAU`.`TARGET` > 0) then round(((`TAU`.`REALISASI` / `TAU`.`TARGET`) * 100),2) else 0.00 end) AS `PERSENTASE` from ((((((`trans_aktifitas_utama` `TAU` join `trans_indikator_bidang` `TIB` on((`TIB`.`ID` = `TAU`.`INDIKATOR_BIDANG_ID`))) join `master_indikator` `MI` on((`MI`.`ID` = `TIB`.`MASTER_INDIKATOR_ID`))) join `master_indikator_utama` `MIU` on((`MIU`.`ID` = `MI`.`INDIKATOR_UTAMA_ID`))) join `master_bidang` `MB` on((`MB`.`ID` = `TIB`.`BIDANG_ID`))) join `master_periode` `MPD` on((`MPD`.`ID` = `TAU`.`PERIODE_ID`))) left join `master_aktifitas_utama` `MAU` on((`MAU`.`ID` = `TAU`.`MASTER_AKTIFITAS_ID`))) where (`TAU`.`FLAG_ACTIVE` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_capaian_subkegiatan`
--

/*!50001 DROP VIEW IF EXISTS `vw_capaian_subkegiatan`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_capaian_subkegiatan` AS select `TIB`.`PERIODE_ID` AS `PERIODE_ID`,`MPD`.`NAMA_PERIODE` AS `NAMA_PERIODE`,`MB`.`ID` AS `BIDANG_ID`,`MB`.`NAMA_BIDANG` AS `NAMA_BIDANG`,`MPR`.`ID` AS `PROGRAM_ID`,`MPR`.`NAMA_PROGRAM` AS `NAMA_PROGRAM`,`MIU`.`ID` AS `INDIKATOR_UTAMA_ID`,`MIU`.`KODE_INDIKATOR_UTAMA` AS `KODE_INDIKATOR_UTAMA`,`MIU`.`NAMA_INDIKATOR_UTAMA` AS `NAMA_INDIKATOR_UTAMA`,`MIU`.`INDIKATOR_KINERJA` AS `INDIKATOR_KINERJA`,`MIU`.`TARGET_KINERJA` AS `TARGET_KINERJA`,`MIU`.`SATUAN_KINERJA` AS `SATUAN_KINERJA`,sum(`TCI`.`BOBOT_TARGET`) AS `TOTAL_BOBOT_TARGET_PENDUKUNG`,sum(`TCI`.`BOBOT_REALISASI`) AS `BOBOT_REALISASI_PENDUKUNG`,coalesce((select round(sum(`TAU`.`BOBOT_REALISASI`),2) from ((`trans_aktifitas_utama` `TAU` join `trans_indikator_bidang` `TIB2` on((`TIB2`.`ID` = `TAU`.`INDIKATOR_BIDANG_ID`))) join `master_indikator` `MI2` on((`MI2`.`ID` = `TIB2`.`MASTER_INDIKATOR_ID`))) where ((`MI2`.`INDIKATOR_UTAMA_ID` = `MIU`.`ID`) and (`TIB2`.`BIDANG_ID` = `MB`.`ID`) and (`TAU`.`PERIODE_ID` = `TIB`.`PERIODE_ID`) and (`TAU`.`FLAG_ACTIVE` = 1))),0) AS `BOBOT_REALISASI_UTAMA`,round((sum(`TCI`.`BOBOT_REALISASI`) + coalesce((select sum(`TAU`.`BOBOT_REALISASI`) from ((`trans_aktifitas_utama` `TAU` join `trans_indikator_bidang` `TIB2` on((`TIB2`.`ID` = `TAU`.`INDIKATOR_BIDANG_ID`))) join `master_indikator` `MI2` on((`MI2`.`ID` = `TIB2`.`MASTER_INDIKATOR_ID`))) where ((`MI2`.`INDIKATOR_UTAMA_ID` = `MIU`.`ID`) and (`TIB2`.`BIDANG_ID` = `MB`.`ID`) and (`TAU`.`PERIODE_ID` = `TIB`.`PERIODE_ID`) and (`TAU`.`FLAG_ACTIVE` = 1))),0)),2) AS `TOTAL_CAPAIAN_SUBKEGIATAN` from ((((((`trans_capaian_indikator` `TCI` join `trans_indikator_bidang` `TIB` on((`TIB`.`ID` = `TCI`.`INDIKATOR_BIDANG_ID`))) join `master_periode` `MPD` on((`MPD`.`ID` = `TIB`.`PERIODE_ID`))) join `master_bidang` `MB` on((`MB`.`ID` = `TIB`.`BIDANG_ID`))) join `master_indikator` `MI` on((`MI`.`ID` = `TIB`.`MASTER_INDIKATOR_ID`))) join `master_indikator_utama` `MIU` on((`MIU`.`ID` = `MI`.`INDIKATOR_UTAMA_ID`))) join `master_program` `MPR` on((`MPR`.`ID` = `MIU`.`PROGRAM_ID`))) where (`TCI`.`FLAG_ACTIVE` = 1) group by `TIB`.`PERIODE_ID`,`MPD`.`NAMA_PERIODE`,`MB`.`ID`,`MB`.`NAMA_BIDANG`,`MPR`.`ID`,`MPR`.`NAMA_PROGRAM`,`MIU`.`ID`,`MIU`.`KODE_INDIKATOR_UTAMA`,`MIU`.`NAMA_INDIKATOR_UTAMA`,`MIU`.`INDIKATOR_KINERJA`,`MIU`.`TARGET_KINERJA`,`MIU`.`SATUAN_KINERJA` */;
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
/*!50001 VIEW `vw_dashboard_bidang` AS select `vw_capaian_subkegiatan`.`BIDANG_ID` AS `BIDANG_ID`,`vw_capaian_subkegiatan`.`NAMA_BIDANG` AS `NAMA_BIDANG`,`vw_capaian_subkegiatan`.`PERIODE_ID` AS `PERIODE_ID`,`vw_capaian_subkegiatan`.`NAMA_PERIODE` AS `NAMA_PERIODE`,round(sum(`vw_capaian_subkegiatan`.`TOTAL_CAPAIAN_SUBKEGIATAN`),2) AS `PERSENTASE` from `vw_capaian_subkegiatan` group by `vw_capaian_subkegiatan`.`BIDANG_ID`,`vw_capaian_subkegiatan`.`NAMA_BIDANG`,`vw_capaian_subkegiatan`.`PERIODE_ID`,`vw_capaian_subkegiatan`.`NAMA_PERIODE` order by `vw_capaian_subkegiatan`.`NAMA_BIDANG` */;
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
/*!50001 VIEW `vw_dashboard_bidang_program` AS select `vw_capaian_subkegiatan`.`BIDANG_ID` AS `BIDANG_ID`,`vw_capaian_subkegiatan`.`NAMA_BIDANG` AS `NAMA_BIDANG`,`vw_capaian_subkegiatan`.`PROGRAM_ID` AS `PROGRAM_ID`,`vw_capaian_subkegiatan`.`NAMA_PROGRAM` AS `NAMA_PROGRAM`,`vw_capaian_subkegiatan`.`PERIODE_ID` AS `PERIODE_ID`,`vw_capaian_subkegiatan`.`NAMA_PERIODE` AS `NAMA_PERIODE`,count(distinct `vw_capaian_subkegiatan`.`INDIKATOR_UTAMA_ID`) AS `TOTAL_SUBKEGIATAN`,round(sum(`vw_capaian_subkegiatan`.`TOTAL_CAPAIAN_SUBKEGIATAN`),2) AS `PERSENTASE` from `vw_capaian_subkegiatan` group by `vw_capaian_subkegiatan`.`BIDANG_ID`,`vw_capaian_subkegiatan`.`NAMA_BIDANG`,`vw_capaian_subkegiatan`.`PROGRAM_ID`,`vw_capaian_subkegiatan`.`NAMA_PROGRAM`,`vw_capaian_subkegiatan`.`PERIODE_ID`,`vw_capaian_subkegiatan`.`NAMA_PERIODE` order by `vw_capaian_subkegiatan`.`NAMA_PROGRAM` */;
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
/*!50001 VIEW `vw_dashboard_detail_bidang` AS select `MB`.`ID` AS `BIDANG_ID`,`MB`.`NAMA_BIDANG` AS `NAMA_BIDANG`,`TIB`.`PERIODE_ID` AS `PERIODE_ID`,`MPD`.`NAMA_PERIODE` AS `NAMA_PERIODE`,`MI`.`ID` AS `INDIKATOR_ID`,`MI`.`NAMA_INDIKATOR` AS `NAMA_INDIKATOR`,`MI`.`TIPE_AKTIFITAS` AS `TIPE_AKTIFITAS`,`TCI`.`TARGET` AS `TARGET`,`TCI`.`REALISASI` AS `REALISASI`,`TCI`.`PERSENTASE` AS `PERSENTASE`,`TCI`.`BOBOT_TARGET` AS `BOBOT_TARGET`,`TCI`.`BOBOT_REALISASI` AS `BOBOT_REALISASI`,`TCI`.`TOTAL_KEGIATAN` AS `TOTAL_KEGIATAN` from ((((`trans_capaian_indikator` `TCI` join `trans_indikator_bidang` `TIB` on((`TIB`.`ID` = `TCI`.`INDIKATOR_BIDANG_ID`))) join `master_bidang` `MB` on((`MB`.`ID` = `TIB`.`BIDANG_ID`))) join `master_indikator` `MI` on((`MI`.`ID` = `TIB`.`MASTER_INDIKATOR_ID`))) join `master_periode` `MPD` on((`MPD`.`ID` = `TIB`.`PERIODE_ID`))) where (`TCI`.`FLAG_ACTIVE` = 1) */;
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
/*!50001 VIEW `vw_dashboard_detail_bidang_header` AS select `vw_capaian_subkegiatan`.`BIDANG_ID` AS `BIDANG_ID`,`vw_capaian_subkegiatan`.`NAMA_BIDANG` AS `NAMA_BIDANG`,`vw_capaian_subkegiatan`.`PERIODE_ID` AS `PERIODE_ID`,`vw_capaian_subkegiatan`.`NAMA_PERIODE` AS `NAMA_PERIODE`,count(distinct `vw_capaian_subkegiatan`.`INDIKATOR_UTAMA_ID`) AS `TOTAL_SUBKEGIATAN`,round(sum(`vw_capaian_subkegiatan`.`TOTAL_CAPAIAN_SUBKEGIATAN`),2) AS `RATA_RATA_CAPAIAN` from `vw_capaian_subkegiatan` group by `vw_capaian_subkegiatan`.`BIDANG_ID`,`vw_capaian_subkegiatan`.`NAMA_BIDANG`,`vw_capaian_subkegiatan`.`PERIODE_ID`,`vw_capaian_subkegiatan`.`NAMA_PERIODE` */;
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
/*!50001 VIEW `vw_dashboard_distribusi` AS select `vw_capaian_subkegiatan`.`NAMA_BIDANG` AS `NAMA_BIDANG`,`vw_capaian_subkegiatan`.`PERIODE_ID` AS `PERIODE_ID`,`vw_capaian_subkegiatan`.`NAMA_PERIODE` AS `NAMA_PERIODE`,round(sum(`vw_capaian_subkegiatan`.`TOTAL_CAPAIAN_SUBKEGIATAN`),2) AS `PERSENTASE` from `vw_capaian_subkegiatan` group by `vw_capaian_subkegiatan`.`NAMA_BIDANG`,`vw_capaian_subkegiatan`.`PERIODE_ID`,`vw_capaian_subkegiatan`.`NAMA_PERIODE` */;
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
/*!50001 VIEW `vw_dashboard_radar` AS select `vw_capaian_subkegiatan`.`NAMA_BIDANG` AS `LABEL`,`vw_capaian_subkegiatan`.`PERIODE_ID` AS `PERIODE_ID`,`vw_capaian_subkegiatan`.`NAMA_PERIODE` AS `NAMA_PERIODE`,round(sum(`vw_capaian_subkegiatan`.`TOTAL_CAPAIAN_SUBKEGIATAN`),2) AS `VALUE` from `vw_capaian_subkegiatan` group by `vw_capaian_subkegiatan`.`NAMA_BIDANG`,`vw_capaian_subkegiatan`.`PERIODE_ID`,`vw_capaian_subkegiatan`.`NAMA_PERIODE` */;
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
/*!50001 VIEW `vw_dashboard_summary` AS select `vw_capaian_subkegiatan`.`PERIODE_ID` AS `PERIODE_ID`,`vw_capaian_subkegiatan`.`NAMA_PERIODE` AS `NAMA_PERIODE`,count(distinct `vw_capaian_subkegiatan`.`PROGRAM_ID`) AS `TOTAL_PROGRAM`,count(distinct `vw_capaian_subkegiatan`.`BIDANG_ID`) AS `TOTAL_BIDANG`,count(distinct `vw_capaian_subkegiatan`.`INDIKATOR_UTAMA_ID`) AS `TOTAL_SUBKEGIATAN`,round((sum(`vw_capaian_subkegiatan`.`TOTAL_CAPAIAN_SUBKEGIATAN`) / nullif(count(distinct `vw_capaian_subkegiatan`.`BIDANG_ID`),0)),2) AS `CAPAIAN_RATA_RATA` from `vw_capaian_subkegiatan` group by `vw_capaian_subkegiatan`.`PERIODE_ID`,`vw_capaian_subkegiatan`.`NAMA_PERIODE` */;
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
/*!50001 VIEW `vw_trans_capaian_indikator` AS select `TCI`.`ID` AS `CAPAIAN_ID`,`TIB`.`ID` AS `INDIKATOR_BIDANG_ID`,`TIB`.`PERIODE_ID` AS `PERIODE_ID`,`MPD`.`NAMA_PERIODE` AS `NAMA_PERIODE`,`MB`.`ID` AS `BIDANG_ID`,`MB`.`NAMA_BIDANG` AS `NAMA_BIDANG`,`MPR`.`ID` AS `PROGRAM_ID`,`MPR`.`NAMA_PROGRAM` AS `NAMA_PROGRAM`,`MIU`.`ID` AS `INDIKATOR_UTAMA_ID`,`MIU`.`KODE_INDIKATOR_UTAMA` AS `KODE_INDIKATOR_UTAMA`,`MIU`.`NAMA_INDIKATOR_UTAMA` AS `NAMA_INDIKATOR_UTAMA`,`MIU`.`INDIKATOR_KINERJA` AS `INDIKATOR_KINERJA`,`MI`.`ID` AS `INDIKATOR_ID`,`MI`.`NAMA_INDIKATOR` AS `NAMA_INDIKATOR`,`MI`.`TIPE_AKTIFITAS` AS `TIPE_AKTIFITAS`,`TCI`.`TARGET` AS `TARGET`,`TCI`.`REALISASI` AS `REALISASI`,`TCI`.`PERSENTASE` AS `PERSENTASE`,`TCI`.`BOBOT_TARGET` AS `BOBOT_TARGET`,`TCI`.`BOBOT_REALISASI` AS `BOBOT_REALISASI`,`TCI`.`TOTAL_KEGIATAN` AS `TOTAL_KEGIATAN`,`TCI`.`LAST_CALCULATE_DATE` AS `LAST_CALCULATE_DATE`,`TCI`.`FLAG_ACTIVE` AS `FLAG_ACTIVE` from ((((((`trans_capaian_indikator` `TCI` join `trans_indikator_bidang` `TIB` on((`TIB`.`ID` = `TCI`.`INDIKATOR_BIDANG_ID`))) join `master_periode` `MPD` on((`MPD`.`ID` = `TIB`.`PERIODE_ID`))) join `master_bidang` `MB` on((`MB`.`ID` = `TIB`.`BIDANG_ID`))) join `master_indikator` `MI` on((`MI`.`ID` = `TIB`.`MASTER_INDIKATOR_ID`))) join `master_indikator_utama` `MIU` on((`MIU`.`ID` = `MI`.`INDIKATOR_UTAMA_ID`))) join `master_program` `MPR` on((`MPR`.`ID` = `MIU`.`PROGRAM_ID`))) */;
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
/*!50001 VIEW `vw_trans_realisasi` AS select `TRK`.`ID` AS `REALISASI_ID`,`TRK`.`INDIKATOR_DETAIL_ID` AS `INDIKATOR_DETAIL_ID`,`TRK`.`TANGGAL_KEGIATAN` AS `TANGGAL_KEGIATAN`,`TRK`.`KETERANGAN` AS `KETERANGAN`,`TID`.`JENIS_KEGIATAN` AS `JENIS_KEGIATAN`,coalesce(`MJK`.`NAMA_KEGIATAN`,`TID`.`JENIS_KEGIATAN`) AS `NAMA_JENIS_KEGIATAN`,`TID`.`TARGET` AS `TARGET`,`TID`.`REALISASI` AS `REALISASI`,`TID`.`BOBOT_TARGET` AS `BOBOT_TARGET`,group_concat((case when (`TRL`.`TIPE` = 'FOTO') then `TRL`.`FILE_PATH` end) order by `TRL`.`URUTAN` ASC separator ',') AS `FOTO_PATHS`,max((case when (`TRL`.`TIPE` = 'DOKUMEN') then `TRL`.`FILE_PATH` end)) AS `DOKUMEN_PATH`,sum((case when (`TRL`.`TIPE` = 'FOTO') then 1 else 0 end)) AS `JUMLAH_FOTO` from (((`trans_realisasi_kegiatan` `TRK` join `trans_indikator_detail` `TID` on((`TID`.`ID` = `TRK`.`INDIKATOR_DETAIL_ID`))) left join `master_jenis_kegiatan` `MJK` on((`MJK`.`ID` = `TID`.`JENIS_KEGIATAN_ID`))) left join `trans_realisasi_lampiran` `TRL` on(((`TRL`.`REALISASI_ID` = `TRK`.`ID`) and (`TRL`.`FLAG_ACTIVE` = 1)))) where (`TRK`.`FLAG_ACTIVE` = 1) group by `TRK`.`ID`,`TRK`.`INDIKATOR_DETAIL_ID`,`TRK`.`TANGGAL_KEGIATAN`,`TRK`.`KETERANGAN`,`TID`.`JENIS_KEGIATAN`,`MJK`.`NAMA_KEGIATAN`,`TID`.`TARGET`,`TID`.`REALISASI`,`TID`.`BOBOT_TARGET` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_trans_realisasi_lampiran`
--

/*!50001 DROP VIEW IF EXISTS `vw_trans_realisasi_lampiran`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_trans_realisasi_lampiran` AS select `TRL`.`ID` AS `LAMPIRAN_ID`,`TRL`.`REALISASI_ID` AS `REALISASI_ID`,`TRL`.`TIPE` AS `TIPE`,`TRL`.`FILE_PATH` AS `FILE_PATH`,`TRL`.`URUTAN` AS `URUTAN`,`TRK`.`INDIKATOR_DETAIL_ID` AS `INDIKATOR_DETAIL_ID`,`TRK`.`TANGGAL_KEGIATAN` AS `TANGGAL_KEGIATAN`,`TRK`.`KETERANGAN` AS `KETERANGAN`,`TID`.`JENIS_KEGIATAN` AS `JENIS_KEGIATAN`,coalesce(`MJK`.`NAMA_KEGIATAN`,`TID`.`JENIS_KEGIATAN`) AS `NAMA_JENIS_KEGIATAN`,`MB`.`NAMA_BIDANG` AS `NAMA_BIDANG`,`MPD`.`NAMA_PERIODE` AS `NAMA_PERIODE` from ((((((`trans_realisasi_lampiran` `TRL` join `trans_realisasi_kegiatan` `TRK` on((`TRK`.`ID` = `TRL`.`REALISASI_ID`))) join `trans_indikator_detail` `TID` on((`TID`.`ID` = `TRK`.`INDIKATOR_DETAIL_ID`))) left join `master_jenis_kegiatan` `MJK` on((`MJK`.`ID` = `TID`.`JENIS_KEGIATAN_ID`))) join `trans_indikator_bidang` `TIB` on((`TIB`.`ID` = `TID`.`INDIKATOR_BIDANG_ID`))) join `master_bidang` `MB` on((`MB`.`ID` = `TIB`.`BIDANG_ID`))) join `master_periode` `MPD` on((`MPD`.`ID` = `TIB`.`PERIODE_ID`))) where ((`TRL`.`FLAG_ACTIVE` = 1) and (`TRK`.`FLAG_ACTIVE` = 1)) order by `TRL`.`REALISASI_ID`,`TRL`.`TIPE`,`TRL`.`URUTAN` */;
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

-- Dump completed on 2026-05-10  3:20:16
