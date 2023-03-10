-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Jan 2023 pada 04.35
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beautiesdb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `docters`
--

CREATE TABLE `docters` (
  `id` int(2) NOT NULL,
  `role` varchar(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `specialis` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `docters`
--

INSERT INTO `docters` (`id`, `role`, `name`, `image_path`, `specialis`, `facebook`, `instagram`, `twitter`, `created_at`, `updated_at`) VALUES
(1, 'guest', 'dr. Teffy Nuary, SpDV', 'images/Teffy.png', 'Kulit dan Kelamin', '-', '@teffynuary', '-', '2022-04-17 09:51:16', '2022-04-17 09:51:16'),
(2, 'guest', 'dr. Astrid Teresa, SpKK', 'images/Astrid.png', 'Kulit dan Kelamin', '-', '@astridteresa.dr', '-', '2022-04-17 09:52:08', '2022-04-17 09:52:08'),
(3, 'guest', 'dr. Glory Natasya P', 'images/Glory.png', 'Kulit dan Kelamin', '-', '@natasya.glory', '-', '2022-04-17 09:53:06', '2022-04-17 09:53:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komik`
--

CREATE TABLE `komik` (
  `id` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `members`
--

CREATE TABLE `members` (
  `id` int(4) NOT NULL,
  `username` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `members`
--

INSERT INTO `members` (`id`, `username`, `phone_number`, `email`, `address`, `password`, `created_at`, `updated_at`) VALUES
(2, 'user 2', '0802', 'user2@gmail.com', 'Jl Alamat user2', 'password', '2022-04-17 09:40:15', '2022-04-17 09:40:15'),
(3, 'user 3', '0803', 'user3@gmail.com', 'Jl Alamat User 3', 'password', '2022-04-17 09:40:56', '2022-04-17 09:40:56'),
(4, 'user 4', '0804', 'user4@gmail.com', 'Jl. Alamat user 4 ', 'password', '2022-04-17 09:41:32', '2022-04-17 09:41:32'),
(5, 'user 5', '0805', 'user5@gmail.com', 'Jl Alamat user 5', 'password', '2022-04-17 09:42:05', '2022-04-17 09:42:05'),
(7, 'user10', '0810', 'user10@gmail.com', 'asdasda', 'password', '2022-05-15 01:51:13', '2022-05-15 01:51:13'),
(8, 'user11', '0811', 'user11@gmail.com', '', 'password', '2022-05-16 16:58:58', '2022-05-16 16:58:58'),
(9, 'user12', '0812', 'user12@gmail.com', '', 'password', '2022-05-16 17:03:22', '2022-05-16 17:03:22'),
(10, 'user1', '08999', 'user1@gmail.com', '', 'user1', '2022-05-16 17:46:54', '2022-05-16 17:46:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `id` int(3) NOT NULL,
  `role` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `treatments` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `product`
--

INSERT INTO `product` (`id`, `role`, `title`, `treatments`, `status`, `price`, `description`, `image_path`, `created_at`, `updated_at`) VALUES
(1, '', 'Botox Treatment', 'Treatment Wajah', '1', '3749000', 'Salah satu masalah kulit yang dapat muncul di area mata adalah Crow\'s Feet.\r\n\r\nCrow\'s Feet merupakan kerutan menyerupai kaki burung gagak yang muncul di sudut mata.\r\nHal ini umumnya disebabkan oleh kebiasaan menyipitkan mata, senyum, kebiasaan tidur menyamping dan faktor usia.', 'images/Botox_Treatment.png', '2022-04-17 09:55:22', '2022-04-17 09:55:22'),
(2, '', 'Acne Treatment', 'Treatment Wajah', '1', '1399000', 'Perawatan wajah berjerawat berbeda-beda sesuai dengan kondisi dan jenis jerawatnya.\r\n\r\nKonsultasikan masalah kulit anda dengan dokter spesialis untuk mengetahui perawatan yang tepat.', 'images/Acne_Treatment.png', '2022-04-17 09:56:18', '2022-04-17 09:56:18'),
(3, '', 'Flek Treatment', 'Treatment Wajah', '1', '2599000', 'Menghilangkan flek hitam tidak selalu mudah, butuh kesabaran dan konsistensi.\r\nPerawatannya pun bervariasi tergantung dari jenis flek dan kondisi kulit pasien.\r\n\r\nSo, pastikan konsultasi terlebih dahulu dengan dokter spesialis kita untuk mendapatkan perawatan yang tepat ya.', 'images/Flek_Treatment.png', '2022-04-17 09:57:05', '2022-04-17 09:57:05'),
(4, '', 'Hair Removal Brightening Combo', 'Treatment Kulit', '1', '5999000', '*Rambut halus tidak tumbuh lagi\r\n*Tekstur kulit makin halus\r\n*Kulit makin cerah', 'images/Hair_Removal.png', '2022-04-17 09:57:42', '2022-04-17 09:57:42'),
(5, '', 'Laser Face Toning + Profhilo', 'Treatment Wajah', '1', '5999000', '*Kulit lebih lembab\r\n*Flek hitam memudar\r\n*Kulit cerah dan glowing\r\n*Pori - pori mengecil\r\n*Kerutan halus berkurang\r\n\r\nKombinasi sempurna LASER + PROFHILO dengan segudang manfaat untuk kulit kamu.', 'images/Laser_Face_Toning.png', '2022-04-17 09:58:09', '2022-04-17 09:58:09'),
(6, 'guest', 'Filler Treatment', 'Treatment Wajah', '1', '4999000', 'Filler masih menjadi salah satu treatment favorit untuk memperbaiki postur wajah, membuat wajah tampak simetris dan proporsional.', 'images/Filler_Treatment.png', '2022-04-17 10:00:42', '2022-04-17 10:00:42'),
(9, 'guest', 'IPL + Skin Booster Treatment', 'Treatment Wajah', '1', '5999000', '*Kemerahan pada kulit berkurang\r\n*Bekas jerawat memudar\r\n*Kulit lebih lembab dan kenyal\r\n*Kulit lebih cerah\r\n*Warna kulit lebih rata\r\n*Kerutan halus berkurang', 'images/IPL_+_Skin_Booster.png', '2023-01-10 02:14:20', '2023-01-10 02:14:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profile`
--

CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `home_welcome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `home_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `home_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `home_video` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `home_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `profile`
--

INSERT INTO `profile` (`id`, `home_welcome`, `home_title`, `home_description`, `home_video`, `home_name`, `address`, `phone_number`, `email`) VALUES
(1, 'Selamat datang pada Tiffany Clinic', 'Temukan perawatan  kulit di', '30 Years of experience in Cosmetic Surgery.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '', 'Tiffany skin clinic ', 'Jl. Soeprapto No.5, Palangka Raya', '08118810037', '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `promotions`
--

CREATE TABLE `promotions` (
  `id` int(4) NOT NULL,
  `product_id` int(3) NOT NULL,
  `discount` int(3) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `promotions`
--

INSERT INTO `promotions` (`id`, `product_id`, `discount`, `start_date`, `end_date`, `status`, `created_at`, `updated_at`) VALUES
(4, 4, 10, '2022-04-21', '2022-04-21', '1', '2022-04-20 14:41:36', '2022-04-20 14:41:36'),
(6, 6, 10, '2022-05-16', '2022-05-31', '1', '2022-05-15 02:00:36', '2022-05-15 02:00:36'),
(7, 5, 25, '2022-04-14', '2022-06-30', '1', '2022-05-15 02:00:57', '2022-05-15 02:00:57'),
(8, 1, 10, '2022-05-10', '2022-05-25', '1', '2022-05-16 17:56:01', '2022-05-16 17:56:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `reservations`
--

CREATE TABLE `reservations` (
  `id` int(3) NOT NULL,
  `role` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `member_id` int(3) NOT NULL,
  `product_id` int(3) NOT NULL,
  `time_id` int(3) NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_payment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_payment` datetime DEFAULT NULL,
  `time_checkout` datetime DEFAULT NULL,
  `grous_amount` int(19) DEFAULT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pdf_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `done_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `reservations`
--

INSERT INTO `reservations` (`id`, `role`, `member_id`, `product_id`, `time_id`, `date`, `status_payment`, `payment`, `order_id`, `time_payment`, `time_checkout`, `grous_amount`, `payment_type`, `pdf_url`, `bill_key`, `created_at`, `updated_at`, `done_status`) VALUES
(1, '', 1, 1, 1, '04/18/2022', 'done', 'done', '767602314', '2022-04-17 19:26:07', '2022-04-17 19:25:43', 240000, 'echannel', 'https://app.sandbox.midtrans.com/snap/v1/transactions/aaa02be0-023a-42fb-80ac-dddde011811a/pdf', '545957858072', '2022-04-17 12:25:49', '2022-04-17 12:25:49', 'done'),
(2, '', 1, 2, 2, '04/18/2022', 'done', 'done', '1038065344', '2022-04-17 19:27:01', '2022-04-17 19:26:46', 315000, 'echannel', 'https://app.sandbox.midtrans.com/snap/v1/transactions/c5a83f2f-a1bf-43ca-9392-ec03ce6d205a/pdf', '243269656776', '2022-04-17 12:26:50', '2022-04-17 12:26:50', 'done'),
(4, '', 1, 3, 3, '04/18/2022', 'done', 'done', '482275125', '2022-04-17 19:29:46', '2022-04-17 19:29:33', 400000, 'echannel', 'https://app.sandbox.midtrans.com/snap/v1/transactions/c9c9f9ea-80e4-454e-8f81-8429bc2c1c05/pdf', '45822218869', '2022-04-17 12:29:38', '2022-04-17 12:29:38', 'done'),
(5, '', 3, 1, 1, '04/19/2022', 'done', 'done', '1264809962', '2022-04-17 19:40:19', '2022-04-17 19:40:05', 240000, 'echannel', 'https://app.sandbox.midtrans.com/snap/v1/transactions/3ba6d172-7de8-4fa0-973f-fc1f28a5a2d2/pdf', '721580027799', '2022-04-17 12:40:09', '2022-04-17 12:40:09', 'done'),
(6, '', 3, 4, 3, '04/19/2022', 'done', 'done', '1247316851', '2022-04-17 19:41:21', '2022-04-17 19:41:09', 400000, 'echannel', 'https://app.sandbox.midtrans.com/snap/v1/transactions/99f6265c-fc2d-4451-87c3-a5377ab40dfd/pdf', '655041154684', '2022-04-17 12:41:13', '2022-04-17 12:41:13', 'done'),
(7, '', 3, 3, 4, '04/19/2022', 'done', 'done', '390193623', '2022-04-17 19:42:06', '2022-04-17 19:41:51', 400000, 'echannel', 'https://app.sandbox.midtrans.com/snap/v1/transactions/2566b1ac-41fa-4314-8592-c9acad8b0a2e/pdf', '138984762353', '2022-04-17 12:41:53', '2022-04-17 12:41:53', 'done'),
(9, 'guest', 2, 3, 3, '04/22/2022', 'done', 'done', '788933020', '2022-04-17 19:44:07', '2022-04-17 19:43:54', 400000, 'echannel', 'https://app.sandbox.midtrans.com/snap/v1/transactions/c509c9b9-4d0d-4310-9d51-3a971a2c3c4a/pdf', '259693590570', '2022-04-17 12:43:58', '2022-04-17 12:43:58', 'pending'),
(10, '', 4, 5, 4, '04/22/2022', 'done', 'done', '1048892441', '2022-04-17 19:45:32', '2022-04-17 19:45:17', 375000, 'echannel', 'https://app.sandbox.midtrans.com/snap/v1/transactions/2225d342-9654-4b20-9230-e5f1a2314cf1/pdf', '566213383459', '2022-04-17 12:45:21', '2022-04-17 12:45:21', 'done'),
(11, '', 4, 1, 5, '04/22/2022', 'done', 'done', '1624130483', '2022-04-17 19:46:24', '2022-04-17 19:46:03', 240000, 'echannel', 'https://app.sandbox.midtrans.com/snap/v1/transactions/a4dcb2ff-151d-4172-950e-f55d315278e0/pdf', '888835583817', '2022-04-17 12:46:07', '2022-04-17 12:46:07', 'done'),
(12, '', 4, 4, 1, '04/20/2022', 'done', 'done', '977885829', '2022-04-17 19:47:16', '2022-04-17 19:47:01', 400000, 'echannel', 'https://app.sandbox.midtrans.com/snap/v1/transactions/7bf94a34-d8da-402c-b495-9379109c05c7/pdf', '875967418765', '2022-04-17 12:47:06', '2022-04-17 12:47:06', 'done'),
(13, '', 4, 3, 5, '04/18/2022', 'done', 'done', '1649832686', '2022-04-17 19:47:56', '2022-04-17 19:47:43', 400000, 'echannel', 'https://app.sandbox.midtrans.com/snap/v1/transactions/2f519de1-4830-486b-af0e-0f4d5a4fd19e/pdf', '77287470535', '2022-04-17 12:47:47', '2022-04-17 12:47:47', 'done'),
(14, '', 5, 5, 5, '04/19/2022', 'pending', 'pending', '1819261627', NULL, '2022-04-17 19:49:05', 375000, 'echannel', 'https://app.sandbox.midtrans.com/snap/v1/transactions/b5e4b852-3a7f-446b-874b-bce89a98fdeb/pdf', '966361199731', '2022-04-17 12:49:09', '2022-04-17 12:49:09', 'decline'),
(15, '', 5, 4, 5, '04/19/2022', 'done', 'done', '104557094', '2022-04-17 19:49:53', '2022-04-17 19:49:42', 400000, 'echannel', 'https://app.sandbox.midtrans.com/snap/v1/transactions/94a2ad7e-d391-47fa-ab00-9e3305ae8db0/pdf', '636797304989', '2022-04-17 12:49:45', '2022-04-17 12:49:45', 'done'),
(16, '', 1, 1, 2, '04/22/2022', 'pending', 'pending', '2010363472', NULL, '2022-04-20 21:34:01', 240000, 'echannel', 'https://app.sandbox.midtrans.com/snap/v1/transactions/e0fb5da6-710d-4e9c-842b-73eb7e21422a/pdf', '559836872324', '2022-04-20 14:34:08', '2022-04-20 14:34:08', 'decline'),
(17, '', 2, 4, 1, '05/19/2022', 'pending', 'pending', '1759427443', NULL, '2022-05-11 16:49:46', 400000, 'echannel', 'https://app.sandbox.midtrans.com/snap/v1/transactions/bd2d3ebc-d14f-422b-8fb5-e0250bbdc262/pdf', '748194703227', '2022-05-11 09:49:54', '2022-05-11 09:49:54', 'done'),
(18, '', 7, 6, 1, '05/17/2022', 'done', 'done', '1729787294', '2022-05-15 08:54:02', '2022-05-15 08:52:43', 600000, 'echannel', 'https://app.sandbox.midtrans.com/snap/v1/transactions/fa639552-c234-4d9b-9d09-38427b5b52ad/pdf', '387156439412', '2022-05-15 01:52:48', '2022-05-15 01:52:48', 'done'),
(19, '', 7, 5, 3, '05/17/2022', 'done', 'done', '314693901', '2022-05-15 08:55:25', '2022-05-15 08:55:11', 500000, 'echannel', 'https://app.sandbox.midtrans.com/snap/v1/transactions/c129a9e5-7170-4bfe-bc59-5b41989d5c81/pdf', '160023386372', '2022-05-15 01:55:14', '2022-05-15 01:55:14', 'done'),
(20, '', 7, 6, 2, '05/18/2022', 'pending', 'pending', ' 1410444378', NULL, '2022-05-15 08:56:07', 600000, 'echannel', 'https://app.sandbox.midtrans.com/snap/v1/transactions/73407b1c-cc3c-42ca-a140-a88456a1e880/pdf', '795168399741', '2022-05-15 01:56:09', '2022-05-15 01:56:09', 'decline'),
(21, '', 8, 6, 2, '05/18/2022', 'pending', 'pending', '1700938168', NULL, '2022-05-17 00:01:44', 600000, 'echannel', 'https://app.sandbox.midtrans.com/snap/v1/transactions/96b76470-09db-49e6-9c9e-a9d10b3e4c75/pdf', '342142614219', '2022-05-16 17:02:12', '2022-05-16 17:02:12', 'decline'),
(22, '', 9, 1, 2, '05/18/2022', 'done', 'done', '110812960', '2022-05-17 00:04:13', '2022-05-17 00:03:57', 300000, 'echannel', 'https://app.sandbox.midtrans.com/snap/v1/transactions/265c7b78-afd5-4ae1-8751-acf118580a62/pdf', '55826384853', '2022-05-16 17:04:01', '2022-05-16 17:04:01', 'done'),
(23, '', 10, 6, 1, '05/18/2022', 'done', 'done', '2071905818', '2022-05-17 01:07:01', '2022-05-17 01:05:18', 600000, 'echannel', 'https://app.sandbox.midtrans.com/snap/v1/transactions/d5193dc6-953d-40ce-8d29-6718b7a87010/pdf', '461641277876', '2022-05-16 18:06:51', '2022-05-16 18:06:51', 'done'),
(24, 'guest', 10, 1, 1, '01/10/2023', 'pending', 'pending', ' 1944548229', NULL, '2023-01-10 02:54:38', 3749000, 'echannel', 'https://app.sandbox.midtrans.com/snap/v1/transactions/fca88778-fcc8-4ed9-ad5c-f64d5d0fcdd5/pdf', '770172422827', '2023-01-10 02:54:48', '2023-01-10 02:54:48', 'cencel'),
(25, 'guest', 10, 2, 1, '01/16/2023', 'pending', 'pending', '1179772011', NULL, '2023-01-16 23:58:44', 1399000, 'echannel', 'https://app.sandbox.midtrans.com/snap/v1/transactions/875a5f5b-c60d-4f3f-93eb-833a54e3decb/pdf', '89429507498', '2023-01-16 23:58:48', '2023-01-16 23:58:48', 'pending');

-- --------------------------------------------------------

--
-- Struktur dari tabel `times`
--

CREATE TABLE `times` (
  `id` int(11) NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `times`
--

INSERT INTO `times` (`id`, `time`) VALUES
(1, '11:00:00'),
(2, '12:00:00'),
(3, '13:00:00'),
(4, '14:00:00'),
(5, '15:00:00'),
(6, '16:00:00'),
(7, '17:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tips`
--

CREATE TABLE `tips` (
  `id` int(3) NOT NULL,
  `role` varchar(10) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tips`
--

INSERT INTO `tips` (`id`, `role`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'guest', 'Perawatan Kulit Kering', 'Pilih Pembersih yang lembut atau creamy, oleskan pelembab segera setelah mencuci muka, Gunakan tabir surya dengan SPF 30+, Hindari produk yang mengandung pewangi', '1', '2022-04-17 09:46:14', '2022-04-17 09:46:14'),
(2, 'guest', 'Gaya Hidup Sehat Untuk Kulit Awet Muda', 'Lindungi Kulit dari Sinar Matahari, Komsumsi makanan sehat dan yang mengandung antioksidan, kurangi miunum alkohol, Berhenti Merokok, Rutin Berolahraga', '1', '2022-04-17 09:46:26', '2022-04-17 09:46:26'),
(3, 'guest', 'Tips Botox Tahan Lama', 'Lindungi Kulit dari sinar matahari, Olahraga intensitas sedang, Gunakan bahan perawatan kulit yang merangsang kolagen, Gunakan moisturizer untuk menjaga kelembapan kulit, Aplikasikan Serum Antioksidan, Kelola Stress', '1', '2022-04-17 09:46:35', '2022-04-17 09:46:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `email`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'admin', 'admin@gmail.com', '2022-04-17 07:58:33', '2022-04-17 07:58:33');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `docters`
--
ALTER TABLE `docters`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `times`
--
ALTER TABLE `times`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tips`
--
ALTER TABLE `tips`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `docters`
--
ALTER TABLE `docters`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `members`
--
ALTER TABLE `members`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `product`
--
ALTER TABLE `product`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `times`
--
ALTER TABLE `times`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tips`
--
ALTER TABLE `tips`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
