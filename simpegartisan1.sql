-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2020 at 10:30 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simpeg`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ket_satuan_kerja`
--

CREATE TABLE `ket_satuan_kerja` (
  `id` int(11) NOT NULL,
  `organisasi` varchar(200) DEFAULT NULL,
  `unit_kerja` varchar(200) DEFAULT NULL,
  `sub_unit_kerja` varchar(56) DEFAULT NULL,
  `jabatan` varchar(255) NOT NULL,
  `golongan_ruang` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ket_satuan_kerja`
--

INSERT INTO `ket_satuan_kerja` (`id`, `organisasi`, `unit_kerja`, `sub_unit_kerja`, `jabatan`, `golongan_ruang`, `created_at`, `updated_at`) VALUES
(1, 'Sekretariat Utama', 'Sekretariat Utama', 'Sekretariat Utama', 'Sekretaris Utama', 'IV/D', '2020-02-21 17:33:30', '0000-00-00 00:00:00'),
(2, 'Biro Perencanaan dan Keuangan', 'Bagian Perencanaan', 'Bagian Perencanaan', 'Kepala Bagian Perencanaan', 'III/d', '2020-02-21 17:33:30', '0000-00-00 00:00:00'),
(3, 'Biro Perencanaan dan Keuangan', 'Bagian Perencanaan', 'Sub Bagian Penganggaran', 'Kepala Sub Bagian Penganggaran', 'III/c', '2020-03-05 09:25:02', '0000-00-00 00:00:00'),
(4, 'Biro Perencanaan dan Keuangan\r\n', 'Bagian Perencanaan\r\n', 'Sub Bagian Penganggaran ', 'Analis Perencanaan Anggaran\r\n', 'III/a\r\n', '2020-03-05 09:25:02', '0000-00-00 00:00:00'),
(5, 'Biro Perencanaan dan Keuangan\r\n', 'Bagian Perencanaan\r\n', 'Sub Bagian Penyusunan Rencana Strategis dan Rencana Tahu', 'Kepala Sub Bagian Rencana Strategis dan Tahunan\r\n', 'III/c\r\n', '2020-03-05 09:25:02', '0000-00-00 00:00:00'),
(6, 'Biro Perencanaan dan Keuangan\r\n', 'Bagian Perencanaan\r\n', 'Sub Bagian Penyusunan Rencana Strategis dan Rencana Tahu', 'Analis Perencanaan\r\n', 'III/a\r\n', '2020-03-05 09:25:02', '0000-00-00 00:00:00'),
(7, 'Biro Perencanaan dan Keuangan\r\n', 'Bagian Keuangan\r\n', 'Bagian Keuangan', 'Kepala Bagian Keuangan\r\n', 'IV/a\r\n', '2020-03-05 09:25:02', '0000-00-00 00:00:00'),
(8, 'Biro Perencanaan dan Keuangan\r\n', 'Bagian Keuangan\r\n', 'Sub Bagian Tata Laksana Keuangan dan Perbendaharaan', 'Kepala Sub Bagian Tata Laksana Keuangan dan Perbendaharaan\r\n', 'III/b\r\n', '2020-03-05 09:25:02', '0000-00-00 00:00:00'),
(9, 'Biro Perencanaan dan Keuangan\r\n', 'Bagian Keuangan\r\n', 'Sub Bagian Tata Laksana Keuangan dan Perbendaharaan', 'Analis Perbendaharaan\r\n', 'III/a\r\n', '2020-03-05 09:25:02', '0000-00-00 00:00:00'),
(10, 'Biro Perencanaan dan Keuangan\r\n', 'Bagian Keuangan\r\n', 'Sub Bagian Akuntansi dan Pelaporan Keuangan', 'Kepala Sub Bagian Akuntansi dan Pelaporan Keuangan\r\n', ' III/b\r\n', '2020-03-05 09:25:02', '0000-00-00 00:00:00'),
(11, 'Biro Perencanaan dan Keuangan', 'Bagian Perencanaan', 'Sub Bagian Penganggaran', 'Kepala Sub Bagian Penganggaran', 'III/c', '2020-03-05 09:25:45', '0000-00-00 00:00:00'),
(12, 'Biro Perencanaan dan Keuangan\r\n', 'Bagian Perencanaan\r\n', 'Sub Bagian Penganggaran ', 'Analis Perencanaan Anggaran\r\n', 'III/a\r\n', '2020-03-05 09:25:45', '0000-00-00 00:00:00'),
(13, 'Biro Perencanaan dan Keuangan\r\n', 'Bagian Perencanaan\r\n', 'Sub Bagian Penyusunan Rencana Strategis dan Rencana Tahu', 'Kepala Sub Bagian Rencana Strategis dan Tahunan\r\n', 'III/c\r\n', '2020-03-05 09:25:45', '0000-00-00 00:00:00'),
(14, 'Biro Perencanaan dan Keuangan\r\n', 'Bagian Perencanaan\r\n', 'Sub Bagian Penyusunan Rencana Strategis dan Rencana Tahu', 'Analis Perencanaan\r\n', 'III/a\r\n', '2020-03-05 09:25:45', '0000-00-00 00:00:00'),
(15, 'Biro Perencanaan dan Keuangan\r\n', 'Bagian Keuangan\r\n', 'Bagian Keuangan', 'Kepala Bagian Keuangan\r\n', 'IV/a\r\n', '2020-03-05 09:25:45', '0000-00-00 00:00:00'),
(16, 'Biro Perencanaan dan Keuangan\r\n', 'Bagian Keuangan\r\n', 'Sub Bagian Tata Laksana Keuangan dan Perbendaharaan', 'Kepala Sub Bagian Tata Laksana Keuangan dan Perbendaharaan\r\n', 'III/b\r\n', '2020-03-05 09:25:45', '0000-00-00 00:00:00'),
(17, 'Biro Perencanaan dan Keuangan\r\n', 'Bagian Keuangan\r\n', 'Sub Bagian Tata Laksana Keuangan dan Perbendaharaan', 'Analis Perbendaharaan\r\n', 'III/a\r\n', '2020-03-05 09:25:45', '0000-00-00 00:00:00'),
(18, 'Biro Perencanaan dan Keuangan\r\n', 'Bagian Keuangan\r\n', 'Sub Bagian Akuntansi dan Pelaporan Keuangan', 'Kepala Sub Bagian Akuntansi dan Pelaporan Keuangan\r\n', ' III/b\r\n', '2020-03-05 09:25:45', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ket_satuan_kerja_pegawai`
--

CREATE TABLE `ket_satuan_kerja_pegawai` (
  `id` int(11) NOT NULL,
  `pegawai_id` int(45) NOT NULL,
  `ket_satuan_kerja_id` int(45) NOT NULL,
  `harga` int(45) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ket_satuan_kerja_pegawai`
--

INSERT INTO `ket_satuan_kerja_pegawai` (`id`, `pegawai_id`, `ket_satuan_kerja_id`, `harga`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 9000000, '2020-02-21 17:38:58', '0000-00-00 00:00:00'),
(2, 3, 2, 2000000, '2020-02-21 17:38:58', '0000-00-00 00:00:00'),
(3, 6, 2, 5000000, '2020-02-21 18:19:23', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_02_15_214001_create_pegawai_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pegawaisektama`
--

CREATE TABLE `pegawaisektama` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `nama_depan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_belakang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `satuan_kerja` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(234) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pegawaisektama`
--

INSERT INTO `pegawaisektama` (`id`, `user_id`, `nama_depan`, `nama_belakang`, `jenis_kelamin`, `satuan_kerja`, `alamat`, `avatar`, `created_at`, `updated_at`) VALUES
(2, 0, 'Kazumi', 'Gaoka', 'P', 'Shinto', 'JL. Kono Subarashi 13, Prefektur Fukushima. Japan', NULL, NULL, NULL),
(3, 0, 'Eiichiro', 'Oda', 'L', 'Shinto', 'JL. Kono Subarashi 13, Prefektur Fukushima. Japan', NULL, NULL, NULL),
(4, 0, 'Oda', 'Nobunaga', 'L', 'Budha', 'JL. Kono Subarashi 13, Prefektur Fukushima. Japan', NULL, NULL, '2020-02-16 02:31:43'),
(5, 0, 'Akechi', 'Mitsuhide', 'P', 'Islam', 'JL. Kono Subarashi 13, Prefektur Fukushima. Japan', 'madara.jpg', NULL, '2020-02-20 09:52:38'),
(6, 0, 'Tokugawa', 'Iyeas', 'L', 'Budha', 'JL. Kono Subarashi 13, Prefektur Fukushima. Japan', NULL, NULL, '2020-02-20 02:17:24'),
(10, 6, 'AdminPC', 'Pegawai', 'L', 'Islam', 'Japan', NULL, '2020-02-20 23:03:11', '2020-02-20 23:33:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(234) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Zakky', 'zakkyfirdaus97@yahoo.co.id', NULL, '$2y$10$NkS90YO9.N6Ftn4guO6.E.c1o6Sgj6B.yPY3aL7OGSFch/Z.VLtPm', '1QMPWvdrwtU1wbFUhIa0lwtkbBJdZo41zvkjnYR591pyNFO2dbw7bOowvdb7', '2020-02-20 01:22:36', '2020-02-20 01:22:36'),
(6, 'pegawai', 'Admin', 'zakky188@gmail.com', NULL, '$2y$10$KLnBOOgr.h514fAzC.EXEOBgXlA1RVXxaYdFSu8e0oXqI6HYX/CGi', 'IbwHrfWPmVxuzq4T9gwxnjtjfyIFKuOdfKg0qxFLQ4DUIT1A2MmbGt7gzhTG', '2020-02-20 23:03:11', '2020-02-20 23:03:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ket_satuan_kerja`
--
ALTER TABLE `ket_satuan_kerja`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ket_satuan_kerja_pegawai`
--
ALTER TABLE `ket_satuan_kerja_pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pegawaisektama`
--
ALTER TABLE `pegawaisektama`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ket_satuan_kerja`
--
ALTER TABLE `ket_satuan_kerja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `ket_satuan_kerja_pegawai`
--
ALTER TABLE `ket_satuan_kerja_pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pegawaisektama`
--
ALTER TABLE `pegawaisektama`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
