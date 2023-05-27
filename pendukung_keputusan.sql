-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2023 at 09:20 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pendukung_keputusan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_camilan_pagi`
--

CREATE TABLE `tb_camilan_pagi` (
  `no` int(11) NOT NULL,
  `paket_menu` varchar(2) NOT NULL,
  `menu` varchar(100) NOT NULL,
  `takaran` int(11) NOT NULL,
  `jumlah_kalori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_camilan_pagi`
--

INSERT INTO `tb_camilan_pagi` (`no`, `paket_menu`, `menu`, `takaran`, `jumlah_kalori`) VALUES
(1, 'A', 'Yogurt', 70, 70),
(2, 'A', 'Biskuit tawar mentega', 10, 33),
(3, 'A', 'Kue kastengel', 6, 27),
(4, 'B', 'Ubi jalar manis', 100, 86),
(5, 'B', 'Kue talam', 15, 28),
(6, 'B', 'Kue kastengel', 5, 21),
(7, 'C', 'Kue putu ayu', 15, 38),
(8, 'C', 'Susu', 220, 110),
(9, 'D', 'Nissin wafer coklat', 22, 114),
(10, 'D', 'Kue bugis', 20, 52),
(11, 'E', 'Wafer coklat', 23, 100),
(12, 'E', 'Fettuccine skinny pasta', 200, 45),
(13, 'F', 'Crepes', 50, 113),
(14, 'F', 'Kue putri salju', 6, 30),
(15, 'G', 'Pisang raja', 100, 122),
(16, 'G', 'Blewah melon', 50, 17),
(17, 'H', 'Corn Flakes', 30, 110),
(18, 'H', 'Air kelapa', 220, 46),
(19, 'I', 'Pisang', 50, 47),
(20, 'I', 'Susu kedelai', 200, 108),
(21, 'J', 'Kue bolu', 28, 84),
(22, 'J', 'Jus strawberry', 200, 84),
(23, 'K', 'Pisang mas', 100, 104),
(24, 'K', 'Madu', 25, 64),
(25, 'L', 'Pisang kepok', 100, 104),
(26, 'L', 'Salak', 12, 8),
(28, 'M', 'Mangga', 160, 107),
(29, 'M', 'Leci', 10, 6),
(30, 'N', 'Risol mayo', 40, 110),
(31, 'N', 'Pempek', 20, 39),
(32, 'O', 'Kue pukis', 60, 117),
(33, 'O', 'Salak', 12, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tb_kalori`
--

