-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2023 at 08:31 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projek_perpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_biaya_denda`
--

CREATE TABLE `tbl_biaya_denda` (
  `id_biaya_denda` int(11) NOT NULL,
  `harga_denda` varchar(255) NOT NULL,
  `stat` varchar(255) NOT NULL,
  `tgl_tetap` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_biaya_denda`
--

INSERT INTO `tbl_biaya_denda` (`id_biaya_denda`, `harga_denda`, `stat`, `tgl_tetap`) VALUES
(1, '7000', 'Aktif', '2023-01-06');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_buku`
--

CREATE TABLE `tbl_buku` (
  `id_buku` int(11) NOT NULL,
  `buku_id` varchar(255) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `id_rak` int(11) NOT NULL,
  `sampul` varchar(255) DEFAULT NULL,
  `isbn` varchar(255) DEFAULT NULL,
  `lampiran` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `penerbit` varchar(255) DEFAULT NULL,
  `pengarang` varchar(255) DEFAULT NULL,
  `thn_buku` varchar(255) DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `jml` int(11) DEFAULT NULL,
  `tgl_masuk` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_buku`
--

INSERT INTO `tbl_buku` (`id_buku`, `buku_id`, `id_kategori`, `id_rak`, `sampul`, `isbn`, `lampiran`, `title`, `penerbit`, `pengarang`, `thn_buku`, `isi`, `jml`, `tgl_masuk`) VALUES
(9, 'BK009', 1, 1, '2899a46eceadd52e889ac9c72d2d905a.jpg', '978-602-220-201-1', 'ee93d015b3a136afb911148f280ec3fe.pdf', 'Hendrick ', 'Bukune', 'Risa Saraswati', '2017', '<p><span style=\"color: rgb(97, 97, 97); font-family: Hind, sans-serif; text-align: justify;\">Ini adalah kisahnya. Namun, bukan cerita tentang caranya menakuti manusia bukan pula curhatnya tentang kehidupan setelah mati. Ini tentang lorong waktu, ketika</span><br style=\"color: rgb(97, 97, 97); font-family: Hind, sans-serif; text-align: justify;\"><span style=\"color: rgb(97, 97, 97); font-family: Hind, sans-serif; text-align: justify;\">aku memaksanya untuk menunjukkan masa hidupnya dulu.</span><br></p>', 3, '2023-01-19 12:33:21'),
(10, 'BK0010', 1, 1, '74246afb177c13cdd2e486023c22a3c3.jpg', '978-602-220-258-5', '0', 'SAMANTHA', 'Bukune', 'Risa Saraswati', '2018', '<p></p><p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(97, 97, 97); font-family: Hind, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"></p><p></p><div align=\"justify\" style=\"box-sizing: border-box; color: rgb(97, 97, 97); font-family: Hind, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Terlalu lama aku melupakan Samantha, sosok hantu anak perempuan yang kutemui saat umurku masih belasan. Sampai di malam ini, dia muncul dan bertanya dengan malu, apakah aku masih ingat padanya? Seketika, aku ingat janjiku pada anak cantik bersorot mata sedih dan kesepian itu untuk sering mengunjunginya dan mengajak sahabat-sahabatku.<br style=\"box-sizing: border-box;\"><br style=\"box-sizing: border-box;\"></div>', 2, '2023-01-19 12:32:44'),
(11, 'BK0011', 1, 1, 'b520b09acd9b339cc7b26c1a3c2d3781.jpg', '978-602-220-150-2', '0', 'Gerbang Dialog Danur', 'Bukune', 'Risa Saraswati', '2017', '<p><span style=\"color: rgb(97, 97, 97); font-family: Hind, sans-serif; text-align: justify;\">Jauh dari kehidupan \"normal\" adalah harga yang harus dibayar atas kebahagiaanku bersama mereka. Dan, semua itu harus berubah ketik persahabatan kami meminta lebih, yaitu kebersamaan selamanya. Kini aku mulai menyadari bahwa hidup ini bukan hanya milikku seorang.</span><br style=\"color: rgb(97, 97, 97); font-family: Hind, sans-serif; text-align: justify;\"><br style=\"color: rgb(97, 97, 97); font-family: Hind, sans-serif; text-align: justify;\"><br></p>', 3, '2023-01-19 12:32:21'),
(12, 'BK0012', 1, 1, '74e02a93b0d7890c4aa34199367a7bc2.jpg', '978-602-220-236-3', '0', 'Asih', 'Bukune', 'Risa Saraswati', '2017', '<div align=\"justify\" style=\"color: rgb(97, 97, 97); font-family: Hind, sans-serif;\">Namanya Kasih.<br>Kedua orangtuanya berharap dia akan tumbuh dewasa dengan hati yang kaya kasih sayang. Bisa saja awalnya begitu, sebelum dirinya menjadi sosok yang seolah&nbsp; tak punya hati.<br></div>', 3, '2023-01-19 12:31:40'),
(13, 'BK0013', 1, 1, '5aae7f5125c077cae4d62950e7d292ad.jpg', '978-623-001-633-2', '0', 'Ritual', 'Elex Media Komputindo ', 'Jonatan &amp; Guntur Alam', '2020', '<p style=\"color: rgb(97, 97, 97); font-family: Hind, sans-serif;\">Siapkan pakaian si gadis, tiga helai rambutnya, dupa, bunga kenanga juga kamboja, dan peti mati. Lalu datangi lokasi yang diyakini jadi tempat arwah gadis-gadis berkumpul. Niscaya roh yang tersesat akan menemukan jalan pulang ke jasadnya. Satu-satunya cara membangunkan Nayla dari koma adalah dengan menggelar ritual untuk memanggil rohnya. Tak sembarang orang bisa melakukannya, risikonya juga tidak main-main. Nayla bisa saja mati! Namun tepat pada tengah malam, gerbang dunia roh pun dibuka selebar-lebarnya, meski tahu bahwa imbalannya adalah darah dan nyawa.</p><div><br></div>', 4, '2023-01-11 14:38:42'),
(14, 'BK0014', 1, 1, '7f58486b8f14b641156d9c3e3b3e8552.jpg', ' 978-602-220-378-0', '0', 'Mamat VS Ujang', 'Bukune', 'Risa Saraswati', '2020', '<p style=\"margin-bottom: 20px; line-height: 1.786em; color: rgb(117, 117, 117); font-family: Montserrat, sans-serif;\">Mamat—tak usah disebut modol-nya—sudah lama aku kenal.<br>Hanya saja karena Peter CS takut, aku jadi jarang memanggilnya.<br>Mau tak mau, jika mereka tak suka, aku pun tak suka.<br>Sedangkan Ujang, aku tak begitu kenal karena dia baru muncul belakangan ini saja. Seringnya kuanggap dia caper. Kupikir kalian juga tak akan tertarik pada dua sosok ini, nyatanya aku salah</p>', 3, '2023-01-19 12:31:02');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_denda`
--

CREATE TABLE `tbl_denda` (
  `id_denda` int(11) NOT NULL,
  `pinjam_id` varchar(255) NOT NULL,
  `denda` varchar(255) NOT NULL,
  `lama_waktu` int(11) NOT NULL,
  `tgl_denda` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_denda`
