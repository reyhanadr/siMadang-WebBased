-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Jun 2023 pada 13.13
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simadang`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun`
--

CREATE TABLE `akun` (
  `kode_akun` varchar(20) NOT NULL,
  `nama_akun` varchar(20) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_telp` int(20) NOT NULL,
  `no_rekening` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `barangpo_sementara`
--

CREATE TABLE `barangpo_sementara` (
  `id_barangp` int(6) NOT NULL,
  `kode_purchase` varchar(30) NOT NULL,
  `nama_barangp` varchar(225) NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `item` int(4) NOT NULL,
  `detail` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `barangp_sementara`
--

CREATE TABLE `barangp_sementara` (
  `id_barangp` int(6) NOT NULL,
  `kode_transaksi` varchar(15) NOT NULL,
  `nama_barangp` varchar(225) NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `harga_barangp` double NOT NULL,
  `item` int(4) NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang_keluar`
--

CREATE TABLE `barang_keluar` (
  `kode_transaksi` varchar(20) NOT NULL,
  `tanggal_keluar` date NOT NULL,
  `kdproject` varchar(30) NOT NULL,
  `penerima` char(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `total_keluar` int(7) NOT NULL,
  `username` varchar(20) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang_keluar`
--

INSERT INTO `barang_keluar` (`kode_transaksi`, `tanggal_keluar`, `kdproject`, `penerima`, `alamat`, `total_keluar`, `username`, `created_date`) VALUES
('TK-2023-00001', '0000-00-00', '00003/PJ/III/2023', 'Jajang', 'Kajarta', 4, 'admin', '2023-04-25 11:13:15'),
('TK-2023-00002', '2023-04-25', '00003/PJ/III/2023', 'Suparman', 'Sumedang', 5, 'admin', '2023-04-25 11:14:26'),
('TK-2023-00003', '2023-04-08', '00003/PJ/III/2023', 'Owi', 'Palembang', 3, 'admin', '2023-04-25 11:16:30'),
('TK-2023-00004', '2023-05-17', '00003/PJ/III/2023', 'Bambang', 'Bandung', 2, 'admin', '2023-04-25 13:45:33'),
('TK-2023-00005', '2023-03-20', '00004/PJ/VI/2023', 'Bowo', 'Banten', 8, 'admin', '2023-04-25 14:44:15'),
('TK-2023-00006', '2023-04-30', '00003/PJ/III/2023', 'Tatang', 'Bandung', 12, 'admin', '2023-04-30 14:08:08'),
('TK-2023-00007', '2023-05-01', '00003/PJ/III/2023', 'Superman', 'Bandung', 3, 'admin', '2023-05-01 14:44:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dakun`
--

CREATE TABLE `dakun` (
  `kode_dakun` int(7) NOT NULL,
  `kode_akun` varchar(20) NOT NULL,
  `kode_user` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dbarang_keluar`
--

CREATE TABLE `dbarang_keluar` (
  `kode_detail` int(7) NOT NULL,
  `tanggal_keluar` date DEFAULT NULL,
  `kode_transaksi` varchar(20) NOT NULL,
  `kode_barang` varchar(8) NOT NULL,
  `nama_barang` varchar(35) NOT NULL,
  `jumlah` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dbarang_keluar`
--

INSERT INTO `dbarang_keluar` (`kode_detail`, `tanggal_keluar`, `kode_transaksi`, `kode_barang`, `nama_barang`, `jumlah`) VALUES
(5, '2023-04-21', 'TK-2023-00006', 'JK1', 'Erigo', 5),
(6, '2023-04-21', 'TK-2023-00007', 'knz00006', 'Kaos Screamous', 6),
(7, '0000-00-00', 'TK-2023-00008', 'knz00006', 'Kaos Screamous', 5),
(8, '2023-06-08', 'TK-2023-00009', 'JK1', 'Erigo', 0),
(9, '2023-06-08', 'TK-2023-00009', 'JK1', 'Erigo', 3),
(11, '2023-04-25', 'TK-2023-00010', 'knz00009', 'Kaos Wadezig!', 0),
(12, '0000-00-00', 'TK-2023-00011', 'JK1', 'Erigo', 6),
(13, '0000-00-00', 'TK-2023-00001', 'KB0006', 'Kaos Screamous', 2),
(14, '0000-00-00', 'TK-2023-00001', 'KB0005', 'Jaket Erigo', 2),
(16, '2023-04-25', 'TK-2023-00002', 'KB0006', 'Kaos Screamous', 2),
(17, '2023-04-25', 'TK-2023-00002', 'KB0005', 'Jaket Erigo', 3),
(19, '2023-04-08', 'TK-2023-00003', 'KB0006', 'Kaos Screamous', 2),
(20, '2023-04-08', 'TK-2023-00003', 'KB0007', 'Kemeja Screamous', 1),
(22, '2023-05-17', 'TK-2023-00004', 'KB0006', 'Kaos Screamous', 2),
(23, '2023-03-20', 'TK-2023-00005', 'KB0007', 'Kemeja Screamous', 4),
(24, '2023-03-20', 'TK-2023-00005', 'KB0005', 'Jaket Erigo', 4),
(25, '2023-04-30', 'TK-2023-00006', 'KB0005', 'Jaket Erigo', 12),
(26, '2023-05-01', 'TK-2023-00007', 'KB0001', 'Kaos Erigo', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `dpermintaan`
--

CREATE TABLE `dpermintaan` (
  `kode_dpm` int(7) NOT NULL,
  `kode_transaksi` varchar(20) NOT NULL,
  `kode_barang` varchar(20) NOT NULL,
  `nama_barang` varchar(20) NOT NULL,
  `jumlah` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dproject`
--

CREATE TABLE `dproject` (
  `kode_detail` int(7) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `kode_project` varchar(20) NOT NULL,
  `kode_barang` varchar(8) NOT NULL,
  `nama_barang` varchar(35) NOT NULL,
  `jumlah` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dproject`
--

INSERT INTO `dproject` (`kode_detail`, `tanggal_transaksi`, `kode_project`, `kode_barang`, `nama_barang`, `jumlah`) VALUES
(4, '0000-00-00', 'TK-2018-00001', 'BR000042', 'Agenda Merah + Tali Packing ', 1),
(5, '0000-00-00', 'TK-2018-00002', 'BR000055', 'Agenda Hijau Kecil Kosong ', 1),
(4, '0000-00-00', 'TK-2018-00001', 'BR000042', 'Agenda Merah + Tali Packing ', 1),
(5, '0000-00-00', 'TK-2018-00002', 'BR000055', 'Agenda Hijau Kecil Kosong ', 1),
(3, '2023-04-25', 'KP0001', 'KB0001', 'Kaos Maternal', 1),
(2, '2023-04-25', 'TK-2023-0001', 'KB0001', 'Kaos Maternal', 1),
(1, '2023-03-24', 'TK-2023-0002', 'KB0002', 'Kemeja Maternal', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `dpurchase`
--

CREATE TABLE `dpurchase` (
  `kode_detail` int(7) NOT NULL,
  `tanggal_po` date NOT NULL,
  `kode_purchase` varchar(20) NOT NULL,
  `nama_barang` varchar(30) NOT NULL,
  `detail` varchar(200) NOT NULL,
  `harga_barangp` int(7) NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `jumlah` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dpurchase`
--

INSERT INTO `dpurchase` (`kode_detail`, `tanggal_po`, `kode_purchase`, `nama_barang`, `detail`, `harga_barangp`, `satuan`, `jumlah`) VALUES
(1, '0000-00-00', '001/PO/KNZ/VI/2018', 'Pen Holder', 'Alat Tulis', 1000, 'PCS', 1),
(1, '0000-00-00', '001/PO/KNZ/VI/2018', 'Pen Holder', 'Alat Tulis', 1000, 'PCS', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `is_barang`
--

CREATE TABLE `is_barang` (
  `id_barang` int(8) NOT NULL,
  `kode_barang` varchar(10) CHARACTER SET latin1 NOT NULL,
  `nama_barang` varchar(50) CHARACTER SET latin1 NOT NULL,
  `satuan` varchar(20) CHARACTER SET latin1 NOT NULL,
  `jenis_barang` varchar(100) CHARACTER SET latin1 NOT NULL,
  `stok` int(11) NOT NULL,
  `keterangan` varchar(100) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `is_barang`
--

INSERT INTO `is_barang` (`id_barang`, `kode_barang`, `nama_barang`, `satuan`, `jenis_barang`, `stok`, `keterangan`) VALUES
(1, 'KB0001', 'Kemeja Flanel', 'Lusin', 'Kemeja', 7, '...'),
(2, 'KB0002', 'Kemeja Katun', 'Lusin', 'Kemeja', 16, '...'),
(3, 'KB0003', 'Kemeja Denim', 'Lusin', 'Kemeja', 4, '...'),
(4, 'KB0004', 'Kaos Oversize', 'Lusin', 'Kaos', 8, '...'),
(5, 'KB0005', 'Kaos Polos', 'Lusin', 'Kaos', 8, '...'),
(6, 'KB0006', 'Kaos Turtleneck', 'PCS', 'Kaos', 6, '...'),
(7, 'KB0007', 'Hoodie', 'Lusin', 'Jaket', 12, '...'),
(8, 'KB0008', 'Jaket Kulit', 'Ball', 'Jaket', 2, '...'),
(9, 'KB0009', 'Jaket Bomber', 'Lusin', 'Jaket', 2, '...'),
(10, 'KB0010', 'Jaket Varcity', 'Lusin', 'Jaket', 5, '...');

-- --------------------------------------------------------

--
-- Struktur dari tabel `is_barang_keluar`
--

CREATE TABLE `is_barang_keluar` (
  `kode_transaksi` varchar(15) NOT NULL,
  `tanggal_keluar` date NOT NULL,
  `subtotal` int(7) NOT NULL,
  `penerima` varchar(20) NOT NULL,
  `created_user` int(3) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `is_barang_masuk`
--

CREATE TABLE `is_barang_masuk` (
  `kode_transaksi` varchar(15) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `kode_barang` varchar(8) NOT NULL,
  `jumlah_masuk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `is_barang_masuk`
--

INSERT INTO `is_barang_masuk` (`kode_transaksi`, `tanggal_masuk`, `kode_barang`, `jumlah_masuk`) VALUES
('TM-2023-00001', '0000-00-00', 'KB0004', 4),
('TM-2023-00002', '0000-00-00', 'KB0006', 4),
('TM-2023-00003', '0000-00-00', 'KB0007', 8),
('TM-2023-00004', '0000-00-00', 'KB0010', 2),
('TM-2023-00005', '2023-06-10', 'KB0008', 11);

-- --------------------------------------------------------

--
-- Struktur dari tabel `is_dbarang_keluar`
--

CREATE TABLE `is_dbarang_keluar` (
  `kode_transaksi` varchar(15) NOT NULL,
  `tanggal_keluar` date NOT NULL,
  `kode_transaksi_keluar` int(15) NOT NULL,
  `kode_barang` varchar(7) NOT NULL,
  `jumlah_keluar` int(11) NOT NULL,
  `subtotal` int(7) NOT NULL,
  `created_user` int(3) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `is_keluar_sementara`
--

CREATE TABLE `is_keluar_sementara` (
  `id_keluar_sementara` int(11) NOT NULL,
  `kode_transaksi` varchar(15) NOT NULL,
  `kode_barang` varchar(8) NOT NULL,
  `nama_barang` varchar(225) NOT NULL,
  `satuan` varchar(30) NOT NULL,
  `item` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `is_permintaan_sementara`
--

CREATE TABLE `is_permintaan_sementara` (
  `id_permintaan_sementara` int(11) NOT NULL,
  `kode_transaksi` varchar(15) NOT NULL,
  `kode_barang` varchar(8) NOT NULL,
  `nama_barang` varchar(225) NOT NULL,
  `satuan` varchar(30) NOT NULL,
  `harga` double NOT NULL,
  `item` int(4) NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `is_users`
--

CREATE TABLE `is_users` (
  `id_user` int(3) NOT NULL,
  `username` varchar(50) NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telepon` varchar(13) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `hak_akses` enum('Super Admin','Manajer','Gudang') NOT NULL,
  `status` enum('aktif','blokir') NOT NULL DEFAULT 'aktif',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `is_users`
--

INSERT INTO `is_users` (`id_user`, `username`, `nama_user`, `password`, `email`, `telepon`, `foto`, `hak_akses`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Udin', '21232f297a57a5a743894a0e4a801fc3', 'udin@email.com', '12345', 'FB-IMG 1.png', 'Super Admin', 'aktif', '2017-04-01 08:15:15', '2020-06-04 03:02:03'),
(2, 'spvgudang', 'Jamal', '21232f297a57a5a743894a0e4a801fc3', 'jamal@email.com', '12345', 'FB-IMG 1.png', 'Manajer', 'aktif', '2017-04-01 08:15:15', '2020-06-04 03:05:01'),
(3, 'gudang', 'Budi', '21232f297a57a5a743894a0e4a801fc3', 'budi@email.com', '12345', 'FB-IMG 1.png', 'Gudang', 'aktif', '2017-04-01 08:15:15', '2020-06-04 03:04:41'),
(1, 'admin', 'Udin', '21232f297a57a5a743894a0e4a801fc3', 'udin@email.com', '12345', 'FB-IMG 1.png', 'Super Admin', 'aktif', '2017-04-01 08:15:15', '2020-06-04 03:02:03'),
(2, 'spvgudang', 'Jamal', '21232f297a57a5a743894a0e4a801fc3', 'jamal@email.com', '12345', 'FB-IMG 1.png', 'Manajer', 'aktif', '2017-04-01 08:15:15', '2020-06-04 03:05:01'),
(3, 'gudang', 'Budi', '21232f297a57a5a743894a0e4a801fc3', 'budi@email.com', '12345', 'FB-IMG 1.png', 'Gudang', 'aktif', '2017-04-01 08:15:15', '2020-06-04 03:04:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_barang`
--

CREATE TABLE `jenis_barang` (
  `id_jenis` int(7) NOT NULL,
  `kode_jenis` varchar(8) NOT NULL,
  `nama_jenis` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jenis_barang`
--

INSERT INTO `jenis_barang` (`id_jenis`, `kode_jenis`, `nama_jenis`) VALUES
(1, 'LK00001', 'Rak I.1'),
(2, 'LK00002', 'Rak I.2'),
(3, 'LK00003', 'Rak I.3'),
(4, 'LK00004', 'Rak I.4'),
(1, 'LK00001', 'Rak I.1'),
(2, 'LK00002', 'Rak I.2'),
(3, 'LK00003', 'Rak I.3'),
(4, 'LK00004', 'Rak I.4'),
(1, 'LK00001', 'Rak I.1'),
(2, 'LK00002', 'Rak I.2'),
(3, 'LK00003', 'Rak I.3'),
(4, 'LK00004', 'Rak I.4'),
(1, 'LK00001', 'Rak I.1'),
(2, 'LK00002', 'Rak I.2'),
(3, 'LK00003', 'Rak I.3'),
(4, 'LK00004', 'Rak I.4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `kode_kb` varchar(8) NOT NULL,
  `nama_kb` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`kode_kb`, `nama_kb`) VALUES
('KB00001', 'Kelompok 1'),
('KB00002', 'Kelompok 2'),
('KB00001', 'Kelompok 1'),
('KB00002', 'Kelompok 2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `klien`
--

CREATE TABLE `klien` (
  `id_klien` varchar(10) NOT NULL,
  `nama_klien` varchar(20) NOT NULL,
  `nama_perusahaan` varchar(20) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_telp` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `klien`
--

INSERT INTO `klien` (`id_klien`, `nama_klien`, `nama_perusahaan`, `alamat`, `no_telp`) VALUES
('KL0001', 'Dadang', 'Perusahaan 1', 'Jakarta', 12345),
('KL0002', 'Batman', 'Perusahaan 2', 'Yogyakarta', 12345);

-- --------------------------------------------------------

--
-- Struktur dari tabel `permintaan`
--

CREATE TABLE `permintaan` (
  `kode_transaksi` varchar(20) NOT NULL,
  `tanggal_pm` date NOT NULL,
  `kode_project` varchar(20) NOT NULL,
  `status` varchar(15) NOT NULL,
  `keterangan` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `perusahaan`
--

CREATE TABLE `perusahaan` (
  `kd_perusahaan` int(11) NOT NULL,
  `nama_perusahaan` varchar(225) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `pemilik` varchar(225) NOT NULL,
  `kota` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `perusahaan`
--

INSERT INTO `perusahaan` (`kd_perusahaan`, `nama_perusahaan`, `alamat`, `pemilik`, `kota`) VALUES
(1, 'Kumpulan Kode', 'Jakarta', 'admin\r\n', 'Jakarta'),
(1, 'Kumpulan Kode', 'Jakarta', 'admin\r\n', 'Jakarta');

-- --------------------------------------------------------

--
-- Struktur dari tabel `project`
--

CREATE TABLE `project` (
  `kode_project` varchar(30) NOT NULL,
  `tanggal_order` date NOT NULL,
  `tanggal_kirim` date NOT NULL,
  `nama_project` varchar(20) NOT NULL,
  `kode_purchase` varchar(20) NOT NULL,
  `kode_klien` varchar(20) NOT NULL,
  `kontak` int(20) NOT NULL,
  `catatan` varchar(100) NOT NULL,
  `username` varchar(20) NOT NULL,
  `total_keluar` int(7) NOT NULL,
  `kode_sph` int(11) NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_selesai` date NOT NULL,
  `status` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `project`
--

INSERT INTO `project` (`kode_project`, `tanggal_order`, `tanggal_kirim`, `nama_project`, `kode_purchase`, `kode_klien`, `kontak`, `catatan`, `username`, `total_keluar`, `kode_sph`, `tanggal_mulai`, `tanggal_selesai`, `status`, `created_at`, `update_at`) VALUES
('00001/PJ/VI/2018', '2018-06-22', '2018-06-22', 'Project 1', '', 'B000001', 12345, '', '1', 0, 0, '0000-00-00', '0000-00-00', 'Inprogress', '2018-06-28 09:03:18', '2020-06-02 05:12:35'),
('00002/PJ/VI/2018', '0000-00-00', '0000-00-00', 'Project 2', '', 'B000001', 12345, '', '1', 0, 0, '0000-00-00', '0000-00-00', 'Not Started', '2018-06-29 09:28:43', '2020-06-02 05:12:40'),
('00001/PJ/VI/2018', '2018-06-22', '2018-06-22', 'Project 1', '', 'B000001', 12345, '', '1', 0, 0, '0000-00-00', '0000-00-00', 'Inprogress', '2018-06-28 09:03:18', '2020-06-02 05:12:35'),
('00002/PJ/VI/2018', '0000-00-00', '0000-00-00', 'Project 2', '', 'B000001', 12345, '', '1', 0, 0, '0000-00-00', '0000-00-00', 'Not Started', '2018-06-29 09:28:43', '2020-06-02 05:12:40'),
('00003/PJ/III/2023', '2023-04-14', '2023-04-25', 'Pembelian', 'PO0001', 'K00001', 12345, '...', '1', 0, 0, '2023-03-10', '2023-05-26', 'On Going', '2023-04-25 11:11:43', '2023-04-25 11:11:43'),
('00004/PJ/VI/2023', '2023-02-10', '2023-04-14', 'Order', '', 'K00002', 12345, '...', '1', 0, 0, '2023-03-11', '2023-05-20', 'On Going', '2023-04-25 11:22:50', '2023-04-25 11:22:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `project_sementara`
--

CREATE TABLE `project_sementara` (
  `id_keluar_sementara` int(11) NOT NULL,
  `kode_project` varchar(20) NOT NULL,
  `kode_barang` varchar(8) NOT NULL,
  `nama_barangp` varchar(30) NOT NULL,
  `detail` varchar(50) NOT NULL,
  `satuan` varchar(30) NOT NULL,
  `harga` double NOT NULL,
  `item` int(4) NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `purchase`
--

CREATE TABLE `purchase` (
  `kode_purchase` varchar(20) NOT NULL,
  `tanggal_po` date NOT NULL,
  `kode_supplier` char(20) NOT NULL,
  `kode_project` varchar(30) NOT NULL,
  `status` int(7) NOT NULL,
  `total` int(7) NOT NULL,
  `username` varchar(20) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `purchase`
--

INSERT INTO `purchase` (`kode_purchase`, `tanggal_po`, `kode_supplier`, `kode_project`, `status`, `total`, `username`, `created_date`) VALUES
('001/PO/KNZ/VI/2018', '2018-06-24', '', '003/PJ/KNZ/2018', 0, 1, 'it', '2018-06-23 22:40:32'),
('001/PO/KNZ/VI/2018', '2018-06-24', '', '003/PJ/KNZ/2018', 0, 1, 'it', '2018-06-23 22:40:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sph`
--

CREATE TABLE `sph` (
  `kode_sph` varchar(20) NOT NULL,
  `tanggal_sph` date NOT NULL,
  `file_sph` varchar(300) NOT NULL,
  `status` enum('approval','pengajuan','revisi') NOT NULL DEFAULT 'pengajuan'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` varchar(10) NOT NULL,
  `nama_supplier` varchar(60) NOT NULL,
  `alamat` varchar(60) NOT NULL,
  `telp` int(15) NOT NULL,
  `norek` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama_supplier`, `alamat`, `telp`, `norek`) VALUES
('SP0001', 'Supplier 1', 'Banten', 12345, '12345'),
('SP0002', 'Supplier 2', 'Jakarta', 12345, '12345'),
('SP0003', 'Supplier 3', 'Bandung', 12345, '12345');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barangpo_sementara`
--
ALTER TABLE `barangpo_sementara`
  ADD PRIMARY KEY (`id_barangp`),
  ADD KEY `kd_pembelian` (`kode_purchase`);

--
-- Indeks untuk tabel `barangp_sementara`
--
ALTER TABLE `barangp_sementara`
  ADD PRIMARY KEY (`id_barangp`),
  ADD KEY `kd_pembelian` (`kode_transaksi`);

--
-- Indeks untuk tabel `dbarang_keluar`
--
ALTER TABLE `dbarang_keluar`
  ADD PRIMARY KEY (`kode_detail`);

--
-- Indeks untuk tabel `is_barang`
--
ALTER TABLE `is_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `is_keluar_sementara`
--
ALTER TABLE `is_keluar_sementara`
  ADD PRIMARY KEY (`id_keluar_sementara`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `dbarang_keluar`
--
ALTER TABLE `dbarang_keluar`
  MODIFY `kode_detail` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `is_barang`
--
ALTER TABLE `is_barang`
  MODIFY `id_barang` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `is_keluar_sementara`
--
ALTER TABLE `is_keluar_sementara`
  MODIFY `id_keluar_sementara` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
