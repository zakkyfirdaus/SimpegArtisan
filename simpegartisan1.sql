-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2020 at 10:07 AM
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
-- Table structure for table `ket_satuan_kerja_sektama`
--

CREATE TABLE `ket_satuan_kerja_sektama` (
  `id` int(11) NOT NULL,
  `organisasi` varchar(200) DEFAULT NULL,
  `unit_kerja` varchar(200) DEFAULT NULL,
  `sub_unit_kerja` varchar(255) DEFAULT NULL,
  `jabatan` varchar(255) NOT NULL,
  `golongan_ruang` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ket_satuan_kerja_sektama`
--

INSERT INTO `ket_satuan_kerja_sektama` (`id`, `organisasi`, `unit_kerja`, `sub_unit_kerja`, `jabatan`, `golongan_ruang`, `created_at`, `updated_at`) VALUES
(1, 'Sekretariat Utama', 'Sekretariat Utama', 'Sekretariat Utama', 'Sekretaris Utama', 'IV/D', '2020-02-21 17:33:30', '0000-00-00 00:00:00'),
(2, 'Biro Perencanaan dan Keuangan', 'Kepala Biro Perencanaan dan Keuangan', 'Kepala Biro Perencanaan dan Keuangan', 'Kepala Biro Perencanaan dan Keuangan', 'IV/B', '2020-02-21 17:33:30', '0000-00-00 00:00:00'),
(3, 'Biro Perencanaan dan Keuangan', 'Bagian Perencanaan', 'Bagian Perencanaan', 'Kepala Bagian Perencanaan\r\n', 'III/d', '2020-03-05 09:25:02', '0000-00-00 00:00:00'),
(4, 'Biro Perencanaan dan Keuangan\r\n', 'Bagian Perencanaan\r\n', 'Sub Bagian Penganggaran ', 'Kepala Sub Bagian Penganggaran\r\n\r\n', 'III/c\r\n', '2020-03-05 09:25:02', '0000-00-00 00:00:00'),
(5, 'Biro Perencanaan dan Keuangan\r\n', 'Bagian Perencanaan', 'Sub Bagian Penganggaran', 'Analis Perencanaan Anggaran\r\n\r\n\r\n', 'III/a\r\n', '2020-03-05 09:25:02', '0000-00-00 00:00:00'),
(6, 'Biro Perencanaan dan Keuangan', 'Bagian Perencanaan', 'Sub Bagian Penyusunan Rencana Strategis dan Rencana Tahunan \r\n', 'Kepala Sub Bagian Rencana Strategis dan Tahunan\r\n', 'III/c\r\n', '2020-03-05 09:25:02', '0000-00-00 00:00:00'),
(7, 'Biro Perencanaan dan Keuangan	 		\r\n\r\n', 'Bagian Perencanaan\r\n', 'Sub Bagian Penyusunan Rencana Strategis dan Rencana Tahunan \r\n', 'Analis Perencanaan\r\n', 'III/a\r\n', '2020-03-05 09:25:02', '0000-00-00 00:00:00'),
(8, 'Biro Perencanaan dan Keuangan	', 'Bagian Keuangan\r\n', 'Bagian Keuangan', 'Kepala Bagian Keuangan', 'IV/a', '2020-03-05 09:25:02', '0000-00-00 00:00:00'),
(9, 'Biro Perencanaan dan Keuangan	Bagian Keuangan', 'Bagian Keuangan\r\n', 'Sub Bagian Tata Laksana Keuangan dan Perbendaharaan', 'Kepala Sub Bagian Tata Laksana Keuangan dan Perbendaharaan\r\n', 'III/b\r\n', '2020-03-05 09:25:02', '0000-00-00 00:00:00'),
(10, 'Biro Perencanaan dan Keuangan\r\n', 'Bagian Keuangan\r\n', 'Sub Bagian Tata Laksana Keuangan dan Perbendaharaan', 'Analis Perbendaharaan', ' III/a\r\n', '2020-03-05 09:25:02', '0000-00-00 00:00:00'),
(11, 'Biro Perencanaan dan Keuangan\r\n', 'Bagian Keuangan', 'Sub Bagian Akuntansi dan Pelaporan Keuangan', 'Kepala Sub Bagian Akuntansi dan Pelaporan Keuangan', 'III/b', '2020-03-05 09:25:45', '0000-00-00 00:00:00'),
(12, 'Biro Perencanaan dan Keuangan				III/a\r\n\r\n', 'Bagian Keuangan\r\n', 'Sub Bagian Akuntansi dan Pelaporan Keuangan', 'Analis Laporan Keuangan\r\n', 'III/a\r\n', '2020-03-05 09:25:45', '0000-00-00 00:00:00'),
(13, 'Biro Perencanaan dan Keuangan\r\n', 'Bagian Evaluasi dan Akuntabilitas Kinerja\r\n', 'Bagian Evaluasi dan Akuntabilitas Kinerja', 'Kepala Bagian Evaluasi dan Akuntabilitas Kinerja', 'IV/a\r\n', '2020-03-05 09:25:45', '0000-00-00 00:00:00'),
(14, 'Biro Perencanaan dan Keuangan				', 'Bagian Evaluasi dan Akuntabilitas Kinerja\r\n', 'Sub Bagian Pemantauan Evaluasi dan Analisis', 'Kepala Sub Bagian Pemantauan Evaluasi dan Analisis\r\n\r\n', 'III/c', '2020-03-05 09:25:45', '0000-00-00 00:00:00'),
(15, 'Biro Perencanaan dan Keuangan\r\n', 'Bagian Evaluasi dan Akuntabilitas Kinerja\r\n', 'Sub Bagian Pemantauan Evaluasi dan Analisis', 'Analis Perencanaan, Evaluasi Dan Pelaporan\r\n', 'III/a\r\n', '2020-03-05 09:25:45', '0000-00-00 00:00:00'),
(16, 'Biro Perencanaan dan Keuangan\r\n\r\n', 'Bagian Evaluasi dan Akuntabilitas Kinerja\r\n', 'Sub Bagian Akuntabilitas Kinerja', 'Kepala Sub Bagian Akuntabilitas Kinerja\r\n', 'III/d', '2020-03-05 09:25:45', '0000-00-00 00:00:00'),
(17, 'Biro Perencanaan dan Keuangan	\r\n\r\n', 'Bagian Evaluasi dan Akuntabilitas Kinerja\r\n', 'Sub Bagian Akuntabilitas Kinerja', 'Analis Akuntabilitas Kinerja Aparatur\r\n', 'III/a\r\n', '2020-03-05 09:25:45', '0000-00-00 00:00:00'),
(18, 'Biro Perencanaan dan Keuangan\r\n\r\n', 'Bagian Evaluasi dan Akuntabilitas Kinerja\r\n', 'Sub Bagian Tata Usaha Biro', 'Kepala Sub Bagian Tata Usaha Biro\r\n', 'III/a\r\n', '2020-03-05 09:25:45', '0000-00-00 00:00:00'),
(19, 'Biro Hukum dan Organisasi', 'Biro Hukum dan Organisasi', 'Biro Hukum dan Organisasi', 'Kepala Biro Hukum dan Organisasi', 'IV/b', '2020-03-06 03:40:54', '0000-00-00 00:00:00'),
(20, 'Biro Hukum dan Organisasi\r\n', 'Bagian Penyusunan Hukum	', 'Bagian Penyusunan Hukum', 'Kepala Bagian Penyusunan Hukum', 'IV/a', '2020-03-06 03:41:03', '0000-00-00 00:00:00'),
(21, 'Biro Hukum dan Organisasi', 'Bagian Penyusunan Hukum	', 'Sub Bagian Peraturan Perundang - Undangan', 'Kepala Sub Bagian Peraturan Perundang - Undangan', 'III/b', '2020-03-06 03:45:41', '0000-00-00 00:00:00'),
(22, 'Biro Hukum dan Organisasi\r\n', 'Bagian Penyusunan Hukum', 'Sub Bagian Peraturan Perundang - Undangan', 'Analis Peraturan Perundang-Undangan Dan Rancangan Peraturan Perundang-Undangan', 'III/a', '2020-03-06 03:45:56', '0000-00-00 00:00:00'),
(23, 'Biro Hukum dan Organisasi\r\n', 'Bagian Penyusunan Hukum', 'Sub Bagian Produk Hukum Lainnya', 'Kepala Sub Bagian Produk Hukum Lainnya', 'III/b', '2020-03-06 03:48:25', '0000-00-00 00:00:00'),
(24, 'Biro Hukum dan Organisasi\r\n', 'Bagian Penyusunan Hukum', 'Sub Bagian Produk Hukum Lainnya', 'Analis Hukum', 'III/a', '2020-03-06 03:48:33', '0000-00-00 00:00:00'),
(25, 'Biro Hukum dan Organisasi', 'Bagian Dokumentasi dan Informasi Hukum', 'Bagian Dokumentasi dan Informasi Hukum', 'Kepala Bagian Dokumentasi dan Informasi Hukum', 'IV/a', '2020-03-06 03:50:10', '0000-00-00 00:00:00'),
(26, 'Biro Hukum dan Organisasi', 'Bagian Dokumentasi dan Informasi Hukum', 'Sub Bagian Dokumentasi Hukum', 'Kepala Sub Bagian Dokumentasi Hukum', 'III/b', '2020-03-06 03:50:18', '0000-00-00 00:00:00'),
(27, 'Biro Hukum dan Organisasi	\r\n', 'Bagian Dokumentasi dan Informasi Hukum', 'Sub Bagian Dokumentasi Hukum', 'Pranata Kearsipan', 'III/a', '2020-03-06 04:23:31', '0000-00-00 00:00:00'),
(28, 'Biro Hukum dan Organisasi\r\n', 'Bagian Dokumentasi dan Informasi Hukum', 'Sub Bagian Informasi Hukum', 'Kepala Sub Bagian Informasi Hukum', 'III/b', '2020-03-06 04:23:31', '0000-00-00 00:00:00'),
(29, 'Biro Hukum dan Organisasi', 'Bagian Dokumentasi dan Informasi Hukum', 'Sub Bagian Informasi Hukum', 'Analis Legislasi', 'III/a', '2020-03-06 04:23:31', '0000-00-00 00:00:00'),
(30, 'Biro Hukum dan Organisasi', 'Bagian Organisasi dan Tata Laksana', 'Bagian Organisasi dan Tata Laksana', 'Kepala Bagian Organisasi dan Tata Laksana', 'IV/a\r\n', '2020-03-06 04:23:31', '0000-00-00 00:00:00'),
(31, 'Biro Hukum dan Organisasi				\r\n', 'Bagian Organisasi dan Tata Laksana', 'Sub Bagian Organisasi', 'Kepala Sub Bagian Organisasi', 'III/c', '2020-03-06 04:23:31', '0000-00-00 00:00:00'),
(32, 'Biro Hukum dan Organisasi', 'Bagian Organisasi dan Tata Laksana', 'Sub Bagian Organisasi', 'Analis Kelembagaan', 'III/a', '2020-03-06 04:23:31', '0000-00-00 00:00:00'),
(33, 'Biro Hukum dan Organisasi', 'Bagian Organisasi dan Tata Laksana', 'Sub Bagian Tata Laksana dan Reformasi Birokrasi', 'Kepala Sub Bagian Tata Laksana dan Reformasi Birokrasi', 'III/c', '2020-03-06 04:23:31', '0000-00-00 00:00:00'),
(34, 'Biro Hukum dan Organisasi\r\n', 'Bagian Organisasi dan Tata Laksana', 'Sub Bagian Tata Laksana dan Reformasi Birokrasi', 'Analis Kerjasama', 'III/a', '2020-03-06 04:23:31', '0000-00-00 00:00:00'),
(35, 'Biro Hukum dan Organisasi\r\n', 'Bagian Organisasi dan Tata Laksana', 'Sub Bagian Tata Usaha Biro Hukum', 'Kepala Sub Bagian Tata Usaha Biro Hukum', 'III/b', '2020-03-06 04:23:31', '0000-00-00 00:00:00'),
(36, 'Biro Umum dan Sumber Daya Manusia\r\n', 'Biro Umum dan Sumber Daya Manusia', 'Biro Umum dan Sumber Daya Manusia', 'Kepala Biro Umum dan Sumber Daya Manusia', 'IV/b', '2020-03-06 04:23:31', '0000-00-00 00:00:00'),
(37, 'Biro Umum dan Sumber Daya Manusia\r\n', 'Bagian Pengelolaan  Barang Milik Negara dan Layanan Pengadaan', 'Bagian Pengelolaan  Barang Milik Negara dan Layanan Pengadaan\r\n', 'Kepala Bagian Pengelolaan BMN dan Layanan Pengadaan', 'IV/a', '2020-03-06 04:23:31', '0000-00-00 00:00:00'),
(38, 'Biro Umum dan Sumber Daya Manusia', 'Bagian Pengelolaan  Barang Milik Negara dan Layanan Pengadaan', 'Sub Bagian Pengembangan Sistem dan Pengelolaan Barang Milik Negara\r\n', 'Kepala Sub Bagian Pengembangan Sistem dan Pengelolaan Barang Milik Negara', '', '2020-03-06 04:23:31', '0000-00-00 00:00:00'),
(39, 'Biro Umum dan Sumber Daya Manusia\r\n', 'Bagian Pengelolaan  Barang Milik Negara dan Layanan Pengadaan', 'Sub Bagian Pengembangan Sistem dan Pengelolaan Barang Milik Negara\r\n', 'Analis Perencanaan Anggaran', 'III/a', '2020-03-06 04:23:31', '0000-00-00 00:00:00'),
(40, 'Biro Umum dan Sumber Daya Manusia\r\n', 'Bagian Pengelolaan  Barang Milik Negara dan Layanan Pengadaan', 'Sub Bagian Layanan Pengadaan', 'Kepala Sub Bagian Layanan Pengadaan', '', '2020-03-06 04:23:31', '0000-00-00 00:00:00'),
(41, 'Biro Umum dan Sumber Daya Manusia', 'Bagian Tata Usaha dan Rumah Tangga', 'Bagian Tata Usaha dan Rumah Tangga', 'Kepala Bagian Tata Usaha dan Rumah Tangga', 'III/d', '2020-03-06 04:23:31', '0000-00-00 00:00:00'),
(42, 'Biro Umum dan Sumber Daya Manusia', 'Bagian Tata Usaha dan Rumah Tangga', 'Sub Bagian Pelayanan Kerumahtanggaan', 'Kepala Sub Bagian Layanan Rumah Tangga', 'III/b', '2020-03-06 04:23:31', '0000-00-00 00:00:00'),
(43, 'Biro Umum dan Sumber Daya Manusia', 'Bagian Tata Usaha dan Rumah Tangga', 'Sub Bagian Pelayanan Kerumahtanggaan', 'Analis Layanan Umum', 'III/a', '2020-03-06 04:23:31', '0000-00-00 00:00:00'),
(44, 'Biro Umum dan Sumber Daya Manusia\r\n', 'Bagian Tata Usaha dan Rumah Tangga', 'Sub Bagian Persuratan, Kearsipan dan Tata Usaha Biro', 'Kepala Sub Bagian Persuratan dan Tata Usaha Biro', 'III/b', '2020-03-06 04:23:31', '0000-00-00 00:00:00'),
(45, 'Biro Umum dan Sumber Daya Manusia', 'Bagian Tata Usaha dan Rumah Tangga', 'Sub Bagian Persuratan, Kearsipan dan Tata Usaha Biro', 'Analis Perencanaan', 'III/a', '2020-03-06 04:23:31', '0000-00-00 00:00:00'),
(46, 'Biro Umum dan Sumber Daya Manusia				\r\n\r\n', 'Bagian Tata Usaha dan Rumah Tangga', 'Sub Bagian Tata Usaha Kepala', 'Kepala Sub Bagian Tata Usaha Kepala', 'III/c', '2020-03-06 04:23:38', '0000-00-00 00:00:00'),
(47, 'Biro Umum dan Sumber Daya Manusia				\r\n\r\n', 'Bagian Tata Usaha dan Rumah Tangga', 'Sub Bagian Tata Usaha Wakil Kepala', 'Kepala Sub Bagian Tata Usaha Wakil Kepala', '', '2020-03-06 04:23:38', '0000-00-00 00:00:00'),
(48, 'Biro Umum dan Sumber Daya Manusia', 'Bagian Tata Usaha dan Rumah Tangga', 'Sub Bagian Tata Usaha Sekretaris Utama', 'Kepala Sub Bagian Tata Usaha Sekretaris Utama', 'III/d', '2020-03-06 04:23:38', '0000-00-00 00:00:00'),
(49, 'Biro Umum dan Sumber Daya Manusia		', 'Bagian Tata Usaha dan Rumah Tangga', 'Sub Bagian Tata Usaha Deputi Bidang Hubungan Antar Lembaga, Sosialisasi, Komunikasi, dan Jaringan\r\n', 'Kepala Sub Bagian Tata Usaha Deputi Bidang Hubungan Antar Lembaga, Sosialisasi, Komunikasi, dan Jaringan', 'III/b\r\n\r\n', '2020-03-06 04:23:38', '0000-00-00 00:00:00'),
(50, 'Biro Umum dan Sumber Daya Manusia\r\n', 'Bagian Tata Usaha dan Rumah Tangga', 'Sub Bagian Tata Usaha Deputi Bidang Hukum, Advokasi dan Pengawasan Regulasi\r\n', 'Kepala Sub Bagian Tata Usaha Deputi Bidang Hukum, Advokasi dan Pengawasan Regulasi', 'III/d', '2020-03-06 04:23:38', '0000-00-00 00:00:00'),
(51, 'Biro Umum dan Sumber Daya Manusia				\r\n', 'Bagian Tata Usaha dan Rumah Tangga', 'Sub Bagian Tata Usaha Deputi Bidang Pengkajian Materi', 'Kepala Sub Bagian Tata Usaha Deputi Bidang Pengkajian Materi', '', '2020-03-06 04:23:38', '0000-00-00 00:00:00'),
(52, 'Biro Umum dan Sumber Daya Manusia', 'Bagian Tata Usaha dan Rumah Tangga', 'Sub Bagian Tata Usaha Deputi Bidang Pendidikan dan Pelatihan\r\n', 'Kepala Sub Bagian Tata Usaha Deputi Bidang Pendidikan dan Pelatihan', 'III/b', '2020-03-06 04:23:38', '0000-00-00 00:00:00'),
(53, 'Biro Umum dan Sumber Daya Manusia				 \r\n\r\n', 'Bagian Tata Usaha dan Rumah Tangga', 'Sub Bagian Tata Usaha Deputi Bidang Pengendalian dan Evaluasi\r\n', 'Kepala Sub Bagian Tata Usaha Deputi Bidang Pengendalian dan Evaluasi', 'III/d', '2020-03-06 04:23:38', '0000-00-00 00:00:00'),
(54, 'Biro Umum dan Sumber Daya Manusia', 'Kepala Bagian Sumber Daya Manusia', 'Bagian Sumber Daya Manusia', 'Kepala Bagian Sumber Daya Manusia', 'III/d', '2020-03-06 04:23:38', '0000-00-00 00:00:00'),
(55, 'Biro Umum dan Sumber Daya Manusia', 'Sub Bagian Pengelolaan Kinerja SDM', 'Sub Bagian Pengelolaan Kinerja Sumber Daya Manusia', 'Kepala Sub Bagian Pengelolaan Kinerja SDM', 'III/c', '2020-03-06 04:23:38', '0000-00-00 00:00:00'),
(56, 'Biro Umum dan Sumber Daya Manusia', 'Sub Bagian Pengelolaan Kinerja SDM', 'Sub Bagian Pengelolaan Kinerja Sumber Daya Manusia', 'Analis Pengembangan Sdm Aparatur', 'III/a', '2020-03-06 04:23:38', '0000-00-00 00:00:00'),
(57, 'Biro Umum dan Sumber Daya Manusia				\r\n', 'Sub Bagian Pengelolaan Kinerja SDM', 'Sub Bagian Pengelolaan Kinerja Sumber Daya Manusia', 'Analis Publikasi', 'III/a', '2020-03-06 04:23:38', '0000-00-00 00:00:00'),
(58, 'Biro Umum dan Sumber Daya Manusia', 'Sub Bagian Administrasi SDM', 'Sub Bagian Administrasi Sumber Daya Manusia', 'Kepala Sub Bagian Administrasi SDM', 'III/c', '2020-03-06 04:23:38', '0000-00-00 00:00:00'),
(59, 'Biro Umum dan Sumber Daya Manusia				\r\n\r\n', 'Sub Bagian Administrasi SDM', 'Sub Bagian Administrasi Sumber Daya Manusia', 'Analis Perencanaan Sumber Daya Manusia Aparatur', 'III/a', '2020-03-06 04:23:38', '0000-00-00 00:00:00'),
(60, 'Biro Fasilitasi Dewan Pengarah', 'Biro Fasilitasi Dewan Pengarah', 'Biro Fasilitasi Dewan Pengarah', 'Kepala Biro Fasilitasi Dewan Pengarah dan Ketenagaahlian', 'IV/b', '2020-03-06 04:23:38', '0000-00-00 00:00:00'),
(61, 'Biro Fasilitasi Dewan Pengarah', 'Bagian Fasilitasi Dewan Pengarah', 'Bagian Fasilitasi Dewan Pengarah', 'Kepala Bagian Fasilitasi Dewan Pengarah', 'III/d', '2020-03-06 04:23:38', '0000-00-00 00:00:00'),
(62, 'Biro Fasilitasi Dewan Pengarah', 'Bagian Fasilitasi Dewan Pengarah', 'Sub Bagian Protokol Dewan Pengarah', 'Kepala Sub Bagian Protokol Dewan Pengarah', 'III/c', '2020-03-06 04:23:38', '0000-00-00 00:00:00'),
(63, 'Biro Fasilitasi Dewan Pengarah				\r\n\r\n', 'Bagian Fasilitasi Dewan Pengarah', 'Sub Bagian Protokol Dewan Pengarah', 'Analis Pelayanan', 'III/a', '2020-03-06 04:23:38', '0000-00-00 00:00:00'),
(64, 'Biro Fasilitasi Dewan Pengarah', 'Bagian Fasilitasi Dewan Pengarah', 'Sub Bagian Tata Usaha Dewan Pengarah', 'Kepala Sub Bagian Tata Usaha Dewan Pengarah', '', '2020-03-06 04:23:38', '0000-00-00 00:00:00'),
(65, 'Biro Fasilitasi Dewan Pengarah				\r\n', 'Kepala Bagian Fasilitasi Ketenagaahlian', 'Kepala Bagian Fasilitasi Ketenagaahlian', 'Kepala Bagian Fasilitasi Ketenagaahlian', 'IV/b', '2020-03-06 07:15:05', '0000-00-00 00:00:00'),
(66, 'Biro Fasilitasi Dewan Pengarah		\r\n', 'Kepala Sub Bagian Tata Usaha I', 'Kepala Sub Bagian Tata Usaha I', 'Kepala Sub Bagian Tata Usaha I	', '', '2020-03-06 07:15:05', '0000-00-00 00:00:00'),
(67, 'Biro Fasilitasi Dewan Pengarah			\r\n				\r\n', 'Kepala Sub Bagian Tata Usaha II', 'Kepala Sub Bagian Tata Usaha II', 'Kepala Sub Bagian Tata Usaha II', '', '2020-03-06 07:15:09', '0000-00-00 00:00:00'),
(68, 'Biro Pengawasan Internal			\r\n\r\n', 'Biro Pengawasan Internal', 'Biro Pengawasan Internal', 'Kepala Biro Pengawasan Internal	', 'IV/B', '2020-03-06 07:15:09', '0000-00-00 00:00:00'),
(69, 'Biro Pengawasan Internal				\r\n', 'Bagian Pengawasan Kinerja', 'Bagian Pengawasan Kinerja', 'Kepala Bagian Pengawasan Kinerja', 'IV/b', '2020-03-06 07:20:31', '0000-00-00 00:00:00'),
(70, 'Biro Pengawasan Internal', 'Bagian Pengawasan Kinerja', 'Sub Bagian Pengawasan dan Perencanaan Kinerja', 'Kepala Sub Bagian Pengawasan dan Perencanaan Kinerja', 'III/c', '2020-03-06 07:20:31', '0000-00-00 00:00:00'),
(71, 'Biro Pengawasan Internal', 'Bagian Pengawasan Kinerja', 'Sub Bagian Pengawasan dan Perencanaan Kinerja', 'Analis Perencanaan, Evaluasi Dan Pelaporan', 'III/a', '2020-03-06 07:20:36', '0000-00-00 00:00:00'),
(72, 'Biro Pengawasan Internal', 'Bagian Pengawasan Kinerja', 'Sub Bagian Evaluasi Kinerja', 'Kepala Sub Bagian Evaluasi Kinerja', 'IV/a', '2020-03-06 07:20:36', '0000-00-00 00:00:00'),
(73, 'Biro Pengawasan Internal', 'Bagian Pengawasan Kinerja', 'Sub Bagian Evaluasi Kinerja', 'Analis Perencanaan, Evaluasi Dan Pelaporan', 'III/a', '2020-03-06 07:45:28', '0000-00-00 00:00:00'),
(74, 'Biro Pengawasan Internal', 'Bagian Pengawasan Kinerja', 'Sub Bagian Tata Usaha Biro Pengawasan Internal', 'Kepala Sub Bagian Tata Usaha Biro Pengawasan Internal', 'III/b', '2020-03-06 07:45:28', '0000-00-00 00:00:00'),
(75, 'Biro Pengawasan Internal', 'Bagian Pengawasan Keuangan', 'Bagian Pengawasan Keuangan', 'Kepala Bagian Pengawasan Keuangan', 'IV/a', '2020-03-06 07:45:28', '0000-00-00 00:00:00'),
(76, 'Biro Pengawasan Internal', 'Bagian Pengawasan Keuangan', 'Sub Bagian Pelaksanaan Pengawasan', 'Kepala Sub Bagian Pelaksanaan Pengawasan', 'III/c', '2020-03-06 07:45:28', '0000-00-00 00:00:00'),
(77, 'Biro Pengawasan Internal', 'Bagian Pengawasan Keuangan', 'Sub Bagian Pelaksanaan Pengawasan', 'Analis Perencanaan, Evaluasi Dan Pelaporan', 'III/a', '2020-03-06 07:45:28', '0000-00-00 00:00:00'),
(78, 'Biro Pengawasan Internal', 'Bagian Pengawasan Keuangan', 'Sub Bagian Pendampingan', 'Kepala Sub Bagian Pendampingan', 'III/d', '2020-03-06 07:45:28', '0000-00-00 00:00:00'),
(79, 'Biro Pengawasan Internal', 'Bagian Pengawasan Keuangan', 'Sub Bagian Pendampingan', 'Analis Perencanaan, Evaluasi Dan Pelaporan', 'III/a', '2020-03-06 07:45:28', '0000-00-00 00:00:00'),
(80, 'Pusat Data dan Informasi			\r\n', 'Pusat Data dan Informasi', 'Pusat Data dan Informasi', 'Kepala Pusat Data dan Informasi', 'IV/b', '2020-03-06 07:45:28', '0000-00-00 00:00:00'),
(81, 'Pusat Data dan Informasi\r\n', 'Bidang Pengembangan Sistem Informasi', 'Bidang Pengembangan Sistem Informasi', 'Kepala Bidang Pengembangan Sistem Informasi', 'IV/a', '2020-03-06 07:45:28', '0000-00-00 00:00:00'),
(82, 'Pusat Data dan Informasi', 'Bidang Pengelolaan Data dan Informasi', 'Bidang Pengelolaan Data dan Informasi', 'Kepala Bidang Pengelolaan Data dan Informasi', 'III/d', '2020-03-06 07:45:28', '0000-00-00 00:00:00'),
(83, 'Pusat Data dan Informasi', 'Sub Tata Usaha Pusat Data dan Informasi', 'Sub Tata Usaha Pusat Data dan Informasi', 'Kepala Sub Bagian Tata Usaha Pusdatin', 'III/d', '2020-03-06 07:45:28', '0000-00-00 00:00:00'),
(84, 'Pusat Data dan Informasi', 'Sub Tata Usaha Pusat Data dan Informasi', 'Sub Tata Usaha Pusat Data dan Informasi', 'Pengelola Data', 'III/a', '2020-03-06 07:45:28', '0000-00-00 00:00:00');

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
-- Indexes for table `ket_satuan_kerja_pegawai`
--
ALTER TABLE `ket_satuan_kerja_pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ket_satuan_kerja_sektama`
--
ALTER TABLE `ket_satuan_kerja_sektama`
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
-- AUTO_INCREMENT for table `ket_satuan_kerja_pegawai`
--
ALTER TABLE `ket_satuan_kerja_pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ket_satuan_kerja_sektama`
--
ALTER TABLE `ket_satuan_kerja_sektama`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

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
