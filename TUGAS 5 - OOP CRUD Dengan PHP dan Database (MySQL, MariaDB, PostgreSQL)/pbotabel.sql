-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2022 at 02:46 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pbotabel`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jk`
--

CREATE TABLE `tbl_jk` (
  `id_jk` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_jk`
--

INSERT INTO `tbl_jk` (`id_jk`, `nama`) VALUES
(1, 'Laki-Laki'),
(2, 'Perempuan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mhs`
--

CREATE TABLE `tbl_mhs` (
  `id_mhs` int(11) NOT NULL,
  `nim` varchar(255) NOT NULL,
  `nama_mhs` varchar(255) NOT NULL,
  `jk` int(11) NOT NULL,
  `alamat` text NOT NULL,
  `prodi` int(11) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_mhs`
--

INSERT INTO `tbl_mhs` (`id_mhs`, `nim`, `nama_mhs`, `jk`, `alamat`, `prodi`, `foto`, `email`) VALUES
(1, '21051214030', 'Reyhan Rainaldy', 1, 'Wiyung', 1, 'reyhan.png', 'reyhanrainaldy@gmail.com'),
(2, '21051214032', 'Febrian Daffa Eka Putra', 1, 'Ketintang', 1, 'febrian.png', 'febriandaffa@gmail.com'),
(3, '21051214034', 'Fikko Muharavid Yoga Mardhani', 1, 'Kebraon', 1, 'fikko.png', 'fikkomuharavid@gmail.com'),
(4, '21051214036', 'Jose Gilang Makarion', 1, 'Gedangan', 1, 'jose.png', 'josegilang@gmail.com'),
(5, '21051214038', 'Muhammad Risalah Naufal', 1, 'Dukuh Pakis', 1, 'risalah.png', 'risalahnaufal@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_prodi`
--

CREATE TABLE `tbl_prodi` (
  `id_prodi` int(11) NOT NULL,
  `jenjang` varchar(255) NOT NULL,
  `nama_prodi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_prodi`
--

INSERT INTO `tbl_prodi` (`id_prodi`, `jenjang`, `nama_prodi`) VALUES
(1, 'S1', 'Sistem Informasi'),
(2, 'S1', 'Teknik Informatika'),
(3, 'S1', 'Pendidikan Teknologi Informasi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_jk`
--
ALTER TABLE `tbl_jk`
  ADD PRIMARY KEY (`id_jk`);

--
-- Indexes for table `tbl_mhs`
--
ALTER TABLE `tbl_mhs`
  ADD PRIMARY KEY (`id_mhs`);

--
-- Indexes for table `tbl_prodi`
--
ALTER TABLE `tbl_prodi`
  ADD PRIMARY KEY (`id_prodi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_jk`
--
ALTER TABLE `tbl_jk`
  MODIFY `id_jk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_mhs`
--
ALTER TABLE `tbl_mhs`
  MODIFY `id_mhs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_prodi`
--
ALTER TABLE `tbl_prodi`
  MODIFY `id_prodi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
