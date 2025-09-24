-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Sep 2025 pada 08.02
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dataficbruder`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bruder`
--

CREATE TABLE `bruder` (
  `kode_bruder` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `tahun_masuk_postulan` year(4) DEFAULT NULL,
  `tahun_prasetia_pertama` year(4) DEFAULT NULL,
  `tahun_kaul_kekal` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `bruder`
--

INSERT INTO `bruder` (`kode_bruder`, `nama`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `tahun_masuk_postulan`, `tahun_prasetia_pertama`, `tahun_kaul_kekal`) VALUES
('BR001', 'Bruder Thomas', 'Semarang', '1980-05-12', 'Jl. Merpati No. 10, Semarang', '2000', '2002', '2008');

-- --------------------------------------------------------

--
-- Struktur dari tabel `perkiraan`
--

CREATE TABLE `perkiraan` (
  `id_perkiraan` int(11) NOT NULL,
  `pos` varchar(10) NOT NULL,
  `kode_perkiraan` varchar(10) NOT NULL,
  `nama_perkiraan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `perkiraan`
--

INSERT INTO `perkiraan` (`id_perkiraan`, `pos`, `kode_perkiraan`, `nama_perkiraan`) VALUES
(1, 'A', '110100', 'Kas'),
(2, 'B', '110301', 'Bank'),
(3, 'C', '410101', 'Gaji/Pendapatan Bruder'),
(4, 'D', '410102', 'Pensiun Bruder'),
(5, 'E', '430101', 'Hasil Kebun Dan Piaraan'),
(6, 'F', '420101', 'Bunga Tabungan'),
(7, 'G', '410202', 'Sumbangan'),
(8, 'H', '430103', 'Penerimaan Lainnya'),
(9, 'I', '610100', 'Penerimaan dari DP'),
(10, '1', '510101', 'Makanan'),
(11, '2', '510201', 'Pakaian Dan Perlengkapan Pribadi'),
(12, '3', '510301', 'Pemeriksaan Dan Pengobatan'),
(13, '4', '510303', 'Hiburan / Rekreasi'),
(14, '5', '510501', 'Transport Harian'),
(15, '6', '520401', 'Studi Pribadi'),
(16, '7', '510102', 'Bahan Bakar Dapur'),
(17, '8', '510103', 'Perlengkapan Cuci dan Kebersihan'),
(18, '9', '510104', 'Perabot Rumah Tangga'),
(19, '10', '510105', 'Iuran Hidup Bermasyarakat Dan Menggereja'),
(20, '11', '510401', 'Listrik'),
(21, '12', '510402', 'Air'),
(22, '13', '510403', 'Telepon Dan Internet'),
(23, '14', '520201', 'Keperluan Ibadah'),
(24, '15', '530303', 'Sumbangan'),
(25, '16', '540101', 'Insentif ART'),
(26, '17', '540201', 'Pemeliharaan Rumah'),
(27, '18', '540202', 'Pemeliharaan Kebun Dan Piaraan'),
(28, '19', '540203', 'Pemeliharaan Kendaraan'),
(29, '20', '540204', 'Pemeliharaan Mesin Dan Peralatan'),
(30, '21', '550101', 'Administrasi Komunitas'),
(31, '22', '550105', 'Legal dan Perijinan'),
(32, '23', '550106', 'Buku, Majalah, Koran'),
(33, '24', '550107', 'Administrasi Bank'),
(34, '25', '550201', 'Pajak Bunga Bank'),
(35, '26', '550202', 'Pajak Kendaraan Dan PBB'),
(36, '27', '110202', 'Kas Kecil DP'),
(37, '28', '110201', 'Kas Kecil Komunitas'),
(38, '29', '520501', 'Penunjang Kesehatan Lansia'),
(39, '30', '520502', 'Pemeliharaan Rohani Lansia'),
(40, '31', '520503', 'Kegiatan Bruder Lansia'),
(41, '32', '130400', 'Mesin dan Peralatan'),
(42, '33', '510100', 'Perabot Rumah Tangga'),
(43, '34', '510502', 'Transport Pertemuan'),
(44, '35', '520302', 'Perayaan Syukur'),
(45, '36', '520500', 'Kegiatan Lansia'),
(46, '37', '540200', 'Pemeliharaan Rumah'),
(47, '38', '550100', 'Budget Khusus Lainnya'),
(48, '39', '510300', 'Pemeriksaan Dan Pengobatan'),
(49, '40', '530201', 'Pertemuan DP'),
(50, '41', '530100', 'Kegiatan Acc DP');

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat_tugas`
--

CREATE TABLE `riwayat_tugas` (
  `id_tugas` int(11) NOT NULL,
  `kode_bruder` varchar(20) DEFAULT NULL,
  `tugas` varchar(200) DEFAULT NULL,
  `tahun_mulai` year(4) DEFAULT NULL,
  `tahun_selesai` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `riwayat_tugas`
--

INSERT INTO `riwayat_tugas` (`id_tugas`, `kode_bruder`, `tugas`, `tahun_mulai`, `tahun_selesai`) VALUES
(1, 'BR001', 'Mengajar di SMA Bruderan', '2005', '2010');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bruder`
--
ALTER TABLE `bruder`
  ADD PRIMARY KEY (`kode_bruder`);

--
-- Indeks untuk tabel `perkiraan`
--
ALTER TABLE `perkiraan`
  ADD PRIMARY KEY (`id_perkiraan`);

--
-- Indeks untuk tabel `riwayat_tugas`
--
ALTER TABLE `riwayat_tugas`
  ADD PRIMARY KEY (`id_tugas`),
  ADD KEY `kode_bruder` (`kode_bruder`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `perkiraan`
--
ALTER TABLE `perkiraan`
  MODIFY `id_perkiraan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `riwayat_tugas`
--
ALTER TABLE `riwayat_tugas`
  MODIFY `id_tugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `riwayat_tugas`
--
ALTER TABLE `riwayat_tugas`
  ADD CONSTRAINT `riwayat_tugas_ibfk_1` FOREIGN KEY (`kode_bruder`) REFERENCES `bruder` (`kode_bruder`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
