-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 27, 2019 at 01:14 AM
-- Server version: 5.6.43
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `camagru_db`
--
CREATE DATABASE IF NOT EXISTS `camagru_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `camagru_db`;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `picture_id` int(11) NOT NULL,
  `user_id` int(100) NOT NULL,
  `comment` text NOT NULL,
  `comment_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `picture_id`, `user_id`, `comment`, `comment_date`) VALUES
(6, 28, 7, 'hello', '2019-05-20 14:23:13'),
(7, 28, 7, 'hi \\\r\n\r\n\r\n\r\nfssf\r\n\r\n\r\n\r\n\r\nf', '2019-05-20 14:23:18'),
(8, 28, 7, 'f\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nsf', '2019-05-20 14:23:30'),
(9, 28, 7, 'ff\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nwwf', '2019-05-20 14:24:02'),
(10, 35, 1, 'rg', '2019-05-20 16:04:52'),
(11, 35, 1, 'fw\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nfw', '2019-05-20 16:06:20'),
(12, 35, 1, 'fe\r\n\r\n\r\n\r\n\r\n\r\n\r\nfw', '2019-05-20 16:09:50'),
(13, 35, 1, 'hey', '2019-05-20 16:18:27'),
(14, 35, 1, 'yo', '2019-05-20 16:23:12'),
(15, 35, 1, ':)', '2019-05-20 16:23:34'),
(16, 38, 1, 'hey', '2019-05-20 16:42:04'),
(17, 38, 1, 'ok', '2019-05-20 23:04:09'),
(18, 43, 7, 'hey', '2019-05-20 17:34:48'),
(21, 46, 7, 'hey', '2019-05-20 18:35:00'),
(22, 37, 1, 'hello', '2019-05-20 22:52:35'),
(23, 47, 1, 'ohohoh', '2019-05-20 23:00:22'),
(24, 48, 1, 'yo', '2019-05-21 09:38:51'),
(25, 46, 1, 'hey', '2019-05-21 09:53:54'),
(26, 49, 1, 'hey', '2019-05-21 10:17:12'),
(27, 50, 9, 'nice fuckin picture Sam!', '2019-05-25 11:04:02'),
(28, 51, 8, 'nice fuckin pic Bap!', '2019-05-25 11:05:05'),
(29, 51, 8, 'i\'ll say it again: great picture!', '2019-05-25 11:05:59'),
(30, 50, 8, 'yoyoyo', '2019-05-25 12:04:19'),
(31, 51, 8, 'hey', '2019-05-25 11:52:33'),
(32, 51, 8, 'yo', '2019-05-25 11:54:08');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `picture_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `picture_id`, `user_id`) VALUES
(3, 32, 1),
(31, 43, 7),
(34, 35, 1),
(35, 48, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pictures`
--

