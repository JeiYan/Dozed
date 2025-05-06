-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2025 at 04:20 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dozed`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `account_id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `register_date` date DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`account_id`, `email`, `register_date`, `phone_number`, `password`) VALUES
(1, 'jeijuseyo@gmail.com', '2025-04-21', '09204152551', 'jezreel1234'),
(2, 'alvinjay@gmail.com', '2025-05-06', '09204152551', 'alvin1234');

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `bill_id` int(11) NOT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `reservation_id` int(11) DEFAULT NULL,
  `table_id` int(11) DEFAULT NULL,
  `card_id` int(11) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `bill_time` datetime DEFAULT NULL,
  `payment_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`bill_id`, `staff_id`, `member_id`, `reservation_id`, `table_id`, `card_id`, `payment_method`, `bill_time`, `payment_time`) VALUES
(49, 1, 1, 1111111, 1, NULL, 'cash', '2025-04-21 10:52:53', '2025-04-21 11:08:55'),
(53, 1, 1, 1111111, 6, NULL, 'cash', '2025-05-06 12:56:37', '2025-05-06 13:01:05');

-- --------------------------------------------------------

--
-- Table structure for table `bill_items`
--

CREATE TABLE `bill_items` (
  `bill_item_id` int(11) NOT NULL,
  `bill_id` int(11) DEFAULT NULL,
  `item_id` varchar(6) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bill_items`
--

