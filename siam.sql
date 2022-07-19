-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2020 at 10:48 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siam`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama`, `email`, `username`, `password`, `level`) VALUES
(1, 'Salnan Ratih A', 'salnanratih@gmail.com', 'salnan', '1b2cef635fc0f78859747845f3de06bb', 'superadmin'),
(2, 'Arif Santos', 'arif@gmail.com', 'arif', '0ff6c3ace16359e41e37d40b8301d67f', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `hobi`
--

CREATE TABLE `hobi` (
  `kode_hobi` int(11) NOT NULL,
  `hobi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hobi`
--

INSERT INTO `hobi` (`kode_hobi`, `hobi`) VALUES
(2, 'Olahraga'),
(3, 'Menari'),
(4, 'Menulis'),
(5, 'Makan');

-- --------------------------------------------------------

--
-- Table structure for table `hobi_mahasiswa`
--

CREATE TABLE `hobi_mahasiswa` (
  `kode_hobi_mahasiswa` int(11) NOT NULL,
  `nim` varchar(20) NOT NULL,
  `kode_hobi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hobi_mahasiswa`
--

INSERT INTO `hobi_mahasiswa` (`kode_hobi_mahasiswa`, `nim`, `kode_hobi`) VALUES
(4, '1232', 4),
(6, '1241', 2),
(9, '1251', 3),
(11, '1251', 4),
(12, '1252', 2),
(33, '1231', 3),
(47, '193140914111030', 2),
(48, '193140914111030', 4);

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `kode_jurusan` int(11) NOT NULL,
  `jurusan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`kode_jurusan`, `jurusan`) VALUES
(1, 'Sistem Informasi'),
(2, 'Teknologi Informasi'),
(3, 'Desain Grafis'),
(4, 'Teknik Komputer'),
(5, 'Informatika'),
(6, 'Ilmu Komputer');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kode_jurusan` int(11) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `kode_jurusan`, `foto`) VALUES
('1231', 'Rita Sugiarti A', 1, '1231.jpg'),
('1232', 'Ahmad Fauzi', 1, '1232.jpg'),
('1241', 'Samsul Rijal', 2, '1241.jpg'),
('1251', 'Difa Rahmawati', 3, '1251.jpg'),
('1252', 'Lucky Mardana', 3, '1252.jpg'),
('193140914111030', 'Alfin Rahman Hamada', 1, '193140914111030.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `hobi`
--
ALTER TABLE `hobi`
  ADD PRIMARY KEY (`kode_hobi`);

--
-- Indexes for table `hobi_mahasiswa`
--
ALTER TABLE `hobi_mahasiswa`
  ADD PRIMARY KEY (`kode_hobi_mahasiswa`),
  ADD KEY `nim` (`nim`),
  ADD KEY `kode_hobi` (`kode_hobi`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`kode_jurusan`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`),
  ADD KEY `kode_jurusan` (`kode_jurusan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hobi`
--
ALTER TABLE `hobi`
  MODIFY `kode_hobi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `hobi_mahasiswa`
--
ALTER TABLE `hobi_mahasiswa`
  MODIFY `kode_hobi_mahasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `kode_jurusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hobi_mahasiswa`
--
ALTER TABLE `hobi_mahasiswa`
  ADD CONSTRAINT `hobi_mahasiswa_ibfk_1` FOREIGN KEY (`kode_hobi`) REFERENCES `hobi` (`kode_hobi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hobi_mahasiswa_ibfk_2` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`kode_jurusan`) REFERENCES `jurusan` (`kode_jurusan`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
