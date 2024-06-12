-- -------------------------------------------------------------
-- TablePlus 6.0.6(558)
--
-- https://tableplus.com/
--
-- Database: hacking
-- Generation Time: 2024-06-12 19:13:20.3790
-- -------------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) DEFAULT NULL,
  `content` text,
  `intro` varchar(250) DEFAULT NULL,
  `sku` varchar(50) DEFAULT NULL,
  `images` varchar(150) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(250) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `full_name` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `permission` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `product` (`id`, `title`, `content`, `intro`, `sku`, `images`, `price`, `created_at`) VALUES
(1, 'Vetgetable’s Package 1', '<h6>Products Infomation</h6>\r\n                                    <p>Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.\r\n                                        Pellentesque in ipsum id orci porta dapibus. Proin eget tortor risus. Vi', 'Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.\r\n                                        Pellentesque in ipsum id orci porta dapibus. Proin eget tortor risus. ', 'JETKING-001', 'uploads/product-details-1.jpg', 950, '2024-06-12 12:50:49'),
(2, 'Vetgetable’s Package 2', '<h6>Products Infomation</h6>\r\n                                    <p>Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.\r\n                                        Pellentesque in ipsum id orci porta dapibus. Proin eget tortor risus. Vi', NULL, 'JETKING-002', 'uploads/product-details-1.jpg', 550, '2024-06-12 12:50:49'),
(3, 'Vetgetable’s Package 3', '<h6>Products Infomation</h6>\r\n                                    <p>Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.\r\n                                        Pellentesque in ipsum id orci porta dapibus. Proin eget tortor risus. Vi', NULL, 'JETKING-003', 'uploads/product-details-1.jpg', 350, '2024-06-12 12:50:49'),
(4, 'Vetgetable’s Package 4', '<h6>Products Infomation</h6>\r\n                                    <p>Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.\r\n                                        Pellentesque in ipsum id orci porta dapibus. Proin eget tortor risus. Vi', NULL, 'JETKING-004', 'uploads/product-details-1.jpg', 450, '2024-06-12 12:50:49'),
(5, 'Vetgetable’s Package 5', '<h6>Products Infomation</h6>\r\n                                    <p>Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.\r\n                                        Pellentesque in ipsum id orci porta dapibus. Proin eget tortor risus. Vi', NULL, 'JETKING-005', 'uploads/product-details-1.jpg', 250, '2024-06-12 12:50:49'),
(6, 'Vetgetable’s Package 6', '<h6>Products Infomation</h6>\r\n                                    <p>Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.\r\n                                        Pellentesque in ipsum id orci porta dapibus. Proin eget tortor risus. Vi', NULL, 'JETKING-006', 'uploads/product-details-1.jpg', 150, '2024-06-12 12:50:49');

INSERT INTO `users` (`id`, `username`, `password`, `full_name`, `email`, `created_at`, `status`, `permission`) VALUES
(1, 'admin', '9267043527368ed6428ed7ca2b5b5f4f', 'administrator', 'phu.lv@lptech.asia', NULL, 1, 1);



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;