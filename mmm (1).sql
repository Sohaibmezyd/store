-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 04, 2021 at 04:12 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mmm`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
CREATE TABLE IF NOT EXISTS `carts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cart_session` varchar(191) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `cart_session`, `product_id`, `qty`, `created_at`, `updated_at`) VALUES
(3, '745516', 9, 1, '2019-05-15 15:35:25', '2019-05-15 15:35:25'),
(4, '528401', 8, 2, '2019-05-15 21:46:07', '2019-05-15 21:46:53'),
(5, '528401', 5, 2, '2019-05-15 21:46:22', '2019-05-15 21:58:09'),
(6, '528401', 13, 1, '2019-05-15 21:46:29', '2019-05-15 21:46:29'),
(7, '590860', 11, 1, '2019-05-18 20:36:23', '2019-05-18 20:36:23'),
(8, '590860', 12, 1, '2019-05-18 20:36:39', '2019-05-18 20:36:39'),
(9, '988307', 8, 1, '2019-05-19 20:26:31', '2019-05-19 20:26:31'),
(10, '231465', 8, 1, '2019-05-23 19:13:59', '2019-05-23 19:13:59'),
(11, '544855', 12, 1, '2019-06-02 12:41:31', '2019-06-02 12:41:31'),
(12, NULL, 8, 1, '2019-06-02 12:44:53', '2019-06-02 12:44:53'),
(13, '190887', 8, 1, '2019-06-02 12:45:58', '2019-06-02 12:45:58'),
(14, '143713', 5, 1, '2019-06-02 12:51:08', '2019-06-02 12:51:08'),
(15, '143713', 12, 1, '2019-06-02 12:51:20', '2019-06-02 12:51:20'),
(16, '544855', 5, 1, '2019-06-02 15:15:10', '2019-06-02 15:15:10'),
(22, '323291', 16, 1, '2019-06-13 15:42:55', '2019-06-13 15:42:55'),
(48, '5', 5, 2, '2019-06-22 09:40:00', '2019-06-22 09:45:06'),
(52, '7', 21, 1, '2019-08-02 11:17:17', '2019-08-02 11:17:17');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(191) NOT NULL,
  `link` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `link`, `created_at`, `updated_at`) VALUES
(2, 'رجال', 'men', '2021-01-03 07:32:00', '2019-06-23 01:15:14'),
(3, 'حريم', 'women', '2021-01-03 07:32:06', '2019-06-23 01:15:36'),
(4, 'أطفال', 'kids', '2021-01-03 07:32:11', '2019-04-25 11:29:56');

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

DROP TABLE IF EXISTS `category_product`;
CREATE TABLE IF NOT EXISTS `category_product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`product_id`, `category_id`) VALUES
(4, 3),
(6, 4),
(15, 3),
(16, 4),
(17, 4),
(18, 4),
(19, 4),
(22, 3),
(25, 2),
(27, 2),
(30, 2),
(8, 2),
(9, 3),
(10, 3),
(11, 2),
(13, 2),
(12, 3),
(14, 2),
(33, 2),
(5, 3),
(20, 2),
(21, 2),
(22, 3),
(23, 3),
(24, 4),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(35, 3),
(34, 2),
(36, 3),
(37, 3),
(38, 3),
(39, 3),
(40, 3),
(41, 3),
(42, 4),
(43, 4),
(44, 4),
(45, 4),
(46, 4),
(47, 4),
(48, 4);

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
CREATE TABLE IF NOT EXISTS `companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(19, 'NIKE', '1561301347.jpg', '2019-05-26 10:40:51', '2019-06-23 14:49:07'),
(21, 'GUCCL', '1561301380.png', '2019-05-26 10:42:28', '2019-06-23 14:49:40'),
(28, 'ABCE', '1561301494.jpg', '2019-05-26 11:01:27', '2019-06-23 14:51:34'),
(29, 'ADDIDAS', '1561301515.jpg', '2019-05-26 11:02:19', '2019-06-23 14:51:55'),
(30, 'ARENA', '1561287656.jpg', '2019-05-26 11:03:12', '2019-06-23 11:00:56'),
(32, 'NIKE', '1561302910.jpg', '2019-06-23 15:14:54', '2019-06-23 15:15:10');

-- --------------------------------------------------------

--
-- Table structure for table `logins`
--

DROP TABLE IF EXISTS `logins`;
CREATE TABLE IF NOT EXISTS `logins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users` varchar(191) NOT NULL,
  `password` int(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `country` varchar(191) NOT NULL,
  `address` varchar(191) NOT NULL,
  `city` varchar(191) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `statuses` varchar(191) DEFAULT 'قيد التنفيذ',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `country`, `address`, `city`, `phone`, `statuses`, `created_at`, `updated_at`) VALUES
(1, 'momomo', 'momomo@mo.mo', 'إسرائيل', 'israel', 'Gaza', '0599425978', '3', '2021-01-03 10:21:35', '2021-01-03 10:22:03');

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

DROP TABLE IF EXISTS `order_products`;
CREATE TABLE IF NOT EXISTS `order_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_name` varchar(191) NOT NULL,
  `price` varchar(191) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`id`, `order_id`, `product_name`, `price`, `qty`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 'Men\'s Jacket', '88.00000', 1, '88', '2021-01-03 10:21:36', '2021-01-03 10:21:36');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(191) DEFAULT NULL,
  `link` varchar(191) DEFAULT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `link`, `description`, `created_at`, `updated_at`) VALUES
(1, 'About Us', 'about-us', '<div style=\"direction: ltr; \">Our mission is to deliver the most compelling shopping experience for our customers.</div><div style=\"direction: ltr;\"><br></div><div style=\"direction: ltr;\"><b>Discover</b></div><div style=\"direction: ltr;\">SHOP.COM is a new kind of shopping comparison site that offers the most comprehensive shopping experience on the web. Our shopping experts have drawn on their industry experience and insider connections to bring you the best collection of the stores you can\'t live without, and the brands and products you love - all in one place.</div><div style=\"direction: ltr;\"><br></div><div style=\"direction: ltr;\"><b>Compare</b></div><div style=\"direction: ltr;\">Search for the products you love from the best stores on the web and see them side by side. Decide which price, shipping method, and delivery schedule options work best for you.</div><div style=\"direction: ltr;\"><br></div><div style=\"direction: ltr;\"><b>Learn</b></div><div style=\"direction: ltr;\">But we don\'t stop there. Unlike other shopping comparison sites, we offer you a variety of tools and expert advice to help you make informed buying decisions and to find the best product to suit your needs.</div><div style=\"direction: ltr;\"><br></div><div style=\"direction: ltr;\"><b>Share</b></div><div style=\"direction: ltr;\">You don\'t have to take our word for it. Share your opinions through tools like product reviews and our Facebook page</div><div style=\"direction: ltr;\"><br></div><div style=\"direction: ltr;\"><b>Shop</b></div><div style=\"direction: ltr; \">And when you\'re ready to buy, we give you options. You can use your secure SHOP.COM account to make purchases across hundreds of OneCart® Trusted Merchant Stores, all backed by SHOP.COM\'s 100% satisfaction guarantee, or you can make your purchase directly from the web sites of one of hundreds of our Partner Stores.</div><div style=\"direction: ltr; \"><br></div>', '2019-04-14 12:30:26', '2019-04-14 13:54:06'),
(2, 'Contact Us', 'contact-us', '<p><b>Email : ishorrab@gmail.com</b></p><p><b><br></b></p><p><b>Email : mohamedsafya@gmail.com</b></p><p><b><br></b></p><p><b>Email : mahmoudjouda@gmail.com</b></p><p><br></p><p><b>Phone : +970592269027</b></p><p><b><br></b></p><p><b>Phone : +970599425978</b></p><p><b><br></b></p><p><b>Phone : +970592659598</b></p><p><b><br></b></p><p><b>Whatsapp: +970567455466</b></p><p><b><br></b></p><p><b>Whatsapp: +970566518848</b></p><p><b><br></b></p><p><b>Whatsapp: +970562515842</b></p><div><br></div>', '2019-04-14 13:36:39', '2019-06-23 01:54:23');

-- --------------------------------------------------------

--
-- Table structure for table `pays`
--

DROP TABLE IF EXISTS `pays`;
CREATE TABLE IF NOT EXISTS `pays` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `name` varchar(199) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pays`
--

