

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";




CREATE TABLE `tbl_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



-- INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
-- (1, 'Ronit Bangard', 'Ronit', 'ronit'),
-- (9, 'Sakshi Sunil Hanamshetti', 'Sakshi_H', 'sakshi'),
-- (10, 'Sakshi Shahi', 'Sakshi_S', 'shahi'),
INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(1, 'Steeve Moore', 'steeve', 'E10ADC3949BA59ABBE56E057F20F883E'),
(9, 'Liam Johnson', 'liam', 'E10ADC3949BA59ABBE56E057F20F883E'),
(10, 'Ramsey', 'ramsey', 'E10ADC3949BA59ABBE56E057F20F883E'),
(12, 'Administrator', 'admin', 'E10ADC3949BA59ABBE56E057F20F883E');




CREATE TABLE `tbl_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(4, 'Sandwiches', 'sandwich1.jpg', 'Yes', 'Yes'),
(5, 'Burgers', 'burgers.jpg', 'Yes', 'Yes'),
(9, 'Wraps', 'wraps.jpg', 'Yes', 'Yes'),
(10, 'Maggi', 'maggi2.jpg', 'Yes', 'Yes'),
(11, 'Shakes', 'shakes.jpg', 'Yes', 'Yes');



CREATE TABLE `tbl_food` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(20) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `tbl_food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(4, 'Veg Club Sandwich', 'Three layered sandwich.', '50.00', 'club_sandwich.jpg', 4, 'Yes', 'Yes'),
(5, 'Veg Zinger Burger', 'a batter-coated, fried patty in a bun, with a slice of lettuce and mayo and cheese.', '50.00', 'zinger_burger.jpg', 5, 'No', 'Yes'),
(9, 'Veg Paneer Wrap', 'made from whole wheat flour, low fat paneer, healthy vegetables and spices.', '40.00', 'paneer_wrap.jpg', 9, 'Yes', 'Yes'),
(10, 'Cheese Maggi', 'a delicious twist to your ultimate comfort food Masala Maggi where cheese and green chili are added to make it super cheesy and spicy.', '40.00', 'cheese_maggi.jpg', 10, 'Yes', 'Yes'),
(11, 'Oreo Shake', 'Vanilla ice cream, Oreo cookies, milk, and chocolate sauce.', '45.00', 'oreo_shake.jpg', 11, 'Yes', 'Yes');




CREATE TABLE `tbl_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `food` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(20) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(50) NOT NULL,
  `customer_address` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `tbl_order` (`id`, `food`, `price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(2, 'Zinger Burger', '50.00', 4, '200.00', '2020-11-30 03:52:43', 'Delivered', 'Diya Shetty', '9420345678', 'diyashetty.is20@bmsce.ac.in', 'Rajajinagar'),
(3, 'Club Sandwich', '50.00', 2, '100.00', '2020-11-30 04:07:17', 'Delivered', 'Rakshita Gehlot', '9523456723', 'rakshita.ch20@bmsce.ac.in', 'Basavangudi'),
(6, 'Paneer Wrap', '40.00', 1, '40.00', '2021-07-20 06:10:37', 'Delivered', 'Vijaya Verma', '9876582034', 'vijaya.cs20@bmsce.ac.in', 'Bull temple Road');

ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `tbl_food`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

ALTER TABLE `tbl_food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

ALTER TABLE `tbl_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

