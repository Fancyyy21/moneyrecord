-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2023 at 10:28 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `money_record`
--

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id_history` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_masterpengeluaran` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `total` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `created_at` varchar(50) NOT NULL,
  `updated_at` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id_history`, `id_user`, `id_masterpengeluaran`, `type`, `date`, `total`, `details`, `created_at`, `updated_at`) VALUES
(37, 5, 6, 'Pengeluaran', '2023-01-16', '30000.0', '[{\"name\":\"jajan\",\"price\":\"30000\",\"income\":\"50000\"}]', '2023-01-16 19:20:06', '2023-01-16T19:20:05.382376'),
(38, 5, 6, 'Pemasukan', '2023-01-17', '35000.0', '[{\"name\":\"Jualan\",\"price\":\"35000\",\"income\":\"50000\"}]', '2023-01-17 20:12:08', '2023-01-17T20:12:07.946435'),
(40, 5, 6, 'Pemasukan', '2023-02-04', '1000000.0', '[{\"name\":\"Orangtua\",\"price\":\"1000000\",\"income\":\"99999999\"}]', '2023-02-04 11:37:14', '2023-02-04T11:37:13.826484'),
(42, 5, 6, 'Pemasukan', '2023-02-04', '500000.0', '[{\"name\":\"Pacar\",\"price\":\"500000\",\"income\":\"99999999999\"}]', '2023-02-04 11:37:57', '2023-02-04T11:37:56.473437'),
(43, 5, 6, 'Pengeluaran', '2023-02-04', '10000.0', '[{\"name\":\"Bakso\",\"price\":\"10000\",\"income\":\"999999\"}]', '2023-02-04 11:40:49', '2023-02-04T11:40:48.384320'),
(44, 5, 6, 'Pengeluaran', '2023-02-04', '27000.0', '[{\"name\":\"Mie Ayam\",\"price\":\"15000\",\"income\":\"99999\"},{\"name\":\"Mie Yamso\",\"price\":\"12000\",\"income\":\"999999\"}]', '2023-02-04 11:41:27', '2023-02-04T11:41:26.968143'),
(46, 7, 6, 'Pemasukan', '2023-02-01', '1000000.0', '[{\"name\":\"Orang Tua\",\"price\":\"1000000\",\"income\":\"99999999\"}]', '2023-02-05 22:41:41', '2023-02-05T22:41:41.030730'),
(47, 7, 6, 'Pengeluaran', '2023-02-02', '24000.0', '[{\"name\":\"Bakso\",\"price\":\"10000\",\"income\":\"99999\"},{\"name\":\"Mie Goreng\",\"price\":\"14000\",\"income\":\"999999\"}]', '2023-02-05 22:42:20', '2023-02-05T22:42:19.256678'),
(48, 7, 6, 'Pengeluaran', '2023-02-05', '50000.0', '[{\"name\":\"Nasi Goreng\",\"price\":\"50000\",\"income\":\"999999\"}]', '2023-02-05 22:44:17', '2023-02-05T22:44:17.030762'),
(49, 7, 6, 'Pengeluaran', '2023-02-04', '40000.0', '[{\"name\":\"Seblak\",\"price\":\"40000\",\"income\":\"99999\"}]', '2023-02-05 22:44:40', '2023-02-05T22:44:39.807811'),
(50, 8, 6, 'Pemasukan', '2023-02-01', '1000000.0', '[{\"name\":\"Orang Tua\",\"price\":\"1000000\",\"income\":\"9999999\"}]', '2023-02-05 22:50:20', '2023-02-05T22:50:19.370233'),
(51, 8, 6, 'Pengeluaran', '2023-02-04', '10000.0', '[{\"name\":\"Bakso\",\"price\":\"10000\",\"income\":\"99999\"}]', '2023-02-05 22:50:44', '2023-02-05T22:50:43.451120'),
(57, 8, 6, 'Pengeluaran', '2023-02-05', '515000.0', '[{\"name\":\"Sepatu\",\"price\":\"500000\",\"income\":\"99999999\"},{\"name\":\"bakso\",\"price\":\"15000\"}]', '2023-02-05 23:00:13', '2023-02-05T23:01:29.853899'),
(58, 8, 6, 'Pengeluaran', '2023-02-06', '64000.0', '[{\"name\":\"Indomie 1 Dus\",\"price\":\"50000\",\"income\":\"99999\"},{\"name\":\"seblak\",\"price\":\"14000\"}]', '2023-02-05 23:42:23', '2023-02-06T00:16:00.123084'),
(59, 9, 6, 'Pemasukan', '2023-02-01', '2000000.0', '[{\"name\":\"Orang Tua\",\"price\":\"2000000\",\"income\":\"9999999\"}]', '2023-02-06 00:18:37', '2023-02-06T00:18:36.509423'),
(60, 9, 6, 'Pengeluaran', '2023-02-05', '600000.0', '[{\"name\":\"Baju Adidas\",\"price\":\"600000\",\"income\":\"999999\"}]', '2023-02-06 00:19:07', '2023-02-06T00:19:07.278648'),
(61, 9, 6, 'Pengeluaran', '2023-02-06', '69000.0', '[{\"name\":\"Bakso Raksasa\",\"price\":\"44000\",\"income\":\"9999999\"},{\"name\":\"Mie Ayam Bakso\",\"price\":\"25000\"}]', '2023-02-06 00:20:01', '2023-02-06T00:21:19.971805'),
(62, 9, 6, 'Pemasukan', '2023-02-06', '500000.0', '[{\"name\":\"Orang Tua\",\"price\":\"500000\",\"income\":\"9999999\"}]', '2023-02-06 00:20:26', '2023-02-06T00:20:25.661034'),
(63, 10, 6, 'Pemasukan', '2023-02-01', '1500000.0', '[{\"name\":\"Orang Tua\",\"price\":\"1000000\",\"income\":\"99999999\"},{\"name\":\"Nenek\",\"price\":\"500000\",\"income\":\"999999\"}]', '2023-02-06 13:15:28', '2023-02-06T13:15:27.749770'),
(64, 10, 6, 'Pengeluaran', '2023-02-06', '43000.0', '[{\"name\":\"Bakso\",\"price\":\"15000\",\"income\":\"999999\"},{\"name\":\"Nasi Goreng\",\"price\":\"14000\"},{\"name\":\"Mie Goreng \",\"price\":\"14000\"}]', '2023-02-06 13:17:55', '2023-02-06T13:25:33.113510'),
(65, 10, 6, 'Pemasukan', '2023-02-06', '20000.0', '[{\"name\":\"Kakek\",\"price\":\"20000\",\"income\":\"999999\"}]', '2023-02-06 13:18:45', '2023-02-06T13:18:45.046392'),
(66, 10, 6, 'Pengeluaran', '2023-02-05', '12000.0', '[{\"name\":\"Mie Ayam\",\"price\":\"12000\",\"income\":\"999999\"}]', '2023-02-06 13:24:33', '2023-02-06T13:24:32.436813'),
(67, 10, 6, 'Pemasukan', '2023-02-07', '1000000.0', '[{\"name\":\"Orang Tua\",\"price\":\"1000000\",\"income\":\"99999999\"}]', '2023-02-07 11:53:47', '2023-02-07T11:53:41.133428'),
(68, 9, 6, 'Pemasukan', '2023-02-08', '400000.0', '[{\"name\":\"OrangTua\",\"price\":\"400000\",\"income\":\"999999\"}]', '2023-02-08 15:12:03', '2023-02-08T15:11:57.033299'),
(69, 9, 6, 'Pemasukan', '2023-02-09', '9000.0', '[{\"name\":\"Orang Tua\",\"price\":\"9000\",\"income\":\"99999\"}]', '2023-02-09 14:08:12', '2023-02-09T14:08:07.812808'),
(70, 9, 6, 'Pemasukan', '2023-02-09', '20000.0', '[{\"name\":\"Orang Tua\",\"price\":\"9000\",\"income\":\"99999\"},{\"name\":\"bakso\",\"price\":\"11000\"}]', '2023-02-09 15:11:58', '2023-02-09T15:22:47.315022'),
(84, 14, 6, 'Pemasukan', '2023-02-18', '99.0', '[{\"name\":\"asaaaa\",\"price\":\"99\",\"income\":\"99999\"}]', '2023-02-18 15:42:55', '2023-02-18T15:42:50.306847'),
(85, 15, 6, 'Pemasukan', '2023-03-11', '1000000.0', '[{\"name\":\"orangtua\",\"price\":\"1000000\",\"income\":\"99999999999\"}]', '2023-03-11 21:52:20', '2023-03-11T21:52:19.778979'),
(86, 15, 6, 'Pemasukan', '2023-03-11', '12000.0', '[{\"name\":\"mie ayam\",\"price\":\"12000\",\"income\":\"9999999\"}]', '2023-03-11 21:53:03', '2023-03-11T21:53:02.328157'),
(87, 15, 6, 'Pemasukan', '2023-03-11', '14000.0', '[{\"name\":\"mie bakso\",\"price\":\"14000\",\"income\":\"99999999\"}]', '2023-03-11 21:53:19', '2023-03-11T21:53:18.114429'),
(89, 15, 6, 'Pemasukan', '2023-03-11', '30000.0', '[{\"name\":\"bakso\",\"price\":\"30000\",\"income\":\"999999999\"}]', '2023-03-11 21:55:26', '2023-03-11T21:55:25.552190'),
(90, 16, 6, 'Pemasukan', '2023-03-11', '800000.0', '[{\"name\":\"Orang Tua\",\"price\":\"800000\",\"income\":\"999999999999\"}]', '2023-03-11 22:16:42', '2023-03-11T22:16:34.788252'),
(91, 16, 6, 'Pengeluaran', '2023-03-11', '14000.0', '[{\"name\":\"mie ayam\",\"price\":\"14000\",\"income\":\"9999999\"}]', '2023-03-11 22:16:58', '2023-03-11T22:16:51.162715'),
(92, 16, 6, 'Pengeluaran', '2023-03-11', '12000.0', '[{\"name\":\"mie bakso\",\"price\":\"12000\",\"income\":\"999999999999\"}]', '2023-03-11 22:17:21', '2023-03-11T22:17:13.977652');

-- --------------------------------------------------------

--
-- Table structure for table `tb_masterpengeluaran`
--

CREATE TABLE `tb_masterpengeluaran` (
  `id` int(11) NOT NULL,
  `detail` varchar(211) NOT NULL,
  `max_harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_masterpengeluaran`
--

INSERT INTO `tb_masterpengeluaran` (`id`, `detail`, `max_harga`) VALUES
(6, 'Jualan', 100000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` varchar(50) NOT NULL,
  `updated_at` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '202cb962ac59075b964b07152d234b70', '2022-01-09 02:17:44', '2022-01-09 02:17:44'),