INSERT INTO `pays` (`id`, `user_id`, `number`, `name`, `created_at`, `updated_at`) VALUES
(1, 11, 0, 'عند الاستلام ', '2021-01-03 10:21:12', '2021-01-03 10:21:12'),
(2, 11, 0, 'عند الاستلام ', '2021-01-03 10:21:40', '2021-01-03 10:21:40');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `price` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `featured` int(11) NOT NULL DEFAULT '0',
  `after_discount` decimal(15,5) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `status`, `price`, `featured`, `after_discount`, `image`, `created_at`, `updated_at`) VALUES
(5, 'Women Long Sleeveless', '<p><span style=\"color: rgb(51, 51, 51); font-family: \"open sans\", sans-serif;\">For women long sleeveless dress sleeveless v-neck shape Vsnin weddings</span><br></p>', 1, '400.00000', 0, '300.00000', '1561280375.png', '2019-06-23 08:59:35', '2019-06-23 08:59:35'),
(8, 'Men\'s Blouse', '<p><font color=\"#333333\" face=\"open sans, sans-serif\">1(Men\'s Blouse- Long-sleeved Collar with pockets, practical design (large size</font><br></p>', 1, '500.00000', 0, '200.00000', '1558263416.jpg', '2019-06-23 02:06:18', '2019-06-23 02:06:18'),
(9, 'Women\'s Caftan', '<div class=\"short-desc\" style=\"box-sizing: border-box; margin-bottom: 20px; color: rgb(51, 51, 51); font-family: \"open sans\", sans-serif;\"><p style=\"box-sizing: border-box; margin-r', 1, '100.00000', 0, '50.00000', '1558259912.png', '2019-06-23 01:16:39', '2019-06-23 01:16:39'),
(10, 'Women\'s Holiday Suits', '<span style=\"color: rgb(51, 51, 51); font-family: \"open sans\", sans-serif;\">Fast Fashion Women\'s Holiday Suits</span>', 1, '700.00000', 0, '150.00000', '1558264441.png', '2019-06-23 01:16:48', '2019-06-23 01:16:48'),
(11, 'Men\'s Jacket', '<span style=\"color: rgb(51, 51, 51); font-family: \"open sans\", sans-serif;\">(Men\'s Jacket - Long-sleeved Collar with pockets, practical design (large size</span>', 1, '150.00000', 1, '30.00000', '1558259554.png', '2019-06-23 01:42:46', '2019-06-23 01:42:46'),
(12, 'Women\'s Jeans', '<span style=\"color: rgb(51, 51, 51); font-family: \"open sans\", sans-serif;\">Women\'s jeans - with a high waist, decorated with holes, with a stylish practical design</span><br>', 1, '600.00000', 0, '200.00000', '1558264541.png', '2019-06-23 01:17:26', '2019-06-23 01:17:26'),
(13, 'Jaket', '<p>Jaket2019 <span style=\"font-size: 1rem;\">Jaket2019 </span><span style=\"font-size: 1rem;\">Jaket2019</span><br></p>', 1, '250.00000', 0, '150.00000', '1558259162.png', '2019-05-19 09:46:03', '2019-05-19 09:46:03'),
(14, 'Men\'s Shirt', '<p><font color=\"#333333\" face=\"open sans, sans-serif\">(Men\'s Shirt - Long-sleeved Collar with pockets, practical design (large size</font><br></p>', 1, '600.00000', 1, '200.00000', '1558263581.png', '2019-06-23 01:41:23', '2019-06-23 01:41:23'),
(16, 'kids Dress', '<font color=\"#333333\" face=\"open sans, sans-serif\">kids Dress- Long-sleeved Collar with pockets, practical design </font><br>', 1, '250.00000', 0, '200.00000', '1558264936.jpg', '2019-06-23 01:42:04', '2019-06-23 01:42:04'),
(17, 'kids Dress', '<p><span style=\"color: rgb(51, 51, 51); font-family: \"open sans\", sans-serif;\">kids Dress</span><span style=\"color: rgb(51, 51, 51); font-family: \"open sans\", sans-serif;\"', 1, '25.00000', 1, '21.00000', '1558264973.jfif', '2019-06-23 01:41:32', '2019-06-23 01:41:32'),
(18, 'kids Dress', '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;open sans&quot;, sans-serif;\">kids Dress</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;open sans&quot;, sans-serif;\"', 1, '521.00000', 0, '150.00000', '1558264959.jfif', '2019-05-19 11:22:39', '2019-05-19 11:22:39'),
(19, 'kids Dress', '<p><span style=\"color: rgb(51, 51, 51); font-family: \"open sans\", sans-serif;\">kids Dress</span><span style=\"color: rgb(51, 51, 51); font-family: \"open sans\", sans-serif;\"', 1, '560.00000', 1, '500.00000', '1558264946.jpg', '2019-06-19 20:59:27', '2019-06-19 20:59:27'),
(20, 'jacket', 'jacket jacket 2019 ', 1, '99.00000', 0, '55.00000', '1561653058.jpg', '2019-06-27 16:30:58', '2019-06-27 16:30:58'),
(21, 'Men\'s Shirt', '<p>Men\'s Shirt Men\'s Shirt 2019<br></p>', 1, '50.00000', 0, '32.00000', '1561653944.jpg', '2019-06-27 16:47:11', '2019-06-27 16:47:11'),
(23, 'Women Long Sleeveless', '<p>Women Long Sleeveless<span style=\"white-space:pre\">	</span> Women Long Sleeveless<span style=\"white-space: pre;\">	</span>2019<br></p>', 1, '25.00000', 0, '12.00000', '1561654125.jpg', '2019-06-27 16:49:21', '2019-06-27 16:49:21'),
(24, 'kids blouse', '<p>kids blouse kids blouse 2019<br></p>', 1, '85.00000', 0, '23.00000', '1561654220.jpg', '2019-06-27 16:58:14', '2019-06-27 16:58:14'),
(26, 'Men\'s Jacket', '<p>Men\'s Jacket Men\'s Jacket219<br></p>', 1, '52.00000', 0, '33.00000', '1561654300.jpg', '2019-06-27 17:05:03', '2019-06-27 17:05:03'),
(28, 'Men\'s Jacket', '<p>Men\'s Jacket Men\'s Jacket 2019<br></p>', 1, '65.00000', 0, '56.00000', '1561654338.jpg', '2019-06-27 17:04:53', '2019-06-27 17:04:53'),
(29, 'Men\'s Jacket', '<p>Men\'s Jacket Men\'s Jacket 2019<br></p>', 1, '84.00000', 0, '55.00000', '1561654372.jpg', '2019-06-27 17:04:46', '2019-06-27 17:04:46'),
(31, 'Men\'s Jacket', '<p>Men\'s Jacket&nbsp;Men\'s Jacket2019<br></p>', 1, '88.00000', 0, '52.00000', '1561654805.jpg', '2019-06-27 17:00:05', '2019-06-27 17:00:05'),
(32, 'Men\'s Jacket', '<p>Men\'s Jacket Men\'s Jacket2019<br></p>', 1, '85.00000', 0, '52.00000', '1561654879.jpg', '2019-06-27 17:04:09', '2019-06-27 17:04:09'),
(34, 'Men\'s Jacket', '<p>Men\'s Jacket Men\'s Jacket2019<br></p>', 1, '44.00000', 0, '42.00000', '1561654966.jpg', '2019-06-27 17:04:02', '2019-06-27 17:04:02'),
(35, 'Women\'s Caftan', '<p>Women\'s Caftan&nbsp;Women\'s Caftan2019<br></p>', 1, '24.00000', 0, '21.00000', '1561655013.jpg', '2019-06-27 17:06:19', '2019-06-27 17:06:19'),
(36, 'Women\'s Caftan', '<p>Women\'s Caftan Women\'s Caftan2019<br></p>', 1, '654.00000', 1, '54.00000', '1561655203.jpg', '2019-06-27 17:14:31', '2019-06-27 17:14:31'),
(37, 'Women\'s Caftan', '<p>Women\'s Caftan&nbsp;Women\'s Caftan2019<br></p>', 1, '21.00000', 0, '13.00000', '1561655237.jpg', '2019-06-27 17:07:17', '2019-06-27 17:07:17'),
(38, 'Women\'s Caftan', '<p>Women\'s Caftan&nbsp;Women\'s Caftan2019<br></p>', 1, '50.00000', 0, '21.00000', '1561655266.jpeg', '2019-06-27 17:07:46', '2019-06-27 17:07:46'),
(39, 'Women\'s Caftan', '<p>Women\'s Caftan&nbsp;Women\'s Caftan2019<br></p>', 1, '22.00000', 0, '13.00000', '1561655291.jpg', '2019-06-27 17:08:11', '2019-06-27 17:08:11'),
(40, 'Women\'s Caftan', '<p>Women\'s Caftan Women\'s Caftan2019<br></p>', 1, '43.00000', 1, '23.00000', '1561655318.jpg', '2019-06-27 17:14:20', '2019-06-27 17:14:20'),
(41, 'Women\'s Caftan', '<p>Women\'s Caftan&nbsp;Women\'s Caftan2019<br></p>', 1, '54.00000', 0, '34.00000', '1561655342.jpg', '2019-06-27 17:09:02', '2019-06-27 17:09:02'),
(42, 'kids Dress', 'kids Dress&nbsp;kids Dress2019<br>', 1, '64.00000', 0, '25.00000', '1561655440.jpg', '2019-06-27 17:10:40', '2019-06-27 17:10:40'),
(43, 'kids Dress', '<p>kids Dress&nbsp;kids Dress2019<br></p>', 1, '85.00000', 0, '24.00000', '1561655468.jpg', '2019-06-27 17:11:08', '2019-06-27 17:11:08'),
(44, 'kids Dress', '<p>kids Dress&nbsp;kids Dress2019<br></p>', 1, '84.00000', 0, '21.00000', '1561655486.jpg', '2019-06-27 17:11:26', '2019-06-27 17:11:26'),
(45, 'kids Dress', '<p>kids Dress&nbsp;kids Dress2019<br></p>', 1, '99.00000', 0, '55.00000', '1561655524.jpg', '2019-06-27 17:12:04', '2019-06-27 17:12:04'),
(46, 'kids Dress', '<p>kids Dress&nbsp;kids Dress2019<br></p>', 1, '56.00000', 0, '25.00000', '1561655553.jpg', '2019-06-27 17:12:33', '2019-06-27 17:12:33'),
(47, 'kids Dress', '<p>kids Dress&nbsp;kids Dress2019<br></p>', 1, '52.00000', 0, '35.00000', '1561655575.jpg', '2019-06-27 17:12:55', '2019-06-27 17:12:55'),
(48, 'kids Dress', '<p>kids Dress kids Dress2019<br></p>', 0, '58.00000', 0, '28.00000', '1561655598.jpg', '2019-06-27 17:37:27', '2019-06-27 17:37:27');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE IF NOT EXISTS `reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(191) DEFAULT NULL,
  `Email` varchar(20) DEFAULT NULL,
  `Comment` text,
  `Product_id` int(191) NOT NULL,
  `Rate` int(191) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `Name`, `Email`, `Comment`, `Product_id`, `Rate`) VALUES
(1, 'mohamed ', 'asdfsd@sfsdf.sdf', 'asdfa sd asdas asd ', 4, 5),
(2, 'ahmad', 'dfd@ghj.df', 'sdfs dfs dfs', 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE IF NOT EXISTS `services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `vsion` varchar(500) NOT NULL,
  `icon` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `vsion`, `icon`, `created_at`, `updated_at`) VALUES
