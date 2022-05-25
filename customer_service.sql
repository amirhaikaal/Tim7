-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2022 at 05:42 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `customer_service`
--

-- --------------------------------------------------------

--
-- Table structure for table `laporan_keluhan`
--

CREATE TABLE `laporan_keluhan` (
  `Id_akun` varchar(125) NOT NULL,
  `Nama_akun` varchar(125) NOT NULL,
  `Email_akun` varchar(125) NOT NULL,
  `Usernanme_akun` varchar(125) NOT NULL,
  `Password_akun` varchar(125) NOT NULL,
  `Level_akun` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_user`
--

CREATE TABLE `tabel_user` (
  `Id_keluhan` int(11) NOT NULL,
  `Id_akun` int(11) NOT NULL,
  `Nama_pelanggan` varchar(225) NOT NULL,
  `Email_pelanggan` varchar(225) NOT NULL,
  `Judul_keluhan` varchar(225) NOT NULL,
  `Deksripsi_keluhan` varchar(225) NOT NULL,
  `Status_keluhan` varchar(225) NOT NULL,
  `Tanggal_keluhan` date NOT NULL,
  `Tanggal_proses` date NOT NULL,
  `Tanggal_selesai` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `laporan_keluhan`
--
ALTER TABLE `laporan_keluhan`
  ADD PRIMARY KEY (`Id_akun`),
  ADD UNIQUE KEY `Nama_akun` (`Nama_akun`);

--
-- Indexes for table `tabel_user`
--
ALTER TABLE `tabel_user`
  ADD PRIMARY KEY (`Id_keluhan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_user`
--
ALTER TABLE `tabel_user`
  MODIFY `Id_keluhan` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
