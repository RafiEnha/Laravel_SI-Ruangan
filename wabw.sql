-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2023 at 12:56 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wabw`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laporan1s`
--

CREATE TABLE `laporan1s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hari` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jml_peminjaman` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `laporan1s`
--

INSERT INTO `laporan1s` (`id`, `hari`, `jml_peminjaman`, `created_at`, `updated_at`) VALUES
(1, 'Senin', 2, '2022-11-16 00:42:33', '2022-11-16 00:42:33'),
(2, 'Selasa', 1, '2022-11-16 00:42:52', '2022-11-16 00:42:52'),
(4, 'Rabu', 3, '2022-11-16 01:02:33', '2022-11-16 01:02:33'),
(5, 'Kamis', 1, '2022-11-16 01:02:41', '2022-11-16 01:02:41'),
(6, 'Jum\'at', 2, '2022-11-16 01:17:48', '2022-11-16 02:18:30'),
(7, 'Sabtu', 0, '2022-11-16 01:17:56', '2022-11-16 01:17:56'),
(8, 'Minggu', 0, '2022-11-16 01:18:04', '2022-11-16 01:18:04');

-- --------------------------------------------------------

--
-- Table structure for table `laporan2s`
--

CREATE TABLE `laporan2s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `minggu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jml_peminjaman` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `laporan2s`
--

INSERT INTO `laporan2s` (`id`, `minggu`, `jml_peminjaman`, `created_at`, `updated_at`) VALUES
(1, 'Minggu ke-1', 8, '2022-11-16 02:12:21', '2022-11-16 02:12:21'),
(2, 'Minggu ke-2', 6, '2022-11-16 02:12:37', '2022-11-16 02:12:37'),
(3, 'Minggu ke-3', 7, '2022-11-16 02:12:57', '2022-11-16 02:20:25'),
(5, 'Minggu ke-4', 0, '2022-11-16 02:25:23', '2022-11-16 02:25:23');

-- --------------------------------------------------------

--
-- Table structure for table `laporan3s`
--

CREATE TABLE `laporan3s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bulan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jml_peminjaman` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `laporan3s`
--

INSERT INTO `laporan3s` (`id`, `bulan`, `jml_peminjaman`, `created_at`, `updated_at`) VALUES
(2, 'Januari', 24, '2022-11-16 02:35:48', '2022-11-16 02:35:48'),
(3, 'Februari', 25, '2022-11-16 05:41:15', '2022-11-16 05:41:15'),
(4, 'Maret', 33, '2022-11-16 05:41:34', '2022-11-16 05:41:34'),
(5, 'April', 31, '2022-11-16 05:41:47', '2022-11-16 05:41:47'),
(6, 'Mei', 35, '2022-11-16 05:42:00', '2022-11-16 05:42:00'),
(7, 'Juni', 28, '2022-11-16 05:45:23', '2022-11-16 05:45:23'),
(8, 'Juli', 24, '2022-11-16 05:45:43', '2022-11-16 05:45:43'),
(9, 'Agustus', 34, '2022-11-16 05:46:08', '2022-11-16 05:46:08'),
(10, 'September', 32, '2022-11-16 05:46:31', '2022-11-16 05:46:31'),
(11, 'Oktober', 36, '2022-11-16 05:47:01', '2022-11-16 05:47:01'),
(12, 'November', 33, '2022-11-16 05:47:41', '2022-11-16 05:47:41'),
(13, 'Desember', 25, '2022-11-16 05:48:01', '2022-11-16 05:48:57');

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
(4, '2022_10_27_043838_create_ruang_table', 2),
(5, '2022_11_16_045953_create_laporan1s_table', 2),
(6, '2022_11_16_082511_create_laporan2s_table', 3),
(7, '2022_11_16_092709_create_laporan3s_table', 4);

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
-- Table structure for table `peminjamans`
--

CREATE TABLE `peminjamans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_peminjaman` int(11) NOT NULL,
  `kode_ruang` varchar(1) NOT NULL,
  `kode_pengguna` varchar(4) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `nama_kegiatan` varchar(100) NOT NULL,
  `jumlah_peserta` int(11) NOT NULL,
  `kebutuhan` varchar(500) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `penggunaan_praks`
--

CREATE TABLE `penggunaan_praks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_mk` varchar(2) NOT NULL,
  `no_peminjaman` int(11) NOT NULL,
  `dosen` varchar(20) NOT NULL,
  `materi_prak` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `penggunaan_teoris`
--

CREATE TABLE `penggunaan_teoris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_mk` varchar(2) NOT NULL,
  `no_peminjaman` int(11) NOT NULL,
  `nama_mk` varchar(20) NOT NULL,
  `nama_dosen` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `penggunas`
--

CREATE TABLE `penggunas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_pengguna` varchar(4) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tingkat_pengguna` varchar(20) NOT NULL,
  `no_telpon` varchar(13) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ruangs`
