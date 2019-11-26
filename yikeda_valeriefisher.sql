-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 14, 2019 at 04:47 AM
-- Server version: 5.6.41-84.1
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yikeda_valeriefisher`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` mediumint(9) NOT NULL,
  `strName` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `strName`) VALUES
(1, 'wedding'),
(2, 'portrait'),
(3, 'family');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` mediumint(9) NOT NULL,
  `strFirstName` varchar(256) NOT NULL,
  `strLastName` varchar(256) NOT NULL,
  `strEmail` varchar(256) NOT NULL,
  `strMessage` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `strFirstName`, `strLastName`, `strEmail`, `strMessage`) VALUES
(1, 'john', 'doe', 'john@tes.com', 'hello world');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` mediumint(9) NOT NULL,
  `strName` varchar(256) NOT NULL,
  `strImagePath` varchar(256) NOT NULL,
  `nCategoryId` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `strName`, `strImagePath`, `nCategoryId`) VALUES
(2, 'Alex Perez', 'https://images.unsplash.com/photo-1519362909365-f8591adb630e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80', 2),
(4, 'Gillespie', 'https://images.unsplash.com/photo-1529932260967-af9d3bbd8138?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80', 2),
(5, 'Mike Sheid', 'https://images.unsplash.com/photo-1529180979161-06b8b6d6f2be?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80', 3),
(6, 'Kevin Delvicchio', 'https://images.unsplash.com/photo-1496275068113-fff8c90750d1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80', 3),
(7, 'Andre Hunter', 'https://images.unsplash.com/photo-1467406821248-f0a1e57880bf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1352&q=80', 3),
(8, 'josh', 'https://images.unsplash.com/photo-1541582728074-28521d6ac528?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80', 3),
(9, 'Binn', 'https://images.unsplash.com/photo-1498979237786-9c35706bd45e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80', 1),
(10, 'Avaro', 'https://images.unsplash.com/photo-1511285560929-80b456fea0bc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1349&q=80', 1),
(11, 'Todd Rush', 'https://images.unsplash.com/photo-1543587654-5c4b89aba2fa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80', 1),
(13, 'Eric Alves', 'https://images.unsplash.com/photo-1475720927035-c23a9bc5cac3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1349&q=80', 1),
(14, 'Pete', 'https://images.unsplash.com/photo-1531898611418-0ceb51a8e0ad?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80', 1),
(15, 'Kyle', 'https://images.unsplash.com/photo-1542838686-b08706f6f2d1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80', 2),
(16, 'Dumlao', 'https://images.unsplash.com/photo-1542840410-3092f99611a3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80', 2),
(17, 'Eric Ward', 'https://images.unsplash.com/photo-1497342177742-93b996a6746e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80', 1),
(18, 'Josh Felise', 'https://images.unsplash.com/photo-1444394668777-6fa6de8b8356?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80', 1),
(19, 'Alleff Vniciusa', 'https://images.unsplash.com/photo-1496367570254-c493e0fca29e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80', 1),
(20, 'Matherus Ferraro', 'https://images.unsplash.com/photo-1501198923183-778f017f703a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80', 1),
(21, 'Callie Morgan', 'https://images.unsplash.com/photo-1497387674890-4ecd2af62493?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80', 1),
(22, 'Inno Nhara', 'https://images.unsplash.com/photo-1542261666-af38d09cc104?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1352&q=80', 1),
(24, 'Gift Habeshaw', 'https://images.unsplash.com/photo-1520415522308-4c01414787a4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80', 1),
(25, 'Chris Campbell', 'https://images.unsplash.com/photo-1447194537595-69d5dd826707?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80', 1),
(26, 'Caroline Hernandez', 'https://images.unsplash.com/photo-1523371542221-b2965445c8f3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80', 1),
(29, 'Jayakody Anthanas', 'https://images.unsplash.com/photo-1542325383-ff5af189d9c3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1366&q=80', 1),
(30, 'Colette Allen', 'https://images.unsplash.com/photo-1513262834354-6b2bca9b5b8d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80', 1),
(31, 'Tom', 'https://images.unsplash.com/photo-1523976364300-b051c5af0cde?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80', 1),
(32, 'Bridget Flohe', 'https://images.unsplash.com/photo-1502651964194-66e48315b02a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1352&q=80', 1),
(33, 'Sage Kirk', 'https://images.unsplash.com/photo-1513732822839-24f03a92f633?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80', 2),
(38, 'Drew Coffman', 'https://images.unsplash.com/photo-1465495976277-4387d4b0b4c6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80', 1),
(39, 'Mari Lezhava', 'https://images.unsplash.com/photo-1508407576665-2d9a5d638a7e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80', 1),
(40, 'Sasha Dimitri', 'https://images.unsplash.com/photo-1509955252650-8f558c2b8735?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=633&q=80', 2),
(41, 'Giorgio Encinas', 'https://images.unsplash.com/photo-1534385842125-8c9ad0bd123c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80', 2),
(42, 'Albert Dera', 'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80', 2),
(43, 'Kyle Loftus', 'https://images.unsplash.com/photo-1524772128034-3ecf9a73cbe9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80', 2),
(44, 'Ali Yahya', 'https://images.unsplash.com/photo-1520065786657-b71a007dd8a5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80', 2),
(45, 'Jackson', 'https://images.unsplash.com/photo-1495516372021-9c815fa7e668?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80', 2),
(48, 'Ayo Ogunseinde', 'https://images.unsplash.com/photo-1500336624523-d727130c3328?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80', 2),
(49, 'Sobei', 'https://images.unsplash.com/photo-1501283379640-150b0757f148?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80', 2),
(50, 'Matthew', 'https://images.unsplash.com/photo-1491349174775-aaafddd81942?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80', 2),
(51, 'Alex', 'https://images.unsplash.com/photo-1513898827383-235b22da454c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80', 3),
(54, 'Kevin Gent', 'https://images.unsplash.com/photo-1509924603848-aca5e5f276d7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80', 3),
(55, 'John', 'https://images.unsplash.com/photo-1522700373732-73f561debf0b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80', 3),
(56, 'Mylas Tan', 'https://images.unsplash.com/photo-1460788150444-d9dc07fa9dba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80', 3),
(61, 'Sai De Silva', 'https://images.unsplash.com/photo-1437913135140-944c1ee62782?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80', 3),
(62, 'Jude Beck', 'https://images.unsplash.com/photo-1518159357049-bb438a340932?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80', 3),
(64, 'Jens Johnson', 'https://images.unsplash.com/photo-1527623394562-f3838886dee7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80', 3),
(65, 'Thiago', 'https://images.unsplash.com/photo-1484665754804-74b091211472?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80', 3),
(66, 'Joshua', 'https://images.unsplash.com/photo-1520177812839-78269c5ed62d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80', 3),
(67, 'Nathan Anderson', 'https://images.unsplash.com/photo-1464998857633-50e59fbf2fe6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80', 3),
(68, 'Nikola', 'https://images.unsplash.com/photo-1474667824231-2459b87479be?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80', 3),
(69, 'Hardy', 'https://images.unsplash.com/photo-1486583474878-b16d8f2749b1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80', 3),
(70, 'Priscilla', 'https://images.unsplash.com/photo-1467510396478-c4680a636614?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1353&q=80', 3),
(71, 'Adi', 'https://images.unsplash.com/photo-1543368196-6d82b7df117b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80', 3),
(74, 'Chang Duang', 'https://images.unsplash.com/photo-1542868797-a5dc9b2d5496?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
