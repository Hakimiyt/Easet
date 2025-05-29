-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for easet
CREATE DATABASE IF NOT EXISTS `easet` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `easet`;

-- Dumping structure for table easet.admin
CREATE TABLE IF NOT EXISTS `admin` (
  `no_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(8) NOT NULL,
  PRIMARY KEY (`no_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table easet.admin: ~2 rows (approximately)
INSERT INTO `admin` (`no_id`, `name`, `username`, `password`) VALUES
	(6, '', 'admin', 'password'),
	(7, '', 'admin', '123');

-- Dumping structure for table easet.tbl_bppa
CREATE TABLE IF NOT EXISTS `tbl_bppa` (
  `no_id` int NOT NULL AUTO_INCREMENT,
  `id_pegawai` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `emel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `notel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `kategori` varchar(50) NOT NULL,
  PRIMARY KEY (`no_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table easet.tbl_bppa: ~3 rows (approximately)
INSERT INTO `tbl_bppa` (`no_id`, `id_pegawai`, `ic`, `password`, `nama`, `emel`, `notel`, `kategori`) VALUES
	(2, '12', '12345', '$2y$10$YqWsvanky5qbLxRPWBFlyueKegLUnx.IY3bhnKcaQrgV/dpz5fdEu', 'bppa', 'bppa@gmail.com', '123', 'Mekanikal/Elektrikal/Aircond (Encik Hairul)'),
	(3, '123', '1121', '$2y$10$Sl4XtZbg6DSF/G7x0XndWebxOh7l.u7cVJBawaJReX/gI8vuMZ10y', 'hadi', '123@gmail.com', '123', 'Komputer/ ICT (Encik Hadi)'),
	(5, '03', '050228', '$2y$10$wqSk7b07uI9wWW38MXx/d.fiis1JFt13JZafxSwnonlRTr2aN.EIK', 'test', '123@gmail.com', '123', 'Bangunan/Sivil (Encik Kamal)');

-- Dumping structure for table easet.tbl_daftar
CREATE TABLE IF NOT EXISTS `tbl_daftar` (
  `no_id` int NOT NULL AUTO_INCREMENT,
  `id_pegawai` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `emel` varchar(255) NOT NULL,
  `notel` varchar(12) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`no_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table easet.tbl_daftar: ~1 rows (approximately)
INSERT INTO `tbl_daftar` (`no_id`, `id_pegawai`, `ic`, `password`, `nama`, `emel`, `notel`, `created_at`) VALUES
	(4, '22', '12345', '$2y$10$Y9x89hCpQom6LiBjbxvRcOhwGGr8q/1TUju3PI1bdtoZEXdvq.GSa', 'amirul hakimi', 'amirul@gmail.com', '123', '2024-11-11 03:50:33');

-- Dumping structure for table easet.tbl_pengarah
CREATE TABLE IF NOT EXISTS `tbl_pengarah` (
  `no_id` int NOT NULL AUTO_INCREMENT,
  `id_pegawai` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `emel` varchar(255) NOT NULL,
  `notel` varchar(255) NOT NULL,
  PRIMARY KEY (`no_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table easet.tbl_pengarah: ~1 rows (approximately)
INSERT INTO `tbl_pengarah` (`no_id`, `id_pegawai`, `ic`, `password`, `nama`, `emel`, `notel`) VALUES
	(3, '12', '12345', '$2y$10$6PmwUIgeDfnfuknmtJW3QOxmytWIM2eLk76NXGEUzgizwp430vx2W', 'pengarah', '123@gmail.com', '123');

-- Dumping structure for table easet.tbl_semakan
CREATE TABLE IF NOT EXISTS `tbl_semakan` (
  `no_id` int NOT NULL AUTO_INCREMENT,
  `kategori` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `jenis_aset` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `no_siri` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tempat_rosak` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `userterakhir` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ulasan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `emel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tarikh_rosak` date NOT NULL,
  `lulus_jabatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Dalam Proses',
  `tarikh` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`no_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table easet.tbl_semakan: ~3 rows (approximately)
INSERT INTO `tbl_semakan` (`no_id`, `kategori`, `jenis_aset`, `no_siri`, `tempat_rosak`, `userterakhir`, `ulasan`, `nama`, `emel`, `tarikh_rosak`, `lulus_jabatan`, `tarikh`) VALUES
	(33, 'Mekanikal/Elektrikal/Aircond (Encik Hairul)', 'Peralatan Komputer', '123', 'Asrama', 'test', 'test', 'amirul hakimi', 'amirul@gmail.com', '2024-11-15', 'Dalam Proses', '2024-11-11 03:50:51'),
	(34, 'Bangunan/Sivil (Encik Kamal)', 'Peralatan Komputer', 'test', 'Bilik Kuliah', 'pelajar', 'test', 'amirul hakimi', 'amirul@gmail.com', '2024-11-13', 'Ditolak', '2024-11-11 06:34:20'),
	(35, 'Komputer/ ICT (Encik Hadi)', 'Peralatan Elektrik', '123', 'Library', 'pelajar', 'test', 'amirul hakimi', 'amirul@gmail.com', '2024-11-14', 'Diterima', '2024-11-11 06:34:58');

-- Dumping structure for table easet.tbl_staff
CREATE TABLE IF NOT EXISTS `tbl_staff` (
  `no_id` int NOT NULL AUTO_INCREMENT,
  `id_pegawai` varchar(255) NOT NULL,
  `ic` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `emel` varchar(255) NOT NULL,
  `notel` varchar(255) NOT NULL,
  PRIMARY KEY (`no_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table easet.tbl_staff: ~0 rows (approximately)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
