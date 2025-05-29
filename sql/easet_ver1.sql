-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 04, 2024 at 03:32 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `easet`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `no_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`no_id`, `name`, `username`, `password`) VALUES
(1, 'admin', 'admin', '123'),
(5, 'bppa', 'bppa', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bppa`
--

CREATE TABLE `tbl_bppa` (
  `no_id` int NOT NULL,
  `id_pegawai` varchar(255) NOT NULL,
  `ic` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `emel` varchar(255) NOT NULL,
  `notel` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_bppa`
--

INSERT INTO `tbl_bppa` (`no_id`, `id_pegawai`, `ic`, `password`, `nama`, `emel`, `notel`) VALUES
(1, '11', '12345', '$2y$10$rIpC8leJ1dlJzqbfb8NUjeuFF7AWeJq/Jb4y1e6BMnvN.u3DqgYZy', 'pu', '123@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_daftar`
--

CREATE TABLE `tbl_daftar` (
  `no_id` int NOT NULL,
  `id_pegawai` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `emel` varchar(255) NOT NULL,
  `notel` varchar(12) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_daftar`
--

INSERT INTO `tbl_daftar` (`no_id`, `id_pegawai`, `ic`, `password`, `nama`, `emel`, `notel`, `created_at`) VALUES
(1, '123', '12345', '$2y$10$2c4EIrS.SiYp7qhgxbuLYeM0NqZI1s5rwZRHmd/aahFmfDC6MMQRi', 'amirul', '123@gmail.com', '123', '2024-10-29 07:58:25'),
(2, '123', '12345', '$2y$10$arimhKG3Gr2Otdj9CPNRc.2aNkoSMw/2B5jJPRr64ySXjRZByi/Xy', 'staff', '123@gmail.com', '123', '2024-10-29 08:02:38'),
(3, '01', '23223123', '$2y$10$NdTC4Vsyey/rCNeBTYfz9.KnXtUnl4PrwoCIP2F25rjBwRzMulR6G', 'hakimi', 'hakimi2341yt@gmail.com', '123', '2024-11-02 10:12:43');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengarah`
--

CREATE TABLE `tbl_pengarah` (
  `no_id` int NOT NULL,
  `id_pegawai` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `emel` varchar(255) NOT NULL,
  `notel` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_pengarah`
--

INSERT INTO `tbl_pengarah` (`no_id`, `id_pegawai`, `ic`, `password`, `nama`, `emel`, `notel`) VALUES
(1, '123', '12345', '$2y$10$2U9.PHgVXExeYf41N5tM.eSZegJm7uG6xP3F0gGapaobR2ftGTNiW', 'BPPA', '123@gmail.com', '123'),
(2, '123', '123', '$2y$10$29uw50PrWWKsmB1be7YYNOpN7i.X.i0jFC3RiHu0pIB8C.Ih6YU6O', 'pengarah', '123@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_semakan`
--

CREATE TABLE `tbl_semakan` (
  `no_id` int NOT NULL,
  `kategori` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `jenis_aset` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `no_siri` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tempat_rosak` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `userterakhir` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ulasan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `emel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tarikh_rosak` date NOT NULL,
  `lulus_jabatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Dalam Proses',
  `tarikh` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_semakan`
--

INSERT INTO `tbl_semakan` (`no_id`, `kategori`, `jenis_aset`, `no_siri`, `tempat_rosak`, `userterakhir`, `ulasan`, `nama`, `emel`, `tarikh_rosak`, `lulus_jabatan`, `tarikh`) VALUES
(23, 'Komputer/ ICT (Encik Hadi)', 'Peralatan Komputer', '234', 'Makmal', 'pelajar', 'test', 'Rozitawati Binti Muhammad', 'hakimi2341yt@gmail.com', '2024-10-28', 'Sedang Dibaiki', '2024-10-27 10:23:28'),
(24, 'Mekanikal/Elektrikal/Aircond (Encik Hairul)', 'Suis Elektrik', '233', 'Library', 'pelajar', 'rosak', 'ald (ketua bengkel)', 'hakimi2341yt@gmail.comgma', '2024-10-29', 'Diterima', '2024-10-28 00:39:12'),
(25, 'Bangunan/Sivil (Encik Kamal)', 'Peralatan Bilik Kuliah', '222', 'Bilik Kuliah', 'pengajar', 'Pintu rosak', 'ald (ketua bengkel)', 'hakimi2341yt@gmail.com', '2024-10-30', 'Dalam Proses', '2024-10-28 02:19:54'),
(27, 'Bangunan/Sivil (Encik Kamal)', 'Peralatan Komputer', '232', 'Makmal', 'pelajar', 'test', 'Pelajar ILPKLS', 'hakimi2341yt@gmail.com', '2024-11-04', 'Ditolak', '2024-11-02 10:14:53'),
(28, 'Bangunan/Sivil (Encik Kamal)', 'Perabut', '232', 'Asrama', 'pelajar', 'hak', 'Pelajar ILPKLS', '123@gmail.com', '2024-11-02', 'Dalam Proses', '2024-11-02 11:16:06'),
(29, 'Bangunan/Sivil (Encik Kamal)', 'Perabut', '222', 'Asrama', 'test', 'test', 'test', 'test@gmail.com', '2024-11-02', 'Dalam Proses', '2024-11-02 13:13:26'),
(30, 'Bangunan/Sivil (Encik Kamal)', 'Peralatan Komputer', '22', 'Asrama', '22', '22', '22', '123@gmail.com', '2024-11-07', 'Dalam Proses', '2024-11-02 13:17:02'),
(31, 'Bangunan/Sivil (Encik Kamal)', 'Peralatan Komputer', '1', 'Asrama', '1', '1', '1', '123@gmail.com', '2024-11-16', 'Dalam Proses', '2024-11-02 13:26:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`no_id`);

--
-- Indexes for table `tbl_bppa`
--
ALTER TABLE `tbl_bppa`
  ADD PRIMARY KEY (`no_id`);

--
-- Indexes for table `tbl_daftar`
--
ALTER TABLE `tbl_daftar`
  ADD PRIMARY KEY (`no_id`),
  ADD KEY `no_id` (`no_id`);

--
-- Indexes for table `tbl_pengarah`
--
ALTER TABLE `tbl_pengarah`
  ADD PRIMARY KEY (`no_id`) USING BTREE;

--
-- Indexes for table `tbl_semakan`
--
ALTER TABLE `tbl_semakan`
  ADD PRIMARY KEY (`no_id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `no_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_bppa`
--
ALTER TABLE `tbl_bppa`
  MODIFY `no_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_daftar`
--
ALTER TABLE `tbl_daftar`
  MODIFY `no_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_pengarah`
--
ALTER TABLE `tbl_pengarah`
  MODIFY `no_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_semakan`
--
ALTER TABLE `tbl_semakan`
  MODIFY `no_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