CREATE TABLE `pictures` (
  `picture_id` int(11) NOT NULL,
  `user_id` int(100) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pictures`
--

INSERT INTO `pictures` (`picture_id`, `user_id`, `content`) VALUES
(28, 7, '0.30362800:1558354592.png'),
(29, 7, '0.10103900:1558355276.png'),
(30, 7, '0.56436500:1558355285.png'),
(31, 7, '0.65837600:1558355421.png'),
(32, 7, '0.24902500:1558355436.png'),
(33, 7, '0.30558200:1558355444.png'),
(34, 7, '0.87155900:1558356625.png'),
(35, 1, '0.44283800:1558361072.png'),
(36, 1, '0.82901100:1558361967.png'),
(37, 1, '0.71073200:1558363087.png'),
(38, 1, '0.52886200:1558363280.png'),
(39, 1, '0.48731600:1558363434.png'),
(40, 7, '0.71860700:1558363755.png'),
(41, 7, '0.42446600:1558363896.png'),
(42, 7, '0.75796100:1558363908.png'),
(43, 7, '0.27997800:1558364163.png'),
(45, 7, '0.00401400:1558366406.png'),
(46, 7, '0.92314800:1558369840.png'),
(47, 1, '0.33828000:1558382894.png'),
(48, 1, '0.38249600:1558387638.png'),
(49, 1, '0.10842000:1558426453.png'),
(50, 8, '0.19091200:1558774872.png'),
(51, 9, '0.87917000:1558775074.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` text NOT NULL,
  `hash` text NOT NULL,
  `account_valid` int(11) NOT NULL,
  `notifications` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_password`, `hash`, `account_valid`, `notifications`) VALUES
(1, 'Papipel75', ' wrsdv@ewrdf.fr ', '63fdfee16cfe8db69def7ed8c5fffcde313f364e612576710b159553467e835edba57b84ec44d637c24e44e09496beb04b91ec698816980e5b0e89379847009c', 'a0d2792bd2ea2e410e89a27df5d187e06c47204d9fe39bfb5d0b2187c4f26af5ab20e06559cc70111b29524e119bbec7daae6e426d8e8150629c3ec4551f853a', 1, 0),
(2, 'Martin75', 'vuheferi@simpleemail.info', '63fdfee16cfe8db69def7ed8c5fffcde313f364e612576710b159553467e835edba57b84ec44d637c24e44e09496beb04b91ec698816980e5b0e89379847009c', 'e36a51b347f577d4fad9bbf4ff999ba3b82e7bee1755d806c9446ec97096e21b0ddad1736e253af77acd79e88bfd61de4a9c483be9307e6366d374dc85200279', 1, 1),
(3, 'Papi', 'mrtscg@gmail.com', '63fdfee16cfe8db69def7ed8c5fffcde313f364e612576710b159553467e835edba57b84ec44d637c24e44e09496beb04b91ec698816980e5b0e89379847009c', '4663891216ba642aa950c4b6f502d33ce7d4ed391f8fd483810345d0ab9f6a5838d014700e1968f541452f7e898d1850b56f4de953bcdf36081a1cfc0ad8d47e', 0, 0),
(4, 'f', 'f', '47c7f9b44e004f44f171e082a69cd1385091ec452c69348477c1719f22c73b46e4afe702b33a77dee4a68ae581dba29c85fc90ce7199d1ff2cf03d5183371a18', 'c3b7ff2bab880ce8ea62c5fda2a8829cd8dbf2eb79a783655430950e8e140586ccfe53dcdf145fa360fe7078e59bf1d3178339c7b88966ed00791ccbec2f8db6', 0, 1),
(5, 'h', 'h', '24fc871e81329c1019c11186642e5937298d10be03010244cf770a7ae306b539f3991b36a5f42f8cf7325f22411bc7a3b14351b42f26335f44786bdbf29c317f', 'd088720fba708aa1e418094a98140311db276f4350e161e26650fdda3c4950d9070ce4c54fd578120c66cae8b4b14b4cb6dbe613fcff854d65286dcdf528695d', 0, 1),
(6, 'Jusix', 'xiziwihom@royalmail.top', '63fdfee16cfe8db69def7ed8c5fffcde313f364e612576710b159553467e835edba57b84ec44d637c24e44e09496beb04b91ec698816980e5b0e89379847009c', '5e38cbc49c97f1445a1abc41501520b20cdfb7daadf38e5a9f56bee7d83503c7ff48698d5d87fdc6cfa472529e44b29e3dd576e82f2e24308e5f10e94d7e101d', 0, 1),
(7, 'Babibel', 'dodixarabi@mrmail.info', '63fdfee16cfe8db69def7ed8c5fffcde313f364e612576710b159553467e835edba57b84ec44d637c24e44e09496beb04b91ec698816980e5b0e89379847009c', 'd434ac6a79a89a20b8568de3c76d28df3f16c10f2ab14c676bc0d323d6dfdc8dba676fcff1a988a9feaa43761f08d10486efa8b47c9637554887f60f3410b11b', 1, 0),
(8, 'Samuel', 'havez@shoproyal.net', '3f89f7fe7f7dd80895f513bad02cf0c46c9aa2194c2a921403732515f4a39c925b9b94ef08ce17d1296a075005eb9333b2c5d6ffbb2de788f094324e604f8ec4', '732fc3212210bcb27d12b7bc932b459dabdd62b03b9da889a6cbfc93becf146ef1ecc05f93b6d9db3389a7f76ffe028d21883f119933c8a03e229ad1e3e7ecde', 1, 1),
(9, 'Baptisto', 'fejovuy@mailsource.info', '63fdfee16cfe8db69def7ed8c5fffcde313f364e612576710b159553467e835edba57b84ec44d637c24e44e09496beb04b91ec698816980e5b0e89379847009c', '0b3c76e9f67a6a39aff085d971f2b47f4d4925d4d3d5bd7bf7f90906eeaf1b1f683fb6278382d39126cb9f5ad727bf05ad6b03e6231d17075f044c6a65c02154', 1, 0),
(10, 'Joharno', 'rukud@tech5group.com', '63fdfee16cfe8db69def7ed8c5fffcde313f364e612576710b159553467e835edba57b84ec44d637c24e44e09496beb04b91ec698816980e5b0e89379847009c', 'f1af913f7e6f02c104a55e652a9469965b91535e7a714b7b66d42b4c2edd1035e19dc989d0a5fc989fb54600d02d47916e0a2914875e97bfa44a7a22d9562d01', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pictures`
--
ALTER TABLE `pictures`
  ADD PRIMARY KEY (`picture_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `pictures`
--
ALTER TABLE `pictures`
  MODIFY `picture_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
