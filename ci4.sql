-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Jun 2021 pada 09.13
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'admin', NULL, '2020-11-26 00:00:11', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_reset_attempts`
--

INSERT INTO `auth_reset_attempts` (`id`, `email`, `ip_address`, `user_agent`, `token`, `created_at`) VALUES
(1, 'febryibme19@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.66 Safari/537.36', '2c9e1acab2b8c4a2ecd926d482acbdd9', '2020-11-26 00:31:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `komik`
--

CREATE TABLE `komik` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(225) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `komik`
--

INSERT INTO `komik` (`id`, `judul`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
(1, 'Naruto', 'naruto', 'Masashi Kishimoto', 'Shonen Jump', 'naruto.jpg', NULL, NULL),
(2, 'One Piece', 'one-piece', 'Kichiro Oda', 'Gramedia', 'onepiece.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` text NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2020-09-25-083249', 'App\\Database\\Migrations\\Orang', 'default', 'App', 1601022968, 1),
(2, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1606370123, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orang`
--

CREATE TABLE `orang` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `orang`
--

INSERT INTO `orang` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Pranata Anggriawan', 'Kpg. Bata Putih No. 906, Bontang 82516, SumBar', '2003-04-13 08:51:51', '2020-09-25 03:51:15'),
(2, 'Kenari Maulana', 'Gg. Nangka No. 723, Magelang 40892, SulUt', '1972-06-22 18:00:30', '2020-09-25 03:51:15'),
(3, 'Vega Paiman Waskita', 'Psr. Imam Bonjol No. 416, Palembang 59247, KalSel', '1987-04-30 03:51:22', '2020-09-25 03:51:16'),
(4, 'Sabri Kawaca Sihombing S.Farm', 'Kpg. Wahidin No. 546, Bandung 96284, JaTeng', '2012-05-19 06:04:58', '2020-09-25 03:51:16'),
(5, 'Kezia Hasanah', 'Kpg. Sampangan No. 339, Dumai 97080, JaBar', '1993-06-26 10:03:37', '2020-09-25 03:51:16'),
(6, 'Ganjaran Elvin Hutapea', 'Jr. Baladewa No. 119, Bogor 45636, Papua', '2010-08-23 10:47:33', '2020-09-25 03:51:16'),
(7, 'Zizi Usamah', 'Gg. Imam Bonjol No. 217, Tual 80060, SumSel', '1979-02-05 05:22:44', '2020-09-25 03:51:16'),
(8, 'Mustofa Mahendra', 'Ds. Baladewa No. 858, Kendari 42871, Papua', '2003-06-24 00:21:57', '2020-09-25 03:51:16'),
(9, 'Kusuma Tarihoran', 'Jln. Pattimura No. 790, Yogyakarta 65434, KalTeng', '1973-06-19 13:37:23', '2020-09-25 03:51:16'),
(10, 'Pardi Hardiansyah', 'Gg. Cikapayang No. 808, Yogyakarta 45958, MalUt', '1984-06-27 04:06:16', '2020-09-25 03:51:16'),
(11, 'Nasim Saragih S.Sos', 'Psr. Ekonomi No. 206, Bukittinggi 81016, NTB', '2001-07-14 10:56:21', '2020-09-25 03:51:16'),
(12, 'Ajeng Aryani', 'Jr. Taman No. 605, Tanjungbalai 96418, Lampung', '2002-07-14 03:54:57', '2020-09-25 03:51:16'),
(13, 'Bagas Wijaya', 'Ki. Bawal No. 43, Manado 11175, DKI', '2008-09-13 17:20:43', '2020-09-25 03:51:16'),
(14, 'Cakrajiya Mansur', 'Gg. Ciumbuleuit No. 220, Kotamobagu 93263, Maluku', '1989-02-04 23:14:33', '2020-09-25 03:51:16'),
(15, 'Nasim Saragih M.M.', 'Jr. Wora Wari No. 581, Prabumulih 25739, NTB', '1994-11-18 10:48:02', '2020-09-25 03:51:16'),
(16, 'Banara Saefullah', 'Psr. Baing No. 167, Pekanbaru 44517, SumSel', '2010-02-03 16:42:26', '2020-09-25 03:51:16'),
(17, 'Endra Dongoran', 'Jr. Radio No. 791, Prabumulih 80426, Riau', '1983-05-15 20:04:43', '2020-09-25 03:51:16'),
(18, 'Daruna Hakim', 'Ds. Bhayangkara No. 627, Palangka Raya 39215, JaBar', '2003-05-24 12:01:19', '2020-09-25 03:51:16'),
(19, 'Julia Agustina', 'Psr. Kali No. 202, Palembang 92588, SulTeng', '2009-03-28 22:33:25', '2020-09-25 03:51:17'),
(20, 'Cahyadi Pradipta', 'Ki. Baranang No. 988, Mataram 75953, Lampung', '2000-08-09 01:44:38', '2020-09-25 03:51:17'),
(21, 'Shania Nabila Lailasari M.Farm', 'Kpg. Baranang No. 496, Banda Aceh 51014, Lampung', '2000-04-06 06:46:00', '2020-09-25 03:51:17'),
(22, 'Latif Adriansyah', 'Psr. Jend. Sudirman No. 714, Kendari 20082, Bali', '1995-10-25 01:46:51', '2020-09-25 03:51:17'),
(23, 'Gangsar Saputra', 'Dk. Sam Ratulangi No. 536, Sibolga 12670, NTT', '2018-03-02 11:22:52', '2020-09-25 03:51:17'),
(24, 'Darmaji Wawan Kurniawan S.Sos', 'Jr. Mulyadi No. 379, Samarinda 85550, SumUt', '1999-11-22 12:40:39', '2020-09-25 03:51:17'),
(25, 'Samiah Permata', 'Kpg. Industri No. 394, Salatiga 77660, BaBel', '1974-07-23 00:02:56', '2020-09-25 03:51:17'),
(26, 'Michelle Pratiwi M.Pd', 'Gg. Kali No. 77, Ternate 23421, KalUt', '2019-08-04 21:49:32', '2020-09-25 03:51:17'),
(27, 'Okto Ganjaran Firgantoro', 'Ki. Arifin No. 489, Administrasi Jakarta Barat 41132, KalTim', '1993-09-29 11:10:23', '2020-09-25 03:51:17'),
(28, 'Adhiarja Ibun Prasetya', 'Kpg. Yosodipuro No. 285, Medan 14348, NTB', '1978-07-26 13:14:41', '2020-09-25 03:51:17'),
(29, 'Daru Simanjuntak S.H.', 'Kpg. Banal No. 338, Banjarbaru 13133, KalTeng', '2008-02-22 00:24:47', '2020-09-25 03:51:17'),
(30, 'Amelia Ami Safitri S.Pd', 'Jr. Abang No. 629, Jayapura 27869, KalUt', '1987-11-03 05:24:07', '2020-09-25 03:51:17'),
(31, 'Sari Haryanti', 'Kpg. Bayam No. 252, Tebing Tinggi 29625, KalTim', '1979-11-11 14:09:10', '2020-09-25 03:51:17'),
(32, 'Endra Ardianto', 'Psr. Bappenas No. 376, Depok 47218, KepR', '2002-08-03 00:41:43', '2020-09-25 03:51:17'),
(33, 'Bakda Hakim', 'Ds. Ikan No. 388, Cirebon 15596, KalTeng', '2003-04-22 21:47:04', '2020-09-25 03:51:17'),
(34, 'Saka Budiyanto', 'Dk. Tubagus Ismail No. 243, Surakarta 29667, DIY', '1989-12-22 03:35:01', '2020-09-25 03:51:18'),
(35, 'Lanang Irawan', 'Ki. Otto No. 329, Tual 20258, SumUt', '2009-06-21 06:18:09', '2020-09-25 03:51:18'),
(36, 'Gasti Nasyidah', 'Kpg. Basket No. 159, Administrasi Jakarta Pusat 55184, Riau', '1984-06-29 06:58:56', '2020-09-25 03:51:18'),
(37, 'Vicky Purwanti M.Farm', 'Ki. Umalas No. 883, Cirebon 33520, SulTra', '1979-08-18 03:19:21', '2020-09-25 03:51:18'),
(38, 'Paiman Satya Hardiansyah M.Kom.', 'Jr. Barat No. 532, Administrasi Jakarta Selatan 38505, SumBar', '1992-06-11 13:54:28', '2020-09-25 03:51:18'),
(39, 'Jaga Prasetyo', 'Gg. Yos Sudarso No. 678, Tasikmalaya 27860, DKI', '1977-02-13 23:35:46', '2020-09-25 03:51:18'),
(40, 'Mumpuni Naradi Haryanto', 'Jln. Jambu No. 484, Sabang 53529, SulTeng', '2019-02-27 19:18:35', '2020-09-25 03:51:18'),
(41, 'Unjani Yolanda', 'Ki. Sukajadi No. 287, Pekalongan 94723, SulTeng', '2013-12-07 16:19:19', '2020-09-25 03:51:18'),
(42, 'Paris Salimah Utami M.M.', 'Psr. Lumban Tobing No. 219, Denpasar 59046, Gorontalo', '1970-01-13 06:20:59', '2020-09-25 03:51:18'),
(43, 'Samsul Gunarto', 'Dk. Bambu No. 175, Payakumbuh 32086, KalTim', '2010-03-19 19:35:46', '2020-09-25 03:51:18'),
(44, 'Laras Maryati S.Sos', 'Psr. Sadang Serang No. 500, Bontang 69709, Lampung', '1979-08-21 09:10:57', '2020-09-25 03:51:18'),
(45, 'Karen Handayani', 'Psr. Nakula No. 98, Kupang 19156, Jambi', '1975-06-08 20:21:39', '2020-09-25 03:51:18'),
(46, 'Harsaya Mansur', 'Ds. Camar No. 140, Sibolga 10007, KalSel', '2012-08-31 06:05:52', '2020-09-25 03:51:18'),
(47, 'Samsul Saptono', 'Ds. Hasanuddin No. 311, Palu 51830, SulUt', '1993-02-26 00:38:42', '2020-09-25 03:51:19'),
(48, 'Cawisadi Mujur Habibi', 'Jln. Tambak No. 866, Depok 64616, Aceh', '1980-12-08 05:13:24', '2020-09-25 03:51:19'),
(49, 'Melinda Anggraini', 'Ki. Banceng Pondok No. 651, Depok 16398, JaTim', '1981-02-24 07:08:45', '2020-09-25 03:51:19'),
(50, 'Julia Usamah', 'Jln. Elang No. 700, Subulussalam 48430, KalTeng', '2020-05-24 08:37:14', '2020-09-25 03:51:19'),
(51, 'Garda Makuta Latupono', 'Psr. Pattimura No. 316, Sorong 71043, SumSel', '1976-10-17 20:23:33', '2020-09-25 03:51:19'),
(52, 'Kasiran Pranowo', 'Psr. Siliwangi No. 566, Tasikmalaya 89743, JaTim', '1973-11-28 05:53:38', '2020-09-25 03:51:19'),
(53, 'Galang Thamrin S.E.', 'Jr. Mahakam No. 472, Makassar 73620, Aceh', '1992-12-10 02:48:18', '2020-09-25 03:51:19'),
(54, 'Tari Prastuti', 'Jr. Supono No. 561, Dumai 19104, SulBar', '2007-05-16 10:52:42', '2020-09-25 03:51:19'),
(55, 'Putri Palastri', 'Ds. Wahidin No. 705, Banda Aceh 44173, Banten', '2015-12-26 17:02:38', '2020-09-25 03:51:20'),
(56, 'Latif Mangunsong', 'Ds. Umalas No. 33, Parepare 61904, SumBar', '1974-04-17 11:31:11', '2020-09-25 03:51:20'),
(57, 'Vera Zelda Hariyah S.Ked', 'Kpg. Sam Ratulangi No. 414, Payakumbuh 74389, KalSel', '1977-05-26 19:19:20', '2020-09-25 03:51:20'),
(58, 'Anggabaya Januar M.TI.', 'Ki. Yos No. 744, Bukittinggi 64353, SumBar', '1996-11-18 02:44:01', '2020-09-25 03:51:20'),
(59, 'Ana Puspita', 'Ki. Sutan Syahrir No. 813, Mojokerto 99976, SulSel', '2015-05-10 23:36:48', '2020-09-25 03:51:20'),
(60, 'Ian Waluyo', 'Dk. Baja No. 632, Palembang 32346, Gorontalo', '1973-05-27 00:21:32', '2020-09-25 03:51:20'),
(61, 'Hasan Mahendra', 'Jr. Baabur Royan No. 584, Sibolga 26417, Jambi', '1973-09-03 07:26:23', '2020-09-25 03:51:20'),
(62, 'Edi Utama', 'Psr. Untung Suropati No. 806, Pangkal Pinang 70438, Aceh', '2008-02-14 09:15:28', '2020-09-25 03:51:20'),
(63, 'Kasiran Jati Sitorus', 'Kpg. Basoka Raya No. 990, Padangsidempuan 42024, JaTim', '2017-04-02 12:19:06', '2020-09-25 03:51:20'),
(64, 'Genta Sudiati', 'Gg. Ikan No. 903, Lhokseumawe 62684, KepR', '1999-11-09 10:19:47', '2020-09-25 03:51:20'),
(65, 'Tasnim Budiyanto', 'Dk. Sukajadi No. 734, Makassar 54440, Banten', '1999-12-13 00:55:56', '2020-09-25 03:51:20'),
(66, 'Melinda Haryanti', 'Gg. Wahid No. 23, Sibolga 54208, MalUt', '2011-08-18 15:46:35', '2020-09-25 03:51:21'),
(67, 'Ade Palastri', 'Jr. Perintis Kemerdekaan No. 529, Pekalongan 49894, NTT', '1978-03-04 23:21:02', '2020-09-25 03:51:21'),
(68, 'Tiara Pudjiastuti', 'Dk. Kebonjati No. 550, Bau-Bau 64066, Lampung', '1971-09-21 12:50:22', '2020-09-25 03:51:21'),
(69, 'Cinthia Pudjiastuti', 'Gg. Otto No. 914, Tarakan 86262, Lampung', '2002-02-14 03:53:12', '2020-09-25 03:51:21'),
(70, 'Cecep Sirait', 'Ds. Pahlawan No. 51, Tangerang 73264, NTB', '2015-09-12 22:24:45', '2020-09-25 03:51:21'),
(71, 'Rahayu Vera Padmasari', 'Jln. Nakula No. 908, Ternate 46197, NTB', '1986-11-16 09:55:03', '2020-09-25 03:51:21'),
(72, 'Irma Lala Sudiati', 'Ds. R.M. Said No. 366, Bandung 72409, SumSel', '2012-09-19 23:01:04', '2020-09-25 03:51:21'),
(73, 'Balamantri Hasta Rajata', 'Ds. Gajah No. 360, Sabang 99843, Jambi', '1991-04-09 01:16:00', '2020-09-25 03:51:21'),
(74, 'Elon Darijan Manullang S.Kom', 'Ki. Ketandan No. 693, Blitar 21294, KalSel', '1999-06-22 16:16:24', '2020-09-25 03:51:21'),
(75, 'Mulyono Saadat Pradana', 'Jln. Krakatau No. 475, Batu 74198, Maluku', '2007-10-03 01:42:32', '2020-09-25 03:51:23'),
(76, 'Aslijan Paiman Marbun', 'Dk. Baladewa No. 270, Gunungsitoli 95335, KalTim', '1977-10-15 12:59:18', '2020-09-25 03:51:27'),
(77, 'Kania Amalia Purnawati S.Ked', 'Ki. Baha No. 389, Bitung 86565, Bengkulu', '2004-11-05 04:25:11', '2020-09-25 03:51:30'),
(78, 'Paris Halimah M.TI.', 'Ds. Abdul Muis No. 616, Bima 14757, SumBar', '1995-05-06 17:46:09', '2020-09-25 03:51:33'),
(79, 'Siti Gilda Rahayu M.Ak', 'Dk. Ikan No. 241, Magelang 20599, Aceh', '1989-04-18 23:07:22', '2020-09-25 03:51:33'),
(80, 'Gasti Ami Purwanti S.IP', 'Jr. Dipenogoro No. 202, Sawahlunto 46472, KalSel', '1997-06-08 18:50:49', '2020-09-25 03:51:34'),
(81, 'Eli Winarsih', 'Kpg. Basoka Raya No. 303, Batam 93765, Gorontalo', '1995-12-23 04:39:49', '2020-09-25 03:51:34'),
(82, 'Agus Prima Widodo', 'Ds. Abang No. 61, Pangkal Pinang 60346, NTB', '1978-12-04 00:02:48', '2020-09-25 03:51:34'),
(83, 'Rina Septi Hassanah S.Ked', 'Jr. Ters. Buah Batu No. 11, Lubuklinggau 75072, SumUt', '2011-02-23 20:29:13', '2020-09-25 03:51:34'),
(84, 'Karen Wastuti S.Psi', 'Ds. Moch. Ramdan No. 267, Balikpapan 97121, BaBel', '2004-12-19 13:13:54', '2020-09-25 03:51:34'),
(85, 'Calista Sabrina Oktaviani', 'Ki. Achmad No. 945, Sawahlunto 90592, SulUt', '1989-05-13 04:53:00', '2020-09-25 03:51:34'),
(86, 'Kayun Jailani', 'Jln. Jambu No. 49, Kendari 62316, KalTeng', '2016-04-07 21:33:20', '2020-09-25 03:51:34'),
(87, 'Putri Utami M.TI.', 'Jln. M.T. Haryono No. 113, Tomohon 27530, DIY', '1977-12-22 04:41:47', '2020-09-25 03:51:34'),
(88, 'Saadat Baktiadi Sitompul', 'Dk. Achmad Yani No. 437, Ternate 23521, Lampung', '1984-08-13 04:53:14', '2020-09-25 03:51:34'),
(89, 'Gatot Paiman Tamba M.M.', 'Ki. Bata Putih No. 300, Banjarbaru 66210, BaBel', '2008-03-06 20:38:23', '2020-09-25 03:51:34'),
(90, 'Surya Budiman', 'Ds. Sutarto No. 659, Blitar 22269, SulSel', '2004-12-07 13:12:27', '2020-09-25 03:51:34'),
(91, 'Yusuf Haryanto', 'Ds. Yosodipuro No. 419, Tidore Kepulauan 89960, SumSel', '1970-01-09 20:22:08', '2020-09-25 03:51:34'),
(92, 'Atma Sihotang', 'Ki. Sumpah Pemuda No. 592, Singkawang 56946, SulTra', '2017-04-26 20:52:26', '2020-09-25 03:51:34'),
(93, 'Ilsa Susanti S.Gz', 'Jln. Peta No. 76, Palopo 36544, KalSel', '1980-03-05 10:58:15', '2020-09-25 03:51:34'),
(94, 'Artanto Halim', 'Jr. Bah Jaya No. 671, Administrasi Jakarta Selatan 64325, SulSel', '2001-08-03 23:59:57', '2020-09-25 03:51:34'),
(95, 'Maya Widiastuti', 'Ki. Bahagia  No. 625, Sukabumi 52781, KalUt', '2017-01-07 23:23:30', '2020-09-25 03:51:34'),
(96, 'Jasmin Ella Handayani', 'Gg. Bakti No. 7, Mataram 99284, NTT', '1972-12-04 11:47:28', '2020-09-25 03:51:34'),
(97, 'Aisyah Raina Puspita', 'Jln. Madiun No. 148, Pariaman 59205, SumBar', '1984-02-10 00:29:11', '2020-09-25 03:51:35'),
(98, 'Ayu Jamalia Handayani', 'Ki. Muwardi No. 991, Tarakan 33058, SumBar', '2020-09-15 05:52:50', '2020-09-25 03:51:35'),
(99, 'Estiono Prabowo', 'Kpg. Flores No. 722, Medan 26689, Jambi', '2018-12-02 22:11:40', '2020-09-25 03:51:36'),
(100, 'Mahdi Waskita S.Gz', 'Ki. Basuki No. 510, Tomohon 44610, KalBar', '2020-06-28 06:14:19', '2020-09-25 03:51:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indeks untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indeks untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indeks untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indeks untuk tabel `komik`
--
ALTER TABLE `komik`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orang`
--
ALTER TABLE `orang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `komik`
--
ALTER TABLE `komik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `orang`
--
ALTER TABLE `orang`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
