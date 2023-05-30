-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 30, 2023 at 07:46 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci_rest_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `created_at`, `updated_at`) VALUES
(1, 'CODEIGNITER REST API', 'Momo Baruno', '2015-12-26 09:17:14', '2015-12-26 09:17:14'),
(3, 'sasuke', 'uzumaki', '2023-05-30 08:31:33', '2023-05-30 08:31:33'),
(4, 'CODEIGNITER REST API', 'Momo Baruno', '2023-05-30 08:40:49', '2023-05-30 08:40:49'),
(6, 'sakura', 'uzumaki', '2023-05-30 09:25:16', '2023-05-30 09:25:16'),
(7, 'New Title', 'New Author', '2023-05-30 10:56:53', '2023-05-30 10:56:53'),
(8, 'New Title', 'New Author', '2023-05-30 10:56:55', '2023-05-30 10:56:55'),
(9, 'New Title', 'New Author', '2023-05-30 10:57:09', '2023-05-30 10:57:09'),
(10, 'New Title', 'New Author', '2023-05-30 11:03:19', '2023-05-30 11:03:19'),
(11, 'New Title 1', 'New Author 1', '2023-05-30 11:03:50', '2023-05-30 11:03:50'),
(12, 'DUC', 'DUCK', '2023-05-30 11:07:57', '2023-05-30 11:07:57'),
(13, 'DUC', 'DUCK', '2023-05-30 11:11:14', '2023-05-30 11:11:14'),
(14, 'DUC', 'DUCK', '2023-05-30 11:12:19', '2023-05-30 11:12:19'),
(15, '123', '123', '2023-05-30 11:15:00', '2023-05-30 11:15:00'),
(16, '123', '123', '2023-05-30 11:15:46', '2023-05-30 11:15:46'),
(17, '123', '123', '2023-05-30 11:15:48', '2023-05-30 11:15:48'),
(18, '123', '123', '2023-05-30 11:15:48', '2023-05-30 11:15:48'),
(19, '123', '123', '2023-05-30 11:15:52', '2023-05-30 11:15:52'),
(20, '123', '123', '2023-05-30 11:16:02', '2023-05-30 11:16:02'),
(21, '123', '123', '2023-05-30 11:16:04', '2023-05-30 11:16:04'),
(22, '123', '123', '2023-05-30 11:16:04', '2023-05-30 11:16:04'),
(23, '123', '123', '2023-05-30 11:16:04', '2023-05-30 11:16:04'),
(24, '123', '123', '2023-05-30 11:16:14', '2023-05-30 11:16:14'),
(25, '123', '123', '2023-05-30 11:17:10', '2023-05-30 11:17:10'),
(26, '123', '123', '2023-05-30 11:17:34', '2023-05-30 11:17:34'),
(29, '123', '123', '2023-05-30 11:24:03', '2023-05-30 11:24:03'),
(30, '123', '123', '2023-05-30 11:24:14', '2023-05-30 11:24:14'),
(31, '123', '123', '2023-05-30 11:24:50', '2023-05-30 11:24:50'),
(32, '234', '123', '2023-05-30 12:09:17', '2023-05-30 12:09:17'),
(33, 'songvedem', 'hoangduc', '2023-05-30 12:31:39', '2023-05-30 12:31:39'),
(34, '13123asd', '12313asd', '2023-05-30 12:32:20', '2023-05-30 12:32:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `last_login` datetime NOT NULL DEFAULT current_timestamp(),
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `last_login`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$1$Dtqyvz7/$wZSaZbfHgn0UbLlVi1HHp0', 'Admin', '2023-05-30 11:03:11', '2015-12-25 10:35:16', '2015-12-25 10:35:16');

-- --------------------------------------------------------

--
-- Table structure for table `users_authentication`
--

CREATE TABLE `users_authentication` (
  `id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expired_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users_authentication`
--

INSERT INTO `users_authentication` (`id`, `users_id`, `token`, `expired_at`, `created_at`, `updated_at`) VALUES
(1, 1, '$1$6fjNSBRR$7lx.mxo/q1LbNO7f5.7w8.', '2015-12-27 23:28:00', '2015-12-27 11:28:00', '2015-12-27 11:28:00'),
(2, 1, '$1$HY2H7rB0$2U.dlCsoHX21s/gvjCypG/', '2015-12-27 23:28:10', '2015-12-27 11:28:10', '2015-12-27 11:28:10'),
(4, 1, '$2y$10$MytTewRCXtgbA6wOo9aoduOWXMXA9cCyC6d5rbYKGtj6Hc6QOM7Ga', '2023-05-30 20:05:16', '2023-05-30 08:05:16', '2023-05-30 08:05:16'),
(5, 1, '$2y$10$UepIqXsYJdUu5nTnyZd2duZiZlpF6dKKif3IZNCIRdVA74horjTJK', '2023-05-30 20:05:58', '2023-05-30 08:05:58', '2023-05-30 08:05:58'),
(6, 1, '$2y$10$Q8VOrSsA6kw05m0nnV.EfOOWntcW5O9MYM8XVODvk.cD2g2xdEjNG', '2023-05-30 20:06:17', '2023-05-30 08:06:17', '2023-05-30 08:06:17'),
(7, 1, '$2y$10$ffh5X8fVDTogwatI7mOMi.310sIHRWApIswBn8GcIT7iZyKcVPThK', '2023-05-30 20:07:03', '2023-05-30 08:07:03', '2023-05-30 08:07:03'),
(9, 1, '$2y$10$T9HB.vIiDW8yJtNNC9bbPegN07lrqLIfKGBN4wGfHn3ei5x8LUPuq', '2023-05-30 21:23:18', '2023-05-30 09:23:18', '2023-05-30 09:23:18'),
(10, 1, '$2y$10$Xg7eQgqwMoBbTgNzh5U8x.39U2RYtMYNr.NQSue.cTSmcWG.rVSyy', '2023-05-30 21:25:16', '2023-05-30 09:24:24', '2023-05-30 09:25:16'),
(11, 1, '$2y$10$xVuEnTaTuaf8GRkgnIirYunB0Y8M00JYc1T1OKcE98acycKw8lJ16', '2023-05-30 22:05:01', '2023-05-30 10:05:01', '2023-05-30 10:05:01'),
(12, 1, '$2y$10$5nbL7ijQhGT6KbjX1QSMzOdGMDxi8jSXGeisUxSNaj0Crs5s3y6Dm', '2023-05-30 22:05:05', '2023-05-30 10:05:05', '2023-05-30 10:05:05'),
(13, 1, '$2y$10$6aHn6mBvsw0aB38l/PKYceVJWau6kl8j7dNsuZHL..bXp.eUiVkXa', '2023-05-30 22:05:06', '2023-05-30 10:05:06', '2023-05-30 10:05:06'),
(14, 1, '$2y$10$KByKuO3Vu/rpb.61FWI9auoAz3PesBkrTL04wKreWQF0.X/e6QLTu', '2023-05-30 22:05:06', '2023-05-30 10:05:06', '2023-05-30 10:05:06'),
(15, 1, '$2y$10$kg2pqZdDu58DM2UdgClZQOeHz0MBp9b049w0w9zD/glVTKfxWQUn2', '2023-05-30 22:05:07', '2023-05-30 10:05:07', '2023-05-30 10:05:07'),
(16, 1, '$2y$10$8CPmc0Axwmm1a1ce6I.oeOEYRlaDELJSRhGdiDM7f5wnLRhEgFl/y', '2023-05-30 22:05:07', '2023-05-30 10:05:07', '2023-05-30 10:05:07'),
(17, 1, '$2y$10$VwTWwgyTP1J/nW4ruQgssuOTsG/XPqnHFWZnOgf4155iUkE0Mr/QO', '2023-05-30 22:05:07', '2023-05-30 10:05:07', '2023-05-30 10:05:07'),
(18, 1, '$2y$10$il8GCIczHSkBYXBDVEzG.uTZEb/4IxVdewLrCWq35onpfysnaIuHi', '2023-05-30 22:05:19', '2023-05-30 10:05:19', '2023-05-30 10:05:19'),
(19, 1, '$2y$10$Vx5av5VagHT2tFX8yWaZ8OTqwIbFhIMdTZEeeeiHSWR1GSQboMF72', '2023-05-30 22:05:20', '2023-05-30 10:05:20', '2023-05-30 10:05:20'),
(20, 1, '$2y$10$8QZHztP7TDB6GaPUL1Px9ejeThpcoV9mHhkBSGkCma9EOdRg4Qk1O', '2023-05-30 22:05:20', '2023-05-30 10:05:20', '2023-05-30 10:05:20'),
(21, 1, '$2y$10$Z0jWyjkmFsB0p7NHxiqFpeSvkOzPPDmSa2DOl1jBrlAe2R2dc4Yty', '2023-05-30 22:05:20', '2023-05-30 10:05:20', '2023-05-30 10:05:20'),
(22, 1, '$2y$10$FdKrm3NezHf3dI.YX/i7seGXP1sYtPg7IBVklzacpNw6GRJzPgzhi', '2023-05-30 22:05:20', '2023-05-30 10:05:20', '2023-05-30 10:05:20'),
(23, 1, '$2y$10$SGELZAriDpS3aSZZnW8gt.Y0W9LC0hyp5a4e6eVvjUcHtQuUZQfsu', '2023-05-30 22:05:36', '2023-05-30 10:05:36', '2023-05-30 10:05:36'),
(24, 1, '$2y$10$nutnlIcZzXo/D.jSEKH4QuwlVb.BYJriRm1I7BXxQnurXjjeu9VZi', '2023-05-30 22:08:25', '2023-05-30 10:08:25', '2023-05-30 10:08:25'),
(25, 1, '$2y$10$j.8bvf4Ewbqdj9j.vsH1SeRWdgdVmagn31POpXilKjnKLGlJF4r..', '2023-05-30 22:08:37', '2023-05-30 10:08:37', '2023-05-30 10:08:37'),
(26, 1, '$2y$10$TcjnDB6FePCC2D/X3rn8Ye0cXAYcm8oOz6kHl0XXyRxjAQGK5zcmq', '2023-05-30 22:08:55', '2023-05-30 10:08:55', '2023-05-30 10:08:55'),
(27, 1, '$2y$10$W9Q.1R3bruJkmZNiqNjiN.b3q7xZ5.j3zp/DwUFfPJZgisv6W1ut6', '2023-05-30 22:09:14', '2023-05-30 10:09:14', '2023-05-30 10:09:14'),
(28, 1, '$2y$10$oaR4tgQTVUvi27EVHQugY.p6mOa.X6pwLHoqEPnYKzEweD6sHPPqy', '2023-05-30 22:09:15', '2023-05-30 10:09:15', '2023-05-30 10:09:15'),
(29, 1, '$2y$10$SS1CdsEIRRqk/t07InAideZC44MuUWwMgDDHVSlJE7kwBIVhxnzM6', '2023-05-30 22:09:15', '2023-05-30 10:09:15', '2023-05-30 10:09:15'),
(30, 1, '$2y$10$8JOZRKoGddlcIUMZOZoTq.kqXOgwXKHcJ24OwLAcjjke0UCa3Q4Tm', '2023-05-30 22:09:18', '2023-05-30 10:09:18', '2023-05-30 10:09:18'),
(31, 1, '$2y$10$n4nkhFqq8w/h5L5DFpS5cu9VPksP34fp7CXooIKHHe2Nl4Grn1auK', '2023-05-30 22:09:18', '2023-05-30 10:09:18', '2023-05-30 10:09:18'),
(32, 1, '$2y$10$HHh.FADKrUrH..16faJLC.J7x.jaXd4O6/bv3o0QJnN0ERnKRFzhK', '2023-05-30 22:09:18', '2023-05-30 10:09:18', '2023-05-30 10:09:18'),
(33, 1, '$2y$10$EiTsBskRF3GMuabYJjD5geHNXbvgV2EEmu5yeXjEi/tYAHfvW/TB2', '2023-05-30 22:09:21', '2023-05-30 10:09:21', '2023-05-30 10:09:21'),
(34, 1, '$2y$10$1TeTSLyHPXLIbs0oVFX01O0RJzZ2vkkOyc4ShgeitwvYTjD7oe5rK', '2023-05-30 22:15:05', '2023-05-30 10:15:05', '2023-05-30 10:15:05'),
(35, 1, '$2y$10$jAQByj5/48rG/ondslMUIueeoQwquCLCRXvi.8D6qyUwWdlhkwR3G', '2023-05-30 22:24:46', '2023-05-30 10:24:46', '2023-05-30 10:24:46'),
(36, 1, '$2y$10$0QQZtkipGRlVhkJLsLM.buXRfyiMeXffffrZb16uwwbKouoe8vDlO', '2023-05-30 22:25:04', '2023-05-30 10:25:04', '2023-05-30 10:25:04'),
(37, 1, '$2y$10$5Hfqg03JndbZcCefkkL/NupkQ0q7ggSEOaSIWzy5KqhshURmypF3y', '2023-05-30 22:27:47', '2023-05-30 10:27:47', '2023-05-30 10:27:47'),
(38, 1, '$2y$10$DKFqe5nWerbIvT/HBcXtZu8B4EqixCDo84PDkXroPagwy17PuMqn.', '2023-05-30 22:28:29', '2023-05-30 10:28:29', '2023-05-30 10:28:29'),
(39, 1, '$2y$10$vhdO6iL9r4M7RxMEtE7En.WAkgJSXJBoiGStkdwGZYItFdtvGYbj6', '2023-05-30 22:32:29', '2023-05-30 10:32:29', '2023-05-30 10:32:29'),
(40, 1, '$2y$10$EPFHCF1pHyMVikwc4mijL.5ZHXjkODmCHvFWIzr6H2KzwBfKdaozS', '2023-05-30 22:34:03', '2023-05-30 10:34:03', '2023-05-30 10:34:03'),
(41, 1, '$2y$10$R7sXWkLYhvGu2J8AbGZkFuWAhPzzZI2qkKYNqh.VwxzVgpMPkEzje', '2023-05-30 22:35:32', '2023-05-30 10:35:32', '2023-05-30 10:35:32'),
(42, 1, '$2y$10$n5Ug/awPfrjS6Pd6s8htbOe2acPrYKnFN/lUuyIe56CGL8QC0nIoq', '2023-05-30 22:36:25', '2023-05-30 10:36:25', '2023-05-30 10:36:25'),
(43, 1, '$2y$10$2rObVFb4u4hVe/6SmK1Q/.58w6NfMX80W/PzcTWPELRfnvMEQZkNS', '2023-05-30 22:36:56', '2023-05-30 10:36:56', '2023-05-30 10:36:56'),
(44, 1, '$2y$10$HeIsYLbfYAow6DPzRADVk.uLflBFVQG4u1b/cZhTu.kPvb14fZ3Ye', '2023-05-30 22:38:02', '2023-05-30 10:38:02', '2023-05-30 10:38:02'),
(45, 1, '$2y$10$ZvtsZL9f.f6iJxjtzuC7n./h755EnYu2Zfv08G8bn21KlK/2FIaJG', '2023-05-30 22:40:22', '2023-05-30 10:40:22', '2023-05-30 10:40:22'),
(46, 1, '$2y$10$xQ/pR03r2BxeJVO54xyGMeUJil7pb/z44NNYQcABqCusN4o223WxS', '2023-05-30 22:40:36', '2023-05-30 10:40:36', '2023-05-30 10:40:36'),
(47, 1, '$2y$10$8onWlGRKR3un54BVW12jbu/bYCyd66qQ8hup1autO/kgBpKWCS6VW', '2023-05-30 22:41:02', '2023-05-30 10:41:02', '2023-05-30 10:41:02'),
(48, 1, '$2y$10$pwvS3V9tTElydF1xvVY2e.4J8cxHp5vT8nP2O82Qx/ssxvaN1r7ve', '2023-05-30 22:42:33', '2023-05-30 10:42:33', '2023-05-30 10:42:33'),
(49, 1, '$2y$10$O9DKqpY0q4UiPL8A7N06lOwcHuuCo6coj5cOK5vjSQb76pSWgnupC', '2023-05-30 22:43:20', '2023-05-30 10:43:20', '2023-05-30 10:43:20'),
(50, 1, '$2y$10$.QTHLJ8thk6RIp96tEuD0OqC/iK2kJvjRy6DhxgPw74Uot8uZJMZC', '2023-05-30 22:44:05', '2023-05-30 10:44:05', '2023-05-30 10:44:05'),
(51, 1, '$2y$10$DNRFrRwgqLu8TWrJva9sjeMpI1Y78zk8VSn6qkceNIuEI/ZIhR23K', '2023-05-30 22:44:30', '2023-05-30 10:44:30', '2023-05-30 10:44:30'),
(52, 1, '$2y$10$S8xqdZDb3tGJ6dypdl5qH.4affgfxHPoHsmPqj7uQ7C3Ot.B3/Wvm', '2023-05-30 22:49:23', '2023-05-30 10:49:23', '2023-05-30 10:49:23'),
(53, 1, '$2y$10$3UgTgmSIuQRTynFLtViAwuPeYeMclnxnY4tvPxQRSghGoC4cJLkr6', '2023-05-30 22:50:24', '2023-05-30 10:50:24', '2023-05-30 10:50:24'),
(54, 1, '$2y$10$Qm71gEKPimts6zV38g.oSey173AaaSIOtexLp/VI7FsvrqQNSlSmy', '2023-05-30 22:50:33', '2023-05-30 10:50:33', '2023-05-30 10:50:33'),
(55, 1, '$2y$10$5b0ycC9zVV.jQFfo/j3qFetQowuumEDV4w.SsQjS2aEV4VLN.ultG', '2023-05-30 22:50:49', '2023-05-30 10:50:49', '2023-05-30 10:50:49'),
(56, 1, '$2y$10$ghFhJ8wbYrvK4Mw13s/9z.LvHYOlFwHnig0j3XvcYuEt4UWVwP2Em', '2023-05-30 22:51:21', '2023-05-30 10:51:15', '2023-05-30 10:51:21'),
(57, 1, '$2y$10$5JLlgAYW8NCs41fCO.aZ2OC9uoEayGaiOZFPPzsC3BPIdDOlIvEx6', '2023-05-30 22:55:12', '2023-05-30 10:55:12', '2023-05-30 10:55:12'),
(58, 1, '$2y$10$7uzKjU9G4kS77VhQYMFoFu.EKmkBgt2GkCPwyY7Ql3nuWkDrbBE7q', '2023-05-30 22:55:18', '2023-05-30 10:55:18', '2023-05-30 10:55:18'),
(59, 1, '$2y$10$9mY9RlSztgD2x3TvMFDpNePM41sysNJya5kT5kwwfWE7VhkXapBaW', '2023-05-30 22:55:19', '2023-05-30 10:55:19', '2023-05-30 10:55:19'),
(60, 1, '$2y$10$THOJfBgA6ZreiHc9i12l8etVSzPXNoomFTfVU7kJoUGrW7oMFEP0e', '2023-05-30 22:55:19', '2023-05-30 10:55:19', '2023-05-30 10:55:19'),
(61, 1, '$2y$10$D6r6F2Cr8MxtTQgKkkBYxOZRgyvhNEuWCZVIR9aKCkboZCVbnRw1e', '2023-05-30 22:55:20', '2023-05-30 10:55:20', '2023-05-30 10:55:20'),
(62, 1, '$2y$10$MNbYPdnjuaEADEYUzFj3muFtmKcmvi/Yexpjs3sr9AIQYMwY3zOAi', '2023-05-30 22:55:20', '2023-05-30 10:55:20', '2023-05-30 10:55:20'),
(63, 1, '$2y$10$NY.Isc2HBLK3kzHo8w.nhOU2LwAtBNJ4LGEWu7oy5XUMb08QuBX1C', '2023-05-30 22:55:38', '2023-05-30 10:55:38', '2023-05-30 10:55:38'),
(64, 1, '$2y$10$VD1Vg/05Gf1LzZXSzTYWM.jSYJ9DYV5JshC6Pip2SqMjF1ccemSvO', '2023-05-30 22:57:09', '2023-05-30 10:56:49', '2023-05-30 10:57:09'),
(65, 1, '$2y$10$z54zjx3cDqxk4EWGVndP0uYcZPh6Jzlj05g7dbIKOPwF/jh0YZG0q', '2023-05-31 00:38:04', '2023-05-30 11:03:11', '2023-05-30 12:38:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `users_authentication`
--
ALTER TABLE `users_authentication`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users_authentication`
--
ALTER TABLE `users_authentication`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
