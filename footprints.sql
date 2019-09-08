-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2019 at 03:49 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `footprints`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brand_id` int(10) NOT NULL,
  `brand_title` text NOT NULL,
  `brand_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brand_id`, `brand_title`, `brand_desc`) VALUES
(1, 'Nike', 'Based in Beaverton, Oregon, NIKE, Inc. includes the Nike, Converse, Hurley, and Jordan brands.'),
(2, 'Adidas', 'We\'re experiencing delivery delays & delivery times are longer than usual. We appreciate your patience & will get your order to you as soon as possible! '),
(3, 'New Balance', 'More than 100 years, New Balance has worked to move the world around us. Because we believe in one simple truth: we were born to move'),
(4, 'Puma', 'Sport has the power to transform and empower us. As one of the world’s leading sports brands, it’s only natural that we want to stand on the same playing field as the fastest athletes on the planet. To achieve that, the PUMA brand is based on the very values that make an excellent athlete.');

-- --------------------------------------------------------

--
-- Table structure for table `carousel`
--

CREATE TABLE `carousel` (
  `carousel_id` int(10) NOT NULL,
  `carousel_name` varchar(255) NOT NULL,
  `carousel_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `carousel`
--

INSERT INTO `carousel` (`carousel_id`, `carousel_name`, `carousel_image`) VALUES
(1, 'Slide Number 1', 'Addidas-Ice-Out.png'),
(2, 'Slide Number 2', 'New-Balance-Otruska.png'),
(3, 'Slide Number 3', 'Nike-PhantomVSN.png'),
(4, 'Slide Number 4', 'Puma-Running.png');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(10) NOT NULL,
  `customer_fname` varchar(255) NOT NULL,
  `customer_lname` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_phone` int(12) NOT NULL,
  `customer_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_fname`, `customer_lname`, `customer_email`, `customer_pass`, `customer_phone`, `customer_image`) VALUES
(6, 'khon', 'world', 'khonphu@outlook.com', '$2y$10$CPjaML4XzgnFVycil4ozwObNPOd4kY/KAWTbVgwKCpViIf/Y2hCeK', 402991210, 'dummy-image.png'),
(7, 'xyz', 'abc', 'abc@gmail.com', '$2y$10$EkzM60336kWXiFL7mBsu4uRsmOrHXkSuYc4dfgPIORs93Jqfd3eji', 45455, 'dummy-image.png');

-- --------------------------------------------------------

--
-- Table structure for table `models`
--

CREATE TABLE `models` (
  `model_id` int(10) NOT NULL,
  `model_title` text NOT NULL,
  `model_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `models`
--

INSERT INTO `models` (`model_id`, `model_title`, `model_desc`) VALUES
(1, 'Classic', 'Runner Training Sneaker'),
(2, 'Air', 'Basketball Sneaker'),
(3, 'Soccer', 'Designed for Grass Pitches');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `model_id` int(10) NOT NULL,
  `brand_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_title` text NOT NULL,
  `product_image1` text NOT NULL,
  `product_image2` text NOT NULL,
  `product_image3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_desc` text NOT NULL,
  `product_keyword` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `model_id`, `brand_id`, `date`, `product_title`, `product_image1`, `product_image2`, `product_image3`, `product_price`, `product_desc`, `product_keyword`) VALUES
(2, 3, 1, '2019-09-05 07:27:13', 'Nike Mercurial Flyknit', 'Nike-Mercurial-Flyknit.png', '', '', 200, 'Nike Soccer Sneaker', 'Soccer'),
(3, 3, 1, '2019-09-05 07:18:15', 'Nike PhantomVSN', 'Nike-PhantomVSN.png', '', '', 500, 'Nike New Release', 'Nike'),
(6, 1, 2, '2019-09-05 08:03:43', 'Adidas Recycle Plastic', 'Adidas-Recycle-Ocean-Plastic.png', '', '', 100, 'Made By Recycle Plastic', 'Classic'),
(7, 3, 2, '2019-09-05 07:45:25', 'Adidas Speed Of Light', 'Adidas-SpeedOfLight.png', '', '', 500, 'The Flash', 'Speed'),
(8, 1, 2, '2019-09-05 07:47:09', 'Adidas Super Star', 'Adidas-super-star.jpeg', '', '', 250, 'Adidas Classic', 'Classic'),
(11, 1, 3, '2019-09-05 07:52:49', 'New Balance Runner', 'NB-runner.png', '', '', 423, 'Tranning Shoes', 'Runner'),
(12, 3, 3, '2019-09-05 07:53:44', 'New Balance Otruska', 'New-Balance-Otruska.png', '', '', 549, 'New Style Soccer Shoes', 'Soccer'),
(14, 1, 4, '2019-09-05 07:56:03', 'Puma Clyde Court', 'Puma-Clyde-Court.png', '', '', 599, 'New Design of Puma', 'Puma'),
(15, 3, 4, '2019-09-05 07:57:07', 'Puma Ignite', 'Puma-Ignite.png', '', '', 699, 'Limited Product', 'Soccer'),
(16, 3, 4, '2019-09-05 07:58:34', 'Puma ONE Chrome', 'Puma-ONE-Chrome.png', '', '', 999, 'Chrome Shoes', 'Soccer');