CREATE TABLE `tb_kalori` (
  `paket_menu` varchar(2) NOT NULL,
  `jumlah_kalori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_kalori`
--

INSERT INTO `tb_kalori` (`paket_menu`, `jumlah_kalori`) VALUES
('A', 1267),
('B', 1375),
('C', 1499),
('D', 1614),
('E', 1471),
('F', 1357),
('G', 1353),
('H', 1563),
('I', 1554),
('J', 1624),
('K', 1545),
('L', 1134),
('M', 1178),
('N', 1490),
('O', 1238);

-- --------------------------------------------------------

--
-- Table structure for table `tb_makan_malam`
--

CREATE TABLE `tb_makan_malam` (
  `no` int(11) NOT NULL,
  `paket_menu` varchar(2) NOT NULL,
  `menu` varchar(100) NOT NULL,
  `takaran` int(11) NOT NULL,
  `jumlah_kalori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_makan_malam`
--

INSERT INTO `tb_makan_malam` (`no`, `paket_menu`, `menu`, `takaran`, `jumlah_kalori`) VALUES
(1, 'A', 'Nasi putih', 100, 130),
(2, 'A', 'Lele goreng', 100, 105),
(3, 'A', 'Tempura sayur', 55, 85),
(4, 'B', 'Nasi kuning', 160, 150),
(5, 'B', 'Ikan gurame goreng', 100, 125),
(6, 'B', 'Telur Balado', 34, 71),
(7, 'C', 'Nasi putih', 156, 204),
(8, 'C', 'Rawon', 100, 119),
(9, 'C', 'Tempe bacem', 25, 49),
(10, 'D', 'Nasi uduk', 160, 260),
(11, 'D', 'Semur daging sapi', 100, 141),
(12, 'E', 'Nasi putih', 100, 130),
(13, 'E', 'Labu', 90, 76),
(14, 'E', 'Sayur lodeh', 240, 162),
(15, 'F', 'Nasi goreng ayam', 125, 206),
(16, 'F', 'Cumi goreng', 110, 135),
(17, 'G', 'Nasi tim', 95, 120),
(18, 'G', 'Udang panggang', 100, 154),
(19, 'G', 'Lumpia ayam', 50, 65),
(20, 'H', 'Nasi merah', 200, 220),
(21, 'H', 'Otak-otak', 50, 95),
(22, 'H', 'Perkedel jagung', 29, 15),
(23, 'I', 'Nasi putih', 156, 204),
(24, 'I', 'Hati ayam', 100, 116),
(25, 'I', 'Tumis buncis', 100, 65),
(26, 'J', 'Nasi uduk', 160, 260),
(27, 'J', 'Telur rebus', 50, 77),
(28, 'J', 'Capcay', 100, 67),
(29, 'K', 'Sup kentang', 220, 105),
(30, 'K', 'Udang panggang', 100, 154),
(31, 'K', 'Kornet ayam superindo', 83, 130),
(32, 'L', 'Nasi tim', 95, 120),
(33, 'L', 'Ayam bakar', 50, 85),
(34, 'L', 'Telur rebus', 50, 77),
(35, 'M', 'Nasi uduk', 160, 260),
(36, 'M', 'Tempe goreng', 15, 34),
(37, 'N', 'Nasi kuning', 160, 150),
(38, 'N', 'Dada ayam goreng', 120, 222),
(39, 'O', 'Nasi shirataki', 220, 222),
(40, 'O', 'Sup telur', 100, 43),
(41, 'O', 'Labu', 100, 46);

-- --------------------------------------------------------

--
-- Table structure for table `tb_makan_pagi`
--

CREATE TABLE `tb_makan_pagi` (
  `no` int(11) NOT NULL,
  `paket_menu` varchar(2) NOT NULL,
  `menu` varchar(100) NOT NULL,
  `takaran` int(11) NOT NULL,
  `jumlah_kalori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_makan_pagi`
--

INSERT INTO `tb_makan_pagi` (`no`, `paket_menu`, `menu`, `takaran`, `jumlah_kalori`) VALUES
(1, 'A', 'Nasi putih', 100, 130),
(2, 'A', 'Perkedel Jagung', 65, 176),
(3, 'A', 'Sayur bayam', 50, 12),
(4, 'B', 'Bubur nasi kaldu ayam', 120, 168),
(5, 'B', 'Ayam Goreng', 60, 158),
(6, 'C', 'Bubur Ayam', 240, 372),
(8, 'D', 'Nasi putih', 120, 156),
(9, 'D', 'Soto betawi', 20, 60),
(10, 'D', 'Lumpia ayam', 184, 168),
(11, 'E', 'Nasi tim', 100, 173),
(12, 'E', 'Chicken Teriyaki', 50, 90),
(13, 'E', 'Tempe Goreng', 50, 100),
(14, 'E', 'Sayur brokoli', 12, 6),
(15, 'F', 'Nasi putih', 120, 156),
(16, 'F', 'Pepes ayam', 50, 103),
(17, 'F', 'Tempe Bacem', 75, 72),
(18, 'G', 'Mashed potato', 150, 130),
(19, 'G', 'Hati Ayam', 100, 116),
(20, 'G', 'Telur puyuh', 60, 94),
(21, 'H', 'Nasi putih', 150, 195),
(22, 'H', 'Ikan tenggiri', 120, 145),
(23, 'H', 'Sup kubis', 130, 56),
(24, 'I', 'Nasi goreng', 120, 202),
(25, 'I', 'Chicken nugget', 67, 185),
(26, 'I', 'Mentimun', 50, 6),
(27, 'J', 'Nasi putih', 162, 211),
(28, 'J', 'Kornet ayam', 100, 140),
(29, 'J', 'Wortel', 100, 54),
(30, 'K', 'Nasi putih', 123, 159),
(31, 'K', 'Ikan tuna', 100, 153),
(32, 'K', 'Sup ayam', 200, 175),
(33, 'L', 'Nasi liwet', 120, 166),
(34, 'L', 'Ikan tongkol goreng', 50, 100),
(35, 'L', 'Tempe goreng', 8, 18),
(36, 'M', 'Nasi goreng cina', 198, 299),
(37, 'N', 'Bubur ayam', 240, 372),
(38, 'O', 'Nasi tim', 125, 215),
(39, 'O', 'Super bihun', 25, 95);

-- --------------------------------------------------------

--
-- Table structure for table `tb_makan_siang`
--

CREATE TABLE `tb_makan_siang` (
  `no` int(11) NOT NULL,
  `paket_menu` varchar(2) NOT NULL,
  `menu` varchar(100) NOT NULL,
  `takaran` int(11) NOT NULL,
  `jumlah_kalori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_makan_siang`
--

INSERT INTO `tb_makan_siang` (`no`, `paket_menu`, `menu`, `takaran`, `jumlah_kalori`) VALUES
(1, 'A', 'Nasi putih', 157, 204),
(2, 'A', 'Ikan mujair goreng', 100, 169),
(3, 'B', 'Nasi putih', 157, 204),
(4, 'B', 'Rawon', 72, 87),
(5, 'B', 'Ikan nila goreng', 100, 128),
(6, 'C', 'Nasi Uduk', 150, 260),
(7, 'C', 'Ikan gurame', 100, 125),
(8, 'C', 'Tempe goreng', 32, 72),
(9, 'D', 'Nasi tim', 155, 168),
(10, 'D', 'Chicken nugget', 50, 149),
(11, 'D', 'Cap cay', 100, 67),
(12, 'E', 'Nasi uduk', 160, 260),
(13, 'E', 'Tempe orek', 35, 62),
(14, 'E', 'Cumi goreng', 100, 125),
(15, 'F', 'Nasi goreng ayam', 200, 329),
(16, 'F', 'Tahu kukus', 100, 78),
(17, 'G', 'Bubur ayam', 240, 372),
(18, 'G', 'Tempe goreng', 15, 34),
(19, 'H', 'Dada ayam', 100, 195),
(20, 'H', 'Cap cay', 100, 67),
(21, 'H', 'Nasi putih', 156, 204),
(22, 'I', 'Kentang goreng', 20, 56),
(23, 'I', 'Paha ayam', 62, 152),
(24, 'I', 'Nasi liwet', 140, 221),
(25, 'I', 'Brokoli', 100, 34),
(26, 'J', 'Kentang goreng', 75, 207),
(27, 'J', 'Ayam goreng', 100, 260),
(28, 'J', 'Sup kubis', 100, 29),
(29, 'K', 'Nasi tim', 155, 268),
(30, 'K', 'Bayam', 100, 23),
(31, 'K', 'Telur goreng', 86, 167),
(32, 'L', 'Nasi kuning', 160, 150),
(33, 'L', 'Tempe orek', 100, 175),
(34, 'L', 'Mentimun', 100, 12),
(35, 'M', 'Nasi putih', 156, 204),
(36, 'M', 'Ikan bandeng', 100, 148),
(37, 'N', 'Nasi goreng Ayam', 125, 206),
(38, 'N', 'Sosis ayam', 100, 172),
(39, 'N', 'Capcay', 100, 67),
(40, 'O', 'Nasi shirataki', 200, 140),
(41, 'O', 'Chicken nugget tempura', 73, 190),
(42, 'O', 'Bayam', 100, 23),
(43, 'O', 'Mentimun', 100, 12);

-- --------------------------------------------------------

--
-- Table structure for table `tb_menu_makanan`
--

CREATE TABLE `tb_menu_makanan` (
  `paket_menu` varchar(1) NOT NULL,
  `sarapan` text NOT NULL,
  `energi1` int(11) NOT NULL,
  `snack_pagi` text NOT NULL,
  `energi2` int(11) NOT NULL,
  `makan_siang` text NOT NULL,
  `energi3` int(11) NOT NULL,
  `snack_sore` text NOT NULL,
  `energi4` int(11) NOT NULL,
  `makan_malam` text NOT NULL,
  `energi5` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_menu_makanan`
--

INSERT INTO `tb_menu_makanan` (`paket_menu`, `sarapan`, `energi1`, `snack_pagi`, `energi2`, `makan_siang`, `energi3`, `snack_sore`, `energi4`, `makan_malam`, `energi5`) VALUES
('A', '<li>Nasi putih</li>\n<li>Perkedel jagung</li>\n<li>Sayur bayam</li>', 318, '<li>Yogurt</li>\r\n<li>Biskuit tawar mentega</li>\r\n<li>Kue kastengel</li>', 130, '<li>Nasi putih</li>\r\n<li>Ikan mujair goreng</li>', 373, '<li>Apel</li>\r\n<li>Susu Kedelai</li>', 126, '<li>Nasi putih</li>\r\n<li>Lele goreng</li>', 320),
('B', '<li>Bubur nasi kaldu Ayam</li>\r\n<li>Ayam goreng</li>', 344, '<li>Ubi jalar manis</li>\r\n<li>Kue talam</li>\r\n<li>Kue kastangel</li>', 135, '<li>Nasi putih</li>\r\n<li>Rawon</li>\r\n<li>Ikan nila goreng</li>', 419, '<li>Pisang</li>\r\n<li>Kue putu ayu</li>', 131, '<li>Nasi kuning</li>\r\n<li>Ikan gurame goreng</li>\r\n<li>Telur balado</li>', 346),
('C', '<li>Bubur ayam</li>', 372, '<li>Kue putu ayu</li>\r\n<li>Susu</li>', 148, '<li>Nasi uduk</li>\r\n<li>Ikan gurame goreng</li>\r\n<li>Tempe goreng tepung</li>', 457, '<li>Pepaya</li>\r\n<li>Susu Milo cokelat</li>', 150, '<li>Nasi putih</li>\r\n<li>Rawon</li>\r\n<li>Tempe Bacem</li>', 372),
('D', '<li>Nasi putih</li>\r\n<li>Soto betawi</li>\r\n<li>Lumpia ayam</li>', 402, '<li>Wafer Nissin coklat</li>\r\n<li>Kue bugis</li>', 166, '<li>Nasi tim</li>\r\n<li>Chicken nugget</li>\r\n<li>Capcay</li>', 484, '<li>Onde onde</li>\r\n<li>Chocolate Coated Appolo</li>', 161, '<li>Nasi uduk</li>\r\n<li>Semur daging sapi</li>', 401),
('E', '<li>Nasi tim</li>\r\n<li>Chicken teriyaki</li>\r\n<li>Sayur brokoli</li>\r\n<li>Tempe goreng</li>', 369, '<li>Wafer Chocolate</li>\r\n<li>Fettuccine skinny pasta</li>', 145, '<li>Nasi uduk</li>\r\n<li>Tempe orek</li>\r\n<li>Cumi goreng</li>', 447, '<li>susu Milo coklat</li>\r\n<li>Strawberry</li>', 142, '<li>Nasi putih</li>\r\n<li>Labu</li>\r\n<li>Sayur Lodeh</li>', 368),
('F', '<li>Nasi putih</li>\r\n<li>Pepes ayam</li>\r\n<li>Tahu bacem</li>', 331, '<li>Crepes</li>\r\n<li>Kue putri salju</li>', 142, '<li>Nasi goreng ayam</li>\r\n<li>Tahu kukus</li>', 407, '<li>Klepon</li>\r\n<li>Kue putu ayu</li>', 136, '<li>Nasi goreng ayam</li>\r\n<li>Cumi goreng</li>', 341),
('G', '<li>Mashed potato</li>\r\n<li>Hati ayam</li>\r\n<li>Telur puyuh</li>', 340, '<li>Pisang raja</li>\r\n<li>Blewah melon</li>', 139, '<li>Bubur ayam</li>\r\n<li>Tempe goreng</li>', 406, '<li>Brownies</li>\r\n<li>Choco crunch</li>', 129, '<li>Nasi tim</li>\r\n<li>Udang panggang</li>\r\n<li>Lumpia ayam</li>', 339),
('H', '<li>Nasi putih</li>\r\n<li>Ikan tenggiri</li>\r\n<li>Sup kubis</li>', 396, '<li>Corn flakes</li>\r\n<li>Air kelapa</li>', 156, '<li>Dada ayam</li>\r\n<li>Capcay</li>\r\n<li>Nasi putih</li>', 466, '<li>Orange juice drink</li>\r\n<li>Kue nastar</li>', 155, '<li>Nasi merah</li>\r\n<li>Otak-otak</li>\r\n<li>Perkedel jagung</li>', 390),
('I', '<li>Nasi goreng</li>\r\n<li>Chicken nugget</li>\r\n<li>Mentimun</li>', 393, '<li>Pisang</li>\r\n<li>Susu kedelai</li>', 155, '<li>Kentang goreng</li>\r\n<li>Paha ayam</li>\r\n<li>Nasi liwet</li>\r\n<li>Brokoli</li>', 463, '<li>Rasberi</li>\r\n<li>Jus wortel</li>', 158, '<li>Nasi putih</li>\r\n<li>Hati ayam</li>\r\n<li>Tumis buncis</li>', 385),
('J', '<li>Nasi putih</li>\r\n<li>Kornet ayam</li>\r\n<li>Wortel</li>', 405, '<li>Kue bolu</li>\r\n<li>Jus stroberi</li>', 168, '<li>Kentang goreng</li>\r\n<li>Ayam goreng</li>\r\n<li>Sup kubis</li>', 487, '<li>Pasta mac & cheese</li>\r\n<li>Melon</li>', 160, '<li>Nasi uduk</li>\r\n<li>Telur rebus</li>\r\n<li>Capcay</li>', 404),
('K', '<li>Nasi putih</li>\r\n<li>Ikan tuna</li>\r\n<li>Sup ayam</li>', 387, '<li>Pisang mas madu</li>', 154, '<li>Nasi tim</li>\r\n<li>Bayam</li>\r\n<li>Telur bayam</li>', 458, '<li>Salad bayam</li>\r\n<li>Buah naga</li>', 157, '<li>Sup kentang</li>\r\n<li>Udang panggang</li>\r\n<li>Kornet ayam SuperIndo</li>', 389),
('L', '<li>Nasi liwet</li>\r\n<li>Ikan tongkol goreng</li>\r\n<li>Tempe goreng</li>', 284, '<li>Pisang kepok</li>\r\n<li>Salak</li>', 112, '<li>Nasi kuning</li>\r\n<li>Tempe orek</li>\r\n<li>Mentimun</li>', 337, '<li>Roti sandwich isi coklat</li>\r\n<li>Fettuccine skinny pasta</li>', 119, '<li>Nasi tim</li>\r\n<li>Ayam bakar</li>\r\n<li>Telur rebus</li>', 282),
('M', '<li>Nasi goreng cina</li>', 299, '<li>Mangga</li>\r\n<li>Leci</li>', 113, '<li>Nasi putih</li>\r\n<li>Ikan bandeng</li>', 352, '<li>Roti tawar double soft</li>', 120, '<li>Nasi uduk</li>\r\n<li>Tempe goreng</li>', 294),
('N', '<li>Bubur ayam</li>', 372, '<li>Risol mayo</li>\r\n<li>Pempek</li>', 149, '<li>Nasi goreng ayam</li>\r\n<li>Sosis ayam</li>\r\n<li>Capcay</li>', 445, '<li>Biskuit coklat</li>\r\n<li>Jus jeruk</li>', 152, '<li>Nasi kuning</li>\r\n<li>Dada ayam goreng</li>\r\n<li>Wortel</li>\r\n', 372),
('O', '<li>Nasi tim</li>\r\n<li>Super Bihun kuah</li>', 310, '<li>Kue pukis</li>\r\n<li>Salak</li>', 125, '<li>Nasi shirataki</li>\r\n<li>Chicken nugget tempura</li>\r\n<li>Bayam</li>\r\n<li>Mentimun</li>', 365, '<li>Puding coklat</li>\r\n<li>Semangka kuning</li>', 127, '<li>Nasi shirataki</li>\r\n<li>Sup telur</li>\r\n<li>Labu</li>', 311);

-- --------------------------------------------------------

--
-- Table structure for table `tb_snack_sore`
--

CREATE TABLE `tb_snack_sore` (
  `no` int(11) NOT NULL,
  `paket_menu` varchar(2) NOT NULL,
  `menu` varchar(100) NOT NULL,
  `takaran` int(11) NOT NULL,
  `jumlah_kalori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_snack_sore`
--

INSERT INTO `tb_snack_sore` (`no`, `paket_menu`, `menu`, `takaran`, `jumlah_kalori`) VALUES
(1, 'A', 'Apel', 140, 74),
(2, 'A', 'Susu kedelai', 220, 127),
(3, 'B', 'Pisang', 100, 89),
(4, 'B', 'Kue putu ayu', 25, 58),
(5, 'C', 'Pepaya', 200, 80),
(6, 'C', 'Susu milo cokelat', 110, 70),
(7, 'D', 'Onde-onde', 34, 101),
(8, 'D', 'Chocolate coated apollo', 110, 70),
(9, 'E', 'Susu milo cokelat', 110, 70),
(10, 'E', 'Strawberry', 220, 72),
(11, 'F', 'Klepon', 23, 78),
(12, 'F', 'Kue putu ayu', 25, 58),
(13, 'G', 'Brownies', 14, 54),
(14, 'G', 'Choco crunch', 18, 75),
(15, 'H', 'Orange juice drink', 200, 80),
(16, 'H', 'Kue nastar', 19, 75),
(17, 'I', 'Rasberry', 150, 78),
(18, 'I', 'Jus wortel', 200, 80),
(19, 'J', 'Pasta mac&cheese', 35, 130),
(20, 'J', 'Melon', 95, 30),
(21, 'K', 'Salad bayam', 68, 107),
(22, 'K', 'Buah naga', 100, 50),
(23, 'L', 'Roti sandwich isi coklat', 26, 74),
(24, 'L', 'Fettuccine skinny pasta', 200, 45),
(25, 'M', 'Roti tawar double soft', 45, 120),
(26, 'N', 'Biskuit coklat', 20, 102),
(27, 'N', 'Jus jeruk', 125, 50),
(28, 'O', 'Puding coklat', 100, 97),
(29, 'O', 'Semangka', 100, 30);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_camilan_pagi`
--
ALTER TABLE `tb_camilan_pagi`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tb_kalori`
--
ALTER TABLE `tb_kalori`
  ADD PRIMARY KEY (`paket_menu`);

--
-- Indexes for table `tb_makan_malam`
--
ALTER TABLE `tb_makan_malam`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tb_makan_pagi`
--
ALTER TABLE `tb_makan_pagi`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tb_makan_siang`
--
ALTER TABLE `tb_makan_siang`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tb_menu_makanan`
--
ALTER TABLE `tb_menu_makanan`
  ADD PRIMARY KEY (`paket_menu`);

--
-- Indexes for table `tb_snack_sore`
--
ALTER TABLE `tb_snack_sore`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_camilan_pagi`
--
ALTER TABLE `tb_camilan_pagi`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tb_makan_malam`
--
ALTER TABLE `tb_makan_malam`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tb_makan_pagi`
--
ALTER TABLE `tb_makan_pagi`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `tb_makan_siang`
--
ALTER TABLE `tb_makan_siang`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tb_snack_sore`
--
ALTER TABLE `tb_snack_sore`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
