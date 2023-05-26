-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Bulan Mei 2023 pada 14.27
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

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
-- Struktur dari tabel `tb_camilan_pagi`
--

CREATE TABLE `tb_camilan_pagi` (
  `no` int(11) NOT NULL,
  `paket_menu` varchar(2) NOT NULL,
  `menu` varchar(100) NOT NULL,
  `takaran` int(11) NOT NULL,
  `jumlah_kalori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_camilan_pagi`
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
(20, 'I', 'Susu kedelai', 200, 108);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kalori`
--

CREATE TABLE `tb_kalori` (
  `paket_menu` varchar(2) NOT NULL,
  `jumlah_kalori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_kalori`
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
-- Struktur dari tabel `tb_makan_pagi`
--

CREATE TABLE `tb_makan_pagi` (
  `no` int(11) NOT NULL,
  `paket_menu` varchar(2) NOT NULL,
  `menu` varchar(100) NOT NULL,
  `takaran` int(11) NOT NULL,
  `jumlah_kalori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_makan_pagi`
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
-- Struktur dari tabel `tb_makan_siang`
--

CREATE TABLE `tb_makan_siang` (
  `no` int(11) NOT NULL,
  `paket_menu` varchar(2) NOT NULL,
  `menu` varchar(100) NOT NULL,
  `takaran` int(11) NOT NULL,
  `jumlah_kalori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_makan_siang`
--

INSERT INTO `tb_makan_siang` (`no`, `paket_menu`, `menu`, `takaran`, `jumlah_kalori`) VALUES
(1, 'A', 'Nasi putih', 157, 204),
(2, 'A', 'Ikan mujair goreng', 100, 169),
(3, 'B', 'Nasi putih', 157, 204),
(4, 'B', 'Rawon', 72, 87),
(5, 'B', 'Ikan nila goreng', 100, 128);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_menu_makanan`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_menu_makanan`
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

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_camilan_pagi`
--
ALTER TABLE `tb_camilan_pagi`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `tb_kalori`
--
ALTER TABLE `tb_kalori`
  ADD PRIMARY KEY (`paket_menu`);

--
-- Indeks untuk tabel `tb_makan_pagi`
--
ALTER TABLE `tb_makan_pagi`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `tb_makan_siang`
--
ALTER TABLE `tb_makan_siang`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `tb_menu_makanan`
--
ALTER TABLE `tb_menu_makanan`
  ADD PRIMARY KEY (`paket_menu`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_camilan_pagi`
--
ALTER TABLE `tb_camilan_pagi`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `tb_makan_pagi`
--
ALTER TABLE `tb_makan_pagi`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `tb_makan_siang`
--
ALTER TABLE `tb_makan_siang`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