-- --------------------------------------------------------

--
-- Table structure for table `products_all`
--

CREATE TABLE `products_all` (
  `product_id` int(10) NOT NULL,
  `model_id` int(10) NOT NULL,
  `brand_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_title` text NOT NULL,
  `product_image1` text NOT NULL,
  `product_image2` text NOT NULL,
  `product_image3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_desc` text NOT NULL,
  `product_keyword` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products_all`
--

INSERT INTO `products_all` (`product_id`, `model_id`, `brand_id`, `date`, `product_title`, `product_image1`, `product_image2`, `product_image3`, `product_price`, `product_desc`, `product_keyword`) VALUES
(1, 2, 1, '2019-09-05 14:17:45', 'Nike Air Max 97', 'Nike-Air-Max-97.png', 'Nike-Air-Max-97.png', 'Nike-Air-Max-97.png', 255, 'Back by popular demand, the Nike Air Max 97 is still making waves more than two decades after its first release. At its original launch, the full-length Max Air unit and innovative lacing system of this style brought something entirely new to the Air Max franchise', 'Air'),
(2, 3, 1, '2019-09-05 14:18:06', 'Nike Mercurial Flyknit', 'Nike-Mercurial-Flyknit.png', 'Nike-Mercurial-Flyknit.png', 'Nike-Mercurial-Flyknit.png', 200, 'Nike Soccer Sneaker', 'Soccer'),
(3, 3, 1, '2019-09-05 14:18:16', 'Nike PhantomVSN', 'Nike-PhantomVSN.png', 'Nike-PhantomVSN.png', 'Nike-PhantomVSN.png', 500, 'Nike New Release', 'Nike'),
(4, 1, 1, '2019-09-05 14:18:27', 'Nike Stranger', 'Nike-Stranger.png', 'Nike-Stranger.png', 'Nike-Stranger.png', 325, 'Nike Stranger', 'Nike'),
(5, 3, 2, '2019-09-05 14:18:39', 'Addidas Ice Out', 'Addidas-Ice-Out.png', 'Nike-Stranger.png', 'Nike-Stranger.png', 1000, 'Soccer on Ice', 'Soccer'),
(6, 1, 2, '2019-09-05 14:18:52', 'Adidas Recycle Plastic', 'Adidas-Recycle-Ocean-Plastic.png', 'Adidas-Recycle-Ocean-Plastic.png', 'Adidas-Recycle-Ocean-Plastic.png', 100, 'Made By Recycle Plastic', 'Classic'),
(7, 3, 2, '2019-09-05 14:19:04', 'Adidas Speed Of Light', 'Adidas-SpeedOfLight.png', 'Adidas-SpeedOfLight.png', 'Adidas-SpeedOfLight.png', 500, 'The Flash', 'Speed'),
(8, 1, 2, '2019-09-05 14:19:16', 'Adidas Super Star', 'Adidas-super-star.jpeg', 'Adidas-super-star.jpeg', 'Adidas-super-star.jpeg', 250, 'Adidas Classic', 'Classic'),
(9, 1, 3, '2019-09-05 14:19:27', 'NB Fresh Foam', 'NB-Fresh-Foam.png', 'NB-Fresh-Foam.png', 'NB-Fresh-Foam.png', 222, 'New Balance Classic', 'Classic'),
(10, 1, 3, '2019-09-05 14:19:38', 'New Balance JCrew', 'NB-JCrew.png', 'NB-JCrew.png', 'NB-JCrew.png', 125, 'New Balance Classic', 'Classic'),
(11, 1, 3, '2019-09-05 14:19:51', 'New Balance Runner', 'NB-runner.png', 'NB-runner.png', 'NB-runner.png', 423, 'Tranning Shoes', 'Runner'),
(12, 3, 3, '2019-09-05 14:20:04', 'New Balance Otruska', 'New-Balance-Otruska.png', 'New-Balance-Otruska.png', 'New-Balance-Otruska.png', 549, 'New Style Soccer Shoes', 'Soccer'),
(13, 1, 4, '2019-09-05 14:20:18', 'Puma Classic Suede', 'Puma-Classis-Suede.png', 'Puma-Classis-Suede.png', 'Puma-Classis-Suede.png', 399, 'Puma Classic', 'Classic'),
(14, 1, 4, '2019-09-05 14:20:29', 'Puma Clyde Court', 'Puma-Clyde-Court.png', 'Puma-Clyde-Court.png', 'Puma-Clyde-Court.png', 599, 'New Design of Puma', 'Puma'),
(15, 3, 4, '2019-09-05 14:20:39', 'Puma Ignite', 'Puma-Ignite.png', 'Puma-Ignite.png', 'Puma-Ignite.png', 699, 'Limited Product', 'Soccer'),
(16, 3, 4, '2019-09-05 14:20:51', 'Puma ONE Chrome', 'Puma-ONE-Chrome.png', 'Puma-ONE-Chrome.png', 'Puma-ONE-Chrome.png', 999, 'Chrome Shoes', 'Soccer');

-- --------------------------------------------------------

--
-- Table structure for table `products_women`
--

CREATE TABLE `products_women` (
  `product_id` int(10) NOT NULL,
  `model_id` int(10) NOT NULL,
  `brand_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_title` text NOT NULL,
  `product_image1` text NOT NULL,
  `product_image2` text NOT NULL,
  `product_image3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_desc` text NOT NULL,
  `product_keyword` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products_women`
--

INSERT INTO `products_women` (`product_id`, `model_id`, `brand_id`, `date`, `product_title`, `product_image1`, `product_image2`, `product_image3`, `product_price`, `product_desc`, `product_keyword`) VALUES
(1, 2, 1, '2019-09-05 14:17:26', 'Nike Air Max 97', 'Nike-Air-Max-97.png', 'Nike-Air-Max-97.png', 'Nike-Air-Max-97.png', 255, 'Back by popular demand, the Nike Air Max 97 is still making waves more than two decades after its first release. At its original launch, the full-length Max Air unit and innovative lacing system of this style brought something entirely new to the Air Max franchise', 'Air'),
(4, 1, 1, '2019-09-05 14:41:00', 'Nike Stranger', 'Nike-Stranger.png', '', '', 325, 'Nike Stranger', 'Nike'),
(5, 3, 2, '2019-09-05 14:40:43', 'Addidas Ice Out', 'Addidas-Ice-Out.png', '', '', 1000, 'Soccer on Ice', 'Soccer'),
(8, 1, 2, '2019-09-05 14:40:21', 'Adidas Super Star', 'Adidas-super-star.jpeg', '', '', 250, 'Adidas Classic', 'Classic'),
(9, 1, 3, '2019-09-05 14:40:03', 'NB Fresh Foam', 'NB-Fresh-Foam.png', '', '', 222, 'New Balance Classic', 'Classic'),
(10, 1, 3, '2019-09-05 14:39:49', 'New Balance JCrew', 'NB-JCrew.png', '', '', 125, 'New Balance Classic', 'Classic'),
(13, 1, 4, '2019-09-05 14:39:32', 'Puma Classic Suede', 'Puma-Classis-Suede.png', '', '', 399, 'Puma Classic', 'Classic'),
(14, 1, 4, '2019-09-05 14:39:19', 'Puma Clyde Court', 'Puma-Clyde-Court.png', '', '', 599, 'New Design of Puma', 'Puma');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`carousel_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `models`
--
ALTER TABLE `models`
  ADD PRIMARY KEY (`model_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `products_all`
--
ALTER TABLE `products_all`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `products_women`
--
ALTER TABLE `products_women`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `brand_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `carousel`
--
ALTER TABLE `carousel`
  MODIFY `carousel_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `models`
--
ALTER TABLE `models`
  MODIFY `model_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `products_all`
--
ALTER TABLE `products_all`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `products_women`
--
ALTER TABLE `products_women`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
