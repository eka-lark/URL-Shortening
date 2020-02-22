-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2020 at 03:11 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `url`
--

-- --------------------------------------------------------

--
-- Table structure for table `shorturl`
--

CREATE TABLE `shorturl` (
  `id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `txt` varchar(50) NOT NULL,
  `short_link` varchar(50) NOT NULL,
  `hit_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shorturl`
--

INSERT INTO `shorturl` (`id`, `link`, `txt`, `short_link`, `hit_count`) VALUES
(2, 'https://www.google.com/search?q=logo&sxsrf=ALeKk00XldttQAyJJp8XSWZbgop2_YI1NQ:1582221814200&ei=9slOXtzzC82f4-EPg6KaqAE&start=10&sa=N&ved=2ahUKEwjcxsPJ2-DnAhXNzzgGHQORBhUQ8NMDegQIDRBB&biw=1366&bih=625', 'Logo Maker', 'logo', 2),
(6, 'https://www.quora.com/What-is-the-difference-between-HTML-and-HTML5-What-is-the-difference-between-CSS-and-CSS3', 'html5 Vs html', 'html5', 1),
(7, 'https://www.google.com/search?q=instacar&rlz=1C1CHBF_enIN885IN885&oq=instacar&aqs=chrome..69i57j0l4j69i60l3.10309j0j7&sourceid=chrome&ie=UTF-8', 'InstaCar ', 'instacar', 1),
(8, 'https://www.google.com/search?q=github+login&rlz=1C1CHBF_enIN885IN885&oq=githu&aqs=chrome.1.69i57j35i39l2j0l5.2700j0j7&sourceid=chrome&ie=UTF-8', 'Github Login', 'git_login', 1),
(9, 'https://www.google.com/search?rlz=1C1CHBF_enIN885IN885&sxsrf=ALeKk02CA-DdETPKS_-AMDBiCxDw8zTLLg%3A1582378367564&ei=fy1RXu38IZLz9QPppLzoCQ&q=free+web+hosting&oq=webhost&gs_l=psy-ab.1.0.0i71l8.0.0..7524...0.2..0.0.0.......0......gws-wiz.S2cWB6giy6o', 'Web Hosting', 'host', 1),
(10, 'https://www.google.com/search?rlz=1C1CHBF_enIN885IN885&sxsrf=ALeKk00er18irzP2D0bvuQkbgE4M8BHUxg%3A1582378441205&ei=yS1RXu2NDJLgrQGs8aWAAQ&q=linkedin&oq=linkedin&gs_l=psy-ab.3..35i39j0i273j0l8.4505.6789..7647...0.2..0.272.946.0j4j1......0....1..gws-wiz....', 'Linkedin', 'linkedIn', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `shorturl`
--
ALTER TABLE `shorturl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `shorturl`
--
ALTER TABLE `shorturl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