(2, 'SHOPPING', 'SHOPPING SHOPPING SHOPPING', 'icon-basket-loaded', '2019-05-18 11:59:06', '2019-05-26 11:07:31'),
(3, 'ADDRESS', 'ADDRESS ADDRESS ADDRESS', 'fa fa-address-book-o', '2019-05-18 14:31:22', '2019-05-26 11:09:11'),
(4, 'CAMERA', 'CAMERA CAMERA CAMERA CAMERA', 'fa fa-camera-retro fa-4x', '2019-05-19 21:28:53', '2019-05-26 11:06:57'),
(5, 'ambulance', 'ambulance ambulance ambulance', 'fa fa-ambulance', '2019-06-27 17:27:30', '2019-06-27 17:27:30'),
(6, 'rocket', 'rocket rocket rocket rocket', 'fa fa-rocket', '2019-06-27 17:28:52', '2019-06-27 17:29:10'),
(7, 'subway', 'subway subway subway subway', 'fa fa-subway', '2019-06-27 17:30:06', '2019-06-27 17:30:06'),
(8, 'sabha', 'dwedwedwedwe', 'fa fa-bath', '2019-07-01 09:07:06', '2019-07-01 09:07:06');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(191) DEFAULT NULL,
  `facebook` varchar(191) NOT NULL,
  `twitter` varchar(191) NOT NULL,
  `instagram` varchar(191) NOT NULL,
  `linkedIn` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `facebook`, `twitter`, `instagram`, `linkedIn`, `created_at`, `updated_at`) VALUES