(5, 'adrian', 'adrian@gmail.com', '202cb962ac59075b964b07152d234b70', '2022-12-28T09:59:38.938733', '2022-12-28T09:59:38.939686'),
(8, 'nurdiana', 'nurdiana@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-02-05T22:47:36.906571', '2023-02-05T22:47:36.906654'),
(9, 'maulana123', 'maulana123@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-02-06T00:17:05.821753', '2023-02-06T00:17:05.822031'),
(10, 'maulana11', 'maulana11@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-02-06T13:06:53.856470', '2023-02-06T13:06:53.975825'),
(11, 'maulana11', 'maulana22@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-02-06T13:07:45.803403', '2023-02-06T13:07:45.803454'),
(12, 'userbaru', 'userbaru123@gmail.com', '3f16c0cbd923b5c887e011a2680da041', '2023-02-07T19:32:43.991489', '2023-02-07T19:32:43.998372'),
(13, 'abc', 'abc@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-02-09T15:23:32.258901', '2023-02-09T15:23:32.258986'),
(14, 'aa', 'aa@gmail.com', '4124bc0a9335c27f086f24ba207a4912', '2023-02-18T15:06:41.108122', '2023-02-18T15:06:41.108435'),
(15, 'initesting', 'initesting@gmail.com', '480fd95f51b261f620b7bc293520155a', '2023-03-11T21:51:35.492957', '2023-03-11T21:51:35.507672'),
(16, 'testingaja', 'testing123@gmail.com', '7f2ababa423061c509f4923dd04b6cf1', '2023-03-11T22:15:56.813944', '2023-03-11T22:15:56.814004');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id_history`),
  ADD KEY `id_masterpengeluaran` (`id_masterpengeluaran`);

--
-- Indexes for table `tb_masterpengeluaran`
--
ALTER TABLE `tb_masterpengeluaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id_history` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `tb_masterpengeluaran`
--
ALTER TABLE `tb_masterpengeluaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `history_ibfk_1` FOREIGN KEY (`id_masterpengeluaran`) REFERENCES `tb_masterpengeluaran` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
