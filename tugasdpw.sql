-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2020 at 06:49 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dpw_muhfizd`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `nama_kategori` varchar(255) DEFAULT NULL,
  `jumlah_barang` int(225) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `id_user`, `nama_kategori`, `jumlah_barang`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 1, 'sepatu', NULL, 'sepatu anak anak, orang tua, olahraga dan lainnya', '2020-11-23 00:56:53', '2020-11-23 00:56:53'),
(3, 25, 'helm', 500, 'anti air', '2020-11-27 13:00:05', '2020-11-27 13:00:05');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `nama_produk` varchar(255) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `berat` int(11) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `id_user`, `id_kategori`, `nama_produk`, `harga`, `berat`, `deskripsi`, `stok`, `created_at`, `updated_at`) VALUES
(23, 1, NULL, 'Kredit Motor Kawasaki Vulcan S - Jabodetabek', 45000000, 1000, 'Deskripsi Kredit Motor Kawasaki Vulcan S - Jabodetabek\r\nMENGKUDU MOTOR – JABODETABEK ( SOLUSI , MUDAH , MURAH , CEPAT , DIJAMIN ACC )\r\n\r\n*** CASH & KREDIT 100% Motor BARU ***\r\n*** HARGA YG TERTERA ADALAH DP LEASING ( BUKAN HARGA OTR UNIT MOTOR )\r\n*** DP UNIT TIDAK DIBAYARKAN SECARA ONLINE\r\n*** DP UNIT DIBAYAR PADA SAAT SERAH TERIMA UNIT MOTOR ( SETELAH PO LEASING DI ACC ) UNIT LANGSUNG DIKIRIM ( KONSUMEN DUDUK MANIS AJA..!!! )\r\n*** MAAF KAMI HANYA MELAYANI AREA JABODETABEK ***\r\n### PEMBELIAN SECARA CASH BISA DIBAYARKAN KE SHOWROOM/DEALER ###\r\n\r\nMUDAH :\r\nPersyaratan cukup Copy atau Foto : KTP & KK bisa dikirim via Whatsapp , dan pembayaran DP bisa ke Showroom kami atau pada saat terima Motor “ COD “ Cash On Delivery ( tergantung perjanjian )\r\nMURAH :\r\nDengan membeli motor YAMAHA , HONDA dan KAWASAKI melalui showroom kami, free ( gratis ) ongkos kirim dan juga gratis biaya surat surat kendaraan ( diluar Pajak Progresif jika ada )\r\nCEPAT / FAST RESPON : 082111222071 ( Proses Pemesanan )\r\nProses pemesanan motor YAMAHA , HONDA dan KAWASAKI melalui Showroom kami , akan langsung Direspon dan Diproses kurang dari 24 Jam. ( Leasing by : WOM , BAF , FIF , ADIRA , OTO )\r\nSOLUSI :\r\nKami akan memberikan solusi TERBAIK jika Permohonan Kredit Anda penah DITOLAK / RIJECT oleh Leasing ( Kami akan bantu s/d ACC dan Turun PO Leasing )\r\nHP/WA : 082-111-222-071 ( Untuk Proses Pemesanan )\r\n\r\n*** KAMI TIDAK MEMBERIKAN IMING-2 DP MURAH TAPI TIDAK DI ACC LEASING ATAU UJUNG2NYA DIMINTA TAMBAH DP ( DOWN PAYMENT )..!!!\r\n*** DP MURAH TAPI DATA TIDAK DIBANTU MAKSIMAL…UNTUK APA ??? HANYA KASIH PHP KE KONSUMEN…!!!\r\n*** IMING2 DP MURAH HANYA MENJEBAK KONSUMEN , HARUS AMBIL 35 BLN DAN RUMAH GAK BOLEH NGONTRAK ( HRS MILIK SENDIRI ) UJUNG2 NYA MINTA NAIK DP , KRN LEASING GAK BISA ACC ( Konsumen yg Dirugikan , Kerja Dua Kali )\r\n*** Unit Motor dikirm langsung Via Dealer Resmi (COD)\r\n*** Harga yg Tertera Diatas adalah DP Sistem ( DP LEASING )\r\n*** CASH ON DELIVERY ( COD ) Terima UNIT Bayar di Tempat ( No Tipu2 )\r\nTerimakasih : “ MENGKUDU MOTOR “', 5, '2020-11-23 01:35:52', '2020-11-23 01:35:52'),
(24, 1, NULL, 'Kredit Motor Kawasaki ER6N ABS ( VIN 2015 ) - Jabodetabek', 40000000, 2000, 'Deskripsi Kredit Motor Kawasaki ER6N ABS ( VIN 2015 ) - Jabodetabek\r\nMENGKUDU MOTOR – JABODETABEK ( SOLUSI , MUDAH , MURAH , CEPAT , DIJAMIN ACC ) CASH ON DELIVERY ( COD )\r\n\r\n*** CASH & KREDIT 100% Motor BARU ***\r\n*** COD (CASH ON DELIVERY) TERIMA UNIT BAYAR DI TEMPAT ***\r\n*** HARGA YG TERTERA ADALAH DP LEASING ( BUKAN HARGA OTR UNIT MOTOR )\r\n*** DP UNIT TIDAK DIBAYARKAN SECARA ONLINE\r\n*** DP UNIT DIBAYAR PADA SAAT SERAH TERIMA UNIT MOTOR ( SETELAH PO LEASING DI ACC ) UNIT LANGSUNG DIKIRIM ( KONSUMEN DUDUK MANIS AJA..!!! )\r\n### PEMBELIAN SECARA CASH BISA DIBAYARKAN KE SHOWROOM/DEALER ###\r\n\r\nMUDAH :\r\nPersyaratan cukup Copy atau Foto : KTP & KK bisa dikirim via Whatsapp , dan pembayaran DP bisa ke Showroom kami atau pada saat terima Motor “ COD “ Cash On Delivery ( tergantung perjanjian )\r\n\r\nMURAH :\r\nDengan membeli motor YAMAHA , HONDA dan KAWASAKI melalui showroom kami, free ( gratis ) ongkos kirim dan juga gratis biaya surat surat kendaraan ( diluar Pajak Progresif jika ada )\r\n\r\nCEPAT / FAST RESPON : 082111222071 ( Proses Pemesanan )\r\nProses pemesanan motor YAMAHA , HONDA dan KAWASAKI melalui Showroom kami , akan langsung Direspon dan Diproses kurang dari 24 Jam. ( Leasing by : WOM , BAF , FIF , ADIRA , OTO )\r\n\r\nSOLUSI :\r\nKami akan memberikan solusi TERBAIK jika Permohonan Kredit Anda penah DITOLAK / RIJECT oleh Leasing ( Kami akan bantu s/d ACC dan Turun PO Leasing )\r\nHP/WA : 082-111-222-071 ( Untuk Proses Pemesanan )\r\n\r\n*** KAMI TIDAK MEMBERIKAN IMING-2 DP MURAH TAPI TIDAK DI ACC LEASING ATAU UJUNG2NYA DIMINTA TAMBAH DP ( DOWN PAYMENT )..!!!\r\n*** “ DP MURAH “ TAPI DATA TIDAK DIBANTU MAKSIMAL…UNTUK APA ??? HANYA KASIH PHP KE KONSUMEN…!!!\r\n\r\n*** Unit Motor dikirm langsung Via Dealer Resmi (COD)\r\n*** Harga yg Tertera Diatas adalah DP Sistem ( DP LEASING )\r\n*** CASH ON DELIVERY ( COD ) Terima UNIT Bayar di Tempat ( No Tipu2 )\r\nTerimakasih : “ MENGKUDU MOTOR “', 9, '2020-11-23 01:36:33', '2020-11-23 01:36:33'),
(25, 1, NULL, 'Motor Moge Suzuki Burgman Skywave 250cc 2001 Built Up KM rendah surat', 34999999, 3000, 'Deskripsi Motor Moge Suzuki Burgman Skywave 250cc 2001 Built Up KM rendah surat\r\nSuzuki Skywave 250cc 2001.\r\nPemakaian biasa, ada lecet penggunaan, jarang dipakai.\r\nMesin bagus perawatan rutin, terakhir perawatan besar belum ada 1 minggu yang lalu.\r\nJangan bandingkan dengan NMAX ya, kalau disejajarin NMAX jauh banget.\r\nBaik dimensi maupun kenyamanan berkendara, ini panjang total 2.2 meter.\r\n\r\nKonsumsi dalkot 1:25\r\nKonsumsi turing 1:30\r\n\r\nKM 58rb\r\nTidak ada PR.\r\nSpedomater jalan\r\nJam digital jalan.\r\nIndikator2 jalan.\r\nTombol2 berfungsi semuanya.\r\nRadiator adem\r\nAki normal kelistrikan normal\r\nLampu2 normal sebagian baru diganti meskipun tidak mati\r\n\r\nSTNK + BPKB lengkap.\r\nPinjam KTP bisa 1x.', 14, '2020-11-23 01:37:13', '2020-11-23 01:37:13'),
(26, 1, NULL, 'Motor Yamaha XSR155 - Khusus Tangerang, Jakarta, Banten - Perak', 32280000, 5000, 'Deskripsi Motor Yamaha XSR155 - Khusus Tangerang, Jakarta, Banten - Perak\r\nNikmati promo cicilan 0% untuk pembayaran dengan Kartu Kredit di Tokopedia.\r\nTerdapat Cicilan 0% untuk 6,12 atau 24 bulan untuk pembayaran dengan Kartu Kredit.\r\nKetentuan cicilan 0% bisa dilihat di https://www.tokopedia.com/bantuan/syarat-dan-ketentuan-pembayaran-dengan-sistem-cicilan/\r\n\r\n- Setelah pembayaran di tokopedia, kami akan mengirimkan kuitansi pembayaran dengan kurir.\r\n- Motor akan dikirim dengan mobil delivery dealer dan bebas biaya kirim untuk seluruh wilayah Tangerang, sebagian wilayah Jakarta, & sebagian wilayah Banten.\r\n- Wilayah pengiriman motor: Jakarta, Tangerang, Banten, Depok.\r\n- Proses STNK BPKB hanya untuk KTP Jakarta, Tangerang, Banten, Depok, Bekasi.\r\n- Harga belum termasuk pajak progresif untuk kendaraan ke-2 dst.\r\n- Stnk dikirim menggunakan jasa kurir ke alamat yang tertera di Tokopedia\r\n\r\nUntuk KTP Banten (Serang, Cilegon, dll) ada perbedaan harga OTR, lebih mahal Rp 350.000,-\r\nUntuk KTP Jakarta, Depok, Belum termasuk pajak progresif kendaraan ke-2 dst\r\n\r\nYamaha Kerta Jaya adalah dealer resmi Yamaha Premium R-Shop.\r\nKunjungi juga kami di yamahakertajaya.com\r\n\r\n- Proses pengurusan STNK 7-21 hari kerja, tergantung wilayah.\r\n- Proses pengurusan BPKB 2-3 bulan.\r\n- BPKB diambil sendiri di dealer. Jika diwakilkan wajib menggunakan surat kuasa\r\n- Motor bisa diservice di seluruh bengkel resmi Yamaha di Indonesia.\r\n\r\n- Garansi 5 Tahun khusus Forged Piston, Diasil Silinder, FI system\r\n- Garansi 3 tahun untuk Mesin\r\n- Garansi 2 tahun untuk Kelistrikan khusus\r\n- Garansi 1 tahun untuk komponen umum\r\nKetentuan Garansi harap mengikuti petunjuk di Buku Garansi.', 16, '2020-11-23 01:48:48', '2020-11-23 01:48:48'),
(27, 1, NULL, 'Special Edition S2 Concept Yamaha MT-07 Original Import', 33122000, 700, 'Deskripsi Special Edition S2 Concept Yamaha MT-07 Original Import\r\n\r\n\r\n\r\nFitment model = [YAMAHA::MT-07]\r\n\r\nMerk = S2 Concept\r\nCode = MT70_Limited_Edition\r\nSKU = 23912286', 47, '2020-11-23 01:49:58', '2020-11-23 01:49:58'),
(28, 25, NULL, 'Helm AGV fullface 1000', 20000000, 200, 'murah sekali', 1000, '2020-11-26 08:50:20', '2020-11-26 08:50:20'),
(29, 25, NULL, 'Helm SHOEI 2XT', 12000000, 250, 'Aawet', 1500, '2020-11-26 09:01:24', '2020-11-26 09:01:24'),
(30, 24, NULL, 'glove baja', 10000, 12, 'auk am', 90, '2020-11-26 09:34:24', '2020-11-26 09:34:24'),
(31, 24, NULL, 'glove plastik', 200000000, 23, 'kdhaksdhakjshdkhaskfkasjjdo', 100, '2020-11-27 10:08:07', '2020-11-27 10:08:07'),
(32, 25, NULL, 'kacamata google', 200000, 12, 'plak bapak', 100, '2020-11-27 12:54:43', '2020-11-27 12:54:43'),
(33, 25, NULL, 'visor hem', 350000, 2, 'warna warni', 50, '2020-11-27 12:59:12', '2020-11-27 12:59:12');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `nama`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(24, 'kecil', 'budi@gmail.com', 'budi', '$2y$10$oZxy.cuHlbOPtmQTeL1WKOhWa8oS.yy/zLeez5l0UscpECMIIjgeW', NULL, '2020-11-26 08:09:27', '2020-11-26 08:09:27'),
(25, 'bahlol', 'bahlol@gmail.com', 'bahlol', '$2y$10$zqdctVo14I73jc.hn2bzJuQLM.27umCnVmYGPhXGu8JIoAixOHFY2', NULL, '2020-11-27 09:53:56', '2020-11-27 09:53:56');

-- --------------------------------------------------------

--
-- Table structure for table `user_detail`
--

CREATE TABLE `user_detail` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `no_handphone` varchar(15) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_detail`
--

INSERT INTO `user_detail` (`id`, `id_user`, `no_handphone`, `created_at`, `updated_at`) VALUES
(7, 22, NULL, '2020-11-26 03:16:02', '2020-11-26 03:16:02'),
(8, 23, NULL, '2020-11-26 08:07:05', '2020-11-26 08:07:05'),
(9, 24, '+620898778978', '2020-11-26 08:09:27', '2020-11-26 08:09:27'),
(10, 25, '+620897886566', '2020-11-27 09:53:56', '2020-11-27 09:53:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_detail`
--
ALTER TABLE `user_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user_detail`
--
ALTER TABLE `user_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
