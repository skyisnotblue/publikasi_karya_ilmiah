-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 16, 2016 at 06:56 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `publikasi_karya_ilmiah`
--

-- --------------------------------------------------------

--
-- Table structure for table `papers`
--

CREATE TABLE `papers` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `pengarang` varchar(255) DEFAULT NULL,
  `tahun` year(4) NOT NULL,
  `pembimbing` varchar(255) DEFAULT NULL,
  `jurusan` varchar(255) NOT NULL,
  `file` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `papers`
--

INSERT INTO `papers` (`id`, `id_user`, `judul`, `deskripsi`, `pengarang`, `tahun`, `pembimbing`, `jurusan`, `file`) VALUES
(61, 8, 'Komputer Grafik 1', 'Cara membuat grafik', 'ismaeil', 2008, 'patricia', 'Lain-lain', '16072016091135.pdf'),
(62, 8, 'Tutorial Netbeans', 'Cara mengoprasikan aplikasi netbeans', 'Fuad', 2008, 'Norma', 'Teknik Informatika', '16072016091542.pdf'),
(63, 8, 'Tutorial Pemrograman dengan Bahasa Java', 'program dengan menggunakan bahasa java', 'Siti', 2009, 'Endar', 'Teknik Informatika', '16072016091819.pdf'),
(64, 9, 'Proses Rendering', 'Penjelasan tentang proses rendering', 'Herlangga', 2004, 'Budi', 'Teknik Informatika', '16072016092328.pdf'),
(65, 9, 'Geometri pada Java2D', 'Cara membuat geometri pada java2D', 'Eko', 2003, 'Dede', 'Teknik Informatika', '16072016092516.pdf'),
(66, 9, 'Geometri II & Aplikasinya', 'Cara pembuatan geometri 2 dan aplikasinya', 'Radit', 2000, 'Kanti', 'Teknik Informatika', '16072016092806.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_depan` varchar(50) NOT NULL,
  `nama_belakang` varchar(50) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `biografi` text NOT NULL,
  `alamat` text NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `url` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `nama_depan`, `nama_belakang`, `gambar`, `biografi`, `alamat`, `telepon`, `url`) VALUES
(8, 'fuadmuhtaz@yahoo.co.id', '$2y$10$VQ6nTLxFahExLXVw0ip6C.j0H/q9Ua0xLXB9LCGPoinc0IZXI52ey', 'Fuad', 'Muhtaz', 'fuadmuhtaz.jpg', 'Sewaktu SMA (Aliyah) saya melakukan kegiatan blogging menggunakan Platfrom blogger. Ketika itu saya menulis artikel-artikel bebas maupun pengalaman saya pribadi di blog Dibalik Waktu. Pernah juga membuat dokumentasi tugas Java pada blog Fuad Muhtaz yang saya buat dengan mengkombinasikan beberapa framework maupun library seperti RequireJS, BackboneJS dan Bootstrap.', 'Jl. Gatot Subroto KM. 5,5 Kp. Ledug RT02/06 Keroncong, Jatiuwung Tangerang', '02159308659', 'fuadmuhtaz'),
(9, 'fajar.ngestu@gmail.com', '$2y$10$G8fiue4woLAHliTn10TsO.FjfrnOUlsqByzdgiSq16sdQCxpiAgn6', 'fajar', 'prabowo', '', '', '', '', 'fajarprabowo'),
(10, 'nadiyya@gmail.com', '$2y$10$AGkldgwvEORVlgYWaSkEve5lnbw44x5Sex0/m9iDWPDW0zNKI6bSO', 'Nadiyya', 'Ulfah', '', '', '', '', 'nadiyyaulfah'),
(13, 'admin@gmail.com', '$2y$10$Awf9aH8ClajLmzjhIwB6GewVqDrFo2uTb43fAUBMfGanqkPArMZq2', 'Admin', 'admin', '', '', '', '', 'adminadmin'),
(14, 'test@gmail.com', '$2y$10$lpIikep73/VSzd6cOWJSJ.qKLGTkN8d7rEEqjx75Hul/tm5o2P3IC', 'test', 'test', '', '', '', '', 'testtest'),
(16, 'ekomulyono13@yahoo.com', '$2y$10$8aScRtag.ttt8IFIVO8gue36MRg783nCs/KsQy37IHOTV7/7WKS1m', 'Ekovsatu', 'Kevini', 'ekokevin.jpg', 'Tes 1234558', 'Jakarta', '0628282', 'ekokevin'),
(17, 'Sifatfatimah01@gmail.com', '$2y$10$qqZy1FW9Vv9W/16ryJNk2ekp5Arv7BTCtlEpOrVpGYStBuD6nqhHy', 'siti', 'fatimah', 'sitifatimah.jpg', 'Bahagia', 'Ciputat', '087734593551', 'sitifatimah'),
(18, 'nice@gmail.com', '$2y$10$70vUf7oZEHp9TGLXZYha8eMYVAbIx9Dyu.ZcuoRbwnq5fLT1.GZ6a', 'Nice', 'Nice', 'nicenice.png', '', '', '', 'nicenice'),
(19, 'a75@gmail.com', '$2y$10$fy6hg8Necr32uzqpMcsdQ.b.QmNBIdj8kzsADn0nZMgHJeNH9gDHi', 'a75', 'a85', '', '', '', '', 'a75a75'),
(20, 'anakkopet08@gmail.com', '$2y$10$gpDyjdWYKcK5K5SwnwSLfeQZvXYobasBgRIxRPA4C//SNZ/vb667G', 'ismail', 'azizah', '', '', '', '', 'ismailmail'),
(21, 'afhne@yahoo.com', '$2y$10$6vxaVwC7ZzoZceAyjIrcCel2V49CjvbpclM7k/O/vwgIG/./504VG', 'Fajar', 'prabowo', 'fajarprabowo.jpg', '', '', '', 'fajarprabowo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `papers`
--
ALTER TABLE `papers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `papers`
--
ALTER TABLE `papers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
