-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 25, 2026 at 04:57 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pocinui`
--

-- --------------------------------------------------------

--
-- Table structure for table `pesan_kontak`
--

CREATE TABLE `pesan_kontak` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_hp` varchar(20) DEFAULT NULL,
  `subjek` varchar(50) DEFAULT NULL,
  `pesan` text NOT NULL,
  `tanggal_dibuat` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pesan_kontak`
--

INSERT INTO `pesan_kontak` (`id`, `nama`, `email`, `no_hp`, `subjek`, `pesan`, `tanggal_dibuat`) VALUES
(2, 'Hanas Bayu Pratama', 'hanasbayupratama@gmail.com', '085819536158', 'pendaftaran', 'pendaftaran gelombang 1 dibuka kapan ?', '2026-08-27 07:06:30'),
(3, 'Hanas Bayu Pratama', 'hanasbayupratama@gmail.com', '085819536158', 'program', 'Bimbel ini membuat siswa belajar materi apa ?', '2026-08-27 07:07:21');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `sekolah` varchar(150) NOT NULL,
  `kelas` varchar(20) NOT NULL,
  `program` varchar(50) NOT NULL,
  `nama_orangtua` varchar(100) DEFAULT NULL,
  `no_hp_orangtua` varchar(20) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `catatan` text DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Menunggu',
  `tanggal_daftar` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `nama`, `email`, `no_hp`, `sekolah`, `kelas`, `program`, `nama_orangtua`, `no_hp_orangtua`, `alamat`, `catatan`, `status`, `tanggal_daftar`) VALUES
(1, 'Mitsuba AOI', 'mitsubaaoi@gmail.com', '08213123123', 'SMAN 1 BOGOR', '12', 'SNBT', 'Hanas Bayu Pratama', '085819536158', 'Jl Sirojul Munir, A5/14, RT 01/ RW 10, Jatiasih / Jatisari, Kota Bekasi, Jawa Barat.', 'Saya ingin lulus masuk kampus ITB', 'Menunggu', '2026-08-27 09:40:13'),
(2, 'Bagas Suryadarma', 'bagas@gmail.com', '08234123123', 'SMAN 7 Kota Bekasi', '9', 'SMA_SMK', '', '', '', '', 'Menunggu', '2026-08-27 09:41:44'),
(3, 'Nurul Febriati', 'nurulfebriati@gmail.com', '0821312334', 'SMAIT Bina Insani', '10', 'INTENSIF', 'Ajeng Utami', '085773457585', 'Jl Parpostel No 7, AR/56, Cianjay / Cianjir, Kota Wakanda, Provinsi Avengers', 'saya mau masuk jalur undangan kampus', 'Menunggu', '2026-08-27 09:44:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pesan_kontak`
--
ALTER TABLE `pesan_kontak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pesan_kontak`
--
ALTER TABLE `pesan_kontak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