(5, 'Shop World', 'https://www.facebook.com/profile.php?id=100006494829991', 'https://twitter.com/HmoodSafiya', 'https://www.instagram.com/hmood.safiya/', 'https://www.linkedin.com/in/mohammed-abu-safiya-31bb40176/', '2019-06-18 13:41:40', '2019-06-23 01:33:04');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
CREATE TABLE IF NOT EXISTS `sliders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(191) NOT NULL,
  `description` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(17, 'For women long', 'For women long sleeveless dress sleeveless v-neck shape', '1556395708.jpg', '2019-04-27 19:59:27', '2019-04-27 20:08:28'),
(18, 'Free People What She Said Lace Tanga Thong', 'Free People What She Said Lace Tanga ThongFree People What She Said Lace Tanga Thong', '1561287581.jpg', '2019-04-27 20:09:31', '2019-06-23 10:59:41'),
(19, 'mzxnc', '<p>jgkhl</p>', '1561971842.jpg', '2019-07-01 09:04:02', '2019-07-01 09:04:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `remember_token`, `is_admin`, `created_at`, `updated_at`) VALUES
(1, 'mojamed jouda2', 'm.jouda1986@gmail.com', '123456', '$2y$10$cbU9RxalpmGmGtwRCXMqs.IfqXwDvWdPHCRSjWpItJLqnKgMPqJO2', NULL, 0, '2019-06-02 14:47:05', '2019-06-24 10:07:39'),
(2, 'dds', 'ds@ffs.ssa', '1233333', '123456', 'ByNYsXrBemvQj0ZY4Gu41tzBJKMMRAgchyhmC800lMbDDQjKhrwAPBQ5RQGX', 0, '2019-06-10 18:21:17', '2019-06-23 10:21:58'),
(3, 'sabha1', 'g56789@gmail.com22', '059942597911', '12345', 'nhfbUuUI76TDZTJ1CfWjbRVGALWhvY9hcu9RGuzbfBmiPHkpBferriF8MAf7', 0, '2019-06-15 08:38:07', '2019-06-15 12:28:54'),
(4, 'MOHAMMED', 'mohammed0123@gmail.com', '0599425978', '$2y$10$Lq9kQKugUlqI2BmZLi2pMOr5VZSBWgOkx551/gUcZz8Q.O5Q4FnpO', 'rU5SKou54Ozo61BwAosOIBTQNSuRdT1pFaHhbwuhjIKaSt0RIc2vD3QeWwHf', 0, '2019-06-15 14:07:32', '2019-06-15 14:07:32'),
(5, 'www', 'ds@ffs.ssw', '232323', '$2y$10$xaOREcIZtMgjay.ruuEk9.YqjZjSoGqTV4PCHiFJEUotosNuBJ9HC', 'hFa02py4W7ykGhpOefaVPJ0Vi1UCJQ8BkhZEkfdcjL0olzjlYH2pYYqy0lUA', 0, '2019-06-15 14:23:45', '2019-06-23 18:48:37'),
(6, 'issa shsdd', 'www.aeesa.com@gmail.com', '55554477', '$2y$10$cxhvNK.K4cQYGM8aA266iuiruKsl4WEpcw1K0vkk/hcEOFe51XDTG', '7WbDvWTqhwfFRdG5ax6NBxiVqZKmOXghULivK9PYhbesA2NGqdkMr3u28q9p', 0, '2019-06-18 08:21:26', '2019-06-24 09:38:37'),
(7, 'twertwerf', 'www.aeesa.comm@gmail.com', '345345345', '$2y$10$3b5IDsW1pmTTKc6H.vP9AehzjKo1r2GFbARHG02aYSLCY24XSace2', 'xq86TMpgVJo5WR71X4ltBACcwPFiORxTeUREHJfyvnmfe009MoFDC04kPwMU', 0, '2019-06-18 11:55:18', '2019-06-18 11:55:18'),
(8, 'samer', 'samer@jm.a', '12345', '$2y$10$ryP9057xlkFIUXD1DeXSRevzdtLsEZoVZtN6aQcOVD8qwaK/RtPaq', 'NeTxKqKfR2BEyxHHqf3arfThtnkj0AV6ZOpKyRjQxwarUuruP1NjOMhViWHF', 0, '2019-06-22 09:57:41', '2019-06-22 09:57:41'),
(9, 'mohammed', 'momo@mo.mo', '0599425978', '12345', 'tu4rFwC8x2J6tGAhFWwbIlnOQpRuyh0vLAsNKda4cAjFZ4S8Hf7XWcVzhqUH', 1, '2019-06-23 00:42:32', '2019-06-23 00:44:33'),
(10, 'sabhaa', 'ds@ffs.ssaaa', '123123', '000000', 'sTNtbBLaJPa8jShEuW61q4OYIoCH9N68Oet6w0LTwKT5sog7sbtsjXYqKX80', 1, '2019-06-23 10:23:28', '2019-06-24 09:18:38'),
(11, 'momomo', 'momomo@mo.mo', '0599425978', '$2y$10$l8tLJ/BWNejVXKYc41T84uLoMa29mXfgFp6dlIbA0mKsBXPKeqDnC', 'eL1v23m74TGkAR8GwsEyendgHzxz4DYYHLeV9y3kguinsCXpzENf3uibwWYu', 1, '2019-06-27 11:50:38', '2019-06-28 11:11:59'),
(12, 'dded', 'momomo@mo.mosd', '159652', '$2y$10$aJyJ3D9M3cpXIaYo.RndmeV6/UiU9VX1Rn.ozOIqWaMPA8aLBzA5G', NULL, 0, '2019-06-28 11:40:05', '2019-06-28 11:40:05'),
(13, 'da', 'momomo@mo.moqwd', '323223', '$2y$10$LuKEbDwL1WnP4wJf/S6P4O9UVnuKOmEFWehBJZS2eRFNup5WGPcZG', 'Rtn6PeU8X6JocrFv76mZEDFAFWpojrj6kZFKxz1cza2IHm6I5ex4yFAgOVIP', 1, '2019-06-28 11:40:21', '2019-06-28 11:42:11'),
(14, 'issa', 'w@w.s', '1155', '$2y$10$7hDiceb0D/u3gWj1ACX1zuotWt5.M9TtG9x0YJjnKbi3uIhyTU6qG', NULL, 0, '2019-07-01 08:39:22', '2019-07-01 08:39:22'),
(15, 'sss', 'i@i.s', '555', '$2y$10$n/dnWPSgD2ZBaD.SA3qDueNhNfgOhrHxRb0BI4I6YtE0z4PoVd5B2', 'l1byNuq36Ke8eVp3OOZh4hhyktNaeR9PK2MER80ZhBzTcyXAtdqMH8yDs43L', 0, '2019-07-01 08:40:00', '2019-07-01 08:40:00'),
(16, 'test', 'test@mail.com', '025253164', '$2y$10$ZVGnACQ93TEyZ34daXsgjOulO9LKKvRPgXaj6zeVSqlscXSJlQsyS', 'z9DmNpkc6R93XPS0MqdUDOZfrTb93ylLfUXo7Xcl8GElwJuxdg0UBQipgl2o', 0, '2020-12-31 11:01:29', '2020-12-31 11:01:29');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
