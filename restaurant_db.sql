-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 25, 2020 at 03:27 AM
-- Server version: 10.3.27-MariaDB-log-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iamvps_nivtea`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `bill_no` int(11) NOT NULL,
  `price` int(10) NOT NULL,
  `order_details` varchar(100) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`bill_no`, `price`, `order_details`, `customer_id`) VALUES
(1, 1100, '1)Pizza: 250(small)    2)Burger: 250(Large)    3)Frenchfries :600', 201),
(2, 500, '1)Pizza(Large) :500', 202),
(3, 750, '1)Burger(Large) :250    2)Soft Drink(Large) :500', 203),
(4, 1400, '1)Pizza: 350(medium) ,2)Burger: 150(small) ,3)Frenchfries :600 ,4)Soft Drink(small) :300', 204),
(5, 500, '1)Pizza(Large) :500', 205),
(6, 200, '1)Burger(medium) :200', 206);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(112) NOT NULL,
  `item_id` int(112) NOT NULL,
  `userid` int(112) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `item_id`, `userid`) VALUES
(23, 1, 201);

-- --------------------------------------------------------

--
-- Table structure for table `cashier`
--

CREATE TABLE `cashier` (
  `Cashier_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cashier`
--

INSERT INTO `cashier` (`Cashier_id`, `name`) VALUES
(1, 'Liam'),
(2, 'Noah'),
(3, 'James'),
(4, 'William'),
(5, 'Lucas'),
(6, 'Henry'),
(7, 'Jack');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `Fname` varchar(20) NOT NULL,
  `Lname` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `contact_no` int(11) NOT NULL,
  `order_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `Fname`, `Lname`, `address`, `contact_no`, `order_no`) VALUES
(201, 'Sneha', 'Singh', 'No.65 , 6th main, Uttarahalli, Bangalore', 265448536, 1),
(202, 'Amir', 'Ahmad', 'No.5, 10th cross, JP Nagar, Bangalore', 63587425, 2),
(203, 'Alex', 'Smith', 'No.55, 8th cross, Kumaraswamy Layout, Bangalore', 68745231, 3),
(204, 'Malik', 'Jeffery', 'No.6, 3rd cross, Malleshwaram, Bangalore', 36582147, 4),
(205, 'Tina', 'Kumar', 'No.36, 5th cross, Whitefield, Bangalore', 86254173, 5),
(206, 'Ibrahim', 'Sheikh', 'No.9, 1st cross, Hebbal, Bangalore', 36587421, 2);

-- --------------------------------------------------------

--
-- Table structure for table `login_admin`
--

CREATE TABLE `login_admin` (
  `email_id` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login_admin`
--

INSERT INTO `login_admin` (`email_id`, `password`) VALUES
('luke_admin@gmail.com', '123456789'),
('david_admin@gmail.com', '147852369'),
('john_admin@gmail.com', '963852741'),
('thomas_admin@gmail.com', '987456321');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `manager_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `contact_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`manager_id`, `name`, `contact_no`) VALUES
(1, 'John', 85632145),
(2, 'David', 76528914),
(3, 'Luke', 77654231),
(4, 'Thomas', 95847264);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `item_no` int(11) NOT NULL,
  `quantity` varchar(20) NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`item_no`, `quantity`, `price`, `description`, `image`) VALUES
(1, 'medium', 150, 'Burger', 'https://vaibhavpratapsingh.com/project/niv-tea/user/assets/Pine%20&%20Dine.jp'),
(2, 'Full Plate', 200, 'Veg Hakka Noodles', ''),
(3, 'Full Plate', 250, 'Baby Corn Manchurian', ''),
(4, 'Full Plate', 250, 'Corn Cutlet', ''),
(5, 'medium', 350, 'Pizza', ''),
(6, 'Full Plate', 500, 'Paneer Tikka', ''),
(7, 'large', 600, 'French fries', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ODER_NO` int(112) NOT NULL,
  `ID_no` int(112) NOT NULL,
  `item_ids` varchar(5000) NOT NULL,
  `customer_id` int(112) NOT NULL,
  `amount` int(112) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`ODER_NO`, `ID_no`, `item_ids`, `customer_id`, `amount`, `status`) VALUES
(18, 0, 'a:1:{i:0;s:1:\"1\";}', 7, 0, 3),
(19, 0, 'a:1:{i:0;s:1:\"1\";}', 7, 150, 3);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `restaurant_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `contact_no` int(11) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`restaurant_id`, `name`, `contact_no`, `address`) VALUES
(1, 'Burgill', 76528456, 'No.2 , 1st main, 1st cross, Basavanagudi'),
(2, 'Pine & Dine', 65897452, 'No.8, Jayanagar 4 block Bangalore'),
(3, 'Chill Out', 36582147, 'No.562, 5th cross BTM Layout Bangalore');

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `email_id` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`email_id`, `password`) VALUES
('admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `user_signup`
--

CREATE TABLE `user_signup` (
  `id` int(112) NOT NULL,
  `email_id` varchar(100) NOT NULL,
  `Create_password` varchar(100) NOT NULL,
  `Retype_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_signup`
--

INSERT INTO `user_signup` (`id`, `email_id`, `Create_password`, `Retype_password`) VALUES
(1, 'asma', '789', '789'),
(2, 'ayesha@gmail.com', 'Ayesha', 'Ayesha'),
(3, 'greeshma@gmail.com', 'Greeshma15', 'Greeshma15'),
(4, 'mohana@gmail.com', 'Mohana25', 'Mohana25'),
(5, 'nivedita', '123', '123'),
(6, 'taha@gmail.com', 'taha', 'taha'),
(7, 'v@v.com', '123123', '123123');

-- --------------------------------------------------------

--
-- Table structure for table `waiter`
--

CREATE TABLE `waiter` (
  `ID_no` int(11) NOT NULL,
  `Fname` varchar(20) NOT NULL,
  `Lname` varchar(20) NOT NULL,
  `Contact` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `waiter`
--

INSERT INTO `waiter` (`ID_no`, `Fname`, `Lname`, `Contact`) VALUES
(1, 'Charles', 'Ed', 25631456),
(2, 'Rita', 'Singh', 63541266),
(3, 'John', 'Carson', 65234892),
(4, 'Christian', 'Cohen', 86523471),
(5, 'Tyler', 'Finley', 96325874);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill_no`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cashier`
--
ALTER TABLE `cashier`
  ADD PRIMARY KEY (`Cashier_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `order_no` (`order_no`);

--
-- Indexes for table `login_admin`
--
ALTER TABLE `login_admin`
  ADD UNIQUE KEY `email_id` (`email_id`),
  ADD UNIQUE KEY `password` (`password`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`manager_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`item_no`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ODER_NO`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`restaurant_id`) USING BTREE;

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD UNIQUE KEY `email_id` (`email_id`),
  ADD UNIQUE KEY `password` (`password`);

--
-- Indexes for table `user_signup`
--
ALTER TABLE `user_signup`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_id` (`email_id`),
  ADD UNIQUE KEY `Create_password` (`Create_password`),
  ADD UNIQUE KEY `Retype_password` (`Retype_password`);

--
-- Indexes for table `waiter`
--
ALTER TABLE `waiter`
  ADD PRIMARY KEY (`ID_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(112) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `ODER_NO` int(112) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user_signup`
--
ALTER TABLE `user_signup`
  MODIFY `id` int(112) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
