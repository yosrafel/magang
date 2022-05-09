-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2020 at 10:36 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `els`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `servis_id` int(11) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `servis_id`, `user_id`, `message`, `updated_at`, `created_at`) VALUES
(28, 1, 22, 'jadi apa mau anda ya? saya begeini dan begitu tapi anda begini dan begitu, jadi anda bermaksud seperti apa dan bagaimana supaya ini bisa terjadi dan begitu begini jadi apa mau anda ya? saya begeini dan begitu tapi anda begini dan begitu, jadi anda bermaksud seperti apa dan bagaimana supaya ini bisa terjadi dan begitu begini jadi apa mau anda ya? saya begeini dan begitu tapi anda begini dan begitu, jadi anda bermaksud seperti apa dan bagaimana supaya ini bisa terjadi dan begitu begini', '2020-11-25 08:32:39', '2020-11-25 08:32:39'),
(29, 2, 22, 'jadi apa mau anda ya? saya begeini dan begitu tapi anda begini dan begitu, jadi anda bermaksud seperti apa dan bagaimana supaya ini bisa terjadi dan begitu begini jadi apa mau anda ya? saya begeini dan begitu tapi anda begini dan begitu, jadi anda bermaksud seperti apa dan bagaimana supaya ini bisa terjadi dan begitu begini jadi apa mau anda ya? saya begeini dan begitu tapi anda begini dan begitu, jadi anda bermaksud seperti apa dan bagaimana supaya ini bisa terjadi dan begitu begini', '2020-11-25 15:33:49', '0000-00-00 00:00:00'),
(30, 1, 1, 'Tidak ada', '2020-11-25 09:03:01', '2020-11-25 09:03:01'),
(31, 1, 1, 'a', '2020-11-25 09:23:23', '2020-11-25 09:23:23'),
(32, 1, 1, 'asw', '2020-11-25 09:35:33', '2020-11-25 09:35:33');

-- --------------------------------------------------------

--
-- Table structure for table `servis`
--