--

CREATE TABLE `ruangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_ruang` varchar(1) NOT NULL,
  `nama_ruang` varchar(20) NOT NULL,
  `kapasitas` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ruangs`
--

INSERT INTO `ruangs` (`id`, `kode_ruang`, `nama_ruang`, `kapasitas`, `created_at`, `updated_at`) VALUES
(3, '1', 'Lab Komputer', 36, '2022-11-15 05:37:50', '2022-11-15 05:37:50'),
(4, '2', 'Lab Jaringan', 30, '2022-11-15 05:38:19', '2022-11-15 05:38:19'),
(5, '3', 'Lab Software', 24, '2022-11-15 05:39:34', '2022-11-15 05:39:34'),
(6, '4', 'Lab Database', 30, '2022-11-15 05:40:19', '2022-11-15 05:40:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
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

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Enha', 'rafinh@gmail.com', NULL, '$2y$10$zyhhPzfJ/4WFK4uCkOucV.hopatJUw2.h.1s9GZQFQqQy3URqZTzW', NULL, '2022-11-15 04:26:30', '2022-11-15 04:26:30'),
(2, 'Kemal', 'THOReq@gmail.com', NULL, '$2y$10$LDA0h/YBDxWFo53/pAUoiecNKYdKBImGHtRY7Be2Psk9qod0aefoG', NULL, '2022-11-16 07:55:44', '2022-11-16 07:55:44'),
(3, 'hasna', 'testing@gmail.com', NULL, '$2y$10$AsTp4VAkG8AFfw6kTMzPgO88lx5Y1srhahrEBN4EV.6VSIOwsyh46', NULL, '2022-12-01 06:27:45', '2022-12-01 06:27:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `laporan1s`
--
ALTER TABLE `laporan1s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laporan2s`
--
ALTER TABLE `laporan2s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laporan3s`
--
ALTER TABLE `laporan3s`
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
-- Indexes for table `peminjamans`
--
ALTER TABLE `peminjamans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `no_peminjaman` (`no_peminjaman`),
  ADD KEY `no_peminjaman_2` (`no_peminjaman`),
  ADD KEY `kode_ruang` (`kode_ruang`,`kode_pengguna`),
  ADD KEY `kode_pengguna` (`kode_pengguna`);

--
-- Indexes for table `penggunaan_praks`
--
ALTER TABLE `penggunaan_praks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_mk` (`kode_mk`),
  ADD KEY `kode_mk_2` (`kode_mk`),
  ADD KEY `no_peminjaman` (`no_peminjaman`);

--
-- Indexes for table `penggunaan_teoris`
--
ALTER TABLE `penggunaan_teoris`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_mk` (`kode_mk`),
  ADD KEY `kode_mk_2` (`kode_mk`),
  ADD KEY `no_peminjaman` (`no_peminjaman`);

--
-- Indexes for table `penggunas`
--
ALTER TABLE `penggunas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_pengguna` (`kode_pengguna`),
  ADD KEY `kode_pengguna_2` (`kode_pengguna`);

--
-- Indexes for table `ruangs`
--
ALTER TABLE `ruangs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_ruang` (`kode_ruang`),
  ADD KEY `kode_ruang_2` (`kode_ruang`);

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
-- AUTO_INCREMENT for table `laporan1s`
--
ALTER TABLE `laporan1s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `laporan2s`
--
ALTER TABLE `laporan2s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `laporan3s`
--
ALTER TABLE `laporan3s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `peminjamans`
--
ALTER TABLE `peminjamans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penggunaan_praks`
--
ALTER TABLE `penggunaan_praks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penggunaan_teoris`
--
ALTER TABLE `penggunaan_teoris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penggunas`
--
ALTER TABLE `penggunas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ruangs`
--
ALTER TABLE `ruangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `peminjamans`
--
ALTER TABLE `peminjamans`
  ADD CONSTRAINT `peminjamans_ibfk_1` FOREIGN KEY (`kode_ruang`) REFERENCES `ruangs` (`kode_ruang`),
  ADD CONSTRAINT `peminjamans_ibfk_2` FOREIGN KEY (`kode_pengguna`) REFERENCES `penggunas` (`kode_pengguna`);

--
-- Constraints for table `penggunaan_praks`
--
ALTER TABLE `penggunaan_praks`
  ADD CONSTRAINT `penggunaan_praks_ibfk_1` FOREIGN KEY (`no_peminjaman`) REFERENCES `peminjamans` (`no_peminjaman`);

--
-- Constraints for table `penggunaan_teoris`
--
ALTER TABLE `penggunaan_teoris`
  ADD CONSTRAINT `penggunaan_teoris_ibfk_1` FOREIGN KEY (`no_peminjaman`) REFERENCES `peminjamans` (`no_peminjaman`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
