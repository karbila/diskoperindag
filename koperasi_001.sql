-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 20, 2014 at 05:54 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `koperasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `bidang`
--

CREATE TABLE IF NOT EXISTS `bidang` (
  `id_bidang` int(100) NOT NULL,
  `nama_bidang` varchar(100) NOT NULL,
  `link_bidang` varchar(100) NOT NULL,
  PRIMARY KEY (`id_bidang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bidang`
--

INSERT INTO `bidang` (`id_bidang`, `nama_bidang`, `link_bidang`) VALUES
(1, 'Bidang Koperasi dan UMKM', '?md=bid_kumkm'),
(2, 'Bidang Perindustrian', '?md=bid_indus'),
(3, 'Bidang Perdagangan', '?md=bid_dagang');

-- --------------------------------------------------------

--
-- Table structure for table `bulan`
--

CREATE TABLE IF NOT EXISTS `bulan` (
  `id_bulan` varchar(10) NOT NULL DEFAULT '',
  `nama_bulan` varchar(20) NOT NULL,
  PRIMARY KEY (`id_bulan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bulan`
--

INSERT INTO `bulan` (`id_bulan`, `nama_bulan`) VALUES
('01', 'Januari'),
('02', 'Pebruari'),
('03', 'Maret'),
('04', 'April'),
('05', 'Mei'),
('06', 'Juni'),
('07', 'Juli'),
('08', 'Agustus'),
('09', 'September'),
('10', 'Oktober'),
('11', 'November'),
('12', 'Desember');

-- --------------------------------------------------------

--
-- Table structure for table `dokumen`
--

CREATE TABLE IF NOT EXISTS `dokumen` (
  `id_dok` int(100) NOT NULL AUTO_INCREMENT,
  `nama_dok` varchar(500) NOT NULL,
  `tanggal_upload` date NOT NULL,
  `ukuran` varchar(100) NOT NULL,
  `tipe_file` varchar(100) NOT NULL,
  PRIMARY KEY (`id_dok`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `dokumen`
--

INSERT INTO `dokumen` (`id_dok`, `nama_dok`, `tanggal_upload`, `ukuran`, `tipe_file`) VALUES
(1, 'peren1_5700_Bukti_Retur_Pengeluaran_Barang.pdf', '2013-10-30', '312034', 'application/pdf'),
(2, 'pelak3_1945_Tutorial_SKA_Voucher_PDAM_Bandarmasih.txt', '2013-12-12', '4406', 'text/plain'),
(3, 'penga1_940_Klarifikasi_Negosiasi_(1).pdf', '2013-10-30', '312359', 'application/pdf'),
(4, 'peren1_47_example_001.pdf', '2013-10-30', '173453', 'application/pdf'),
(5, 'penga3_5151_PROSENTASE_PROGRESS_-_OKTOBER_2013.xls', '2013-12-29', '51712', 'application/vnd.ms-excel'),
(6, 'peren3_3251_0001-SPP-TRD--X-2013.pdf', '2013-11-24', '10734', 'application/pdf'),
(7, 'pelak3_7635_emrefirat.edublogs.org-Does_Can_Edit_Mean_Can_Delete_in_Google_Drive.pdf', '2013-11-24', '23885', 'application/pdf'),
(8, 'Tidak Ada Dokumen', '2013-11-24', '-', '-'),
(9, 'penga3_3231_CATATAN_UNTUK_ABI.txt', '2013-11-24', '722', 'text/plain'),
(10, 'peren3_8527_Tutorial_SKA_Voucher_PDAM_Bandarmasih.txt', '2013-12-06', '4406', 'text/plain'),
(11, 'pelak3_5350_SPJB.doc', '2013-12-12', '10812', 'application/msword'),
(12, 'penga3_2347_0001-SPP-TRD--X-2013.pdf', '2013-12-12', '10734', 'application/pdf'),
(13, 'Tidak Ada Dokumen', '2013-12-15', '-', '-'),
(14, 'peren3_2129_Laporan_Mingguan_Full_Version.xls', '2013-12-24', '875008', 'application/vnd.ms-excel'),
(15, 'Tidak Ada Dokumen', '2013-12-16', '-', '-'),
(16, 'Tidak Ada Dokumen', '2013-12-21', '-', '-'),
(17, 'Tidak Ada Dokumen', '2013-12-21', '-', '-'),
(18, 'peren3_3345_0001-SPP-TRD--X-2013.pdf', '2013-12-21', '10734', 'application/pdf'),
(19, 'Tidak Ada Dokumen', '2013-12-21', '-', '-'),
(20, 'Tidak Ada Dokumen', '2013-12-21', '-', '-'),
(21, 'penga3_3721_Asisten.xlsx', '2013-12-21', '10600', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'),
(22, 'pelak3_392_info-vol-2.pdf', '2013-12-24', '208776', 'application/pdf'),
(23, 'peren1_1561_Daftar_Screenshoot_SDM.doc', '2013-12-29', '24576', 'application/msword'),
(24, 'Tidak Ada Dokumen', '2013-12-29', '-', '-'),
(25, 'penga2_9940_Rancangan_Bobot_Pekerjaan_SIMPDAM_2012-2014_-_Dirut_.xls', '2013-12-29', '1155584', 'application/vnd.ms-excel'),
(26, 'peren3_6167_Work_Order.pdf', '2013-12-30', '310958', 'application/pdf');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE IF NOT EXISTS `jabatan` (
  `id_jab` int(10) NOT NULL AUTO_INCREMENT,
  `nama_jab` varchar(100) NOT NULL,
  PRIMARY KEY (`id_jab`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id_jab`, `nama_jab`) VALUES
