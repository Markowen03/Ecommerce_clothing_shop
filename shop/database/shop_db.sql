-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2024 at 09:25 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(143, 16, 23, 'Born to be free', 350, 1, 'B2.png'),
(144, 16, 22, 'Back in Time ', 350, 1, 'B1.png'),
(145, 16, 24, 'Koi', 350, 1, 'B3.png'),
(146, 16, 25, 'Naruto Shirt', 350, 1, 'B4.png');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(19, 16, 'Mark Owen Lincallo Badua', '09083384716', 'markowenbadua711@gmail.com', 'cash on delivery', 'flat no. San Miguel, , Puerto Princesa, Philippines - 3500', ', Born to be free (1) ', 350, '05-Nov-2024', 'completed'),
(20, 16, 'Mark Owen Lincallo Badua', '09083384716', 'markowenbadua711@gmail.com', 'cash on delivery', 'flat no. San Miguel, Palawan, Puerto Princesa, Philippines - 12345', ', Koi (1) ', 350, '05-Nov-2024', 'completed'),
(21, 16, 'Mark Owen Lincallo Badua', '09083384716', 'markowenbadua711@gmail.com', 'cash on delivery', 'flat no. San Miguel, Palawan, Puerto Princesa, Philippines - 12345', ', Born to be free (1) ', 350, '06-Nov-2024', 'completed'),
(22, 16, 'Mark Owen Lincallo Badua', '2352353245', 'markowenbadua711@gmail.com', 'cash on delivery', 'flat no. Brooke\'s Point, Palawan, Puerto Princesa, Philippines - 54321', ', Naruto Shirt (5) ', 1750, '06-Nov-2024', 'completed'),
(23, 16, 'Mark Owen Lincallo Badua', '2352353245', 'markowenbadua711@gmail.com', 'paypal', 'flat no. Brooke\'s Point, Palawan, Puerto Princesa, Philippines - 54321', ', Tokyo (2) ', 700, '06-Nov-2024', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image`) VALUES
(22, 'Back in Time ', 'Black shirt regular fit', 350, 'B1.png'),
(23, 'Born to be free', 'Black shirt regular fit', 350, 'B2.png'),
(24, 'Koi', 'Black shirt regular fit', 350, 'B3.png'),
(25, 'Naruto Shirt', 'Naruto black shirt regular fit', 350, 'B4.png'),
(26, 'Lebron James', 'Black shirt regular fit', 350, 'B5.png'),
(27, 'Break Rules', 'Black shirt regular fit', 350, 'B6.png'),
(28, 'Back Off', 'Black shirt regular fit', 350, 'B7.png'),
(29, 'Tokyo', 'Black shirt regular fit', 350, 'B8.png'),
(30, 'The Dolfins', 'Black shirt regular fit', 350, 'B9.png'),
(31, 'Lady Warrior', 'Black shirt regular fit', 350, 'B10.png'),
(32, 'Apex Manila', 'Black shirt regular fit', 350, 'B11.png'),
(33, 'Mask', 'Black shirt regular fit', 350, 'B12.png'),
(34, 'Mind', 'Black shirt regular fit', 350, 'B13.png'),
(35, 'BWB', 'White shirt regular fit', 350, 'W6.jpg'),
(36, 'Trust No One', 'White shirt regular fit', 350, 'W7.jpg'),
(37, 'Jujutsu Kaisen', 'White shirt regular fit', 350, 'W8.jpg'),
(38, 'Peace', 'White shirt regular fit', 350, 'W9.jpg'),
(39, 'Lost in Grim', 'White shirt regular fit', 350, 'W11.jpg'),
(40, 'Lazy ', 'White hoodie regular fit', 500, 'H2.jpg'),
(41, 'Katana', 'White hoodie regular fit', 500, 'H5.jpg'),
(42, 'Keep Flying', 'White hoodie regular fit', 500, 'H6.jpg'),
(43, 'Butterflies', 'White hoodie regular fit', 500, 'H8.jpg'),
(44, 'Listen Up', 'White hoodie regular fit', 500, 'H9.jpg'),
(45, 'Dark', 'White hoodie regular fit', 500, 'H3.jpg'),
(46, 'Peace of Mind', 'Kids wear black shirt', 150, 'K 9.png'),
(47, 'Tokyo Kids', 'Kids wear black shirt', 150, 'K 11.png'),
(48, 'Son Goku', 'Kids wear black shirt', 150, 'K 12.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(10, 'admin A', 'admin01@gmail.com', '698d51a19d8a121ce581499d7b701668', 'admin'),
(16, 'owen', 'mbadua@yahoo.com', '21232f297a57a5a743894a0e4a801fc3', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `pid`, `name`, `price`, `image`) VALUES
(67, 16, 26, 'Lebron James', 350, 'B5.png'),
(68, 16, 27, 'Break Rules', 350, 'B6.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
