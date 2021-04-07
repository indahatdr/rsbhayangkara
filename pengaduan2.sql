-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Apr 2021 pada 03.51
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pengaduan2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`username`, `password`, `nama`, `status`, `level`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 1, 1),
('op', '21232f297a57a5a743894a0e4a801fc3', 'Operator', 1, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bidang`
--

CREATE TABLE `bidang` (
  `id_bidang` int(100) NOT NULL,
  `nama_bidang` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bidang`
--

INSERT INTO `bidang` (`id_bidang`, `nama_bidang`) VALUES
(1, 'TU'),
(2, 'Infrastruktur Rs');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_pengaduan`
--

CREATE TABLE `data_pengaduan` (
  `id_pelapor` int(100) NOT NULL,
  `id_pengaduan` varchar(255) NOT NULL,
  `nomor` varchar(100) DEFAULT NULL,
  `tanggal_pengaduan` date NOT NULL,
  `uraian` longtext NOT NULL,
  `jenis_pengaduan` int(20) NOT NULL,
  `tindak_lanjut` longtext DEFAULT NULL,
  `status` int(10) NOT NULL DEFAULT 0,
  `id_media_pelaporan` int(20) DEFAULT NULL,
  `penerima` varchar(100) DEFAULT NULL,
  `id_bidang` int(100) DEFAULT NULL,
  `nik` varchar(100) NOT NULL,
  `tanggal_selesai` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_pengaduan`
--

INSERT INTO `data_pengaduan` (`id_pelapor`, `id_pengaduan`, `nomor`, `tanggal_pengaduan`, `uraian`, `jenis_pengaduan`, `tindak_lanjut`, `status`, `id_media_pelaporan`, `penerima`, `id_bidang`, `nik`, `tanggal_selesai`) VALUES
(1617072778, '16170727781', '1/2021', '2021-03-30', 'dokter', 2, '                                        \r\n                                      hai', 1, 2, 'pns', 2, '1606027009000001', '2021-03-30'),
(1617110896, '16171108962', '2/2021', '2021-03-30', '\"baik\"', 1, '                                        \r\n                                      baik', 1, 2, 'pns', 2, '1606027090000019', '2021-03-30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_pengaduan`
--

CREATE TABLE `jenis_pengaduan` (
  `id_jenis_pengaduan` int(20) NOT NULL,
  `nama_jenis_pengaduan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jenis_pengaduan`
--

INSERT INTO `jenis_pengaduan` (`id_jenis_pengaduan`, `nama_jenis_pengaduan`) VALUES
(1, 'Pelayanan Suster'),
(2, 'Pelayanan Dokter'),
(3, 'Pelanggaran disiplin Pegawai Negeri Sipil/ ASN'),
(4, 'Keributan'),
(5, 'Belum Di tentukan'),
(6, 'informasi RS Bhayangkara');

-- --------------------------------------------------------

--
-- Struktur dari tabel `media_pelaporan`
--

CREATE TABLE `media_pelaporan` (
  `id_media_pelaporan` int(11) NOT NULL,
  `nama_media_pelaporan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `media_pelaporan`
--

INSERT INTO `media_pelaporan` (`id_media_pelaporan`, `nama_media_pelaporan`) VALUES
(1, 'Kantor RS Bhayangkara'),
(2, 'Aplikasi wistle blower'),
(3, 'Sodial Media');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelapor`
--

CREATE TABLE `pelapor` (
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `pekerjaan` varchar(100) NOT NULL,
  `no_telepon` varchar(30) NOT NULL,
  `id_pelapor` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pelapor`
--

INSERT INTO `pelapor` (`nama`, `alamat`, `email`, `pekerjaan`, `no_telepon`, `id_pelapor`) VALUES
('indah septiani', 'jalan aspol punti kayu', 'indahseptiani925@gmail.com', 'pns', '088286792770', 1617072778),
('eni', 'jalan aspol punti kayu', 'indahseptiani925@gmail.com', 'pns', '088286792770', 1617110896);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `bidang`
--
ALTER TABLE `bidang`
  ADD PRIMARY KEY (`id_bidang`);

--
-- Indeks untuk tabel `data_pengaduan`
--
ALTER TABLE `data_pengaduan`
  ADD PRIMARY KEY (`id_pengaduan`);

--
-- Indeks untuk tabel `jenis_pengaduan`
--
ALTER TABLE `jenis_pengaduan`
  ADD PRIMARY KEY (`id_jenis_pengaduan`);

--
-- Indeks untuk tabel `media_pelaporan`
--
ALTER TABLE `media_pelaporan`
  ADD PRIMARY KEY (`id_media_pelaporan`);

--
-- Indeks untuk tabel `pelapor`
--
ALTER TABLE `pelapor`
  ADD PRIMARY KEY (`id_pelapor`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bidang`
--
ALTER TABLE `bidang`
  MODIFY `id_bidang` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `jenis_pengaduan`
--
ALTER TABLE `jenis_pengaduan`
  MODIFY `id_jenis_pengaduan` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `media_pelaporan`
--
ALTER TABLE `media_pelaporan`
  MODIFY `id_media_pelaporan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pelapor`
--
ALTER TABLE `pelapor`
  MODIFY `id_pelapor` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1617110897;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