INSERT INTO `bill_items` (`bill_item_id`, `bill_id`, `item_id`, `quantity`) VALUES
(184, 49, 'C1', 5),
(185, 49, 'C2', 1),
(189, 51, 'C1', 1),
(190, 51, 'C2', 1),
(194, 52, 'C1', 2),
(195, 52, 'C3', 2),
(196, 52, 'HC3', 1),
(197, 52, 'CP4', 1),
(198, 53, 'C1', 1),
(199, 53, 'C2', 1),
(200, 53, 'C3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `card_payments`
--

CREATE TABLE `card_payments` (
  `card_id` int(11) NOT NULL,
  `account_holder_name` varchar(255) NOT NULL,
  `card_number` varchar(16) NOT NULL,
  `expiry_date` varchar(7) NOT NULL,
  `security_code` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kitchen`
--

CREATE TABLE `kitchen` (
  `kitchen_id` int(11) NOT NULL,
  `table_id` int(11) DEFAULT NULL,
  `item_id` varchar(6) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `time_submitted` datetime DEFAULT NULL,
  `time_ended` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kitchen`
--

INSERT INTO `kitchen` (`kitchen_id`, `table_id`, `item_id`, `quantity`, `time_submitted`, `time_ended`) VALUES
(1, 6, 'SK3', 4, '2023-10-03 18:45:00', '2025-04-18 20:36:56'),
(2, 6, 'CP2', 3, '2023-10-03 18:45:00', '2025-04-18 20:36:56'),
(3, 5, 'S3', 5, '2023-10-03 20:00:00', '2025-04-18 20:36:56'),
(4, 5, 'MD15', 2, '2023-10-03 14:45:00', '2025-04-18 20:36:57'),
(5, 1, 'MD1', 1, '2023-09-28 22:45:00', '2023-09-28 23:00:00'),
(6, 1, 'MD15', 2, '2023-09-28 22:45:00', '2023-09-28 23:00:00'),
(7, 1, 'S3', 1, '2023-09-28 22:45:00', '2023-09-28 23:00:00'),
(8, 1, 'L1', 1, '2023-09-28 22:45:00', '2023-09-28 23:00:00'),
(9, 5, 'MD2', 1, '2023-09-28 19:00:00', '2023-09-28 19:15:00'),
(10, 5, 'MD5', 1, '2023-09-28 19:00:00', '2023-09-28 19:15:00'),
(11, 5, 'MD16', 1, '2023-09-28 19:00:00', '2023-09-28 19:15:00'),
(12, 5, 'S5', 1, '2023-09-28 19:00:00', '2023-09-28 19:15:00'),
(13, 5, 'L2', 2, '2023-09-28 19:00:00', '2023-09-28 19:15:00'),
(14, 5, 'HC2', 1, '2023-09-28 19:00:00', '2023-09-28 19:15:00'),
(15, 2, 'MD19', 2, '2023-09-29 22:45:00', '2023-09-29 23:00:00'),
(16, 2, 'MD2', 1, '2023-09-29 22:45:00', '2023-09-29 23:00:00'),
(17, 2, 'MD4', 2, '2023-09-29 22:45:00', '2023-09-29 23:00:00'),
(18, 2, 'S6', 2, '2023-09-29 22:45:00', '2023-09-29 23:00:00'),
(19, 2, 'L3', 1, '2023-09-29 22:45:00', '2023-09-29 23:00:00'),
(20, 2, 'HC3', 1, '2023-09-29 22:45:00', '2023-09-29 23:00:00'),
(21, 10, 'MD23', 1, '2023-10-06 10:45:00', '2025-04-18 20:36:57'),
(22, 10, 'MD2', 1, '2023-10-06 10:45:00', '2025-04-18 20:36:58'),
(23, 6, 'MD22', 1, '2023-10-06 14:45:00', '2025-04-18 20:36:58'),
(24, 6, 'CP5', 2, '2023-10-06 14:45:00', '2025-04-18 20:36:58'),
(25, 8, 'C5', 1, '2025-04-18 20:37:46', '2025-04-21 10:55:35'),
(26, 8, 'HC5', 2, '2025-04-18 20:37:50', '2025-04-21 10:55:36'),
(27, 8, 'L7', 2, '2025-04-18 20:37:54', '2025-04-21 10:55:36'),
(28, 8, 'CP4', 1, '2025-04-18 20:37:56', '2025-04-21 10:55:36'),
(29, 8, 'C5', 1, '2025-04-18 20:41:12', '2025-04-21 10:55:36'),
(30, 8, 'C3', 1, '2025-04-18 20:41:17', '2025-04-21 10:55:37'),
(31, 8, 'C4', 3, '2025-04-18 20:41:19', '2025-04-21 10:55:37'),
(33, 1, 'C3', 1, '2025-04-21 10:01:16', '2025-04-21 10:55:37'),
(34, 1, 'C5', 1, '2025-04-21 10:01:20', '2025-04-21 10:55:37'),
(35, 1, 'C3', 1, '2025-04-21 10:01:30', '2025-04-21 10:55:37'),
(36, 1, 'C3', 1, '2025-04-21 10:04:35', '2025-04-21 10:55:37'),
(37, 1, 'C2', 1, '2025-04-21 10:04:37', '2025-04-21 10:55:38'),
(38, 1, 'C1', 3, '2025-04-21 10:55:54', '2025-04-21 10:55:38'),
(39, 1, 'C2', 3, '2025-04-21 10:15:16', '2025-04-21 10:55:38'),
(40, 1, 'C1', 5, '2025-04-21 10:55:54', '2025-04-21 10:55:38'),
(41, 1, 'C2', 1, '2025-04-21 10:55:56', '2025-05-06 13:02:10'),
(42, 1, 'C1', 1, '2025-04-21 17:07:32', '2025-05-06 13:02:12'),
(43, 1, 'C2', 1, '2025-04-21 17:07:35', NULL),
(44, 6, 'C1', 2, '2025-05-06 12:46:16', NULL),
(45, 6, 'C3', 2, '2025-05-06 12:33:11', NULL),
(46, 6, 'HC3', 1, '2025-05-06 12:54:36', NULL),
(47, 6, 'CP4', 1, '2025-05-06 12:54:45', NULL),
(48, 6, 'C1', 1, '2025-05-06 12:56:51', NULL),
(49, 6, 'C2', 1, '2025-05-06 12:56:51', NULL),
(50, 6, 'C3', 1, '2025-05-06 12:56:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `memberships`
--

CREATE TABLE `memberships` (
  `member_id` int(11) NOT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `memberships`
--

INSERT INTO `memberships` (`member_id`, `member_name`, `points`, `account_id`) VALUES
(1, 'Angelo Sudario', 279, 33),
(23, 'Customer 1', 0, 34);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `item_id` varchar(6) NOT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `item_type` varchar(255) DEFAULT NULL,
  `item_category` varchar(255) DEFAULT NULL,
  `item_price` decimal(10,2) DEFAULT NULL,
  `item_description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`item_id`, `item_name`, `item_type`, `item_category`, `item_price`, `item_description`) VALUES
('C1', 'Kamikaze', 'Classic Cocktails', 'Drinks', 28.00, 'cocktails'),
('C2', 'Singapore Sling', 'Classic Cocktails', 'Drinks', 29.00, 'cocktails'),
('C3', 'Long Island Iced Tea', 'Classic Cocktails', 'Drinks', 29.00, 'cocktails'),
('C4', 'Lady on the Beach', 'Classic Cocktails', 'Drinks', 29.00, 'cocktails'),
('C5', 'Margarita', 'Classic Cocktails', 'Drinks', 29.00, 'cocktails'),
('C6', 'Pina Colada', 'Classic Cocktails', 'Drinks', 26.00, 'cocktails'),
('C7', 'Mojito', 'Classic Cocktails', 'Drinks', 29.00, 'cocktails'),
('CP1', 'Green Apple', 'Cold Pressed Juice', 'Drinks', 15.00, 'fresh pressed juice'),
('CP2', 'Orange', 'Cold Pressed Juice', 'Drinks', 15.00, 'fresh pressed juice'),
('CP3', 'Carrot', 'Cold Pressed Juice', 'Drinks', 15.00, 'fresh pressed juice'),
('CP4', 'Watermelon', 'Cold Pressed Juice', 'Drinks', 13.00, 'fresh pressed juice'),
('CP5', 'Pineapple', 'Cold Pressed Juice', 'Drinks', 13.00, 'fresh pressed juice'),
('CP6', 'Lime', 'Cold Pressed Juice', 'Drinks', 10.00, 'fresh pressed juice'),
('HC1', 'Shoney Iced Tea', 'House Cocktails', 'Drinks', 32.00, 'Gin, Rum'),
('HC2', 'Blue Lady', 'House Cocktails', 'Drinks', 30.00, 'Vodka'),
('HC3', 'Black Mambaa', 'House Cocktails', 'Drinks', 30.00, 'Vodka'),
('HC4', 'Lycheetini', 'House Cocktails', 'Drinks', 25.00, 'Vodka'),
('HC5', 'Chichi', 'House Cocktails', 'Drinks', 25.00, 'Vodka'),
('HD1', 'Brownies', 'House Dessert', 'Side Snacks', 15.00, 'delicious brownies'),
('HD2', 'American Cheese Cake', 'House Dessert', 'Side Snacks', 15.00, 'delicious cheese cake'),
('HD3', 'Pie of the Day', 'House Dessert', 'Side Snacks', 13.00, 'delicious served with vanilla ice cream'),
('HD4', 'Coated Ice Cream', 'House Dessert', 'Side Snacks', 12.00, 'delicious ice cream'),
('HD5', 'Messy Sundae', 'House Dessert', 'Side Snacks', 14.00, 'delicious brownies'),
('L1', 'Blended Scotch (Black Label)', 'Liquor', 'Drinks', 310.00, 'Johnny Walker Black Label Sherry 700ml'),
('L2', 'Blended Scotch (Gold Label)', 'Liquor', 'Drinks', 390.00, 'Johnny Walker Gold Label 750ml'),
('L3', 'American Whisky (Jack Daniel)', 'Liquor', 'Drinks', 290.00, '700ml'),
('L4', 'American Whisky (Jim Beam)', 'Liquor', 'Drinks', 270.00, '750ml'),
('L5', 'Single Malt', 'Liquor', 'Drinks', 360.00, 'Singleton Signature 700ml'),
('L6', 'Cognac', 'Liquor', 'Drinks', 390.00, 'Hennessy VSOP 700ml'),
('L7', 'Vodka', 'Liquor', 'Drinks', 195.00, 'Smirnoff Red 700ml'),
('L8', 'Tequila', 'Liquor', 'Drinks', 165.00, 'Jose Cuervo 750ml'),
('L9', 'Gin', 'Liquor', 'Drinks', 210.00, 'Gordon 700ml'),
('M1', 'Cool & Refreshing', 'Mocktails', 'Drinks', 16.00, 'Cucumber,peppermint,lemon'),
('M2', 'Virgin Apple Mojito', 'Mocktails', 'Drinks', 16.00, 'Green apple, mint leaf'),
('M3', 'Shirley Temple', 'Mocktails', 'Drinks', 16.00, 'Lemonade, grenadine'),
('M4', 'Purple Rain', 'Mocktails', 'Drinks', 16.00, 'Blackcurrant, strawberry'),
('M5', 'Silly Rose', 'Mocktails', 'Drinks', 16.00, 'Green Tea, lychee, rose'),
('M6', 'Incredible Green', 'Mocktails', 'Drinks', 16.00, 'Green apple, lemon, lime, soda'),
('MD1', 'Prime Rib Steak', 'Steak & Ribs', 'Main Dishes', 96.00, '300g'),
('MD10', 'Braised Lamb Shank', 'Lamb', 'Main Dishes', 52.00, 'delicious braised lamb shank'),
('MD11', 'Catch of the day', 'Seafood', 'Main Dishes', 46.00, 'fresh seafood'),
('MD12', 'Grilled Salmon', 'Seafood', 'Main Dishes', 48.00, 'fresh salmon'),
('MD13', 'Jambalaya', 'Seafood', 'Main Dishes', 28.00, 'delicious jambalaya'),
('MD14', 'Fish & Chips', 'Seafood', 'Main Dishes', 35.00, 'delicious fish & chips'),
('MD15', 'Classic Cheese Burger', 'Burgers & Sandwiches', 'Main Dishes', 30.00, 'delicious burger'),
('MD16', 'Hickory Burger', 'Burgers & Sandwiches', 'Main Dishes', 30.00, 'delicious burger'),
('MD17', 'Fried Chicken Burger', 'Burgers & Sandwiches', 'Main Dishes', 24.00, 'delicious burger'),
('MD18', 'Grilled Chicken Burger', 'Burgers & Sandwiches', 'Main Dishes', 24.00, 'delicious burger'),
('MD19', 'Chili Dog', 'Burgers & Sandwiches', 'Main Dishes', 25.00, 'delicious sandwich'),
('MD2', 'Sirloin Steak', 'Steak & Ribs', 'Main Dishes', 79.00, '230g'),
('MD20', 'Meatballs Sandwich', 'Burgers & Sandwiches', 'Main Dishes', 25.00, 'delicious sandwich'),
('MD21', 'Street Car', 'Burgers & Sandwiches', 'Main Dishes', 24.00, 'delicious sandwich'),
('MD22', 'Shrimp Po Boy', 'Burgers & Sandwiches', 'Main Dishes', 32.00, 'delicious sandwich'),
('MD23', 'Chicken Po Boy', 'Burgers & Sandwiches', 'Main Dishes', 28.00, 'delicious sandwich'),
('MD24', 'Chicken Tortilla', 'Burgers & Sandwiches', 'Main Dishes', 22.00, 'delicious sandwich'),
('MD25', 'Bolognese', 'Pasta', 'Main Dishes', 26.00, 'Spaghetti'),
('MD26', 'Meat Balls', 'Pasta', 'Main Dishes', 28.00, 'Spaghetti'),
('MD27', 'Carbonara', 'Pasta', 'Main Dishes', 28.00, 'Penne'),
('MD28', 'Chicken & Mushroom Aglio Olio', 'Pasta', 'Main Dishes', 28.00, 'Penne'),
('MD29', 'Chicken Arabiatta', 'Pasta', 'Main Dishes', 28.00, 'Spaghetti'),
('MD3', 'Ribeye Steak', 'Steak & Ribs', 'Main Dishes', 96.00, '230g'),
('MD30', 'Seafood Aglio Olio', 'Pasta', 'Main Dishes', 32.00, 'Spaghetti'),
('MD31', 'Shrimp', 'Pasta', 'Main Dishes', 32.00, 'Penne'),
('MD32', 'Italian Chicken', 'Pasta', 'Main Dishes', 30.00, 'Chef\'s Signature Pasta'),
('MD33', 'Braised Lamb Cutlet', 'Pasta', 'Main Dishes', 33.00, 'Chef\'s Signature Pasta'),
('MD34', 'Fries', 'Side Dishes', 'Side Snacks', 9.00, 'delicious'),
('MD35', 'Potato Wedges', 'Side Dishes', 'Side Snacks', 9.00, 'delicious'),
('MD36', 'Garden Salad', 'Side Dishes', 'Side Snacks', 9.00, 'delicious'),
('MD37', 'V.O.D', 'Side Dishes', 'Side Snacks', 9.00, 'delicious vegetables'),
('MD38', 'Wan Tan', 'Side Dishes', 'Side Snacks', 9.00, 'delicious'),
('MD39', 'Buttered Corn', 'Side Dishes', 'Side Snacks', 9.00, 'delicious'),
('MD4', 'BBQ Ribs', 'Steak & Ribs', 'Main Dishes', 59.00, '400g'),
('MD40', 'Coleslaw', 'Side Dishes', 'Side Snacks', 9.00, 'delicious'),
('MD41', 'Garlic Bread', 'Side Dishes', 'Side Snacks', 9.00, 'delicious'),
('MD42', 'Dirty Rice', 'Side Dishes', 'Side Snacks', 9.00, 'delicious'),
('MD5', 'Grilled Chicken ½ Bird', 'Chicken', 'Main Dishes', 33.00, '½ Bird'),
('MD6', 'Southern Fried Chicken ½ Bird', 'Chicken', 'Main Dishes', 33.00, '½ Bird'),
('MD7', 'Pan Seared Chicken', 'Chicken', 'Main Dishes', 28.00, '300g'),
('MD8', 'Chicken Chop', 'Chicken', 'Main Dishes', 28.00, '300g'),
('MD9', 'Grilled Lamb Chops', 'Lamb', 'Main Dishes', 48.00, 'delicious grilled lamb chop'),
('S1', 'Buffalo Wings', 'Bar Bites', 'Side Snacks', 24.00, 'delicious buffalo wings'),
('S10', 'Shoney Salad', 'Salad', 'Side Snacks', 20.00, 'delicious salad'),
('S2', 'Fried Calamari', 'Bar Bites', 'Side Snacks', 29.00, 'delicious fried calamari'),
('S3', 'Cheesy Baked Mussels ½ Dozen', 'Bar Bites', 'Side Snacks', 23.00, '½ Dozen'),
('S4', 'Cheesy Baked Mussels 1 Dozen', 'Bar Bites', 'Side Snacks', 38.00, '1 Dozen'),
('S5', 'Chopped Lamb Chops', 'Bar Bites', 'Side Snacks', 39.00, 'Delicious lamb chop'),
('S6', 'Nachos', 'Bar Bites', 'Side Snacks', 28.00, 'delicious nachos'),
('S7', 'Cheesy Fries', 'Bar Bites', 'Side Snacks', 14.00, 'delicious cheesy fries'),
('S8', 'Cheesy Meat Fries', 'Bar Bites', 'Side Snacks', 22.00, 'delicious cheesy meat fries'),
('S9', 'Grilled Chicken Caesar Salad', 'Salad', 'Side Snacks', 24.00, 'delicious salad'),
('SK1', 'Chicken Tenders', 'Shoney Kid', 'Side Snacks', 12.00, 'delicious chicken tenders'),
('SK2', 'Chicken Wings', 'Shoney Kid', 'Side Snacks', 12.00, 'delicious chicken wings'),
('SK3', 'Fish Fingers', 'Shoney Kid', 'Side Snacks', 15.00, 'served with fries & corn'),
('SK4', 'Cheesy Pasta', 'Shoney Kid', 'Side Snacks', 12.00, 'delicious cheesy pasta'),
('SK5', 'Meat Sauce Pasta', 'Shoney Kid', 'Side Snacks', 12.00, 'delicious pasta'),
('SK6', 'Milo', 'Shoney Kid', 'Side Snacks', 2.50, '200ml pack'),
('SK7', 'Ribena', 'Shoney Kid', 'Side Snacks', 3.50, '330ml pack'),
('SK8', 'Fruity Yogurt Smoothies', 'Shoney Kid', 'Side Snacks', 5.00, 'watermelon or pineapple'),
('SK9', 'Ice Cream MilkShakes', 'Shoney Kid', 'Side Snacks', 5.00, 'vanilla or chocolate');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `reservation_id` int(11) NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `table_id` int(11) DEFAULT NULL,
  `reservation_time` time DEFAULT NULL,
  `reservation_date` date DEFAULT NULL,
  `head_count` int(11) DEFAULT NULL,
  `special_request` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`reservation_id`, `customer_name`, `table_id`, `reservation_time`, `reservation_date`, `head_count`, `special_request`) VALUES
(920251, 'alvin', 1, '09:00:00', '2025-04-22', 4, ' basta yun'),
(920253, 'alvin', 3, '09:00:00', '2025-04-22', 4, ' basta yun'),
(1020251, 'JEI YAN', 1, '10:00:00', '2025-04-23', 4, ' near window'),
(1020252, 'JEI YAN', 2, '10:00:00', '2025-04-23', 4, ' near window'),
(1111111, 'Default', 9, '19:15:00', '2023-10-05', 2, 'Description'),
(1520254, 'Zedrick Agustin', 4, '15:00:00', '2025-04-23', 6, ''),
(9202510, 'alvin', 10, '09:00:00', '2025-04-22', 8, ' basta yun');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_tables`
--

CREATE TABLE `restaurant_tables` (
  `table_id` int(11) NOT NULL,
  `capacity` int(11) DEFAULT NULL,
  `is_available` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restaurant_tables`
--

INSERT INTO `restaurant_tables` (`table_id`, `capacity`, `is_available`) VALUES
(1, 4, 1),
(2, 4, 1),
(3, 4, 1),
(4, 6, 1),
(5, 6, 1),
(6, 6, 1),
(7, 6, 1),
(8, 8, 1),
(9, 8, 1),
(10, 8, 1),
(11, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

CREATE TABLE `staffs` (
  `staff_id` int(11) NOT NULL,
  `staff_name` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staffs`
--

INSERT INTO `staffs` (`staff_id`, `staff_name`, `role`, `account_id`) VALUES
(1, 'Jezreel Ann Cayabyab', 'Barista', 1),
(2, 'Alvin', 'Waiter', 2);

-- --------------------------------------------------------

--
-- Table structure for table `table_availability`
--

CREATE TABLE `table_availability` (
  `availability_id` int(11) NOT NULL,
  `table_id` int(11) DEFAULT NULL,
  `reservation_date` date DEFAULT NULL,
  `reservation_time` time DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_availability`
--

INSERT INTO `table_availability` (`availability_id`, `table_id`, `reservation_date`, `reservation_time`, `status`) VALUES
(920251, 1, '2025-04-19', '09:00:00', 'no'),
(920252, 3, '2025-05-07', '11:00:00', 'no'),
(920253, 4, '2025-04-24', '13:00:00', 'no'),
(920254, 1, '2025-04-22', '15:00:00', 'no'),
(920255, 4, '2025-04-23', '15:00:00', 'no'),
(920256, 1, '2025-04-21', '16:00:00', 'no'),
(920257, 3, '2025-04-28', '18:00:00', 'no'),
(1020251, 1, '2025-04-23', '10:00:00', 'no'),
(1020252, 2, '2025-04-23', '10:00:00', 'no'),
(2020253, 3, '2025-05-08', '20:00:00', 'no'),
(9202510, 10, '2025-04-22', '09:00:00', 'no');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`bill_id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `reservation_id` (`reservation_id`),
  ADD KEY `table_id` (`table_id`),
  ADD KEY `card_id` (`card_id`);

--
-- Indexes for table `bill_items`
--
ALTER TABLE `bill_items`
  ADD PRIMARY KEY (`bill_item_id`),
  ADD KEY `bill_id` (`bill_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `card_payments`
--
ALTER TABLE `card_payments`
  ADD PRIMARY KEY (`card_id`);

--
-- Indexes for table `kitchen`
--
ALTER TABLE `kitchen`
  ADD PRIMARY KEY (`kitchen_id`),
  ADD KEY `table_id` (`table_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `memberships`
--
ALTER TABLE `memberships`
  ADD PRIMARY KEY (`member_id`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`reservation_id`),
  ADD KEY `table_id` (`table_id`);

--
-- Indexes for table `restaurant_tables`
--
ALTER TABLE `restaurant_tables`
  ADD PRIMARY KEY (`table_id`);

--
-- Indexes for table `staffs`
--
ALTER TABLE `staffs`
  ADD PRIMARY KEY (`staff_id`),
  ADD KEY `staffs_ibfk_1` (`account_id`);

--
-- Indexes for table `table_availability`
--
ALTER TABLE `table_availability`
  ADD PRIMARY KEY (`availability_id`),
  ADD KEY `table_id` (`table_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `bill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `bill_items`
--
ALTER TABLE `bill_items`
  MODIFY `bill_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `card_payments`
--
ALTER TABLE `card_payments`
  MODIFY `card_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `kitchen`
--
ALTER TABLE `kitchen`
  MODIFY `kitchen_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `memberships`
--
ALTER TABLE `memberships`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `reservation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14202311;

--
-- AUTO_INCREMENT for table `restaurant_tables`
--
ALTER TABLE `restaurant_tables`
  MODIFY `table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `staffs`
--
ALTER TABLE `staffs`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `table_availability`
--
ALTER TABLE `table_availability`
  MODIFY `availability_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9202511;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bills`
--
ALTER TABLE `bills`
  ADD CONSTRAINT `bills_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staffs` (`staff_id`),
  ADD CONSTRAINT `bills_ibfk_2` FOREIGN KEY (`member_id`) REFERENCES `memberships` (`member_id`),
  ADD CONSTRAINT `bills_ibfk_3` FOREIGN KEY (`reservation_id`) REFERENCES `reservations` (`reservation_id`),
  ADD CONSTRAINT `bills_ibfk_4` FOREIGN KEY (`table_id`) REFERENCES `restaurant_tables` (`table_id`),
  ADD CONSTRAINT `bills_ibfk_5` FOREIGN KEY (`card_id`) REFERENCES `card_payments` (`card_id`);

--
-- Constraints for table `bill_items`
--
ALTER TABLE `bill_items`
  ADD CONSTRAINT `bill_items_ibfk_1` FOREIGN KEY (`bill_id`) REFERENCES `bills` (`bill_id`),
  ADD CONSTRAINT `bill_items_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `menu` (`item_id`);

--
-- Constraints for table `kitchen`
--
ALTER TABLE `kitchen`
  ADD CONSTRAINT `kitchen_ibfk_1` FOREIGN KEY (`table_id`) REFERENCES `restaurant_tables` (`table_id`),
  ADD CONSTRAINT `kitchen_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `menu` (`item_id`);

--
-- Constraints for table `memberships`
--
ALTER TABLE `memberships`
  ADD CONSTRAINT `memberships_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`account_id`);

--
-- Constraints for table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_ibfk_1` FOREIGN KEY (`table_id`) REFERENCES `restaurant_tables` (`table_id`);

--
-- Constraints for table `staffs`
--
ALTER TABLE `staffs`
  ADD CONSTRAINT `staffs_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`account_id`);

--
-- Constraints for table `table_availability`
--
ALTER TABLE `table_availability`
  ADD CONSTRAINT `table_availability_ibfk_1` FOREIGN KEY (`table_id`) REFERENCES `restaurant_tables` (`table_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