--

INSERT INTO `tbl_denda` (`id_denda`, `pinjam_id`, `denda`, `lama_waktu`, `tgl_denda`) VALUES
(6, 'PJ0012', '0', 0, '2023-01-06'),
(7, 'PJ0015', '4000', 1, '2023-01-06'),
(8, 'PJ0020', '28000', 4, '2023-01-11'),
(9, 'PJ0011', '56000', 8, '2023-01-19');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'horor indonesia');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `id_login` int(11) NOT NULL,
  `anggota_id` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tgl_lahir` varchar(255) NOT NULL,
  `jenkel` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `telepon` varchar(25) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tgl_bergabung` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`id_login`, `anggota_id`, `user`, `pass`, `level`, `nama`, `tempat_lahir`, `tgl_lahir`, `jenkel`, `alamat`, `telepon`, `email`, `tgl_bergabung`, `foto`) VALUES
(4, 'AG003', 'APRIL', 'abdbeb4d8dbe30df8430a8394b7218ef', 'Petugas', 'Aprillia Wulan Nanda Dari', 'OKI', '2003-04-13', 'Perempuan', 'CondongCatur', '085377007811', 'nandadari041@gmail.com', '2023-01-06', 'user_1673019832.jpg'),
(5, 'AG005', 'ELDA', 'd542599794c1cf067d90638b5d3911f3', 'Petugas', 'Elda Putri Darmayanti', 'MUARA ENIM', '2003-07-17', 'Perempuan', 'kota gede', '081238379684', 'eldaputri@gmail.com', '2023-01-06', 'user_1672985331.jpg'),
(6, 'AG006', 'Ruspa', '5a1e3a5aede16d438c38862cac1a78db', 'Anggota', 'Anisa Ruspadyla', 'KLATEN', '2003-03-20', 'Perempuan', 'klaten', '089637473400', 'ruspadyla@gmail.com', '2023-01-06', 'user_1673400207.jpeg'),
(7, 'AG007', 'Lisa', 'f12ee9734e1edf70ed02d9829018b3d9', 'Anggota', 'Vitra Nuhalisa', 'KULON PROGO', '2003-01-12', 'Perempuan', 'Kulon progo', '085726459435', 'lisa@gmail.com', '2023-01-06', 'user_1673400174.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pinjam`
--

CREATE TABLE `tbl_pinjam` (
  `id_pinjam` int(11) NOT NULL,
  `pinjam_id` varchar(255) NOT NULL,
  `anggota_id` varchar(255) NOT NULL,
  `buku_id` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `tgl_pinjam` varchar(255) NOT NULL,
  `lama_pinjam` int(11) NOT NULL,
  `tgl_balik` varchar(255) NOT NULL,
  `tgl_kembali` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pinjam`
--

INSERT INTO `tbl_pinjam` (`id_pinjam`, `pinjam_id`, `anggota_id`, `buku_id`, `status`, `tgl_pinjam`, `lama_pinjam`, `tgl_balik`, `tgl_kembali`) VALUES
(11, 'PJ0011', 'AG006', 'BK009', 'Di Kembalikan', '2023-01-06', 5, '2023-01-11', '2023-01-19'),
(12, 'PJ0012', 'AG006', 'BK009', 'Di Kembalikan', '2023-01-06', 7, '2023-01-13', '2023-01-06'),
(13, 'PJ0012', 'AG006', 'BK0010', 'Di Kembalikan', '2023-01-06', 7, '2023-01-13', '2023-01-06'),
(14, 'PJ0012', 'AG006', 'BK0010', 'Di Kembalikan', '2023-01-06', 7, '2023-01-13', '2023-01-06'),
(19, 'PJ0015', 'AG007', 'BK009', 'Di Kembalikan', '2023-01-03', 2, '2023-01-05', '2023-01-06'),
(20, 'PJ0020', 'AG007', 'BK0012', 'Di Kembalikan', '2023-01-05', 2, '2023-01-07', '2023-01-11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rak`
--

CREATE TABLE `tbl_rak` (
  `id_rak` int(11) NOT NULL,
  `nama_rak` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_rak`
--

INSERT INTO `tbl_rak` (`id_rak`, `nama_rak`) VALUES
(1, 'Rak Buku 1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_biaya_denda`
--
ALTER TABLE `tbl_biaya_denda`
  ADD PRIMARY KEY (`id_biaya_denda`);

--
-- Indexes for table `tbl_buku`
--
ALTER TABLE `tbl_buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `tbl_denda`
--
ALTER TABLE `tbl_denda`
  ADD PRIMARY KEY (`id_denda`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indexes for table `tbl_pinjam`
--
ALTER TABLE `tbl_pinjam`
  ADD PRIMARY KEY (`id_pinjam`);

--
-- Indexes for table `tbl_rak`
--
ALTER TABLE `tbl_rak`
  ADD PRIMARY KEY (`id_rak`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_biaya_denda`
--
ALTER TABLE `tbl_biaya_denda`
  MODIFY `id_biaya_denda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_buku`
--
ALTER TABLE `tbl_buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_denda`
--
ALTER TABLE `tbl_denda`
  MODIFY `id_denda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_pinjam`
--
ALTER TABLE `tbl_pinjam`
  MODIFY `id_pinjam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_rak`
--
ALTER TABLE `tbl_rak`
  MODIFY `id_rak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