(1, 'Administrator'),
(2, 'Kepala Dinas'),
(3, 'Kepala Bidang Koperasi dan Usaha Mikro, Kecil & Menengah '),
(4, 'Kepala Bidang Perindustrian'),
(5, 'Kepala Bidang Perdagangan'),
(6, 'Kepala Seksi Kelembagaan'),
(7, 'Kepala Seksi Pemberdayaan Koperasi'),
(8, 'Kepala Seksi Pemberdayaan Usaha Mikro Kecil dan Menengah'),
(9, 'Kepala Seksi Perdagangan Dalam Negeri'),
(10, 'Staff Seksi Kelembagaan'),
(11, 'Staff Seksi Pemberdayaan Koperasi'),
(12, 'Staff Seksi Pemberdayaan Usaha Mikro Kecil dan Menengah'),
(13, 'Staff Seksi Perdagangan Dalam Negeri'),
(14, 'Halaman Depan');

-- --------------------------------------------------------

--
-- Table structure for table `kop_modul`
--

CREATE TABLE IF NOT EXISTS `kop_modul` (
  `id_modul` int(10) NOT NULL AUTO_INCREMENT,
  `nama_modul` varchar(100) NOT NULL,
  `nama_alias` varchar(100) NOT NULL,
  `link_modul` varchar(100) NOT NULL,
  `mod_status` enum('Y','N') NOT NULL,
  `id_sub` int(10) NOT NULL,
  PRIMARY KEY (`id_modul`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `kop_modul`
--

INSERT INTO `kop_modul` (`id_modul`, `nama_modul`, `nama_alias`, `link_modul`, `mod_status`, `id_sub`) VALUES
(1, 'Perencanaan (Planning)', 'Perencanaan (Planning)', '?md=peren4', 'Y', 5),
(2, 'Penyiapan (Preparing)', 'Penyiapan (Preparing)', '?md=penyi4', 'Y', 5),
(3, 'Pelaksanaan (Assignment)', 'Pelaksanaan (Assignment)', '?md=pelak4', 'Y', 5),
(4, 'Pengawasan (Controlling)', 'Pengawasan (Controlling)', '?md=penga4', 'Y', 5),
(5, 'Monitoring dan Evaluasi (Monev)', 'Monitoring dan Evaluasi (Monev)', '?md=eval4', 'Y', 5),
(6, 'Laporan (Report)', 'Laporan (Report)', '?md=lapor4', 'Y', 5),
(7, 'Modul 1', 'Modul 1', '?md=modul1', 'N', 1),
(8, 'Menu Level 1.1', 'Menu Level 1.1', '?md=level11', 'Y', 27);

-- --------------------------------------------------------

--
-- Table structure for table `menu_utama`
--

CREATE TABLE IF NOT EXISTS `menu_utama` (
  `id_menu` int(10) NOT NULL AUTO_INCREMENT,
  `nama_menu` varchar(100) NOT NULL,
  `id_jab` int(10) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '1 = aktif',
  PRIMARY KEY (`id_menu`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `menu_utama`
--

INSERT INTO `menu_utama` (`id_menu`, `nama_menu`, `id_jab`, `status`) VALUES
(1, 'Manajemen Sistem', 1, 1),
(2, 'Menu', 1, 1),
(3, 'Berita', 1, 0),
(4, 'Bidang Koperasi dan UMKM', 2, 1),
(5, 'Bidang Perindustrian', 2, 1),
(6, 'Bidang Perdagangan', 2, 1),
(7, 'Seksi Kelembagaan', 3, 1),
(8, 'Seksi (Bidang Perindustrian)', 4, 1),
(9, 'Seksi (Bidang Perdagangan)', 5, 1),
(10, 'Tahapan Kegiatan (Seksi Kelembagaan)', 6, 1),
(11, 'Tahapan Kegiatan (Seksi Pemberdayaan Koperasi)', 7, 1),
(12, 'Tahapan Kegiatan (Seksi Pemberdayaan Usaha Mikro Kecil dan Menengah)', 8, 1),
(13, 'Tahapan Kegiatan (Seksi Kelembagaan)', 10, 1),
(14, 'Tahapan Kegiatan (Seksi Pemberdayaan Koperasi)', 11, 1),
(15, 'Tahapan Kegiatan (Seksi Pemberdayaan Usaha Mikro Kecil dan Menengah)', 12, 1),
(16, 'Seksi Pemberdayaan Koperasi', 3, 1),
(17, 'Seksi Pemberdayaan Usaha Mikro Kecil dan Menengah', 3, 1),
(18, 'goblok', 1, 0),
(19, 'Menu Atas', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE IF NOT EXISTS `pegawai` (
  `id_pegawai` int(10) NOT NULL AUTO_INCREMENT,
  `nomor_induk` varchar(50) NOT NULL,
  `nama_pegawai` varchar(50) NOT NULL,
  `id_jab` int(10) NOT NULL,
  PRIMARY KEY (`id_pegawai`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nomor_induk`, `nama_pegawai`, `id_jab`) VALUES
(1, '12345', 'Joni Kurniawan', 7),
(2, '23456', 'Sri Rahayu', 8),
(3, '121235', 'Asma Bintarubin', 7),
(4, '2147483647', 'Aditya Raharja', 3),
(5, '222 999010 009', 'Gunawan Tri Atmadja', 2),
(6, '889300902020', 'Hendri Kurniawan', 11);

-- --------------------------------------------------------

--
-- Table structure for table `seksi`
--

CREATE TABLE IF NOT EXISTS `seksi` (
  `id_seksi` int(30) NOT NULL,
  `nama_seksi` varchar(100) NOT NULL,
  `id_bidang` int(100) NOT NULL,
  `link_seksi` varchar(100) NOT NULL,
  PRIMARY KEY (`id_seksi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seksi`
--

INSERT INTO `seksi` (`id_seksi`, `nama_seksi`, `id_bidang`, `link_seksi`) VALUES
(1, 'Seksi Kelembagaan', 1, '?md=sek_kelem'),
(2, 'Seksi Pemberdayaan Koperasi', 1, '?md=sek_pemberdayaan'),
(3, 'Seksi Pemberdayaan Usaha Mikro Kecil dan Menengah', 1, '?md=sek_umkm'),
(4, 'Seksi Industri Logam, Mesin dan Elekronika', 2, '?md=sek_ilme'),
(5, 'Seksi Industri Kimia, Agro, dan Hasil Hutan', 2, '?md=sek_ikahh'),
(6, 'Seksi Pengawasan dan Kerja Sama Industri', 2, '?md=sek_pksi'),
(7, 'Seksi Perdagangan Dalam Negeri', 3, '?md=sek_pdn'),
(8, 'Seksi Perdagangan Luar Negeri', 3, '?md=sek_pln'),
(9, 'Seksi Metrologi Legal dan Perlindungan Konsumen', 3, '?md=sek_mlpk'),
(10, 'Tidak Punya Seksi', 100, '#');

-- --------------------------------------------------------

--
-- Table structure for table `submenu_utama`
--

CREATE TABLE IF NOT EXISTS `submenu_utama` (
  `id_sub` int(10) NOT NULL AUTO_INCREMENT,
  `nama_sub` varchar(100) NOT NULL,
  `id_menu` int(10) NOT NULL,
  `link_menu` varchar(100) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_sub`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `submenu_utama`
--

INSERT INTO `submenu_utama` (`id_sub`, `nama_sub`, `id_menu`, `link_menu`, `status`) VALUES
(1, 'Modul (Submenu Level 2)', 1, '?md=modul', 1),
(2, 'Menu Utama', 2, '?md=men1', 1),
(3, 'Sub Menu (Level 1)', 2, '?md=men2', 1),
(4, 'Seksi Kelembagaan', 4, '?md=', 1),
(5, 'Seksi Pemberdayaan Koperasi', 4, '?md=#', 1),
(6, 'Seksi Pemberdayaan Usaha Mikro Kecil dan Menengah', 4, '?md=', 1),
(7, 'Perencanaan (Planning)', 16, '?md=peren1', 1),
(8, 'Penyiapan (Preparing)', 16, '?md=penyi1', 1),
(9, 'Pelaksanaan (Assignment)', 16, '?md=pelak1', 1),
(10, 'Pengawasan (Controlling)', 16, '?md=penga1', 1),
(11, 'Monitoring dan Evaluasi (Monev)', 16, '?md=eval1', 1),
(12, 'Laporan (Report)', 16, '?md=lapor1', 1),
(13, 'Perencanaan (Planning)', 11, '?md=peren2', 1),
(14, 'Penyiapan (Preparing)', 11, '?md=penyi2', 1),
(15, 'Pelaksanaan (Assignment)', 11, '?md=pelak2', 1),
(16, 'Pengawasan (Controlling)', 11, '?md=penga2', 1),
(17, 'Monitoring dan Evaluasi (Monev)', 11, '?md=eval2', 1),
(18, 'Laporan (Report)', 11, '?md=lapor2', 1),
(19, 'Perencanaan (Planning)', 14, '?md=peren3', 1),
(20, 'Penyiapan (Preparing)', 14, '?md=penyi3', 1),
(21, 'Pelaksanaan (Assignment)', 14, '?md=pelak3', 1),
(22, 'Pengawasan (Controlling)', 14, '?md=penga3', 1),
(23, 'Evaluasi dan Monitoring (E-Monev)', 14, '?md=eval3', 1),
(24, 'Laporan (Report)', 14, '?md=lapor3', 1),
(25, 'Manajemen User', 1, '?md=user', 1),
(26, '++++ gooog', 1, '?md=iio', 0),
(27, 'Menu Level 1', 19, '?md=atas', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tahun`
--

CREATE TABLE IF NOT EXISTS `tahun` (
  `id_tahun` int(10) NOT NULL AUTO_INCREMENT,
  `tahun` int(20) NOT NULL,
  PRIMARY KEY (`id_tahun`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tahun`
--

INSERT INTO `tahun` (`id_tahun`, `tahun`) VALUES
(1, 2013),
(2, 2012),
(3, 2011),
(4, 2010),
(5, 2009);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_evaluasi`
--

CREATE TABLE IF NOT EXISTS `tbl_evaluasi` (
  `id_evaluasi` int(100) NOT NULL AUTO_INCREMENT,
  `status` int(10) NOT NULL,
  `range` varchar(100) NOT NULL,
  `makna` varchar(100) NOT NULL,
  `skor` int(10) NOT NULL,
  PRIMARY KEY (`id_evaluasi`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `tbl_evaluasi`
--

INSERT INTO `tbl_evaluasi` (`id_evaluasi`, `status`, `range`, `makna`, `skor`) VALUES
(1, 1, 'Kurang dari 90 %', 'Sangat Ekonomis', 5),
(2, 1, '90% - 94,99%', 'Ekonomis', 4),
(3, 1, '95% - 100%', 'Cukup Ekonomis', 3),
(4, 1, '100,01% - 105%', 'Kurang Ekonomis', 2),
(5, 1, '> 105%', 'Tidak Ekonomis', 1),
(6, 2, '> 105%', 'null', 1),
(7, 2, '101% - 105%', 'null', 2),
(8, 2, '96% - 100%', 'null', 3),
(9, 2, '< 96%', 'null', 4),
(10, 3, '80 – 100', 'Sangat Efisien', 5),
(11, 3, '70 – 79', 'Efisien', 4),
(12, 3, '60 – 69', 'Cukup Efisien', 3),
(13, 3, '50 – 59', 'Kurang Efisien', 2),
(14, 3, '< 50', 'Tidak Efisien', 1),
(15, 4, '< 90 ', 'null', 1),
(16, 4, '90 – 94,99', 'null', 2),
(17, 4, '95-100', 'null', 3),
(18, 4, '> 100 ', 'null', 4),
(19, 5, '80 – 100', 'Sangat Efektif', 5),
(20, 5, '70 – 79', 'Efektif', 4),
(21, 5, '60 – 69', 'Cukup Efektif', 3),
(22, 5, '50 – 59', 'Kurang Efektif', 2),
(23, 5, '< 50', 'Tidak Efektif', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelaksanaan`
--

CREATE TABLE IF NOT EXISTS `tbl_pelaksanaan` (
  `id_pelaksanaan` int(10) NOT NULL AUTO_INCREMENT,
  `kode_laksana` varchar(10) NOT NULL,
  `nama_laksana` varchar(200) NOT NULL,
  `tgl_m_lak` date NOT NULL,
  `tgl_s_lak` date NOT NULL,
  `tempat_lak` varchar(500) NOT NULL,
  `des_lak` text NOT NULL,
  `id_dok` int(100) NOT NULL,
  `ang_lak` bigint(20) NOT NULL,
  `id_pegawai` int(10) NOT NULL,
  `id_sub_penyi` int(10) NOT NULL,
  `status_proses` int(10) NOT NULL DEFAULT '0',
  `status_kunci` int(10) NOT NULL DEFAULT '0',
  `owner` int(10) NOT NULL,
  PRIMARY KEY (`id_pelaksanaan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `tbl_pelaksanaan`
--

INSERT INTO `tbl_pelaksanaan` (`id_pelaksanaan`, `kode_laksana`, `nama_laksana`, `tgl_m_lak`, `tgl_s_lak`, `tempat_lak`, `des_lak`, `id_dok`, `ang_lak`, `id_pegawai`, `id_sub_penyi`, `status_proses`, `status_kunci`, `owner`) VALUES
(6, '001', 'Pelaksanaan Tukang Kayu Bekerja 2', '2013-10-20', '2013-10-28', 'Desa Sukoraharjo 51 Kav B', 'Tukang nih', 2, 2500000, 3, 1, 0, 1, 13),
(7, '002', 'Pelaksanaan Pembinaan KSP Desa Pulo Lor', '2013-10-23', '2013-10-23', 'Desa Pulo Lor Kec. Jombang', 'Dilaksanakan pada tanggal 23 Oktober 2013', 7, 3500000, 2, 4, 0, 0, 13),
(8, '003', 'Pelaksanaan Pembangunan Koperasi Desa I', '2013-10-23', '2013-10-23', 'Desa Sudimoro II', 'okeeeee', 11, 3500000, 1, 1, 0, 1, 13),
(9, '004', 'Shoping Baju dengan Harga 50rb', '2013-10-23', '2013-10-24', 'Matahari', 'o', 16, 100000, 1, 6, 0, 0, 13),
(10, '005', 'Beli Baju Putih dan Hitam Harga 50rb', '2013-10-25', '2013-10-26', 'Duta Mall Lt.II', 'ooo', 17, 300000, 1, 6, 0, 0, 13),
(11, '006', 'Pelaksanaan Kontent SIM', '2013-12-23', '2013-12-23', 'Banjarmasin', 'oke', 19, 23000000, 1, 8, 0, 0, 13),
(12, '007', 'Pelaksanaan Sidebar SIM', '2013-12-24', '2013-12-24', 'Banjarmasin', 'ppp', 20, 750000, 1, 9, 0, 0, 13),
(13, '008', 'Ke Pasar Beli Sayur Kangkung', '2013-12-24', '2013-12-24', 'Pasar Dinoyo Malang', 'oke', 22, 4000000, 1, 10, 0, 0, 13);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengawasan`
--

CREATE TABLE IF NOT EXISTS `tbl_pengawasan` (
  `id_pengawasan` int(100) NOT NULL AUTO_INCREMENT,
  `kode_penga` varchar(100) NOT NULL,
  `nama_penga` varchar(200) NOT NULL,
  `tgl_awal_penga` date NOT NULL,
  `tgl_akhir_penga` date NOT NULL,
  `tempat_penga` varchar(250) NOT NULL,
  `detil_penga` text NOT NULL,
  `ang_penga` bigint(20) NOT NULL,
  `hasil_penga` text NOT NULL,
  `cat_penga` text NOT NULL,
  `cat_penga2` text NOT NULL,
  `id_dok` int(100) NOT NULL,
  `id_sub_pelak` int(10) NOT NULL,
  `id_pegawai` int(10) NOT NULL,
  `status_proses` int(10) NOT NULL DEFAULT '0',
  `status_kunci` int(10) NOT NULL DEFAULT '0',
  `owner` int(10) NOT NULL,
  PRIMARY KEY (`id_pengawasan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tbl_pengawasan`
--

INSERT INTO `tbl_pengawasan` (`id_pengawasan`, `kode_penga`, `nama_penga`, `tgl_awal_penga`, `tgl_akhir_penga`, `tempat_penga`, `detil_penga`, `ang_penga`, `hasil_penga`, `cat_penga`, `cat_penga2`, `id_dok`, `id_sub_pelak`, `id_pegawai`, `status_proses`, `status_kunci`, `owner`) VALUES
(1, '001', 'Pengawasan Kinerja Tukang Kayu G.T', '2013-10-28', '2013-10-31', 'Desa Sukoraharjo', 'Pengawasan', 2500000, 'Baik', 'Untuk Tukang Kayunya agar dipercepat kerjanya', 'setuju dengan catatan kepala bidang', 3, 1, 1, 0, 0, 13),
(2, '002', 'Pengawasan Gaji medium Karyawan', '2013-10-20', '2013-10-22', 'Desa Oke-Oke Aja', 'a', 230000, 'b', 'c', 'd', 5, 2, 2, 0, 1, 13),
(4, '004', 'Pengawasan Pembinaan KSP Desa Pulo Lor Jombang', '2013-10-28', '2013-12-31', 'Desa Pulo Lor Jombang', 'a', 50000000, 'b', 'c', 'd', 9, 4, 3, 0, 0, 13),
(5, '005', 'Pengawasan Pemb.Kop Desa Sudimoro', '2013-10-31', '2013-11-30', 'Desa Sudimoro', 'pengawasan ini meliputi pembiayaan dan lain-lain', 100000000, 'baik', 'oke aja', 'oke juga', 12, 5, 1, 0, 0, 13),
(6, '006', 'Pengawasan Pada Hasil Pengerjaan Kontent SIM', '2013-12-26', '2014-01-15', 'Banjarmasin', 'bagus 1', 15500000, 'bagus 2', 'bagus 3', 'bagus 4', 21, 6, 1, 0, 0, 13),
(7, '007', 'Pengawasan Tukang Kayu Bekerja 2', '2013-12-25', '2014-05-02', 'Banjarmasin', '1', 23000000, '2', '3', '4', 24, 2, 1, 0, 0, 4),
(8, '008', 'Pengawasan pada Kuli', '2013-10-31', '2013-12-31', 'Penjara', '2', 909090, '3', '4', '5', 25, 3, 1, 0, 0, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_penyiapan`
--

CREATE TABLE IF NOT EXISTS `tbl_penyiapan` (
  `id_penyiapan` int(10) NOT NULL AUTO_INCREMENT,
  `kode_penyi` varchar(200) NOT NULL,
  `nama_kegiatan_penyi` varchar(200) NOT NULL,
  `tgl_mulai_penyi1` date NOT NULL,
  `tgl_selesai_penyi1` date NOT NULL,
  `tempat_penyi` varchar(200) NOT NULL,
  `deskripsi_penyi` text NOT NULL,
  `id_rencana` int(10) NOT NULL,
  `anggaran` bigint(20) NOT NULL,
  `id_pegawai` int(10) NOT NULL,
  `status_proses` int(10) NOT NULL DEFAULT '0',
  `status_kunci` int(10) NOT NULL DEFAULT '0',
  `owner` int(10) NOT NULL,
  PRIMARY KEY (`id_penyiapan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `tbl_penyiapan`
--

INSERT INTO `tbl_penyiapan` (`id_penyiapan`, `kode_penyi`, `nama_kegiatan_penyi`, `tgl_mulai_penyi1`, `tgl_selesai_penyi1`, `tempat_penyi`, `deskripsi_penyi`, `id_rencana`, `anggaran`, `id_pegawai`, `status_proses`, `status_kunci`, `owner`) VALUES
(1, '001', 'Persiapan Pembangunan Koperasi Desa', '2012-10-01', '2013-10-19', 'Kantor Utama Koperasi Lama', 'Persiapan Inti\r\n- Tukang\r\n- Bahan Bangunan\r\n- Properti Inventaris', 2, 100000, 1, 0, 1, 13),
(2, '002', 'Persiapan Pembangunan Kop.Desa Sesi 2', '2013-10-20', '2013-10-21', 'Desa Manggarai', 'oke', 1, 204000, 2, 0, 0, 13),
(3, '003', 'Persiapan Pembinaan Koperasi Aktif', '2013-10-21', '2013-10-22', 'Jombang', 'Persiapan Pembinaan KSP', 3, 100000, 3, 0, 0, 13),
(4, '004', 'Persiapan pelatihan Darma Koperasi', '2013-10-21', '2013-10-23', 'Dinas Koperasi', 'hanya menyiapkan saja II', 4, 500000, 3, 0, 0, 13),
(5, '005', 'Persiapan Pembangunan Kop.Desa Sesi 3', '2013-10-24', '2013-10-25', 'Desa Taruna jaya 223', 'oke', 1, 500000, 1, 0, 0, 13),
(6, '006', 'beli baju', '2013-10-22', '2013-10-23', 'mall', 'okw', 5, 150000, 1, 0, 0, 13),
(7, '007', 'beli sepatu', '2013-10-23', '2013-10-23', 'mall', 'oe', 5, 50000, 1, 0, 0, 13),
(8, '008', 'Membuat Template', '2013-12-21', '2013-12-23', 'Banjarmasin', 'oke', 7, 1500000, 3, 0, 0, 13),
(9, '009', 'Membuat Manajemen Admin', '2013-12-23', '2013-12-25', 'Banjarmasin', 'oke', 7, 10000000, 3, 0, 0, 13),
(10, '0010', 'Beli Sayur', '2013-12-22', '2013-12-22', 'Pasar Dinoyo', 'beli sayur', 6, 1500000, 1, 0, 0, 13),
(11, '0010', 'Pelatihan Tuna 1', '2013-12-22', '2013-12-22', 'Sekolahan Desa', 'okie', 4, 230000, 1, 0, 0, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rencana`
--

CREATE TABLE IF NOT EXISTS `tbl_rencana` (
  `id_rencana` int(10) NOT NULL AUTO_INCREMENT,
  `kode_ren` varchar(10) NOT NULL,
  `nama_keg_ren` varchar(200) NOT NULL,
  `mulai_ren` date NOT NULL,
  `selesai_ren` date NOT NULL,
  `tempat_ren` varchar(200) NOT NULL,
  `anggaran_ren` bigint(20) NOT NULL,
  `desk_ren` text NOT NULL,
  `id_pegawai` int(10) NOT NULL,
  `id_dok` int(100) NOT NULL,
  `status_proses` int(10) NOT NULL DEFAULT '0' COMMENT 'sudah diproses selanjutnya = 1',
  `status_kunci` int(10) NOT NULL DEFAULT '0' COMMENT 'terbuka = 1',
  `owner` int(10) NOT NULL COMMENT '= iduser',
  PRIMARY KEY (`id_rencana`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tbl_rencana`
--

INSERT INTO `tbl_rencana` (`id_rencana`, `kode_ren`, `nama_keg_ren`, `mulai_ren`, `selesai_ren`, `tempat_ren`, `anggaran_ren`, `desk_ren`, `id_pegawai`, `id_dok`, `status_proses`, `status_kunci`, `owner`) VALUES
(1, '001', 'Pembangunan Koperasi Desa', '2012-10-20', '2014-01-01', 'Desa Sukoraharjo GG.V', 150000000, 'Telah direncanakan bahwa pembangunan koperasi dianggarkan 150 juta rupiah', 4, 1, 1, 0, 13),
(2, '002', 'Perencanaan Kabid UMKM', '2013-10-13', '2013-10-29', 'Banjarmasin', 89820900, 'lalal', 1, 4, 0, 0, 13),
(3, '003', 'Pembinaan Koperasi Aktif', '2012-10-20', '2013-10-22', 'Desa Pulo Lor Jombang', 3500000, 'Perencanaan Pembinaan KSP Desa Pulo Lor yang masih Aktif', 3, 6, 1, 0, 13),
(4, '004', 'Pelatihan Tuna Darma Koperasi Desa', '2013-10-21', '2013-10-31', 'Dinas Koperasi', 50000000, 'Pelatihan koperasi', 3, 10, 0, 0, 13),
(5, '005', 'recana shopping', '2013-10-22', '2013-10-24', 'Jombang', 200000, 'oke', 1, 13, 0, 0, 13),
(6, '009', 'Rencana ke Pasar', '2013-10-22', '2013-10-23', 'Pasar', 2500000, 'okr', 3, 14, 0, 0, 13),
(7, '006', 'Membangun Website Koperasi', '2013-12-12', '2013-12-21', 'Banjarmasin', 35250000, 'Rencana membangun website Koperasi Dinas Kabupaten Pasuruan - Jawa Timur', 1, 18, 0, 0, 13),
(8, '007', 'Membangun Website SIM Koperasi', '2013-12-17', '2013-12-30', 'Banjarmasin', 20000000, 'rencana telah deal', 1, 23, 0, 0, 4),
(9, '008', 'Perencanaan 1', '2013-12-30', '2014-01-04', 'Jombang', 3500000, 'oke', 1, 26, 0, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_pelaksanaan`
--

CREATE TABLE IF NOT EXISTS `tbl_sub_pelaksanaan` (
  `id_sub_pelak` int(10) NOT NULL AUTO_INCREMENT,
  `pelak_sub_nama` varchar(200) NOT NULL,
  `pelak_sub_mulai` date NOT NULL,
  `pelak_sub_akhir` date NOT NULL,
  `pelak_sub_kode` varchar(10) NOT NULL,
  `pelak_deskripsi` text NOT NULL,
  `id_pelaksanaan` int(10) NOT NULL,
  `status_proses` int(10) NOT NULL DEFAULT '0',
  `status_kunci` int(10) NOT NULL DEFAULT '0',
  `owner` int(10) NOT NULL,
  PRIMARY KEY (`id_sub_pelak`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tbl_sub_pelaksanaan`
--

INSERT INTO `tbl_sub_pelaksanaan` (`id_sub_pelak`, `pelak_sub_nama`, `pelak_sub_mulai`, `pelak_sub_akhir`, `pelak_sub_kode`, `pelak_deskripsi`, `id_pelaksanaan`, `status_proses`, `status_kunci`, `owner`) VALUES
(1, 'Tukang Kayu Gaji Tinggi', '2013-10-21', '2013-10-28', '1', 'tinggi', 6, 0, 0, 13),
(2, 'Tukang Kayu Gaji Medium', '2013-10-21', '2013-10-22', '2', 'Medium', 6, 0, 0, 13),
(3, 'Tukang Kayu Gaji Rendah (kuli)', '2013-10-21', '2013-10-24', '3', 'rendah', 6, 0, 0, 13),
(4, 'Sub Pelaksanaan Pembinaan KSP', '2013-10-23', '2013-10-24', '4', 'Sub Pelaksanaaan KSP 1', 7, 0, 0, 13),
(5, 'Sub Pelaksanaan Pembangunan Desa II', '2013-10-24', '2013-10-25', '5', 'oke oo', 8, 0, 0, 13),
(6, 'Sub Kontent SIM 1', '2013-12-23', '2013-12-23', '6', '1', 11, 0, 0, 13);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_pengawasan`
--

CREATE TABLE IF NOT EXISTS `tbl_sub_pengawasan` (
  `id_sub_penga` int(10) NOT NULL AUTO_INCREMENT,
  `kode_sub_penga` varchar(30) NOT NULL,
  `nama_sub_penga` varchar(200) NOT NULL,
  `tgl_mulai_penga_sub` date NOT NULL,
  `tgl_akhir_penga_sub` date NOT NULL,
  `deskripsi_sub_penga` text NOT NULL,
  `id_pengawasan` int(10) NOT NULL,
  `status_proses` int(10) NOT NULL DEFAULT '0',
  `status_kunci` int(10) NOT NULL DEFAULT '0',
  `owner` int(10) NOT NULL,
  PRIMARY KEY (`id_sub_penga`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_sub_pengawasan`
--

INSERT INTO `tbl_sub_pengawasan` (`id_sub_penga`, `kode_sub_penga`, `nama_sub_penga`, `tgl_mulai_penga_sub`, `tgl_akhir_penga_sub`, `deskripsi_sub_penga`, `id_pengawasan`, `status_proses`, `status_kunci`, `owner`) VALUES
(1, '1', 'Sub 1.2', '2013-10-22', '2013-10-30', 'desk', 2, 0, 0, 13),
(2, '2', 'Sub Pengawasan Sudmoro 1', '2013-10-24', '2013-10-25', 'okeeee', 5, 0, 0, 13),
(3, '3', 'Sub Pengawasan Sudmoro 2', '2013-10-24', '2013-10-25', 'oslsls', 5, 0, 0, 13);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_penyiapan`
--

CREATE TABLE IF NOT EXISTS `tbl_sub_penyiapan` (
  `id_sub_penyi` int(10) NOT NULL AUTO_INCREMENT,
  `penyi_sub_kode` varchar(100) NOT NULL,
  `penyi_sub_nama` varchar(200) NOT NULL,
  `penyi_sub_mulai` date NOT NULL,
  `penyi_sub_selesai` date NOT NULL,
  `penyi_sub_deskripsi` text NOT NULL,
  `id_penyiapan` int(10) NOT NULL,
  `status_proses` int(10) NOT NULL DEFAULT '0',
  `status_kunci` int(10) NOT NULL DEFAULT '0',
  `owner` int(10) NOT NULL,
  PRIMARY KEY (`id_sub_penyi`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tbl_sub_penyiapan`
--

INSERT INTO `tbl_sub_penyiapan` (`id_sub_penyi`, `penyi_sub_kode`, `penyi_sub_nama`, `penyi_sub_mulai`, `penyi_sub_selesai`, `penyi_sub_deskripsi`, `id_penyiapan`, `status_proses`, `status_kunci`, `owner`) VALUES
(1, '1', 'Persiapan Tukang Kayu', '2013-10-01', '2013-10-03', 'Mempersiapkan tukang-tukang kayu untuk mempeljari konstruksi bangunan', 1, 0, 0, 13),
(2, '2', 'Persiapan Arsitektur', '2013-10-13', '2013-10-22', 'Arsitektur mempersiapkan denah arsiteknya untuk membangun koperasi desa', 1, 0, 0, 13),
(3, '3', 'Persiapan Konsumsi Tukang', '2013-10-17', '2013-10-19', 'Konsumsi tukang', 1, 0, 0, 13),
(4, '4', 'Pembinaan 1 - Kop.Aktif', '2013-10-21', '2013-10-22', 'Sub Pembinaan 1', 3, 0, 0, 13),
(5, '5', 'Sub Pembinaan KSP ', '2013-10-21', '2013-10-22', 'KSP 2', 3, 0, 0, 13),
(6, '6', 'baju dengan harga 500000', '2013-10-24', '2013-10-24', 'oke', 6, 0, 0, 13),
(7, '7', 'beli baju hitam', '2013-10-25', '2013-10-25', 'okeee', 6, 0, 0, 13),
(8, '8', 'Membuat Template Kontent SIM', '2013-12-21', '2013-12-22', 'konten sim', 8, 0, 0, 13),
(9, '9', 'Membuat Template Sidebar SIM', '2013-12-22', '2013-12-23', 'sidebar', 8, 0, 0, 13),
(10, '10', 'Sayur Kangkung', '2013-12-23', '2013-12-23', 'sayur kangkung enak', 10, 0, 0, 13);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id_user` int(100) NOT NULL AUTO_INCREMENT,
  `id_seksi` int(30) NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `blokir` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `id_jab` int(10) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=20 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `id_seksi`, `username`, `password`, `nama_lengkap`, `email`, `no_telp`, `blokir`, `id_jab`) VALUES
(1, 10, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'ST. Asma Hamid', 'rizal_fzl@yahoo.com', '', 'N', 1),
(3, 10, 'kadin', '1b5cd66e42cb5019a2a88bd499dc7031', 'Gunawan Tri Atmadja', 'kd@gmail.com', '12345678', 'N', 2),
(4, 10, 'kabidkumkm', '1619d1a14776ac5d29dfe6e7dda220f2', 'Ahmad Udin	', '', '', 'N', 3),
(5, 3, 'kabidindustri', '2a86a5322275b699ccd3a4a5b47a7157', 'Suhartono', 'suhartono@gmail.com', '9400039909100', 'N', 5),
(6, 10, 'kabidperdag', 'c730f4203c9f179c05c72ec8f89b00b2', 'Karunia Sari	', '', '', 'N', 5),
(7, 1, 'kasikelembagaan', '3a4ee9e3ab8f71ac38eb93833a0518fc', 'Bambang Tri Admajda	', '', '', 'N', 6),
(8, 2, 'kasikop', '2b5f2ff5731290e5b043fccf0421dee8', 'Gencar Sugianto	', '', '', 'N', 7),
(9, 3, 'kasiumkm', '0b416691811d4bc043f486ac0fd85b31', 'Rahardiansyah Suprapto	', '', '', 'N', 8),
(10, 7, 'kasipdn', 'b380a637fd40a5761bd6c22f5b08f67c', 'Suprapto Wicaksono	', '', '', 'N', 9),
(11, 7, 'stafpdn', 'a9fe573c1dd8cb51df6e47ebdd6dc656', 'Tiari Kumalawati	', '', '', 'Y', 13),
(12, 1, 'stafkelembagaan', 'aa63826773e52dfcd90efd294f6354bb', 'Sutadi', '', '', 'Y', 10),
(13, 2, 'stafkop', '0f91b08686d229e3697184991eadf435', 'Juwadi', 'juwadi@gmail.com', '086755362783', 'N', 11),
(14, 3, 'stafumkm', '417acffa2c341554b73464b0c4877a82', 'GELIS YONARDIAN	', 'gelis@gmail.com', '+675536188811', 'Y', 12),
(19, 2, 'stafkop2', 'e8e4471013bfc1d2132b920dc5bd22e3', 'Surti Binti Abu Bakar', 'surti@gmail.com', '181991919991999', 'N', 11);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
