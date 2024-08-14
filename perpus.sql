-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 14 Agu 2024 pada 14.38
-- Versi server: 10.11.8-MariaDB-ubu2004
-- Versi PHP: 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `m2103034_TA`
--
CREATE DATABASE IF NOT EXISTS `m2103034_TA` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `m2103034_TA`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `baca`
--

CREATE TABLE `baca` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pembaca` int(11) DEFAULT NULL,
  `tanggal_baca` date NOT NULL,
  `buku_id` bigint(20) UNSIGNED NOT NULL,
  `kategori_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `baca`
--

INSERT INTO `baca` (`id`, `pembaca`, `tanggal_baca`, `buku_id`, `kategori_id`, `created_at`, `updated_at`) VALUES
(13, 1, '2024-08-11', 131, 10, '2024-08-11 06:17:09', '2024-08-11 06:17:09'),
(14, 1, '2024-08-11', 16, 8, '2024-08-11 06:17:13', '2024-08-11 06:17:13'),
(15, 1, '2024-08-11', 17, 8, '2024-08-11 06:17:18', '2024-08-11 06:17:18'),
(16, 1, '2024-08-11', 19, 8, '2024-08-11 06:17:21', '2024-08-11 06:17:21'),
(17, 1, '2024-08-11', 20, 8, '2024-08-11 06:17:25', '2024-08-11 06:17:25'),
(18, 1, '2024-08-11', 21, 8, '2024-08-11 06:17:28', '2024-08-11 06:17:28'),
(19, 1, '2024-08-11', 130, 10, '2024-08-11 06:18:43', '2024-08-11 06:18:43'),
(20, 1, '2024-08-11', 22, 8, '2024-08-11 06:18:50', '2024-08-11 06:18:50'),
(21, 1, '2024-08-11', 31, 8, '2024-08-11 06:19:00', '2024-08-11 06:19:00'),
(22, 1, '2024-08-11', 23, 4, '2024-08-11 06:19:17', '2024-08-11 06:19:17'),
(23, 1, '2024-08-11', 28, 4, '2024-08-11 06:19:31', '2024-08-11 06:19:31'),
(24, 1, '2024-08-11', 41, 8, '2024-08-11 06:19:39', '2024-08-11 06:19:39'),
(25, 1, '2024-08-11', 24, 4, '2024-08-11 06:19:56', '2024-08-11 06:19:56'),
(26, 1, '2024-08-11', 25, 4, '2024-08-11 06:20:02', '2024-08-11 06:20:02'),
(27, 1, '2024-08-11', 61, 5, '2024-08-11 06:24:04', '2024-08-11 06:24:04'),
(28, 1, '2024-08-11', 16, 8, '2024-08-11 06:24:13', '2024-08-11 06:24:13'),
(29, 1, '2024-08-11', 16, 8, '2024-08-11 06:24:17', '2024-08-11 06:24:17'),
(30, 1, '2024-08-11', 27, 4, '2024-08-11 06:27:39', '2024-08-11 06:27:39'),
(31, 1, '2024-08-11', 27, 4, '2024-08-11 06:27:46', '2024-08-11 06:27:46'),
(32, 1, '2024-08-11', 26, 4, '2024-08-11 06:27:50', '2024-08-11 06:27:50'),
(33, 1, '2024-08-11', 26, 4, '2024-08-11 06:27:54', '2024-08-11 06:27:54'),
(34, 1, '2024-08-11', 24, 4, '2024-08-11 06:28:09', '2024-08-11 06:28:09'),
(35, 1, '2024-08-11', 23, 4, '2024-08-11 06:28:15', '2024-08-11 06:28:15'),
(36, 1, '2024-08-11', 28, 4, '2024-08-11 06:28:23', '2024-08-11 06:28:23'),
(37, 1, '2024-08-11', 25, 4, '2024-08-11 06:36:46', '2024-08-11 06:36:46'),
(38, 1, '2024-08-11', 27, 4, '2024-08-11 06:36:54', '2024-08-11 06:36:54'),
(39, 1, '2024-08-11', 27, 4, '2024-08-11 06:37:02', '2024-08-11 06:37:02'),
(40, 1, '2024-08-11', 27, 4, '2024-08-11 06:37:09', '2024-08-11 06:37:09'),
(41, 1, '2024-08-11', 26, 4, '2024-08-11 06:37:13', '2024-08-11 06:37:13'),
(42, 1, '2024-08-11', 23, 4, '2024-08-11 06:37:19', '2024-08-11 06:37:19'),
(43, 1, '2024-08-11', 25, 4, '2024-08-11 06:37:28', '2024-08-11 06:37:28'),
(44, 1, '2024-08-11', 26, 4, '2024-08-11 06:37:32', '2024-08-11 06:37:32'),
(45, 1, '2024-08-11', 25, 4, '2024-08-11 06:37:38', '2024-08-11 06:37:38'),
(46, 1, '2024-08-11', 28, 4, '2024-08-11 06:37:44', '2024-08-11 06:37:44'),
(47, 1, '2024-08-11', 24, 4, '2024-08-11 06:37:49', '2024-08-11 06:37:49'),
(48, 1, '2024-08-11', 28, 4, '2024-08-11 06:38:20', '2024-08-11 06:38:20'),
(49, 1, '2024-08-11', 28, 4, '2024-08-11 06:38:26', '2024-08-11 06:38:26'),
(50, 1, '2024-08-11', 28, 4, '2024-08-11 06:39:04', '2024-08-11 06:39:04'),
(51, 1, '2024-08-11', 24, 4, '2024-08-11 06:39:10', '2024-08-11 06:39:10'),
(52, 1, '2024-08-11', 117, 5, '2024-08-11 06:39:19', '2024-08-11 06:39:19'),
(53, 1, '2024-08-11', 71, 8, '2024-08-11 06:46:15', '2024-08-11 06:46:15'),
(54, 1, '2024-08-11', 29, 8, '2024-08-11 06:46:29', '2024-08-11 06:46:29'),
(55, 1, '2024-08-11', 29, 8, '2024-08-11 06:46:35', '2024-08-11 06:46:35'),
(56, 1, '2024-08-11', 42, 8, '2024-08-11 06:47:54', '2024-08-11 06:47:54'),
(57, 1, '2024-08-11', 51, 8, '2024-08-11 06:48:05', '2024-08-11 06:48:05'),
(58, 1, '2024-08-11', 54, 6, '2024-08-11 06:48:40', '2024-08-11 06:48:40'),
(59, 1, '2024-08-13', 131, 10, '2024-08-13 02:54:43', '2024-08-13 02:54:43'),
(60, 1, '2024-08-13', 115, 12, '2024-08-13 02:55:59', '2024-08-13 02:55:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bukus`
--

CREATE TABLE `bukus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kategori_id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `kode_buku` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `tahun_terbit` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `total_buku` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `bukus`
--

INSERT INTO `bukus` (`id`, `kategori_id`, `judul`, `kode_buku`, `penulis`, `penerbit`, `tahun_terbit`, `deskripsi`, `total_buku`, `stok`, `gambar`, `created_at`, `updated_at`) VALUES
(16, 8, 'BERTANAM LENGKENG UNGGUL DILAHAN & POT', '500', 'Bayu Prasetya', 'Penebar Swadaya', '2019', 'Menjelaskan tentang sejarah Lengkeng Merah, memilih lengkeng unggul lainnya, cara mendapatkan bibit unggul dan bertanam di lahan & pot.', 1, 1, 'public/images/MfgdL2wmSQbtiSYtQulXX2Zq9erN4IyRgaMuOvMz.jpg', '2024-07-10 22:52:38', '2024-07-16 21:54:14'),
(17, 8, 'RAHASIA SUKSES BUDIDAYA KOPI', '500', 'Tim Karya Tani Mandiri', 'CV NUANSA AULIA', '2018', 'Menjelaskan tentang :\r\n1. Jenis Kopi Unggul\r\n2. Memperbanyak Bibit\r\n3. Menyiapkan Lahan\r\n4. Penanaman dan Perawatan\r\n5. Panen dan Pascapanen\r\n6. Standar Mutu\r\n7. Pengendalian Hama dan Penyakit', 1, 1, 'public/images/nJq87GSpDbTSy7aK6AAkWFKGOu7Bw3WjPd6qRorm.jpg', '2024-07-10 23:08:51', '2024-07-17 01:37:49'),
(19, 8, 'PANEN JAHE MERAH PRODUKSI 3X LIPAT', '500', 'Engkos Kosasih dan Irwan Nurhakim', 'Penebar Swadaya', '2021', 'Menjelaskan tentang :\r\n- Prospek Pasar Jahe Merah\r\n- Mengenal Jahe Merah\r\n- Pembibitan Jahe Merah\r\n- Budidaya Jahe Merah di Polibag\r\n- Budidaya Jahe Merah di Lahan\r\n- Pengendalian HAma dan Penyakit\r\n- Panen, Pascapanen, dan Pemasaran\r\n- Analisis Usaha', 1, 1, 'public/images/y97U6rbl4BABt5MYx9wpkQ8MhYpLOQbENni6HmgH.jpg', '2024-07-10 23:18:21', '2024-07-17 01:48:19'),
(20, 8, 'SUKSES BUDIDAYA JAHE ORGANIK DI PEKARANGAN DAN PERKEBUNAN', '500', 'Hieronymus Budi Santoso', 'LILY PUBLISHER', '2017', 'Menjelaskan tentang :\r\n- Mengenal Jahe\r\n- Tiga Klon Jahe\r\n- Produksi dan Ekspor-Impor Jahe\r\n- Syarat Tumbuh\r\n- Pembibitan\r\n- Bertanam Jahe Organik Dalam Karung di Pekarangan\r\n- Bertanam Jahe di Kebun\r\n- Hama dan Penyakit\r\n- Panen \r\n- Pascapanen\r\n- Olahan Jahe\r\n- Khasiat Jahe\r\n- Bisnis Menguntungkan', 1, 1, 'public/images/6TbB7scdpabbVYIR9hfMj0Gq0nl6ZnwJVzW5LJnS.jpg', '2024-07-10 23:26:55', '2024-07-17 01:51:17'),
(21, 8, 'BUDIDAYA SAYURAN ORGANIK DI PEKARANGAN Tanpa pupuk kimia, tanpa pestisida kimia Lebih sehat dan lebih renyah', '500', 'Norbertus Kaleka', 'PUSTAKA BARU', '2020', 'Menjelaskan tentang :\r\n1. Pencemaran Sayur dan Buah Oleh Pestisida dan Dampaknya Pada Kesehatan Manusia\r\n2. Mari Menghasilkan Pangan Sehat Dari Pekarangan\r\n3. Membuat Mikro Organisme Lokal (MOL)\r\n4. Membuat Pupuk Organik Cair\r\n5. Membuat Pupuk Organik Padat\r\n6. Membuat Pestisida Nabati Untuk Pengendalian Hama dan Penyakit Tanaman\r\n7. Menyiapkan Media Tanam Untuk Budidaya Sayuran Organik\r\n8. Teknik Berkebun Sayuran Organik di Pekarangan\r\n9. Hama dan Penyakit Yang Menyerang Tanaman Sayuran di Pekarangan', 1, 1, 'public/images/rBA4hjAabBjsVZ8KKf8ymRK3DDHKljwegybF7QML.jpg', '2024-07-10 23:37:11', '2024-07-17 01:51:53'),
(22, 8, 'MENGHASILKAN PEPAYA CALIFORNIA BERKUALITAS', '500', 'Wisnu Gunawan', 'PT ArgoMedia Pustaka', '2018', 'Menjelaskan tentang :\r\n1. Prospek Pasar Pepaya\r\n2. Mengenal Jenis-jenis Pepaya Unggul\r\n3. Persiapan Budidaya\r\n4. Penyemaian Benih dan Persiapan Lahan\r\n5. Pemeliharaan \r\n6. Pengendalian Hama dan Penyakit\r\n7. Panen, Pascapanen, pemasaran, dan Tren Pasar\r\n8. Analisis Usaha', 1, 1, 'public/images/An1tS0woCYVxdnpVVkN5t3iaaTMY9PhHeUUrMfPs.jpg', '2024-07-10 23:43:39', '2024-07-17 01:52:28'),
(23, 4, 'A HANDBOOK FOR INSECURITY', '100', 'D. TRI UTAMI', 'PENERBIT BRILLIANT', '2021', 'MENGENAL RASA TAKUT & MENCIPTAKAN BAHAGIA PADA TAKARAN YANG TEPAT', 1, 1, 'public/images/JaAlYl1mBd0dsRVHDUYPSr1V5yQ6h0wuwjCJy1ZR.jpg', '2024-07-10 23:49:21', '2024-07-17 01:53:00'),
(24, 4, 'A HANDBOOK FOR YOU', '100', 'ARES ULIA', 'PENERBIT BRILLIANT', '2022', 'THE ONLY PERSON THAT UNDERSTANDS YOU IS YOURSELF', 1, 1, 'public/images/PxBCjc6Mh5OMhzdmkRi6z9K9hcWkjof88iJMaKEm.jpg', '2024-07-10 23:54:26', '2024-07-17 01:53:26'),
(25, 4, 'A HANDBOOK FOR LIFE WITHOUT BURDEN', '100', 'DIANA TARA', 'PENERBIT BRILLIANT', '2022', 'WHY DO WE SABOTAGE OUR OWN HAPPINENSS?', 1, 1, 'public/images/Cdm52tlkODPXhlfQ9Uac8WDeU3gOD0PqxfOtMPQT.jpg', '2024-07-10 23:56:30', '2024-07-17 01:50:27'),
(26, 4, 'A HANDBOOK FOR FEELING EXHAUSTED', '100', 'ANA WIDIAWATI J.', 'PENERBIT BRILLIANT', '2022', 'MEMBERI RUANG UNTUK LELAH', 1, 1, 'public/images/SR41LpzzdjKYgBsavxpqTlLhhx5a9fznEAo3Ai60.jpg', '2024-07-10 23:59:05', '2024-07-17 01:50:00'),
(27, 4, 'A HANDBOOK FOR FAILURE', '100', 'ANA WIDIAWATI J.', 'PENERBIT BRILLIANT', '2021', 'Setiap Hasil Menyimpan Misteri yang Mungkin Tidak Kita Ketahui', 1, 1, 'public/images/AnwctO5XL2uFPFrNmruClW6LqwkQkXcj0cNZSI9U.jpg', '2024-07-11 00:00:53', '2024-08-12 09:54:33'),
(28, 4, 'A HANDBOOK FOR SAYING NO', '100', 'D. TRI UTAMI', 'PENERBIT BRILLIANT', '2022', 'BERANI BERKATA \"TIDAK\" & MELEPAS BELENGGU ATAS DIRI SENDIRI', 1, 2, 'public/images/HcimKYWaFJ5ppn5utQ5stcfD6PWGnIWKlq5yDEsg.jpg', '2024-07-11 00:02:43', '2024-08-12 09:54:40'),
(29, 8, 'DASAR-DASAR TEKNIK BUDIDAYA TANAMAN', '500', 'BARGUMONO MARYANA', 'GOSYEN PUBLISHING', '2020', 'Menjelaskan tentang :\r\n- Perbanyakan Tanaman\r\n- Varietas Unggul\r\n- Tanah dan Media Tanam\r\n- Fotosintetis\r\n- Unsur Hara dan Kesuburan Tanah\r\n- Pupuk dan Pemupukan\r\n- Perlindungan Tanaman\r\n- Jarak Tanam dan Produksi Pertanian\r\n- Beberapa Aplikasi Teknologi Pertanian', 1, 1, NULL, '2024-07-11 00:19:06', '2024-07-11 00:19:06'),
(30, 8, 'AKUAMBER Akuaponik di Ember', '500', 'B. Prasetya W. & H. Paeru', 'Penebar Swadaya Grup', '2020', 'Menjelaskan tentang :\r\n- Bercocok tanam sambil budidaya ikan\r\n- Produk lebih segar\r\n- Mudah & praktis\r\n- Ketahanan pangan', 1, 1, NULL, '2024-07-11 00:22:56', '2024-07-11 00:22:56'),
(31, 8, 'USAHA 4 JENIS JAMUR SKALA RUMAH TANGGA', '500', 'YOHANA IPUK SUNARMI & CAHYO SAPARINTO', 'Penebar Swadaya', '2018', 'JAMUR TIRAM | JAMUR KUPING | JAMUR MERANG | JAMUR CHAMPIGNON (KANCING)', 1, 1, NULL, '2024-07-11 00:27:36', '2024-07-11 00:27:36'),
(32, 8, 'PANDUAN LENGKAP & PRAKTIS BUDIDAYA PADI YANG PALING MENGUNTUNGKAN', '500', 'FITRI HARYANI NASUTION', 'GARUDA PUSTAKA', '2019', 'Menjelaskan tentang :\r\n- Penanaman padi secara organik\r\n- Penanaman padi secara anorganik\r\n- Kelebihan dan kekurangan pertanian organik dan anorganik', 1, 1, NULL, '2024-07-11 00:32:20', '2024-07-11 00:32:20'),
(33, 8, 'BUDIDAYA DAN BISNIS JAHE, LENGKUAS, KUNYIT, DAN KENCUR', '500', 'ADI PRAMUDYO, ST', 'PT ArgoMedia Pustaka', '2018', 'Menjelaskan tentang :\r\n- Berbagi tip budidaya rimpang\r\n- Teknis Tumpangsari dengan rimpang atau tanaman lainnya\r\n- Teknik Panen dan pascapanen yang tepat setelah tanam\r\n- Tip pemasaran dan perhitungan analisis usaha', 1, 1, NULL, '2024-07-11 00:38:27', '2024-07-11 00:38:27'),
(34, 3, 'SUKSES BUDIDAYA TUMPANG SARI CABAI & TOMAT', '500', 'YUSNU I. M.', 'PENERBIT ILMU', '2019', 'Menjelaskan tentang : \r\nMengenal tanaman cabai dan tomat\r\nVarietas unggull cabai dan tomat bernilai tinggi\r\nArgoklimat untuk cabai dan tomat\r\nPenanaman tomat sistem tumpang sari\r\nPenanaman tomat sistem tumpang sari dengan mulsa plastik\r\nHidroponik-tumpang sari tanaman cabai dan tomat\r\nPengendalian hama dan penyakit\r\nPanen dan Pascapanen\r\nAnalisis usaha', 1, 1, 'public/images/CMWpWkBTsNApLrrJkht3wL6xjYvEWUakyL221D82.jpg', '2024-07-11 00:49:23', '2024-07-11 02:44:22'),
(38, 8, 'PANDUAN PRAKTIS BUDIDAYA BAWANG PUTIH', '500', 'WARSANA, S.P., M.Si. & Ir. BUDI SAMADI', 'PAPAS SINAR SINANTI', '2020', 'Buku ini menjelaskan :\r\n- Mengenal Tanaman Bawang Putih\r\n- Penyiapan Benih\r\n- Persiapan Lahan\r\n- Penanaman Bawang Putih\r\n- Pemeliharaan Tanaman\r\n- Hama dan Penyakit\r\n- Perbanyakan Agensia Hayati dan Aplikasinya\r\n- Panen dan Pascapanen\r\n- Analisis Usahatani', 1, 1, NULL, '2024-07-21 20:56:02', '2024-07-21 20:56:02'),
(39, 8, 'RAHASIA SUKSES BERTANAM PISANG', '500', 'HADI TRIBOWO', 'CV NUANSA AULIA', '2020', 'Menjelaskan tentang :\r\n- Jenis Pisang Unggul\r\n- Memperbanyak Bibit\r\n- Menyiapkan Lahan\r\n- Penanaman dan Perawatan\r\n- Panen dan Pascapanen\r\n- Standar Mutu\r\n- Pengendalian Hama dan Penyakit', 1, 1, NULL, '2024-07-21 21:00:15', '2024-07-21 21:00:15'),
(40, 8, 'RAHASIA SUKSES BERTANAM ALPUKAT', '500', 'Tim Karya Tani Mandiri', 'CV NUANSA AULIA', '2019', '- Jenis Alpukat Unggul\r\n- Memperbanyak Bibit\r\n- Menyiapkan Lahan\r\n- Penanaman dan Perawatan\r\n- Panen dan Pascapanen\r\n- Standar Mutu\r\n- Pengendalian Hama dan Penyakit', 1, 1, NULL, '2024-07-21 21:05:26', '2024-07-21 21:05:26'),
(41, 8, 'MEMPRODUKSI KOMPOS & MIKRO ORGANISME LOKAL (MOL)', '500', 'KHALIMATU NISA DKK', 'BIBIT PUBLISHER', '2016', '- Pengertian Pupuk Kompos dan MOL\r\n- Manfaat Pupuk Kompos dan MOL\r\n- Bahan Baku Pupuk Kompos & MOL \r\n- Bahan yang Dapat Dikomposkan\r\n- Langkah-langkah Membuat MOL\r\n- Analisis Usaha Pupuk Kompis dan MOL', 3, 3, NULL, '2024-07-21 21:10:56', '2024-07-22 20:54:45'),
(42, 8, 'TEKNIK BUDIDAYA SAWI DAN PAKCHOY', '500', 'Ir. BUDI SAMADI', 'PUSTAKA MINA', '2017', '- Pupuk Kandang dan Pupuk Hayati Untuk Meningkatkan Kesuburan Tanah\r\n- Mengenal Tanaman Sawi Hijau\r\n- Teknik Pembibitan Pakchoy dan Sawi Yang Benar\r\n- Budidaya Tanaman Pakchoy dan Sawi\r\n- Penanaman dan Pemeliharaan\r\n- Pengendalian Hama Dan Penyakit\r\n- Panen dan Pascapanen\r\n- Analisis Usaha TAni\r\n- Pestisida Nabati', 1, 1, NULL, '2024-07-23 19:37:39', '2024-07-23 19:37:39'),
(43, 8, 'KIAT SUKSES BUDIDAYA CABAI HIDROPONIK', '500', 'HENDRA SETIAWAN', 'BIO GENESIS', '2019', '- Mengupas tentang budidaya dengan sistem hidroponik\r\n- Membahas beragam jenis tanaman (sayur dan buah) yang bisa ditanam dengan sistem hidroponik\r\n- Langkah demi langkah bertanam cabai sistem hidroponik\r\n- Potensi usaha budidaya cabai hidroponik\r\n- Penanggulangan hama dan penyakit dalam bertanam cabai hidroponik', 1, 1, NULL, '2024-07-23 19:45:09', '2024-07-23 19:45:09'),
(44, 8, 'PETUNJUK PRAKTIS MEMUPUK TANAMAN SAYUR', '500', 'HERU PRIHMANTORO DAN Y.H. INDRIANI', 'Penebar Swadaya', '2017', '- Ragam jenis pupuk\r\n- Cara menghitung kebutuhan pupuk secara cepat\r\n- Cara pemupukan tanaman sayuran daun, bunga, buah, umbi', 1, 1, NULL, '2024-07-23 19:48:16', '2024-07-23 19:48:16'),
(45, 8, 'BERTANAM 13 TANAMAN BUAH DI PEKARANGAN', '500', 'Ir. Wijaya, M.S. dan Trias Qurnia Dewi, S.P.', 'Penebar Swadaya', '2016, 2017, 2018', '- Mudah perawatan dan pengelolahan\r\n- Panen nutrisi keluarga dari pekarangan rumah\r\n- Bisa untuk lahan sempit\r\n- Rajin berbuah, bebas hama dan penyakit', 1, 1, NULL, '2024-07-23 19:53:03', '2024-07-23 19:53:03'),
(46, 8, 'GETAH PEPAYA KOMODITAS PERDAGANGAN DUNIA BERNILAI TINGGI', '500', 'Ir. BAMBANG CAHYONO', 'PAPAS SINAR SINANTI', '2019', 'Bahan Baku Obat, Kosmetik, Industri Makanan, Tekstil, Penjernih dalam Industri Minuman dan Penyamak Kulit', 1, 1, NULL, '2024-07-23 19:56:31', '2024-07-23 19:56:31'),
(47, 8, 'UNTUNG BERLIPAT DARI BUDIDAYA TALAS TANAMAN MULTI MANFAAT', '500', 'H. RAHMAT RUKMANA DAN H. HERDI YUDIRACHMAN', 'LILY PUBLISHER', '2015', '- Prospek dan Manfaat Talas Sebagai Bahan Baku Konsumsi, Obat, dan Agroindustri\r\n- Pengenalan Kultivar Unggul Talas\r\n- Teknik Budidaya Secara Intensif\r\n- Tips Budidaya Talas Jepang (Satoimo)\r\n- Panen dan Pascapanen Talas\r\n- Aneka Olahan Talas', 1, 1, NULL, '2024-07-23 20:03:46', '2024-07-23 20:03:46'),
(48, 8, 'RAHASIA SUKSES BUDIDAYA TANAMAN DENGAN METODE HIDROPONIK', '500', 'TEGUH SUSANTO', 'BIO GENESIS', '2019', 'Tips Analisis Usaha Bertanam Hidroponik', 1, 1, NULL, '2024-07-23 20:06:58', '2024-07-23 20:06:58'),
(49, 8, 'RAHASIA SUKSES BERTANAM LADA', '500', 'Tim Karya Tani Mandiri', 'NUANSA AULIA', '2017', 'Analisis dan Strategi Pengembangan Budidaya Lada', 1, 1, NULL, '2024-07-23 20:09:22', '2024-07-23 20:09:22'),
(50, 8, 'PANDUAN LENGKAP & PRAKTIS BUDIDAYA JAGUNG YANG PALING MENGUNTUNGKAN', '500', 'MOHAMMAD SYAHRIL', 'GARUDA PUSTAKA', '2019', '- Mengenal jagung\r\n- Jenis-jenis jagung\r\n- Kebutuhan pertumbuhan jagung\r\n- Teknik budidaya jagung\r\n- Panen dan pascapanen\r\n- Analisis usaha budidaya jagung', 1, 1, NULL, '2024-07-23 20:13:21', '2024-07-23 20:13:21'),
(51, 8, 'BERBAGAI CARA MEMBERANTAS TIKUS SAWAH', '500', 'Ir. BUDI SAMADI', 'PAPAS SINAR SINANTI', '2018', '- Mengenal jenis tikus\r\n- Morfologi tikus sawah\r\n- Ekobiologi tikus sawah\r\n- Perkembangbiakan tikus sawah\r\n- Kemampuan tikus sawah merusak tanaman\r\n- Pengamatan dan pengambilan keputusan terhadap kehadiran tikus\r\n- Pengendalian tikus sawah\r\n- Pengendalian tikus sistem bubu perangkap', 1, 1, 'public/images/9Rx8y9QlA0v7Y6IaojhRtbIcIxB5oVPEC8U2Dwf3.jpg', '2024-07-23 20:17:57', '2024-08-10 22:48:37'),
(53, 6, 'Mengenal Upacara  Bendera', '394.4', 'Anno D.Sanjari', 'CV. Sagita Publising', '2014', 'buku mengenai upacara bendera', 3, 1, NULL, '2024-08-10 10:23:11', '2024-08-10 10:23:11'),
(54, 6, 'Norma-norma disekitar kita', '303.37', 'Risky Pratama Juarsa', 'CV. Media Sarana Cerdas', '2014', 'Buku Mengenai Norma Sosial disekitar', 2, 1, NULL, '2024-08-10 10:25:01', '2024-08-10 10:25:01'),
(55, 6, 'Bersih-bersih: Polusi Perusak Pernapasan', '363.73', 'Beni S. Ambarjaya', 'CV. Media Sarana Cerdas', '2014', 'Buku Mengenai Isu Polusi terhadap lingkungan', 3, 3, NULL, '2024-08-10 10:27:52', '2024-08-10 10:28:18'),
(56, 8, 'Bagaimana Hewan dan Tumbuhan Mempertahankan Diri', '571', 'Wigati Hadi Omegawati', 'PT. Intan Prawita', '2015', 'Buku mengenai Adaptasi ekologis hewan dan tumbuhan mempertahankan diri pada lingkungan', 1, 1, NULL, '2024-08-10 10:31:12', '2024-08-10 10:31:12'),
(57, 6, 'Dampak globalisasi Bagi Kepribadian Kita', '155.25', 'Ilman Soleh', 'Cempaka Putih', '2009', 'Buku Mengenai Dampak globalisasi terhadap lingkungan', 3, 2, NULL, '2024-08-10 10:33:29', '2024-08-10 10:34:19'),
(58, 6, 'Dampak globalisasi Bagi Kehidupan', '155.25', 'Ilman Soleh', 'Cempaka Putih', '2009', 'Buku Mengenai dampak globalisasi', 3, 1, NULL, '2024-08-10 10:35:26', '2024-08-10 10:35:26'),
(59, 8, 'Manfaat Hutan Bagi Kehidupan', '333.75', 'Tri Haryanto', 'Cempaka Putih', '2010', 'Buku Mengenai Hutan Sebagai Manfaat Bagi Kehidupan', 1, 1, NULL, '2024-08-10 10:36:51', '2024-08-10 10:36:51'),
(60, 12, 'Langit dan Sahabat', '522.7', 'Ra Phoenik', 'CV.Niaga Buku Pendidikan', '2015', 'Buku Mengenai Langit dan sahabat', 2, 1, NULL, '2024-08-10 10:38:33', '2024-08-10 10:38:33'),
(61, 5, 'Beribadah itu Asyik', '927.3', 'H.Tabrani', 'PT.Pustaka Dinamika', '2016', 'Buku Mengenai Tentang Beribadah', 4, 2, NULL, '2024-08-10 10:41:32', '2024-08-10 10:42:48'),
(64, 10, 'Mari, Mengintip Otak Musisi', '155.2', 'Nia Haryanto', 'CV. Media Sarana Cerdas', '2015', 'Buku Mengenai Kepala dari musisi', 4, 2, NULL, '2024-08-10 11:04:49', '2024-08-10 11:04:49'),
(65, 6, 'Ada Apa Dibalik Lingkungan', '516.22', 'Manual Hani\'ah', 'PT. Intan Prawita', '2009', 'Buku Mengenai Tentang apa yang ada dibalik lingkungan', 2, 1, NULL, '2024-08-10 11:09:35', '2024-08-10 11:09:35'),
(66, 5, 'Kewajiban Muslim', '297', 'Addien A.', 'PT. Sarana Ilmu Pustaka', '2009', 'Buku Mengenai Tentang Kewajiban sebagai Muslim', 2, 1, NULL, '2024-08-10 11:12:03', '2024-08-10 11:12:13'),
(67, 12, 'Kumpulan Puisi Dari Hati', '811', 'Nurselawatri', 'CV. Media Sarana Cerdas', '2012', 'Buku Mengenai Tentang kumpulan-kumpulan puisi dari hati', 1, 0, NULL, '2024-08-10 11:14:38', '2024-08-10 11:14:38'),
(69, 8, 'Apakah Udara', '536.5', 'Wahyudi  P. P', 'PT. Sarana Ilmu Pustaka', '2016', 'Buku Mengenai tentang udara', 4, 2, NULL, '2024-08-10 11:23:00', '2024-08-10 11:23:00'),
(70, 6, 'Memahami Masalah Penyimpangan Sosial', '364.3', 'F. M. Nashshar', 'PT. Puripustaka', '2015', 'Buku Mengenai Tentang isu penyimpangan sosial', 2, 1, NULL, '2024-08-10 11:27:47', '2024-08-10 11:27:47'),
(71, 8, 'Air dan Udara Bagi Kehidupan', '333.9', 'Dini Handayani', 'PT. Mediantara Semesta', '2009', 'Buku Mengenai Air dan Udara Bagi Kehidupan', 2, 1, NULL, '2024-08-10 11:35:31', '2024-08-10 11:35:31'),
(72, 8, 'Hidup Sehat Dengan Lingkungan Hijau', '557', 'A. Kania D', 'CV.Niaga Buku Pendidikan', '2013', 'Buku tentang Hidup SSehat', 1, 1, NULL, '2024-08-10 11:37:00', '2024-08-10 11:39:22'),
(73, 8, 'Mengambil Manfaat dari Hewan dan Tumbuhan Lain', '577', 'Aat Uji M', 'Mitra Eudkasi Indonesia', '2014', 'Buku Mengenai Tentang Mengambil Manfaat dari Hewan dan Tumbuhan Lain', 1, 1, NULL, '2024-08-10 11:38:46', '2024-08-10 11:38:46'),
(74, 6, 'Mengelola Emosi Remaja', '155.5', 'Tuti Tresnawati', 'CV. Teman Belajar', '2014', 'Buku Tentang Mengelola emosi remaja', 1, 1, NULL, '2024-08-10 11:47:27', '2024-08-10 11:47:38'),
(76, 8, 'Bahaya: Ikan-ikan Mematikan', '597', 'Ana Sopiani', 'CV. Media Sarana Cerdas', '2014', 'Buku Tentang Bahaya: Ikan-ikan Mematikan', 2, 1, NULL, '2024-08-10 11:58:28', '2024-08-10 11:58:28'),
(77, 8, 'Dampak Kemajuan Teknologi Terhadap Lingkungan', '628', 'Monica Anggen', 'CV. Niaga Buku Pendidikan', '2015', 'Buku Tentang Dampak Kemajuan Teknologi Terhadap Lingkungan', 2, 1, NULL, '2024-08-10 12:00:31', '2024-08-10 12:00:31'),
(78, 8, 'Mari Mengenal Rahasia Lautan', '551.46', 'Izzudin Irsam Mujib', 'CV. Teman Belajar', '2014', 'Buku Tentang Mari Mengenal Rahasia Lautan', 1, 1, NULL, '2024-08-10 12:03:03', '2024-08-10 12:03:03'),
(79, 6, 'Saling Menghormati Itu Indah', '927', 'H. Tabrani', 'PT.Pustaka Dinamika', '2015', 'Buku Tentang Saling Menghormati Itu Indah', 1, 1, NULL, '2024-08-10 12:05:33', '2024-08-10 12:05:33'),
(80, 6, 'Memahami Dampak Globalisasi dalam Kehidupan Bermasyarakat, Berbangsa dan Bernegara', '301', 'F. M. Nashshar', 'PT. Puripustaka', '2012', 'Buku tentang Memahami Dampak Globalisasi dalam Kehidupan Bermasyarakat, Berbangsa dan Bernegara', 1, 1, NULL, '2024-08-10 12:06:54', '2024-08-10 12:06:54'),
(81, 9, 'Magnet & Manfaatnya Bagi Manusia', '538', 'Rahmat O', 'PT. Puri Delco', '2013', 'Buku Tentang Magnet & Manfaatnya Bagi Manusia', 1, 1, NULL, '2024-08-10 12:08:49', '2024-08-10 12:08:49'),
(83, 8, 'Tsunami: Apa, Mengapa?', '5,514,637', 'NASIN EL-KABUMAINI & TJETJEP S. RANUATMADJA', 'PT. Puri Delco', '2015', 'Buku Tentang Tsunami: Apa, Mengapa?', 2, 1, NULL, '2024-08-10 12:13:03', '2024-08-10 12:13:03'),
(84, 13, 'Mari Berkeliling Dunia', '910.4', 'Mirnawati Amir', 'CV. Teman Belajar', '2015', 'Buku Tentang Mari Berkeliling Dunia', 1, 1, NULL, '2024-08-10 12:15:17', '2024-08-10 12:15:17'),
(85, 8, 'Mewaspadai Penyakit yang ditularkan Hewan', '616,959', 'Riana Afriadi', 'PT. Puri Delco', '2013', 'Buku Tentang Mewaspadai Penyakit yang ditularkan Hewan', 1, 1, NULL, '2024-08-10 12:16:44', '2024-08-10 12:16:44'),
(86, 6, 'Akhlak Bermasyarakyat', '302.14', 'Edi Warsidi', 'PT. Puripustaka', '2014', 'Buku Tentang Akhlak Bermasyarakyat', 1, 1, NULL, '2024-08-10 12:18:15', '2024-08-10 12:18:15'),
(87, 8, 'Yuk, Lebih Dekat Mengenal Tumbuh-tumbuhan di Sekitar Kita', '580', 'Bambang Joko Susilo', 'Pustaka Nusantara', '2015', 'Buku Tentang Yuk, Lebih Dekat Mengenal Tumbuh-tumbuhan di Sekitar Kita', 1, 1, NULL, '2024-08-10 12:19:35', '2024-08-10 12:19:35'),
(88, 8, 'Berkah Budidaya Laut', '639.31', 'Setiawan', 'Cipta Persada', '2015', 'Buku Tentang Berkah Budidaya Laut', 1, 1, NULL, '2024-08-10 12:20:42', '2024-08-10 12:23:53'),
(90, 10, 'Lenggang Kencana Suatu Puisi', '811', 'Erika J', 'Ryset Cs Publishing', '2015', 'Buku Tentang Lenggang Kencana Suatu Puisi', 2, 1, NULL, '2024-08-10 12:25:41', '2024-08-10 12:25:55'),
(93, 6, 'Mendamaikan Pertengkaran di Sekolah', '808.3', 'Taufik Remington', 'CV. Teman Belajar', '2012', 'Buku Tentang Mendamaikan Pertengkaran di Sekolah', 1, 1, NULL, '2024-08-10 12:31:28', '2024-08-10 12:31:28'),
(95, 5, 'Qana\'ah dan Tasamuh', '205.1', 'Heri Gunawan', 'Mughni Sejahtera', '2013', 'Buku Tentang Qana\'ah dan Tasamuh', 2, 1, NULL, '2024-08-10 12:33:47', '2024-08-10 22:46:26'),
(96, 12, 'Pengetahuan tentang Puisi', '811', 'Edi Warsidi', 'PT. Sarana Ilmu Pustaka', '2013', 'Buku Tentang Pengetahuan tentang Puisi', 1, 1, NULL, '2024-08-10 12:35:06', '2024-08-10 12:35:06'),
(97, 4, 'Bagaimana Seandainya', '160', 'Marshall Brain', 'CV. Pakar Raya', '2003', 'Buku Tentang Bagamana Seandainya', 1, 1, NULL, '2024-08-10 12:37:38', '2024-08-10 12:37:38'),
(98, 5, 'Bersabar Itu Indah', '155.2', 'H.Tabrani', 'PT.Pustaka Dinamika', '2015', 'Buku Tentang Bersabar Itu Indah', 1, 1, NULL, '2024-08-10 12:39:41', '2024-08-10 12:39:41'),
(99, 8, 'Lebih Dekat Dengan lingkaran', '512.4', 'Geri Achmadi', 'PT. Sarana Ilmu Pustaka', '2013', 'Buku Tentang Lebih Dekat Dengan lingkaran', 1, 1, NULL, '2024-08-10 12:42:04', '2024-08-10 12:42:04'),
(100, 12, 'Khazanah Pantun Indonesia', '398.5', 'P. Oktavianawati', 'Pustaka Nusantara', '2015', 'Buku Tentang Khazanah Pantun Indonesia', 1, 1, NULL, '2024-08-10 12:43:33', '2024-08-10 12:43:33'),
(101, 6, 'Mari Bergotong Royong', '302.14', 'H. Tabrani', 'PT.Pustaka Dinamika', '2015', 'Buku Tentang Mari Bergotong Royong', 1, 1, NULL, '2024-08-10 12:44:43', '2024-08-10 12:44:43'),
(102, 5, 'Ananiah, Ghadab, Ghibah, dan Namimah', '2X5.1', 'Heri Gunawan', 'Mughni Sejahtera', '2012', 'Buku Tentang Ananiah, Ghadab, Ghibah, dan Namimah', 1, 1, NULL, '2024-08-10 12:45:55', '2024-08-10 12:45:55'),
(103, 8, 'Flora dan Fauna Maskot Indonesia', '570', 'Lusijiani', 'Makrifat', '2013', 'Buku Tentang Flora dan Fauna Maskot Indonesia', 1, 1, NULL, '2024-08-10 12:46:43', '2024-08-10 12:46:43'),
(104, 6, 'Teladan pemimpin Berkarakter', '155.2', 'Edi Warsidi', 'Puripustaka', '2015', 'Buku Tentang Teladan pemimpin Berkarakter', 1, 1, NULL, '2024-08-10 12:47:44', '2024-08-10 12:47:44'),
(105, 5, 'Zionis Dalam Al-Quran', '320', 'Muchtadram', 'Makrifat Media Utama', '2011', 'Buku Tentang Zionis Dalam Al-Quran', 1, 1, NULL, '2024-08-10 12:49:04', '2024-08-10 12:49:04'),
(107, 6, 'Langkah-langkah Mewujudkan Mimpi', '155.25', 'An. Ubaedy', 'Pustaka Nusantara', '2015', 'Buku Tentang Langkah-langkah Mewujudkan Mimpi', 1, 1, NULL, '2024-08-10 12:58:53', '2024-08-10 12:58:53'),
(108, 13, 'Ensiklopedia lebih Dekat dengan Jawa Barat', '9102', 'F. M. Nashshar', 'Alkawani', '2015', 'Buku Tentang Ensiklopedia lebih Dekat dengan Jawa Barat', 1, 1, NULL, '2024-08-10 13:00:19', '2024-08-10 13:00:19'),
(109, 13, 'Sumedang Dalam Perjalanan Cerita Parahyangan', '325.14', 'Erika J', 'Ryset Cs Publishing', '2015', 'Buku Tentang Sumedang Dalam Perjalanan Cerita Parahyangan', 1, 1, NULL, '2024-08-10 13:01:15', '2024-08-10 13:01:15'),
(110, 6, 'Bunga Rampai Kultur Budaya Masyarakat', '307.12', 'Erika J', 'CV. Mawar Putra Perdana', '2015', 'Buku Tentang Bunga Rampai Kultur Budaya Masyarakat', 1, 1, NULL, '2024-08-10 13:02:14', '2024-08-10 13:02:14'),
(111, 13, 'Ensiklopedia Tokoh Berjasa dalam Perumusan Konsitusi Negara Indonesia', '923', 'Hetti Restiani', 'Alkawani', '2015', 'Buku Tentang Ensiklopedia Tokoh Berjasa dalam Perumusan Konsitusi Negara Indonesia', 1, 1, NULL, '2024-08-10 13:03:14', '2024-08-10 13:03:14'),
(112, 3, 'Pancasila dan Sikap Remaja', '320509598', 'Addien A.', 'PT. Sarana Ilmu Pustaka', '2013', 'Buku Tentang Pancasila dan Sikap Remaja', 1, 1, NULL, '2024-08-10 13:04:36', '2024-08-10 13:04:36'),
(113, 4, 'Madilog Tan Malaka: Materialisme Dialektika & Logika', '101', 'Tan Malaka', 'Narasi', '2014', 'Tan Malaka melihat kemajuan umat manusia harus melalui tiga tahap: Dari \"logika mistika\" lewat \"filsafat\" ke \"ilmu pengetahuan\" (sains). Dan selama bangsa Indonesia masih terkungkung oleh \"logika mistika\" itu, tak mungkin ia menjadi bangsa yang merdeka dan maju. Madilog merupakan jalan keluar dari \"logika mistika\" dan imbauan seorang nasionalis sejati buat bangsanya untuk keluar dari keterbelakangan dan ketertinggalan.\r\nMadilog Tan Malaka : Materialisme, Dialektika & Logika membahas tentang pandangan Tan Malaka terhadap Materialisme, Dialektika, dan Logika yang ditulis oleh Tan Malaka, filsuf asal Indonesia dan juga pejuang kemerdekaan. Teori materialisme ini diambil dari pemikiran filsuf asal Jerman, Karl Marx dan Friedrich Engels. Materialisme dijelaskan sebagai paham filsafat yang menjelaskan bahwa sesuatu yang bisa dikatakan ada kebenarannya adalah materi. Tan malaka juga menjelaskan dan memperkenalkan prinsip dasar logika dalam buku ini. Sedangkan teori dialektika berarti tidak ada suatu kebenaran yang bersifat absolut. Tan malaka menerangkan bahwa seiring waktu berjalan, akan selalu ada pergerakan yang berdampak pada kehidupan. Buku ini direkomendasikan untuk pembaca yang menyukai filsafat.', 2, 1, NULL, '2024-08-10 22:00:27', '2024-08-10 22:00:27'),
(114, 3, 'Pengantar Teknologi Informasi Edisi Revisi', '030', 'Abdul Kadir, N Terra Ch Triwahyuni', 'Andi Publisher', '2014', 'Di era modern ini, segala hal sangat mengandalkan pemanfaatan teknologi dan informasi. Teknologi Informasi (TI) adalah penggunaan komputer untuk membuat, memproses, menyimpan, mengambil, dan bertukar semua jenis data dan informasi. TI biasanya digunakan dalam konteks operasi bisnis yang bertentangan dengan teknologi pribadi atau hiburan. Buku ini sangat berguna untuk Anda yang ingin mengenal teknologi informasi.', 1, 1, NULL, '2024-08-10 22:03:37', '2024-08-10 22:03:37'),
(115, 12, 'Antropologi Budaya', '803', 'Prof. Dr. I Gede A. B. Wiranata, S.H., M.H.', 'PT. Citra Aditya Bakti', '2019', '\"Antropologi Budaya merupakan salah satu cabang ilmu-ilmu sosial, yang berupaya untuk memberi jawaban atas berbagai pertanyaan yang berkaitan dengan manusia dalam posisi atau kedudukannya sebagai makhluk sosial. Jawaban yang diberikan tersebut menguraikan seluk-beluk realitas fundamental tentang manusia yang dikonstruksikan sebagai intersubjektivitas atau ketentuan dunia nyata, yang merupakan dasar kebudayaan manusia.\r\nGaris besar pembahasan yang disajikan dalam buku ini dibatasi pada tiga kajian utama, yang dieksposisikan dalam beberapa bab. Pertama, orientasi umum tentang Antropologi Budaya yang tergambar dalam teori-teori yang terdapat dalam dunia Antropologi, baik berupa konsep dasar, metode-metode yang khas, hubungannya dengan ilmu lain, sejarah dan manfaat pengkajian, maupun berbagai permasalahan yang terkait dengan penerapannya.', 1, 1, NULL, '2024-08-10 22:15:39', '2024-08-10 22:15:39'),
(116, 4, 'Arsitektur Perilaku', '110', 'Lury Sofyan Yahya & Dimas Budi Prasetyo', 'Penerbit Buku Kompas', '2024', 'Mengambil keputusan tidak selalu terjadi di ruang rapat atau ruang sidang. Mengambil keputusan terjadi pada perilaku sederhana kita sehari-hari—ia berkaitan erat dengan proses berpikir logis dan rasional. Benarkah demikian?\r\nRupanya belum tentu. Bahkan cenderung terhitung jarang bagi segelintir orang. Dikemas dengan gaya menulis sehari-hari dan ditulis dari perspektif Ilmu Ekonomi dan Psikologi, buku ini mencoba membahas perilaku dalam konteks dinamika berpikir, keputusan\r\nindividu, kesimpulan dalam grup, hingga kebijakan publik.', 1, 1, NULL, '2024-08-10 22:25:49', '2024-08-10 22:25:49'),
(117, 5, 'Adab Dulu Baru Ilmu', '220', 'Imam Nawawi', 'Anak Hebat Indonesia', '2024', 'Adab adalah istilah dalam bahasa Arab yang merujuk pada tata krama, etika, norma-norma perilaku, dan sikap yang sesuai dengan norma sosial dan agama. Adab mencakup perilaku dan tindakan yang dianggap sopan, patut, dan sesuai dengan nilai-nilai moral yang berlaku dalam suatu masyarakat atau kebudayaan. Ini mencakup cara berbicara, berinteraksi, dan bersikap terhadap diri sendiri, orang lain, dan lingkungan sekitar.\r\nKedudukan adab yang menjelaskan bahwa seluruh amal agama, baik amal hati atau amal badan, baik berupa ucapan atau perbuatan, tidaklah diakui kecuali dipenuhi dengan adab-adab yang baik, sifat terpuji, dan akal yang mulia. Hal tersebut berkelindan dengan ajaran Nabi Muhammad (saw). Beliau merupakan contoh teladan dalam hal etika (adab) yang baik dan bahwa prinsip-prinsip etika yang diterapkan olehnya membentuk dasar bagi perilaku yang benar dan bermoral dalam Islam.', 1, 1, NULL, '2024-08-10 22:32:25', '2024-08-13 02:59:32'),
(118, 10, 'Menua dengan Gembira', '765', 'Andina Dwifatma', 'Shira Media', '2023', 'Menua dengan Gembira merupakan buku kumpulan esai pertama Andina Dwifatma. Ia menyebut esai-esainya dalam buku ini sebagai kumpulan rasan-rasan tentang kehidupan warga pinggiran kota. Tinggal di pinggiran Jakarta selama lima belas tahun memaparkan Andina pada banyak persoalan. Mulai dari perkara-perkara yang terjadi di sekitar kompleks tempat tinggalnya hingga masalah transportasi umum yang memble, tanpa banyak jargon ilmiah, serta dikisahkan dengan cara yang memikat.', 1, 1, NULL, '2024-08-10 22:34:15', '2024-08-10 23:18:28'),
(119, 8, 'Matematika Dasar', '511', 'Afidah', 'RajaGrafindo Persada', '2014', 'Buku ini terdiri dari 6 bab, yang isinya secara garis besar membahas tentang dasar matematika, yaitu logika, himpunan, sistem bilangan real, relasi, fungsi, dan grafik, serta topik lain yang relevan yaitu sistem persamaan linier, barisan dan deret serta matriks. Uraian dalam buku ini disajikan dalam bahasa sederhana yang lebih simple dan mudah untuk dipahami. Buku ini juga disertai dengan contoh-contoh soal dan penyelesaiannya serta dilengkapi dengan soal-soal latihan yang dapat dikerjakan oleh mahasiswa untuk lebih memantapkan pemahaman. Kehadiran buku ini diharapkan dapat menambah referensi dan menjadi acuan bagi mahasiswa khususnya dan peminat matematika pada umumnya. Semoga buku ini dapat bermanfaat.', 1, 1, NULL, '2024-08-10 22:40:07', '2024-08-10 22:40:07'),
(120, 6, 'Berubah Atau Punah', '302.11', 'Josef Bataona', 'Pbk', '2022', 'Buku ini berisi berbagai pengalaman konkret dan luas iliki oleh para praktisi profesional sumber ya rtanusia. Paparan dalam bentuk story telling meliputi berbagai tahapan transformasi, serta mencakup juga variasi t<Itangan dan bagaimana mereka mengatasinya. Untuk para penulis sepakat memberi judul buku ini \"Berubah atau Punah\" yang menggambarkan sebuah ajakan untuk bertransformasi di tengah pelbagai disrupsi yang terjadi saat ini. Inilah sebuah panggilan nyata untuk membawa perubahan budaya di dalam organisasi atau perusahaan untuk menjadi lebih baik lagi.', 1, 1, NULL, '2024-08-10 22:42:36', '2024-08-10 22:42:36'),
(121, 8, 'Mengenal Laut', '510', 'Beni S. Ambarjaya', 'CV. Putra Setia', '2008', 'Sebuah buku yang mengenalkan laut', 2, 2, NULL, '2024-08-10 22:47:59', '2024-08-10 22:47:59'),
(122, 9, 'Teknologi Pengolahan Pangan', '612', 'Enceng Sobari', 'Lily Publisher', '2018', 'Secara umum, teknologi dapat didefinisikan sebagai terapan dari ilmu murni. Ilmu dan teknologi dapat bersifat timbal balik, penemuan teknologi baru memungkinkan untuk dipelajarinya ilmu baru secara lebih mendalam, dengan begitu diharapkan akan muncul teknologi baru yang jauh lebih efisien dan efektif. Perlu dipahami bahwa teknologi tidak sebatas pada bagaimana suatu alat diciptakan dan digunakan sebaik mungkin untuk keperluan manusia, tetapi lebih kepada pemahaman tentang intangible technology (mempelajari secara mendasar sekaligus mendalam di balik suatu teknologi).', 2, 2, NULL, '2024-08-10 22:59:42', '2024-08-10 22:59:42'),
(123, 9, 'Ensiklopedia Sains & Teknologi: Sains Sehari-Hari', '611', 'Lee Mi-Jeong', 'Bhuana Ilmu Populer', '2023', 'embahas isu tentang ilmu psikologi dalam kehidupan sehari-hari, seperti bagaimana jika selalu tidak ingin belajar? Bagaimana jika selalu ingin menyontek PR? Mengapa saat mau ujian selalu tegang? Bagaimana jika selalu merasa gagal di ujian? Apakah orang-orang masih menyukaiku bila nilaiku jelek? Mengapa guru memperlakukanku berbeda dengan teman sekelas yang lain? Mengapa aku tidak bisa fokus saat belajar? Bagaimana jika berbohong karena takut dimarahi? Dan lain sebagainya.  Memberi informasi di akhir bagian dengan ilmu psikologi yang sesuai dengan tema  Banyak ilustrasi menarik, mengasyikkan, serta dapat menambah wawasan anak-anak saat membaca  Mendapatkan penghargaan 100 Recommended Excellent Books to Young People Across the Country.  Mendapatkan penghargaan National Land and Resources Excellent Popular Science Books Collection and Selection', 1, 1, NULL, '2024-08-10 23:00:51', '2024-08-10 23:00:51'),
(124, 9, 'TEKNOLOGI PRODUKSI TANAMAN SAYURAN', '610', 'Syarif Husen, Hidayat Tri Sutardjo, Aulia Zakia, A', 'UMM Press', '2022', 'Tanaman sayuran dalam ilmu pertanian disebut sebagai anggota\r\nkomoditas hortikultura, karena merupakan tanaman yang biasanya\r\ndiusahakan di kebun. Peranan penting tanaman sayuran sebagai\r\nbahan pangan adalah sumbangannya terhadap vitamin dan mineral,\r\ndisamping itu juga beberapa sayuran merupakan sumber pro¬tein dan\r\nkalori. Gejala kekurangan vitamin A yang banyak terdapat di Indonesia\r\nmenunjukkan kurangnya konsumsi sayuran. Kalsium dan besi adalah\r\ndiantara mineral yang terkandung di dalam sayuran, yang penting\r\nbagi penderita kekurangan kalsium dan anemia. Yang tidak kalah\r\npentingnya lagi adalah kandungan serat di dalam sayuran berguna\r\nuntuk memperbaiki pencernaan.', 1, 1, NULL, '2024-08-10 23:02:10', '2024-08-10 23:02:10'),
(125, 9, 'Sejarah dan Paradigma Teknologi Pendidikan untuk Perubahan Sosial', '609', 'Edi Subkhan', 'Kencana Prenada Media', '2017', 'Sejak teknologi pendidikan hadir di Indonesia, banyak karya yang sudah dihasilkan. Mulai dari pengembangan sistem dan infrastruktur berbasis teknologi untuk meningkatkan kualitas dan memperluas akses pendidikan bagi masyarakat luas, hingga kebijakan dan penelitian pengembangan keilmuan bidang teknologi pendidikan. Seiring perjalanan waktu, beragam paradigma keilmuan muncul dan berinteraksi dengan teknologi pendidikan. Buku berjudul Sejarah & Paradigma Teknologi Pendidikan Untuk Perubahan Sosial yang ditulis oleh Edi Subkhan ini memberikan gambaran pergeseran dan keragaman paradigma keilmuan tersebut dan implikasinya, yang ternyata membuka peluang teknologi pendidikan sebagai pendorong transformasi sosial.', 2, 2, NULL, '2024-08-10 23:03:33', '2024-08-12 09:58:37'),
(126, 3, 'Menguasai Office untuk Pemula', '010', 'Miftahul Jannah', 'Elex Media Komputindo', '2022', 'Di dalam buku ini akan dikupas secara tuntas tentang cara mengoperasikan Microsoft Office, dimulai dari Word, Excel, PowerPoint. Semua dibahas secara gamblang dan mudah untuk dipahami. Penjelasan yang ada di dalam buku ini disertai dengan gambar agar mudah untuk dipraktikkan.', 1, 1, NULL, '2024-08-10 23:08:01', '2024-08-10 23:08:01'),
(127, 3, 'Mahir Segala Macam Jenis Desain dengan Canva', '098', 'Arista Prasetyo Adi', 'Elex Media Komputindo', '2023', 'Bisa membuat desain yang menarik dan profesional menjadi impian semua orang. Apalagi saat ini desain grafis berupa gambar dan video menjadi sebuah konten yang sangat penting bagi segala macam profesi atau kegiatan. Dengan membuat berbagai jenis desain yang menarik dan profesional, dari sana Anda bisa mendapatkan pekerjaan, penghasilan, bahkan kepercayaan. Sayangnya untuk menguasai aplikasi desain seperti yang ada sekarang ini tidaklah mudah, diperlukan kemampuan khusus di bidang seni dan desain yang hanya dimiliki oleh sebagian orang saja. Namun, sejak meluncurnya Canva siapapun bisa menjadi Desainer dan menciptakan desain profesional. Canva menghadirkan user interface yang mudah dalam penggunaannya serta menyediakan ribuan template. Buku ini akan membahas beberapa jenis desain yang dapat dibuat menggunakan Canva beserta tips dan trik agar desain yang Anda buat semakin menarik.', 1, 1, NULL, '2024-08-10 23:09:42', '2024-08-10 23:09:49'),
(128, 10, 'Seni Bersabar dan Bersyukur', '778', 'Ilham Maulana', 'Transmedia Pustaka', '2024', 'Buku ini ditulis sebagai pengingat dan pembakar semangat dalam hidup. Terutama mengajarkan untuk bisa ikhlas menerima takdir dari Sang Mahakuasa.', 1, 1, NULL, '2024-08-10 23:13:14', '2024-08-10 23:13:14'),
(129, 10, 'Retorika Seni Berbicara', '767', 'Aristoteles', 'Gramedia Widiasarana Indonesia', '2018', 'Socrates, Plato, dan Aristoteles memandang retorika dan puisi sebagai alat yang terlalu sering digunakan untuk memanipulasi orang lain melalui manipulasi emosi dan pengaburan fakta. Mereka mendakwa para sofis, termasuk Gorgias dan Isocrates, sebagai para pengguna manipulasi jenis ini, sedangkan para filsuf merupakan pengguna retorika yang didasarkan pada filsafat dan upaya-upaya pencerahan. Salah satu kontribusi terpenting Aristoteles dalam buku ini adalah ia mengidentifikasi retorika sebagai salah satu dari tiga elemen kunci dalam filsafat, bersanding dengan logika dan dialektika.', 1, 1, NULL, '2024-08-10 23:15:24', '2024-08-12 09:54:31'),
(130, 10, 'Sebuah Seni untuk Bersikap Bodo Amat (edisi handy)', '756', 'Mark Manson', 'Gramedia Widiasarana Indonesia', '2022', 'Buku Sebuah Seni untuk Bersikap Bodo Amat mengajarkan tiga seni yang dapat diterapkan pada kehidupan. Seni pertama adalah bersikap masa bodoh (bodo amat, tidak peduli) pada semua halangan dan perjuangan dalam mencapai sesuai yang diinginkan. Seni kedua adalah mencari hal penting yang menjadi prioritas agar seni pertama, masa bodoh (bodo amat, tidak peduli), dapat lebih mudah dilakukan pada hal sepele. Terakhir, seni ketiga, mulai menentukan hal yang lebih penting atau lebih diprioritaskan saat menuju dewasa.', 1, 1, NULL, '2024-08-10 23:16:25', '2024-08-10 23:16:25'),
(131, 10, 'Bicara Itu Ada Seninya', '779', 'Oh Su Hyang', 'Bhuana Ilmu Populer', '2021', 'Ketika komunikasi menjadi hal yang penting untuk bersaing, pakar komunikasi Oh Su Hyang mengeluarkan buku yang sangat berarti. Selain berisi tentang pengalaman peningkatan diri, buku ini juga memuat berbagai konten mengenai teknik komunikasi, persuasi, dan negosiasi.', 1, 1, NULL, '2024-08-10 23:17:18', '2024-08-10 23:17:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategoris`
--

CREATE TABLE `kategoris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategoris`
--

INSERT INTO `kategoris` (`id`, `nama`, `deskripsi`, `created_at`, `updated_at`) VALUES
(3, 'Ilmu komputer, informasi & pekerjaan umum', '000-099', '2024-06-21 21:48:55', '2024-06-21 21:48:55'),
(4, 'filsafat dan psikologi', '100-199', '2024-06-23 10:04:21', '2024-06-23 10:04:21'),
(5, 'AGAMA', '200-299', '2024-06-23 10:05:24', '2024-06-23 10:05:24'),
(6, 'Ilmu Sosial', '300-399', '2024-06-23 10:06:20', '2024-06-23 10:06:20'),
(7, 'Bahasa', '400-499', '2024-06-23 10:06:34', '2024-06-23 10:06:34'),
(8, 'Ilmu alam dan matematika', '500-599', '2024-06-23 10:07:06', '2024-06-23 10:07:06'),
(9, 'Teknologi', '600-699', '2024-06-23 10:07:55', '2024-06-23 10:07:55'),
(10, 'Karya Seni', '700-799', '2024-06-23 10:08:31', '2024-06-23 10:08:31'),
(12, 'Sastra dan retorika', '800-899', '2024-06-23 10:09:47', '2024-06-23 10:09:47'),
(13, 'Sejarah, Biografi, dan Geografi.', '900-999', '2024-06-23 10:10:24', '2024-06-23 10:10:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_02_28_061755_create_bukus_table', 1),
(7, '2024_03_26_120727_create_pengunjungs_table', 1),
(8, '2024_05_09_051257_create_kategoris_table', 1),
(9, '2024_05_21_123909_create_peminjamen_table', 1),
(10, '2024_05_31_130450_create_baca_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjamen`
--

CREATE TABLE `peminjamen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_peminjam` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `buku_id` bigint(20) UNSIGNED NOT NULL,
  `kategori_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_wajib_kembali` date NOT NULL,
  `tanggal_pengembalian` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `peminjamen`
--

INSERT INTO `peminjamen` (`id`, `nama_peminjam`, `alamat`, `no_hp`, `buku_id`, `kategori_id`, `tanggal_pinjam`, `tanggal_wajib_kembali`, `tanggal_pengembalian`, `created_at`, `updated_at`) VALUES
(9, 'saka', 'rambatan kulon', '087825057328', 28, 4, '2024-08-11', '2024-08-18', '2024-08-12', '2024-08-11 06:18:31', '2024-08-12 09:54:40'),
(10, 'palwaguna', 'rambatan kulon', '087850528237', 129, 10, '2024-08-11', '2024-08-18', '2024-08-12', '2024-08-11 06:21:15', '2024-08-12 09:54:30'),
(11, 'maulana', 'rambatan kulon', '083148178394', 27, 4, '2024-08-11', '2024-08-18', '2024-08-12', '2024-08-11 06:25:37', '2024-08-12 09:54:33'),
(12, 'saka', 'rambatan kulon', '087825057328', 125, 9, '2024-08-12', '2024-08-19', '2024-08-12', '2024-08-12 09:58:27', '2024-08-12 09:58:37'),
(13, 'saka', 'rambatan kulon', '087825057328', 117, 5, '2024-08-13', '2024-08-20', '2024-08-13', '2024-08-13 02:58:46', '2024-08-13 02:59:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengunjungs`
--

CREATE TABLE `pengunjungs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pengunjungs`
--

INSERT INTO `pengunjungs` (`id`, `created_at`, `updated_at`, `nama`, `alamat`) VALUES
(16, '2024-07-24 10:53:10', '2024-07-24 10:53:10', 'attin', 'rambatan'),
(17, '2024-08-07 19:14:10', '2024-08-07 19:14:10', 'BIDIN', 'Rambatan Kulon'),
(18, '2024-08-11 06:15:22', '2024-08-11 06:15:22', 'saka', 'bangkir'),
(19, '2024-08-11 06:15:38', '2024-08-11 06:15:38', 'wahyudin', 'rambatan kulon'),
(20, '2024-08-11 06:15:49', '2024-08-11 06:15:49', 'palwaguna', 'rambatan kulon'),
(21, '2024-08-11 06:16:14', '2024-08-11 06:16:14', 'maulana', 'rambatan kulon');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nama`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(16, 'SHINTIA WATI SUDARSA', 'shintiawatisudarsa@gmail.com', NULL, '$2y$12$8BPLLQfGVTFOQdQhwcoX9.eXWd3NcBjUvzeHBrtimeqh7uiVerUyS', NULL, '2024-07-10 21:09:50', '2024-07-10 21:09:50'),
(17, 'DUWI ADINDA PUTRI', 'duwiadinda11@gmail.com', NULL, '$2y$12$zmAobnZKJdUZX.IW.UehEeLA9RXGXQCdV2GJrqDM7qIUIlH7zZsou', NULL, '2024-07-16 21:52:09', '2024-07-16 21:52:09'),
(18, 'suga', 'suga@gmail.com', NULL, '$2y$12$f3KM1DuUU0NvhZKSvwuOt.94h8HgeODisPzf2zE6ZZ5UTZP6UVeEa', NULL, '2024-07-16 21:52:46', '2024-07-16 21:52:46'),
(19, 'TINHAELI', 'haelitin20@gmail.com', NULL, '$2y$12$X3HmH9wAKEHqVLG28Oa7TemI7X3luYCSo0287c79a2EdV8R7.hWPS', NULL, '2024-07-23 18:47:10', '2024-07-23 18:47:10'),
(20, 'attin', 'atttin@gmail.com', NULL, '$2y$12$PVY2YNRspRSnw6zgoltFZ.nCht9VeXytcP92ZOPvu89JpBLtg8XPi', NULL, '2024-07-24 10:53:39', '2024-07-24 10:53:39'),
(21, 'attin', 'attinr@gmai.com', NULL, '$2y$12$BUBf9pODHrHls.VeAAi9vOkoP0ABYOS828nrBwgllKMHtdhD5UcMm', NULL, '2024-07-24 19:12:22', '2024-07-24 19:12:22'),
(22, 'saka', 'sakaon07@gmail.com', NULL, '$2y$12$M8SNgn6mpJ9wK3RNZ.9g1.xjpluQHk9mKd6lDN.ag6Ul0pbAjI0/a', NULL, '2024-08-09 03:31:52', '2024-08-09 03:31:52');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `baca`
--
ALTER TABLE `baca`
  ADD PRIMARY KEY (`id`),
  ADD KEY `baca_buku_id_foreign` (`buku_id`),
  ADD KEY `baca_kategori_id_foreign` (`kategori_id`);

--
-- Indeks untuk tabel `bukus`
--
ALTER TABLE `bukus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `peminjamen`
--
ALTER TABLE `peminjamen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `peminjamen_buku_id_foreign` (`buku_id`),
  ADD KEY `peminjamen_kategori_id_foreign` (`kategori_id`);

--
-- Indeks untuk tabel `pengunjungs`
--
ALTER TABLE `pengunjungs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `baca`
--
ALTER TABLE `baca`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT untuk tabel `bukus`
--
ALTER TABLE `bukus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `peminjamen`
--
ALTER TABLE `peminjamen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `pengunjungs`
--
ALTER TABLE `pengunjungs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `baca`
--
ALTER TABLE `baca`
  ADD CONSTRAINT `baca_buku_id_foreign` FOREIGN KEY (`buku_id`) REFERENCES `bukus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `baca_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategoris` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `peminjamen`
--
ALTER TABLE `peminjamen`
  ADD CONSTRAINT `peminjamen_buku_id_foreign` FOREIGN KEY (`buku_id`) REFERENCES `bukus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `peminjamen_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategoris` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