CREATE TABLE `servis` (
  `id` int(11) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `tgl_in` date NOT NULL,
  `no_tanda_terima` char(8) NOT NULL,
  `nama_customer` varchar(250) NOT NULL,
  `email` varchar(150) NOT NULL,
  `no_hp_customer` char(13) NOT NULL,
  `dept` varchar(25) NOT NULL,
  `tgl_beli` date NOT NULL,
  `type` varchar(100) NOT NULL,
  `serial_num` char(20) NOT NULL,
  `kelengkapan` varchar(250) NOT NULL,
  `kerusakan` varchar(250) NOT NULL,
  `tehnisi` varchar(250) NOT NULL,
  `tgl_kirim_vendor` date NOT NULL,
  `vendor` varchar(50) NOT NULL,
  `no_surat_jalan` char(10) NOT NULL,
  `tgl_kembali_vendor` date NOT NULL,
  `status_unit` char(10) NOT NULL,
  `tgl_ambil_cust` date NOT NULL,
  `status` char(10) NOT NULL,
  `closed_by` varchar(250) NOT NULL,
  `charge` char(1) NOT NULL,
  `no_nota` char(15) NOT NULL,
  `nominal` int(11) NOT NULL,
  `usia_service` int(11) NOT NULL,
  `cek_7` char(15) NOT NULL,
  `cek_14` char(15) NOT NULL,
  `cek_30` char(15) NOT NULL,
  `tindakan` varchar(250) NOT NULL,
  `ket_1` varchar(250) DEFAULT NULL,
  `ket_2` varchar(250) DEFAULT NULL,
  `ket_3` varchar(250) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `servis`
--

INSERT INTO `servis` (`id`, `user_id`, `tgl_in`, `no_tanda_terima`, `nama_customer`, `email`, `no_hp_customer`, `dept`, `tgl_beli`, `type`, `serial_num`, `kelengkapan`, `kerusakan`, `tehnisi`, `tgl_kirim_vendor`, `vendor`, `no_surat_jalan`, `tgl_kembali_vendor`, `status_unit`, `tgl_ambil_cust`, `status`, `closed_by`, `charge`, `no_nota`, `nominal`, `usia_service`, `cek_7`, `cek_14`, `cek_30`, `tindakan`, `ket_1`, `ket_2`, `ket_3`, `updated_at`, `created_at`) VALUES
(1, 22, '2019-10-10', 'IW-383', 'Nama Customer 23', 'pelanggan@gmail.com', '6282134420290', 'NB', '2019-03-17', 'ZYREX SKY 23X BLUE', '-', 'UNIT, BATTERY, NOTA + KG', 'UNIT TIDAK BISA NYALA MESKI PAKAI CHARGER | MATI TOTAL | BANTALAN KARET HILANG 3', 'Nama TEHNISI 1', '2020-01-01', 'ZYREX', 'YK-323', '2019-11-07', 'READY', '2020-01-06', 'CLOSED', 'ya2', 'N', '-', 0, 88, '-', '-', '-', 'ganti keyboard', NULL, NULL, NULL, '2020-11-25 08:38:15', '2020-11-20 18:27:27'),
(2, 22, '2019-10-11', 'IW-390', 'Nama Customer 2', 'pelanggan@gmail.com', '6282134420290', 'NB', '2018-11-19', 'ZYREX 232X W10 GREY', '-', 'UNIT, BATERRY, ADAPTOR, NOTA + KG', 'MATI, KONDISI FISIK ADA BERCAK / KOTOR, KARET BACKOVER HILANG EMPAT', 'Nama TEHNISI 2', '2020-01-02', 'ZYREX', 'YK-324', '2019-11-08', 'READY', '2020-01-07', 'CLOSED', 'mbak pop\n', 'N', '-', 0, 92, '-', '-', '-', 's/n baru : sky232r009507', NULL, NULL, NULL, '2020-11-20 18:27:27', '2020-11-20 18:27:27'),
(3, 23, '2019-10-12', 'IW-391', 'Nama Customer 3', 'admin@gmail.com', '6282134420290', 'NB', '2019-04-29', 'ZYREX SKY232X BLUE W10', '-', 'UNIT, BATTERY, NOTA + KG', 'BATT MENGGEMBUNG , KONDISI CASING MENGKAP, BANTU KLAIM KE ZYREX, KONDISI LAPTOP MATI', 'Nama TEHNISI 3', '2020-01-03', 'ZYREX', 'YK-325', '2019-11-09', 'READY', '2020-01-08', 'CLOSED', 'adi', 'N', '-', 0, 97, '-', '-', '-', 'BATTERY GELEMBUNG, BIAYA GANTI BATTERY RP.300.000', NULL, NULL, NULL, '2020-11-20 18:27:27', '2020-11-20 18:27:27'),
(4, 23, '2019-10-13', 'IW-408', 'Nama Customer 4', 'admin@gmail.com', '6282134420290', 'NB', '2019-02-18', 'ZYREX SKY 232Y BLUE', '-', 'UNIT, BATTERY, NOTA + KG', 'SERING NYALA MATI , TOMBOL KEYBOARD SHORT, BANTU PROSES KE ZYREX SC', 'Nama TEHNISI 4', '2020-01-04', 'ZYREX', 'YK-326', '2019-11-10', 'READY', '2020-01-09', 'CLOSED', 'ya2', 'N', '-', 0, 79, '-', '-', '-', 'ganti keyboard', NULL, NULL, NULL, '2020-11-20 18:27:27', '2020-11-20 18:27:27'),
(5, 24, '2019-10-14', 'IW-424', 'Nama Customer 5', '-', '6282134420290', 'NB', '2019-02-19', 'ZYREX SKY 232X', '-', 'UNIT, BATTERY, ADAPTOR, NOTA + KG', 'LAPTOP MATI HANYA SAMPAI LOGO ZYREX, CEK KB + MB, ADL OK, CEK ALL', 'Nama TEHNISI 5', '2020-01-05', 'ZYREX', 'YK-327', '2019-11-11', 'READY', '2020-01-10', 'CLOSED', 'ya2', 'N', '-', 0, 73, '-', '-', '-', 'ganti keyboard', NULL, NULL, NULL, '2020-11-20 18:27:27', '2020-11-20 18:27:27'),
(6, 24, '2019-10-15', 'IW-457', 'Nama Customer 6', '-', '6282134420290', 'NB', '2019-01-20', 'ZYREX SKY 232X GREY WIN 10', '-', 'UNIT, NOTA, ADAPTOR', 'UNIT MATI - MATI SENDIRI , ADL OK', 'Nama TEHNISI 6', '2020-01-06', 'ZYREX', 'YK-328', '2019-11-12', 'READY', '2020-01-11', 'CLOSED', 'mbak pop', 'N', '-', 0, 62, '-', '-', '-', 's/n baru : sky232r009350', NULL, NULL, NULL, '2020-11-20 18:27:27', '2020-11-20 18:27:27'),
(7, 24, '2019-10-16', 'IW-464', 'Nama Customer 7', '-', '6282134420290', 'NB', '2019-05-10', 'ZYREX SKY 232X GREY WIN 10', '-', 'UNIT, BATTERY, ADAPTOR + K.POWER, BOX, NOTA + KG', 'BEBERAPA TOMBOL SHORT / TIDAK FUNGSI', 'Nama TEHNISI 7', '2020-01-07', 'ZYREX', 'YK-329', '2019-11-13', 'READY', '2020-01-12', 'CLOSED', 'mbak pop', 'N', '-', 0, 96, '-', '-', '-', 'ganti keyboard, RESERVICE TGL 06/01/2020 NO YK-329', NULL, NULL, NULL, '2020-11-20 18:27:27', '2020-11-20 18:27:27'),
(8, 24, '2019-10-17', '1549', 'Nama Customer 8', '-', '6282134420290', 'NB', '2019-09-04', 'MOUSE WIRELESS LOGITECH M170', '-', 'UNIT + BOX', 'MOUSE TIDAK BISA DIGUNAKAN, KURSOR TIDAK MAU BERGERAK', 'Nama TEHNISI 8', '2020-01-08', 'MSM', 'YK-330', '2019-11-14', 'READY', '2020-01-13', 'NOT CLOSED', 'mbak pop', 'N', '-', 0, 309, '-', '-', 'CEK', 'S/N BARU : 1927LZX2M849', NULL, NULL, NULL, '2020-11-20 18:27:27', '2020-11-20 18:27:27'),
(9, 24, '2019-10-18', 'IW-489', 'Nama Customer 9', '-', '6282134420290', 'NB', '2019-09-30', 'ZYREX SKY 232X GREY WIN 10', '-', 'UNIT, BATTERY, ADAPTOR + K.POWER, NOTA + KG , SSD 128 GB', 'LAYAR SERING MATI KALAU TIDAK PAKAI CHARGER', 'Nama TEHNISI 9', '2020-01-09', 'ZYREX\n', 'YK-331', '2019-11-15', 'READY', '2020-01-14', 'CLOSED', 'MICHI', 'N', '-', 0, 54, '-', '-', '-', 'GANTI KEYBOARD', NULL, NULL, NULL, '2020-11-20 18:27:27', '2020-11-20 18:27:27'),
(10, 24, '2019-10-19', 'ew23', 'nama customer 10', '-', '6282134420291', 'NB', '2019-10-01', 'ZYREX SKY 232X GREY WIN 11', '-', 'UNIT, BATTERY, ADAPTOR + K.POWER, NOTA + KG , SSD 128 GB', 'LAYAR SERING MATI KALAU TIDAK PAKAI CHARGER', 'Nama TEHNISI 10', '2020-01-10', 'ZYREX\n', 'YK-332', '2019-11-16', 'READY', '2020-01-15', 'CLOSED', 'MICHI', 'N', '-', 0, 54, '-', '-', '-', 'GANTI KEYBOARD', NULL, NULL, NULL, '2020-11-20 18:27:27', '2020-11-20 18:27:27'),
(11, 24, '2019-10-20', 'ew24', 'nama customer 11', '-', '6282134420292', 'NB', '2019-10-02', 'ZYREX SKY 232X GREY WIN 12', '-', 'UNIT, BATTERY, ADAPTOR + K.POWER, NOTA + KG , SSD 128 GB', 'LAYAR SERING MATI KALAU TIDAK PAKAI CHARGER', 'Nama TEHNISI 11', '2020-01-11', 'ZYREX\n', 'YK-333', '2019-11-17', 'READY', '2020-01-16', 'CLOSED', 'MICHI', 'N', '-', 0, 54, '-', '-', '-', 'GANTI KEYBOARD', NULL, NULL, NULL, '2020-11-20 18:27:27', '2020-11-20 18:27:27'),
(12, 24, '2019-10-21', 'ew25', 'nama customer 12', '-', '6282134420293', 'NB', '2019-10-03', 'ZYREX SKY 232X GREY WIN 13', '-', 'UNIT, BATTERY, ADAPTOR + K.POWER, NOTA + KG , SSD 128 GB', 'LAYAR SERING MATI KALAU TIDAK PAKAI CHARGER', 'Nama TEHNISI 12', '2020-01-12', 'ZYREX\n', 'YK-334', '2019-11-18', 'READY', '2020-01-17', 'CLOSED', 'MICHI', 'N', '-', 0, 54, '-', '-', '-', 'GANTI KEYBOARD', NULL, NULL, NULL, '2020-11-20 18:27:27', '2020-11-20 18:27:27'),
(13, 24, '2019-10-22', 'ew26', 'nama customer 13', '-', '6282134420294', 'NB', '2019-10-04', 'ZYREX SKY 232X GREY WIN 14', '-', 'UNIT, BATTERY, ADAPTOR + K.POWER, NOTA + KG , SSD 128 GB', 'LAYAR SERING MATI KALAU TIDAK PAKAI CHARGER', 'Nama TEHNISI 13', '2020-01-13', 'ZYREX\n', 'YK-335', '2019-11-19', 'READY', '2020-01-18', 'CLOSED', 'MICHI', 'N', '-', 0, 54, '-', '-', '-', 'GANTI KEYBOARD', NULL, NULL, NULL, '2020-11-20 18:27:27', '2020-11-20 18:27:27'),
(14, 24, '2019-10-23', 'ew27', 'nama customer 14', '-', '6282134420295', 'NB', '2019-10-05', 'ZYREX SKY 232X GREY WIN 15', '-', 'UNIT, BATTERY, ADAPTOR + K.POWER, NOTA + KG , SSD 128 GB', 'LAYAR SERING MATI KALAU TIDAK PAKAI CHARGER', 'Nama TEHNISI 14', '2020-01-14', 'ZYREX\n', 'YK-336', '2019-11-20', 'READY', '2020-01-19', 'CLOSED', 'MICHI', 'N', '-', 0, 54, '-', '-', '-', 'GANTI KEYBOARD', NULL, NULL, NULL, '2020-11-20 18:27:27', '2020-11-20 18:27:27'),
(15, 24, '2019-10-24', 'ew28', 'nama customer 15', '-', '6282134420296', 'NB', '2019-10-06', 'ZYREX SKY 232X GREY WIN 16', '-', 'UNIT, BATTERY, ADAPTOR + K.POWER, NOTA + KG , SSD 128 GB', 'LAYAR SERING MATI KALAU TIDAK PAKAI CHARGER', 'Nama TEHNISI 15', '2020-01-15', 'ZYREX\n', 'YK-337', '2019-11-21', 'READY', '2020-01-20', 'CLOSED', 'MICHI', 'N', '-', 0, 54, '-', '-', '-', 'GANTI KEYBOARD', NULL, NULL, NULL, '2020-11-20 18:27:27', '2020-11-20 18:27:27'),
(16, 24, '2019-10-25', 'ew29', 'nama customer 16', '-', '6282134420297', 'NB', '2019-10-07', 'ZYREX SKY 232X GREY WIN 17', '-', 'UNIT, BATTERY, ADAPTOR + K.POWER, NOTA + KG , SSD 128 GB', 'LAYAR SERING MATI KALAU TIDAK PAKAI CHARGER', 'Nama TEHNISI 16', '2020-01-16', 'ZYREX\n', 'YK-338', '2019-11-22', 'READY', '2020-01-21', 'CLOSED', 'MICHI', 'N', '-', 0, 54, '-', '-', '-', 'GANTI KEYBOARD', NULL, NULL, NULL, '2020-11-20 18:27:27', '2020-11-20 18:27:27'),
(17, 24, '2019-10-26', 'ew30', 'nama customer 17', '-', '6282134420298', 'NB', '2019-10-08', 'ZYREX SKY 232X GREY WIN 18', '-', 'UNIT, BATTERY, ADAPTOR + K.POWER, NOTA + KG , SSD 128 GB', 'LAYAR SERING MATI KALAU TIDAK PAKAI CHARGER', 'Nama TEHNISI 17', '2020-01-17', 'ZYREX\n', 'YK-339', '2019-11-23', 'READY', '2020-01-22', 'CLOSED', 'MICHI', 'N', '-', 0, 54, '-', '-', '-', 'GANTI KEYBOARD', NULL, NULL, NULL, '2020-11-20 18:27:27', '2020-11-20 18:27:27'),
(18, 24, '2019-10-27', 'ew31', 'nama customer 18', '-', '6282134420299', 'NB', '2019-10-09', 'ZYREX SKY 232X GREY WIN 19', '-', 'UNIT, BATTERY, ADAPTOR + K.POWER, NOTA + KG , SSD 128 GB', 'LAYAR SERING MATI KALAU TIDAK PAKAI CHARGER', 'Nama TEHNISI 18', '2020-01-18', 'ZYREX\n', 'YK-340', '2019-11-24', 'READY', '2020-01-23', 'CLOSED', 'MICHI', 'N', '-', 0, 54, '-', '-', '-', 'GANTI KEYBOARD', NULL, NULL, NULL, '2020-11-20 18:27:27', '2020-11-20 18:27:27'),
(19, 24, '2019-10-28', 'ew32', 'nama customer 19', '-', '6282134420300', 'NB', '2019-10-10', 'ZYREX SKY 232X GREY WIN 20', '-', 'UNIT, BATTERY, ADAPTOR + K.POWER, NOTA + KG , SSD 128 GB', 'LAYAR SERING MATI KALAU TIDAK PAKAI CHARGER', 'Nama TEHNISI 19', '2020-01-19', 'ZYREX\n', 'YK-341', '2019-11-25', 'READY', '2020-01-24', 'CLOSED', 'MICHI', 'N', '-', 0, 54, '-', '-', '-', 'GANTI KEYBOARD', NULL, NULL, NULL, '2020-11-20 18:27:27', '2020-11-20 18:27:27'),
(20, 24, '2019-10-29', 'ew33', 'nama customer 20', '-', '6282134420301', 'NB', '2019-10-11', 'ZYREX SKY 232X GREY WIN 21', '-', 'UNIT, BATTERY, ADAPTOR + K.POWER, NOTA + KG , SSD 128 GB', 'LAYAR SERING MATI KALAU TIDAK PAKAI CHARGER', 'Nama TEHNISI 20', '2020-01-20', 'ZYREX\n', 'YK-342', '2019-11-26', 'READY', '2020-01-25', 'CLOSED', 'MICHI', 'N', '-', 0, 54, '-', '-', '-', 'GANTI KEYBOARD', NULL, NULL, NULL, '2020-11-20 18:27:27', '2020-11-20 18:27:27'),
(21, 24, '2019-10-30', 'ew34', 'nama customer 21', '-', '6282134420302', 'NB', '2019-10-12', 'ZYREX SKY 232X GREY WIN 22', '-', 'UNIT, BATTERY, ADAPTOR + K.POWER, NOTA + KG , SSD 128 GB', 'LAYAR SERING MATI KALAU TIDAK PAKAI CHARGER', 'Nama TEHNISI 21', '2020-01-21', 'ZYREX\n', 'YK-343', '2019-11-27', 'READY', '2020-01-26', 'CLOSED', 'MICHI', 'N', '-', 0, 54, '-', '-', '-', 'GANTI KEYBOARD', NULL, NULL, NULL, '2020-11-20 18:27:27', '2020-11-20 18:27:27'),
(22, 24, '2019-10-31', 'ew35', 'nama customer 22', '-', '6282134420303', 'NB', '2019-10-13', 'ZYREX SKY 232X GREY WIN 23', '-', 'UNIT, BATTERY, ADAPTOR + K.POWER, NOTA + KG , SSD 128 GB', 'LAYAR SERING MATI KALAU TIDAK PAKAI CHARGER', 'Nama TEHNISI 22', '2020-01-22', 'ZYREX\n', 'YK-344', '2019-11-28', 'READY', '2020-01-27', 'CLOSED', 'MICHI', 'N', '-', 0, 54, '-', '-', '-', 'GANTI KEYBOARD', NULL, NULL, NULL, '2020-11-20 18:27:27', '2020-11-20 18:27:27'),
(23, 24, '2019-11-01', 'ew36', 'nama customer 23', '-', '6282134420304', 'NB', '2019-10-14', 'ZYREX SKY 232X GREY WIN 24', '-', 'UNIT, BATTERY, ADAPTOR + K.POWER, NOTA + KG , SSD 128 GB', 'LAYAR SERING MATI KALAU TIDAK PAKAI CHARGER', 'Nama TEHNISI 23', '2020-01-23', 'ZYREX\n', 'YK-345', '2019-11-29', 'READY', '2020-01-28', 'CLOSED', 'MICHI', 'N', '-', 0, 54, '-', '-', '-', 'GANTI KEYBOARD', NULL, NULL, NULL, '2020-11-20 18:27:27', '2020-11-20 18:27:27'),
(24, 24, '2019-11-02', 'ew37', 'nama customer 24', '-', '6282134420305', 'NB', '2019-10-15', 'ZYREX SKY 232X GREY WIN 25', '-', 'UNIT, BATTERY, ADAPTOR + K.POWER, NOTA + KG , SSD 128 GB', 'LAYAR SERING MATI KALAU TIDAK PAKAI CHARGER', 'Nama TEHNISI 24', '2020-01-24', 'ZYREX\n', 'YK-346', '2019-11-30', 'READY', '2020-01-29', 'CLOSED', 'MICHI', 'N', '-', 0, 54, '-', '-', '-', 'GANTI KEYBOARD', NULL, NULL, NULL, '2020-11-20 18:27:27', '2020-11-20 18:27:27'),
(25, 24, '2019-11-03', 'ew38', 'nama customer 25', '-', '6282134420306', 'NB', '2019-10-16', 'ZYREX SKY 232X GREY WIN 26', '-', 'UNIT, BATTERY, ADAPTOR + K.POWER, NOTA + KG , SSD 128 GB', 'LAYAR SERING MATI KALAU TIDAK PAKAI CHARGER', 'Nama TEHNISI 25', '2020-01-25', 'ZYREX\n', 'YK-347', '2019-12-01', 'READY', '2020-01-30', 'CLOSED', 'MICHI', 'N', '-', 0, 54, '-', '-', '-', 'GANTI KEYBOARD', NULL, NULL, NULL, '2020-11-20 18:27:27', '2020-11-20 18:27:27'),
(26, 24, '2019-11-04', 'ew39', 'nama customer 26', '-', '6282134420307', 'NB', '2019-10-17', 'ZYREX SKY 232X GREY WIN 27', '-', 'UNIT, BATTERY, ADAPTOR + K.POWER, NOTA + KG , SSD 128 GB', 'LAYAR SERING MATI KALAU TIDAK PAKAI CHARGER', 'Nama TEHNISI 26', '2020-01-26', 'ZYREX\n', 'YK-348', '2019-12-02', 'READY', '2020-01-31', 'CLOSED', 'MICHI', 'N', '-', 0, 54, '-', '-', '-', 'GANTI KEYBOARD', NULL, NULL, NULL, '2020-11-20 18:27:27', '2020-11-20 18:27:27'),
(27, 24, '2019-11-05', 'ew40', 'nama customer 27', '-', '6282134420308', 'NB', '2019-10-18', 'ZYREX SKY 232X GREY WIN 28', '-', 'UNIT, BATTERY, ADAPTOR + K.POWER, NOTA + KG , SSD 128 GB', 'LAYAR SERING MATI KALAU TIDAK PAKAI CHARGER', 'Nama TEHNISI 27', '2020-01-27', 'ZYREX\n', 'YK-349', '2019-12-03', 'READY', '2020-02-01', 'CLOSED', 'MICHI', 'N', '-', 0, 54, '-', '-', '-', 'GANTI KEYBOARD', NULL, NULL, NULL, '2020-11-20 18:27:27', '2020-11-20 18:27:27'),
(28, 24, '2019-11-06', 'ew41', 'nama customer 28', '-', '6282134420309', 'NB', '2019-10-19', 'ZYREX SKY 232X GREY WIN 29', '-', 'UNIT, BATTERY, ADAPTOR + K.POWER, NOTA + KG , SSD 128 GB', 'LAYAR SERING MATI KALAU TIDAK PAKAI CHARGER', 'Nama TEHNISI 28', '2020-01-28', 'ZYREX\n', 'YK-350', '2019-12-04', 'READY', '2020-02-02', 'CLOSED', 'MICHI', 'N', '-', 0, 54, '-', '-', '-', 'GANTI KEYBOARD', NULL, NULL, NULL, '2020-11-20 18:27:27', '2020-11-20 18:27:27'),
(29, 24, '2019-11-07', 'ew42', 'nama customer 29', '-', '6282134420310', 'NB', '2019-10-20', 'ZYREX SKY 232X GREY WIN 30', '-', 'UNIT, BATTERY, ADAPTOR + K.POWER, NOTA + KG , SSD 128 GB', 'LAYAR SERING MATI KALAU TIDAK PAKAI CHARGER', 'Nama TEHNISI 29', '2020-01-29', 'ZYREX\n', 'YK-351', '2019-12-05', 'READY', '2020-02-03', 'CLOSED', 'MICHI', 'N', '-', 0, 54, '-', '-', '-', 'GANTI KEYBOARD', NULL, NULL, NULL, '2020-11-20 18:27:27', '2020-11-20 18:27:27'),
(30, 24, '2019-11-08', 'ew43', 'nama customer 30', '-', '6282134420311', 'NB', '2019-10-21', 'ZYREX SKY 232X GREY WIN 31', '-', 'UNIT, BATTERY, ADAPTOR + K.POWER, NOTA + KG , SSD 128 GB', 'LAYAR SERING MATI KALAU TIDAK PAKAI CHARGER', 'Nama TEHNISI 30', '2020-01-30', 'ZYREX\n', 'YK-352', '2019-12-06', 'READY', '2020-02-04', 'CLOSED', 'MICHI', 'N', '-', 0, 54, '-', '-', '-', 'GANTI KEYBOARD', NULL, NULL, NULL, '2020-11-20 18:27:27', '2020-11-20 18:27:27'),
(31, 24, '2019-11-09', 'ew44', 'nama customer 31', '-', '6282134420312', 'NB', '2019-10-22', 'ZYREX SKY 232X GREY WIN 32', '-', 'UNIT, BATTERY, ADAPTOR + K.POWER, NOTA + KG , SSD 128 GB', 'LAYAR SERING MATI KALAU TIDAK PAKAI CHARGER', 'Nama TEHNISI 31', '2020-01-31', 'ZYREX\n', 'YK-353', '2019-12-07', 'READY', '2020-02-05', 'CLOSED', 'MICHI', 'N', '-', 0, 54, '-', '-', '-', 'GANTI KEYBOARD', NULL, NULL, NULL, '2020-11-20 18:27:27', '2020-11-20 18:27:27'),
(32, 24, '2019-11-10', 'ew45', 'nama customer 32', '-', '6282134420313', 'NB', '2019-10-23', 'ZYREX SKY 232X GREY WIN 33', '-', 'UNIT, BATTERY, ADAPTOR + K.POWER, NOTA + KG , SSD 128 GB', 'LAYAR SERING MATI KALAU TIDAK PAKAI CHARGER', 'Nama TEHNISI 32', '2020-02-01', 'ZYREX\n', 'YK-354', '2019-12-08', 'READY', '2020-02-06', 'CLOSED', 'MICHI', 'N', '-', 0, 54, '-', '-', '-', 'GANTI KEYBOARD', NULL, NULL, NULL, '2020-11-20 18:27:27', '2020-11-20 18:27:27'),
(33, 24, '2019-11-11', 'ew46', 'nama customer 33', '-', '6282134420314', 'NB', '2019-10-24', 'ZYREX SKY 232X GREY WIN 34', '-', 'UNIT, BATTERY, ADAPTOR + K.POWER, NOTA + KG , SSD 128 GB', 'LAYAR SERING MATI KALAU TIDAK PAKAI CHARGER', 'Nama TEHNISI 33', '2020-02-02', 'ZYREX\n', 'YK-355', '2019-12-09', 'READY', '2020-02-07', 'CLOSED', 'MICHI', 'N', '-', 0, 54, '-', '-', '-', 'GANTI KEYBOARD', NULL, NULL, NULL, '2020-11-20 18:27:27', '2020-11-20 18:27:27'),
(34, 24, '2019-11-12', 'ew47', 'nama customer 34', '-', '6282134420315', 'NB', '2019-10-25', 'ZYREX SKY 232X GREY WIN 35', '-', 'UNIT, BATTERY, ADAPTOR + K.POWER, NOTA + KG , SSD 128 GB', 'LAYAR SERING MATI KALAU TIDAK PAKAI CHARGER', 'Nama TEHNISI 34', '2020-02-03', 'ZYREX\n', 'YK-356', '2019-12-10', 'READY', '2020-02-08', 'CLOSED', 'MICHI', 'N', '-', 0, 54, '-', '-', '-', 'GANTI KEYBOARD', NULL, NULL, NULL, '2020-11-20 18:27:27', '2020-11-20 18:27:27'),
(35, 24, '2019-11-13', 'ew48', 'nama customer 35', '-', '6282134420316', 'NB', '2019-10-26', 'ZYREX SKY 232X GREY WIN 36', '-', 'UNIT, BATTERY, ADAPTOR + K.POWER, NOTA + KG , SSD 128 GB', 'LAYAR SERING MATI KALAU TIDAK PAKAI CHARGER', 'Nama TEHNISI 35', '2020-02-04', 'ZYREX\n', 'YK-357', '2019-12-11', 'READY', '2020-02-09', 'CLOSED', 'MICHI', 'N', '-', 0, 54, '-', '-', '-', 'GANTI KEYBOARD', NULL, NULL, NULL, '2020-11-20 18:27:27', '2020-11-20 18:27:27'),
(36, 24, '2019-11-14', 'ew49', 'nama customer 36', '-', '6282134420317', 'NB', '2019-10-27', 'ZYREX SKY 232X GREY WIN 37', '-', 'UNIT, BATTERY, ADAPTOR + K.POWER, NOTA + KG , SSD 128 GB', 'LAYAR SERING MATI KALAU TIDAK PAKAI CHARGER', 'Nama TEHNISI 36', '2020-02-05', 'ZYREX\n', 'YK-358', '2019-12-12', 'READY', '2020-02-10', 'CLOSED', 'MICHI', 'N', '-', 0, 54, '-', '-', '-', 'GANTI KEYBOARD', NULL, NULL, NULL, '2020-11-20 18:27:27', '2020-11-20 18:27:27'),
(37, 24, '2019-11-15', 'ew50', 'nama customer 37', '-', '6282134420318', 'NB', '2019-10-28', 'ZYREX SKY 232X GREY WIN 38', '-', 'UNIT, BATTERY, ADAPTOR + K.POWER, NOTA + KG , SSD 128 GB', 'LAYAR SERING MATI KALAU TIDAK PAKAI CHARGER', 'Nama TEHNISI 37', '2020-02-06', 'ZYREX\n', 'YK-359', '2019-12-13', 'READY', '2020-02-11', 'CLOSED', 'MICHI', 'N', '-', 0, 54, '-', '-', '-', 'GANTI KEYBOARD', NULL, NULL, NULL, '2020-11-20 18:27:27', '2020-11-20 18:27:27'),
(38, 24, '2019-11-16', 'ew51', 'nama customer 38', '-', '6282134420319', 'NB', '2019-10-29', 'ZYREX SKY 232X GREY WIN 39', '-', 'UNIT, BATTERY, ADAPTOR + K.POWER, NOTA + KG , SSD 128 GB', 'LAYAR SERING MATI KALAU TIDAK PAKAI CHARGER', 'Nama TEHNISI 38', '2020-02-07', 'ZYREX\n', 'YK-360', '2019-12-14', 'READY', '2020-02-12', 'CLOSED', 'MICHI', 'N', '-', 0, 54, '-', '-', '-', 'GANTI KEYBOARD', NULL, NULL, NULL, '2020-11-20 18:27:27', '2020-11-20 18:27:27'),
(39, 24, '2019-11-17', 'ew52', 'nama customer 39', '-', '6282134420320', 'NB', '2019-10-30', 'ZYREX SKY 232X GREY WIN 40', '-', 'UNIT, BATTERY, ADAPTOR + K.POWER, NOTA + KG , SSD 128 GB', 'LAYAR SERING MATI KALAU TIDAK PAKAI CHARGER', 'Nama TEHNISI 39', '2020-02-08', 'ZYREX\n', 'YK-361', '2019-12-15', 'READY', '2020-02-13', 'CLOSED', 'MICHI', 'N', '-', 0, 54, '-', '-', '-', 'GANTI KEYBOARD', NULL, NULL, NULL, '2020-11-20 18:27:27', '2020-11-20 18:27:27'),
(40, 24, '2019-11-18', 'ew53', 'nama customer 40', '-', '6282134420321', 'NB', '2019-10-31', 'ZYREX SKY 232X GREY WIN 41', '-', 'UNIT, BATTERY, ADAPTOR + K.POWER, NOTA + KG , SSD 128 GB', 'LAYAR SERING MATI KALAU TIDAK PAKAI CHARGER', 'Nama TEHNISI 40', '2020-02-09', 'ZYREX\n', 'YK-362', '2019-12-16', 'READY', '2020-02-14', 'CLOSED', 'MICHI', 'N', '-', 0, 54, '-', '-', '-', 'GANTI KEYBOARD', NULL, NULL, NULL, '2020-11-20 18:27:27', '2020-11-20 18:27:27'),
(41, 24, '2019-11-19', 'ew54', 'nama customer 41', '-', '6282134420322', 'NB', '2019-11-01', 'ZYREX SKY 232X GREY WIN 42', '-', 'UNIT, BATTERY, ADAPTOR + K.POWER, NOTA + KG , SSD 128 GB', 'LAYAR SERING MATI KALAU TIDAK PAKAI CHARGER', 'Nama TEHNISI 41', '2020-02-10', 'ZYREX\n', 'YK-363', '2019-12-17', 'READY', '2020-02-15', 'CLOSED', 'MICHI', 'N', '-', 0, 54, '-', '-', '-', 'GANTI KEYBOARD', NULL, NULL, NULL, '2020-11-20 18:27:27', '2020-11-20 18:27:27'),
(42, 24, '2019-11-20', 'ew55', 'nama customer 42', '-', '6282134420323', 'NB', '2019-11-02', 'ZYREX SKY 232X GREY WIN 43', '-', 'UNIT, BATTERY, ADAPTOR + K.POWER, NOTA + KG , SSD 128 GB', 'LAYAR SERING MATI KALAU TIDAK PAKAI CHARGER', 'Nama TEHNISI 42', '2020-02-11', 'ZYREX\n', 'YK-364', '2019-12-18', 'READY', '2020-02-16', 'CLOSED', 'MICHI', 'N', '-', 0, 54, '-', '-', '-', 'GANTI KEYBOARD', NULL, NULL, NULL, '2020-11-20 18:27:27', '2020-11-20 18:27:27'),
(43, 24, '2019-11-21', 'ew56', 'nama customer 43', '-', '6282134420324', 'NB', '2019-11-03', 'ZYREX SKY 232X GREY WIN 44', '-', 'UNIT, BATTERY, ADAPTOR + K.POWER, NOTA + KG , SSD 128 GB', 'LAYAR SERING MATI KALAU TIDAK PAKAI CHARGER', 'Nama TEHNISI 43', '2020-02-12', 'ZYREX\n', 'YK-365', '2019-12-19', 'READY', '2020-02-17', 'CLOSED', 'MICHI', 'N', '-', 0, 54, '-', '-', '-', 'GANTI KEYBOARD', NULL, NULL, NULL, '2020-11-20 18:27:27', '2020-11-20 18:27:27'),
(44, 24, '2019-11-22', 'ew57', 'nama customer 44', '-', '6282134420325', 'NB', '2019-11-04', 'ZYREX SKY 232X GREY WIN 45', '-', 'UNIT, BATTERY, ADAPTOR + K.POWER, NOTA + KG , SSD 128 GB', 'LAYAR SERING MATI KALAU TIDAK PAKAI CHARGER', 'Nama TEHNISI 44', '2020-02-13', 'ZYREX\n', 'YK-366', '2019-12-20', 'READY', '2020-02-18', 'CLOSED', 'MICHI', 'N', '-', 0, 54, '-', '-', '-', 'GANTI KEYBOARD', NULL, NULL, NULL, '2020-11-20 18:27:27', '2020-11-20 18:27:27'),
(45, 24, '2019-11-23', 'ew58', 'nama customer 45', '-', '6282134420326', 'NB', '2019-11-05', 'ZYREX SKY 232X GREY WIN 46', '-', 'UNIT, BATTERY, ADAPTOR + K.POWER, NOTA + KG , SSD 128 GB', 'LAYAR SERING MATI KALAU TIDAK PAKAI CHARGER', 'Nama TEHNISI 45', '2020-02-14', 'ZYREX\n', 'YK-367', '2019-12-21', 'READY', '2020-02-19', 'CLOSED', 'MICHI', 'N', '-', 0, 54, '-', '-', '-', 'GANTI KEYBOARD', NULL, NULL, NULL, '2020-11-20 18:27:27', '2020-11-20 18:27:27'),
(46, 24, '2019-11-24', 'ew59', 'nama customer 46', '-', '6282134420327', 'NB', '2019-11-06', 'ZYREX SKY 232X GREY WIN 47', '-', 'UNIT, BATTERY, ADAPTOR + K.POWER, NOTA + KG , SSD 128 GB', 'LAYAR SERING MATI KALAU TIDAK PAKAI CHARGER', 'Nama TEHNISI 46', '2020-02-15', 'ZYREX\n', 'YK-368', '2019-12-22', 'READY', '2020-02-20', 'CLOSED', 'MICHI', 'N', '-', 0, 54, '-', '-', '-', 'GANTI KEYBOARD', NULL, NULL, NULL, '2020-11-20 18:27:27', '2020-11-20 18:27:27'),
(47, 24, '2019-11-25', 'ew60', 'nama customer 47', '-', '6282134420328', 'NB', '2019-11-07', 'ZYREX SKY 232X GREY WIN 48', '-', 'UNIT, BATTERY, ADAPTOR + K.POWER, NOTA + KG , SSD 128 GB', 'LAYAR SERING MATI KALAU TIDAK PAKAI CHARGER', 'Nama TEHNISI 47', '2020-02-16', 'ZYREX\n', 'YK-369', '2019-12-23', 'READY', '2020-02-21', 'CLOSED', 'MICHI', 'N', '-', 0, 54, '-', '-', '-', 'GANTI KEYBOARD', NULL, NULL, NULL, '2020-11-20 18:27:27', '2020-11-20 18:27:27'),
(48, 24, '2019-11-26', 'ew61', 'nama customer 48', '-', '6282134420329', 'NB', '2019-11-08', 'ZYREX SKY 232X GREY WIN 49', '-', 'UNIT, BATTERY, ADAPTOR + K.POWER, NOTA + KG , SSD 128 GB', 'LAYAR SERING MATI KALAU TIDAK PAKAI CHARGER', 'Nama TEHNISI 48', '2020-02-17', 'ZYREX\n', 'YK-370', '2019-12-24', 'READY', '2020-02-22', 'CLOSED', 'MICHI', 'N', '-', 0, 54, '-', '-', '-', 'GANTI KEYBOARD', NULL, NULL, NULL, '2020-11-20 18:27:27', '2020-11-20 18:27:27'),
(49, 24, '2019-11-27', 'ew62', 'nama customer 49', '-', '6282134420330', 'NB', '2019-11-09', 'ZYREX SKY 232X GREY WIN 50', '-', 'UNIT, BATTERY, ADAPTOR + K.POWER, NOTA + KG , SSD 128 GB', 'LAYAR SERING MATI KALAU TIDAK PAKAI CHARGER', 'Nama TEHNISI 49', '2020-02-18', 'ZYREX\n', 'YK-371', '2019-12-25', 'READY', '2020-02-23', 'CLOSED', 'MICHI', 'N', '-', 0, 54, '-', '-', '-', 'GANTI KEYBOARD', NULL, NULL, NULL, '2020-11-20 18:27:27', '2020-11-20 18:27:27'),
(50, 24, '2019-11-28', '231', 'nama customer 50', '-', '6282134420331', 'NB', '2019-11-10', 'ZYREX SKY 232X GREY WIN 51', '-', 'UNIT, BATTERY, ADAPTOR + K.POWER, NOTA + KG , SSD 128 GB', 'LAYAR SERING MATI KALAU TIDAK PAKAI CHARGER', 'Nama TEHNISI 50', '2020-02-19', 'ZYREX\n', 'YK-372', '2019-12-26', 'READY', '2020-02-24', 'CLOSED', 'MICHI', 'N', '-', 0, 54, '-', '-', '-', 'GANTI KEYBOARD', NULL, NULL, NULL, '2020-11-20 18:35:57', '2020-11-20 18:27:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `users` (`id`, `name`, `role`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'admin@gmail.com', NULL, '$2y$10$3ArujXNvDeAyZ/g/bTjlgenuCyZ3d6ax4XRMtcUWWZd4vwwrgHRri', 'nXWG03HqVDO308EFBzSBkskNpb1wBVa2BlmdYNPYBhkM4B3pwLGvP99l3Erj', '2020-10-09 07:57:36', '2020-10-09 07:57:36'),
(22, 'Desta Siwi', 'pelanggan', 'pelanggan@gmail.com', NULL, '$2y$10$fvUntgslqoefOt5JHuyQtOGqj9Heh3XaAIodpZ4nUYJ2W0LA2Wh8e', 'nZTZC93JKcejGQIJS3bWyNhUY311kjIfzVoRDLrU2aDv9XKauLf7xuHhGnIL', '2020-10-06 00:48:09', '2020-10-06 00:48:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `servis_id` (`servis_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `servis`
--
ALTER TABLE `servis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `servis`
--
ALTER TABLE `servis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
