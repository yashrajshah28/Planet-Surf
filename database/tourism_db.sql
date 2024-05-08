-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2024 at 11:05 AM
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
-- Database: `tourism_db`
--

-- --------------------------------------------------------

-- --
-- -- Table structure for table `book_list`
-- --

-- CREATE TABLE `book_list` (
--   `id` int(30) NOT NULL,
--   `user_id` int(30) NOT NULL,
--   `package_id` int(30) NOT NULL,
--   `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=pending,1=confirm, 2=cancelled\r\n',
--   `schedule` date DEFAULT NULL,
--   `date_created` datetime NOT NULL DEFAULT current_timestamp()
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --
-- -- Dumping data for table `book_list`
-- --

-- INSERT INTO `book_list` (`id`, `user_id`, `package_id`, `status`, `schedule`, `date_created`) VALUES
-- (2, 4, 8, 3, '2021-06-21', '2021-06-19 08:37:59'),
-- (3, 5, 8, 3, '2021-06-18', '2021-06-19 11:51:50'),
-- (4, 1, 9, 1, '2024-04-28', '2024-04-18 14:50:57'),
-- (5, 7, 9, 1, '2024-06-01', '2024-04-29 17:12:13');

-- Table structure for table `book_list`

CREATE TABLE `book_list` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `package_id` int(30) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=pending,1=confirm, 2=cancelled',
  `schedule` date DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table `book_list`
INSERT INTO `book_list` (`id`, `user_id`, `package_id`, `status`, `schedule`, `full_name`, `gender`, `phone_number`, `email`, `date_created`) VALUES
(2, 4, 8, 3, '2021-06-21', 'John Doe', 'Male', '1234567890', 'john@example.com', '2021-06-19 08:37:59'),
(3, 5, 8, 3, '2021-06-18', 'Jane Doe', 'Female', '9876543210', 'jane@example.com', '2021-06-19 11:51:50'),
(4, 1, 9, 1, '2024-04-28', 'Alice Smith', 'Female', '5555555555', 'alice@example.com', '2024-04-18 14:50:57'),
(5, 7, 9, 1, '2024-06-01', 'Bob Johnson', 'Male', '6666666666', 'bob@example.com', '2024-04-29 17:12:13');




-- --------------------------------------------------------

--
-- Table structure for table `inquiry`
--

CREATE TABLE `inquiry` (
  `id` int(30) NOT NULL,
  `name` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `subject` varchar(250) NOT NULL,
  `message` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inquiry`
--

INSERT INTO `inquiry` (`id`, `name`, `email`, `subject`, `message`, `status`, `date_created`) VALUES
(6, 'asdasd', 'asdasd@asdasd.com', 'asdasd', 'asdasd', 1, '2021-06-19 10:19:27'),
(8, 'test1', 'test1@gmail.com', 'test', 'adsasdasd', 1, '2024-05-03 14:34:52');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(30) NOT NULL,
  `title` text DEFAULT NULL,
  `tour_location` text DEFAULT NULL,
  `cost` double NOT NULL,
  `description` text DEFAULT NULL,
  `upload_path` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 =active ,2 = Inactive',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `title`, `tour_location`, `cost`, `description`, `upload_path`, `status`, `date_created`) VALUES
(1, 'Sample Tour 101', 'Sample Location1, Sample Location2, and Sample Location3', 2500, '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vel molestie ante. Morbi volutpat vestibulum nibh, vitae tempor metus sodales ac. Praesent et ornare lorem. Nullam id sem sed dolor feugiat finibus eu imperdiet erat. Suspendisse sed est eu enim lacinia efficitur eu eget sem. Curabitur feugiat, ipsum vel eleifend tincidunt, lacus metus tristique sem, non vehicula purus ipsum eget magna. Phasellus feugiat molestie nibh, sit amet elementum nulla volutpat sit amet. Integer a consequat metus, eget consectetur urna. Phasellus sagittis tincidunt egestas.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;Curabitur non elit blandit, vestibulum sem in, maximus lectus. Nam laoreet nulla nec est pulvinar sagittis. Maecenas sit amet vestibulum ligula. Donec sit amet scelerisque risus, id aliquet lectus. Cras id sagittis lorem. Vestibulum aliquam feugiat semper. Nulla egestas est vitae est fringilla, non pretium urna malesuada. Nulla ultricies ipsum vel metus volutpat dictum a a mauris. Ut eu justo id ante efficitur semper. Suspendisse potenti. In luctus, libero non dignissim sollicitudin, quam magna rhoncus urna, eu tempor dolor dolor sit amet lacus. Mauris sed libero ut nisl ornare congue facilisis vitae velit. Praesent suscipit sem bibendum fermentum cursus. Morbi in justo imperdiet, tristique ante at, sagittis ante. Ut nec mauris vitae nisl sodales facilisis. Etiam pharetra nisi congue, interdum neque vel, porta magna.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut ac magna sodales, bibendum ante ut, accumsan ante. Integer non consectetur augue. Donec eget neque varius, venenatis elit id, dapibus tellus. Nam libero nulla, blandit sit amet ligula eu, malesuada lobortis diam. Maecenas ut tellus eget leo tincidunt pulvinar. Aenean rutrum, risus a aliquam euismod, nunc nisl tempus tortor, vel pellentesque eros ex nec purus. In condimentum nulla non ipsum interdum efficitur. Mauris eget sapien nec justo dignissim pretium quis sit amet ex. Aenean fermentum, metus eget dignissim condimentum, dui metus placerat diam, vitae interdum eros ante eget nisl. Fusce at orci gravida, varius mi ac, fermentum justo.&lt;/p&gt;', 'uploads/package_1', 1, '2021-06-18 10:31:03'),
(7, 'Sample 102', 'Sample Location', 500, '&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify;&quot;&gt;Curabitur non elit blandit, vestibulum sem in, maximus lectus. Nam laoreet nulla nec est pulvinar sagittis. Maecenas sit amet vestibulum ligula. Donec sit amet scelerisque risus, id aliquet lectus. Cras id sagittis lorem. Vestibulum aliquam feugiat semper. Nulla egestas est vitae est fringilla, non pretium urna malesuada. Nulla ultricies ipsum vel metus volutpat dictum a a mauris. Ut eu justo id ante efficitur semper. Suspendisse potenti. In luctus, libero non dignissim sollicitudin, quam magna rhoncus urna, eu tempor dolor dolor sit amet lacus. Mauris sed libero ut nisl ornare congue facilisis vitae velit. Praesent suscipit sem bibendum fermentum cursus. Morbi in justo imperdiet, tristique ante at, sagittis ante. Ut nec mauris vitae nisl sodales facilisis. Etiam pharetra nisi congue, interdum neque vel, porta magna.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'uploads/package_7', 1, '2021-06-18 11:17:11'),
(8, 'Sample 103', 'Sample Location', 3000, '&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify;&quot;&gt;Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut ac magna sodales, bibendum ante ut, accumsan ante. Integer non consectetur augue. Donec eget neque varius, venenatis elit id, dapibus tellus. Nam libero nulla, blandit sit amet ligula eu, malesuada lobortis diam. Maecenas ut tellus eget leo tincidunt pulvinar. Aenean rutrum, risus a aliquam euismod, nunc nisl tempus tortor, vel pellentesque eros ex nec purus. In condimentum nulla non ipsum interdum efficitur. Mauris eget sapien nec justo dignissim pretium quis sit amet ex. Aenean fermentum, metus eget dignissim condimentum, dui metus placerat diam, vitae interdum eros ante eget nisl. Fusce at orci gravida, varius mi ac, fermentum justo.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'uploads/package_8', 1, '2021-06-18 13:34:08'),
(9, 'Manali', 'Manali & Kullu Valley Himachal Pradesh', 10000, '&lt;p&gt;&lt;span style=&quot;color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; font-size: 16px; text-align: justify;&quot;&gt;Manali is regarded as a stylish place to distract you from your busy life and gives a peaceful environment. However, in Heaven on Earth, If you&#039;re looking for natural terrain also you must visit only Kullu Manali.&lt;/span&gt;&lt;br style=&quot;color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; font-size: 16px; text-align: justify;&quot;&gt;&lt;span style=&quot;color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; font-size: 16px; text-align: justify;&quot;&gt;Manali is positioned in the northern part of the&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bolder; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; font-size: 16px; text-align: justify;&quot;&gt;&quot;Kullu Valley&quot;&lt;/span&gt;&lt;span style=&quot;color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; font-size: 16px; text-align: justify;&quot;&gt;&amp;nbsp;and is a hotspot for excursionists. Explore the Kullu Manali Trip to witness the wonderland of India and get amazing stint packages also. While visiting the place of spectacular beauty that will take your breath down in&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bolder; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; font-size: 16px; text-align: justify;&quot;&gt;Manali Tour Package.&lt;br&gt;&lt;/span&gt;&lt;span style=&quot;color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; font-size: 16px; text-align: justify;&quot;&gt;&lt;/span&gt;&lt;br style=&quot;color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; font-size: 16px; text-align: justify;&quot;&gt;&lt;/p&gt;&lt;h5 style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; color: rgb(33, 37, 41); text-align: justify;&quot;&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;&lt;span style=&quot;color: rgb(153, 51, 0);&quot;&gt;Get a flight in serenity and bliss with the stylish offers !!!!!!!!!&lt;/span&gt;&lt;/span&gt;&lt;/h5&gt;&lt;h5 style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; color: rgb(33, 37, 41); text-align: justify;&quot;&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;&lt;span style=&quot;color: rgb(0, 51, 0);&quot;&gt;Himachal Tour Packages -&lt;/span&gt;&lt;/span&gt;&lt;/h5&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; font-size: 16px; text-align: justify;&quot;&gt;offers mountain pitches, with the most beautiful and affable views, fascinating aqueducts, and fairytales- suchlike fog-girding little lodges. Manali also shares the characteristic cold climate and brewing mountains. The melting of the snow-limited mountains in summer gives aqueducts of fresh and clear water. This spreads throughout the land and nourishes the land.&lt;/span&gt;&lt;br style=&quot;color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; font-size: 16px; text-align: justify;&quot;&gt;&lt;br style=&quot;color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; font-size: 16px; text-align: justify;&quot;&gt;&lt;span style=&quot;color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; font-size: 16px; text-align: justify;&quot;&gt;The mountains covered with snow and the fresh air enable people to remain harmonious in visiting this place each time.&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bolder; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; font-size: 16px; text-align: justify;&quot;&gt;&lt;a href=&quot;https://journeyofhimalaya.com/kullu-manali-tourist-places/&quot;&gt;&quot;KULLU MANALI TOUR PACKAGE&quot;&lt;/a&gt;&lt;/span&gt;&lt;span style=&quot;color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; font-size: 16px; text-align: justify;&quot;&gt;&amp;nbsp;Prefers to visit the place with their family, musketeers, and mates are also book Manali Trip Package from Delhi. Manali gives peace and newness to the callers. The touring trails and the adventure sports of this place are entirely stylish effects. These draw excursionists to this place and the&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bolder; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; font-size: 16px; text-align: justify;&quot;&gt;Manali Family Tour Package&lt;/span&gt;&lt;span style=&quot;color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; font-size: 16px; text-align: justify;&quot;&gt;&amp;nbsp;gives an immense comfortable trip.&lt;/span&gt;&lt;br style=&quot;color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; font-size: 16px; text-align: justify;&quot;&gt;&lt;br style=&quot;color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; font-size: 16px; text-align: justify;&quot;&gt;&lt;/p&gt;&lt;h5 style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; color: rgb(33, 37, 41); text-align: justify;&quot;&gt;&lt;span style=&quot;color: rgb(0, 51, 0);&quot;&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;Manali Group Tour Packages !!!!!!!!!!&lt;/span&gt;&lt;/span&gt;&lt;/h5&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; font-size: 16px; text-align: justify;&quot;&gt;Get instigative deals and offers. Spend some quality time with your musketeers in a serene atmosphere and have an audacious vacation. Well, we&#039;re then going to give you the Stylish&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bolder; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; font-size: 16px; text-align: justify;&quot;&gt;&quot;Kullu Manali Tour&quot;.&lt;/span&gt;&lt;span style=&quot;color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; font-size: 16px; text-align: justify;&quot;&gt;&amp;nbsp;The falls and passes are very notorious to explore in Manali.&lt;/span&gt;&lt;br style=&quot;color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; font-size: 16px; text-align: justify;&quot;&gt;&lt;br style=&quot;color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; font-size: 16px; text-align: justify;&quot;&gt;&lt;span style=&quot;color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; font-size: 16px; text-align: justify;&quot;&gt;Excursionists can also visit touring areas and explore colorful beautiful destinations. Bespeak our packages and get huge abatements and deals on&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bolder; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; font-size: 16px; text-align: justify;&quot;&gt;&lt;a href=&quot;https://journeyofhimalaya.com/shimla-manali-tourist-places/&quot;&gt;Himachal Tour Packages&lt;/a&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; font-size: 16px; text-align: justify;&quot;&gt;also. The destination offers the most absorbing Romantic honeymoon. During the Manali holiday, you would have always asked and handed an occasion to revitalize and relive again.&lt;br&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;div class=&quot;days-plan&quot; style=&quot;color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; font-size: 16px;&quot;&gt;&lt;h2 style=&quot;margin-bottom: 20px; font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; line-height: 1; color: rgb(255, 255, 255); font-size: 22px; display: inline-block; padding: 10px 15px; background: rgb(246, 111, 2);&quot;&gt;Tour Itinerary:&lt;/h2&gt;&lt;div class=&quot;daysdescription&quot; style=&quot;margin-bottom: 25px;&quot;&gt;&lt;h3 style=&quot;margin-bottom: 10px; font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-weight: 700; color: rgb(255, 255, 255); font-size: 14px; background: rgb(6, 62, 130); padding: 8px 10px;&quot;&gt;Day-01: Chandigarh/Delhi &mdash; Manali&lt;/h3&gt;&lt;p style=&quot;color: rgb(0, 0, 0); line-height: 1.6;&quot;&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;Service: Volvo Only--&amp;nbsp;&lt;/span&gt;Start your wonderful journey to Manali by boarding the Volvo from Chandigarh/Delhi Volvo pick-up point (Guests are requested to report at the scheduled time). The journey will be by Volvo.&lt;br&gt;&lt;br&gt;Exotic Manali offers something special for everyone. It overnight gives peace to mediators; inspiration to artists, daring Activities for adventure Seekers and this list just goes on.&lt;br&gt;As soon as you enter the terrains of Manali, you will feel a cool breeze already taking all your stress away and surprising you with its jaw-dropping landscapes.&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;daysdescription&quot; style=&quot;margin-bottom: 25px;&quot;&gt;&lt;h3 style=&quot;margin-bottom: 10px; font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-weight: 700; color: rgb(255, 255, 255); font-size: 14px; background: rgb(6, 62, 130); padding: 8px 10px;&quot;&gt;Day-02: Manali &mdash; Local-Sightseeing&lt;/h3&gt;&lt;p style=&quot;color: rgb(0, 0, 0); line-height: 1.6;&quot;&gt;Appearance at Manali in the morning. You&#039;ll be Picked up from the Manali Volvo Bus stand &amp;amp; also Check- in at the hotel at 11 Noon.&lt;br&gt;In the Afternoon you can go for a half-day Local city tour like&amp;nbsp;&lt;span style=&quot;font-weight: bolder;&quot;&gt;-&amp;nbsp;&lt;a href=&quot;https://journeyofhimalaya.com/tourpackage/hadimba-temple-2/&quot;&gt;&quot;HADIMBA TEMPLE&quot;&lt;/a&gt;&lt;/span&gt;&amp;nbsp;built in 1553 with a superbly crafted pagoda roof, it is famous for its exquisitely carved doorway.&lt;span style=&quot;font-weight: bolder;&quot;&gt;&amp;nbsp;&quot;CLUB HOUSE&quot;&lt;/span&gt;&amp;nbsp;with comprehensive facilities that include roller skating, an auditorium, a billiards room, a library, a bar, and a restaurant makes a wonderful outing for the day.&lt;br&gt;&lt;br&gt;And Tourists also visit&amp;nbsp;&lt;span style=&quot;font-weight: bolder;&quot;&gt;-- &quot;Tibetian Monastery&quot;, &quot;Van Vihar&quot;, &quot;Manu Temple&quot;, &quot;Jogani Waterfall&quot;&lt;/span&gt;&amp;nbsp;and&amp;nbsp;&lt;span style=&quot;font-weight: bolder;&quot;&gt;&ldquo;VASHISHT TEMPLE&rdquo;&lt;/span&gt;&amp;nbsp;- which are well known for their Hot springs. There are old tabernacles devoted to the Saga Vashist and Lord Rama.&lt;br&gt;&lt;br&gt;After you explore these places, in the evening visit&amp;nbsp;&lt;span style=&quot;font-weight: bolder;&quot;&gt;&ldquo;Mall Road &rdquo;&lt;/span&gt;&amp;nbsp;and return to the hotel, and have your dinner. Overnight stay at the hotel in Manali.&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;daysdescription&quot; style=&quot;margin-bottom: 25px;&quot;&gt;&lt;h3 style=&quot;margin-bottom: 10px; font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-weight: 700; color: rgb(255, 255, 255); font-size: 14px; background: rgb(6, 62, 130); padding: 8px 10px;&quot;&gt;Day-03: Manali &mdash; Solang Valley &mdash; Atal Tunnel&lt;/h3&gt;&lt;p style=&quot;color: rgb(0, 0, 0); line-height: 1.6;&quot;&gt;Morning, after breakfast for a full day sightseeing in&amp;nbsp;&lt;span style=&quot;font-weight: bolder;&quot;&gt;- &quot;Solang Valley&quot;, &quot;Kothi Village&quot;, &quot;Nehru Kund&quot;, &quot;Him-Valley&quot;, &quot;Apple Garden&quot;,&lt;/span&gt;&amp;nbsp;and&amp;nbsp;&lt;span style=&quot;font-weight: bolder;&quot;&gt;Suiting Place.&lt;/span&gt;&lt;br&gt;&lt;br&gt;While visiting&amp;nbsp;&lt;span style=&quot;font-weight: bolder;&quot;&gt;-- &quot;SOLANG VALLEY&quot;&amp;nbsp;&lt;/span&gt;- one should also try their hands-on adventure conditioning as it&#039;s one of the stylish places for adventures near Manali. You can enjoy conditioning similar to&amp;nbsp;&lt;span style=&quot;font-weight: bolder;&quot;&gt;-&amp;nbsp;&lt;a href=&quot;https://journeyofhimalaya.com/tourpackage/zorbing/&quot;&gt;Zorbing&lt;/a&gt;, Snow Scooter, Horse Riding, Paragliding, Snow-Skiing,&lt;/span&gt;&amp;nbsp;and a lot further&lt;br&gt;&lt;br&gt;And also can enjoy a short Trek to&amp;nbsp;&lt;span style=&quot;font-weight: bolder;&quot;&gt;&ldquo;Anjani Mahadev&rdquo;.&lt;/span&gt;&amp;nbsp;Overnight stay at a hotel in Manali. The Tourist can go to the&amp;nbsp;&lt;span style=&quot;font-weight: bolder;&quot;&gt;- &ldquo;Rohtang Pass&rdquo;&lt;/span&gt;&amp;nbsp;and witness the snow-eschewed mountains. Go through the&amp;nbsp;&lt;a href=&quot;https://journeyofhimalaya.com/tourpackage/atal-tunnel/&quot;&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;&ldquo;ATAL TUNNEL&rdquo;&lt;/span&gt;&lt;/a&gt;&amp;nbsp;and also visit&amp;nbsp;&lt;span style=&quot;font-weight: bolder;&quot;&gt;Gulaba.&lt;/span&gt;&lt;br&gt;&lt;br&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;Please Note:-&lt;/span&gt;&amp;nbsp;Since the National Green Tribunal is allowing only limited vehicles to Rohtang pass per day. Rohtang pass will be subject to the vacuity of permit on the spot with fresh cost on participating base or individual base as per guest demand &amp;amp; Rohtang is closed every Tuesday.&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;daysdescription&quot; style=&quot;margin-bottom: 25px;&quot;&gt;&lt;h3 style=&quot;margin-bottom: 10px; font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-weight: 700; color: rgb(255, 255, 255); font-size: 14px; background: rgb(6, 62, 130); padding: 8px 10px;&quot;&gt;Day-04: Manali &mdash; Kullu &mdash; Manikaran -- Kasol&lt;/h3&gt;&lt;p style=&quot;color: rgb(0, 0, 0); line-height: 1.6;&quot;&gt;On a coming day, the morning after breakfast, excursionists can visit full-day sightseeing of --&amp;nbsp;&lt;span style=&quot;font-weight: bolder;&quot;&gt;&quot;Manikaran Sahib Gurdwara&quot; - ( Natural Hot Spring Water)&lt;/span&gt;&amp;nbsp;and enjoy the hot water springs that have medical parcels &amp;amp; take the blessings of God/ virtuousness.&lt;br&gt;&lt;br&gt;The excursionists can explore the nearby places like&lt;span style=&quot;font-weight: bolder;&quot;&gt;-- KASOL, Kasol Market, Shiv Temple, Flea Market,&lt;/span&gt;&amp;nbsp;and&amp;nbsp;&lt;span style=&quot;font-weight: bolder;&quot;&gt;Parvati Valley,&lt;/span&gt;&amp;nbsp;and they can indeed do touring.&lt;br&gt;&lt;br&gt;Excursionists also visit&amp;nbsp;&lt;span style=&quot;font-weight: bolder;&quot;&gt;- Kullu Valley, Vaishno Devi Temple, Kullu Market, Kullu, Rabbit Farm&lt;/span&gt;&amp;nbsp;&amp;amp;&amp;nbsp;&lt;a href=&quot;https://journeyofhimalaya.com/tourpackage/river-rafting/&quot;&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;&quot;RIVER RAFTING&quot;&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;&amp;nbsp;--&lt;/span&gt;&amp;nbsp;River Rafting is also very famous around there and visit - the&amp;nbsp;&lt;span style=&quot;font-weight: bolder;&quot;&gt;Handicrafts&lt;/span&gt;&amp;nbsp;and&amp;nbsp;&lt;span style=&quot;font-weight: bolder;&quot;&gt;Shawls-Factory.&lt;/span&gt;&amp;nbsp;Later, return to the hotel and have your dinner. Overnight stay at the hotel in Manali.&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;daysdescription&quot; style=&quot;margin-bottom: 25px;&quot;&gt;&lt;h3 style=&quot;margin-bottom: 10px; font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-weight: 700; color: rgb(255, 255, 255); font-size: 14px; background: rgb(6, 62, 130); padding: 8px 10px;&quot;&gt;Day-05: Manali &mdash; Delhi/Chandigarh Departure &ndash; (Overnight Journey)&lt;/h3&gt;&lt;p style=&quot;color: rgb(0, 0, 0); line-height: 1.6;&quot;&gt;The departure trip will be overnight as well. The couple can check out at the hostel by 11 am and do some&amp;nbsp;&lt;span style=&quot;font-weight: bolder;&quot;&gt;Shopping on&lt;a href=&quot;https://journeyofhimalaya.com/tourpackage/manali-mall-road/&quot;&gt;&amp;nbsp;&quot;MALL ROAD&quot;&lt;/a&gt;&lt;/span&gt;&amp;nbsp;on their own. At 06 PM, board the Volvo AC Volvo Bus for Delhi for the late trip. Drop from the Hotel to Manali Bus Stand by Taxi will be handed to us. Board your Volvo to get back to your hometown.&lt;br&gt;&lt;br&gt;For the departure as well the tourist can book from the customizable options that are available in the package.&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;daysdescription&quot; style=&quot;margin-bottom: 25px;&quot;&gt;&lt;h3 style=&quot;margin-bottom: 10px; font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-weight: 700; color: rgb(255, 255, 255); font-size: 14px; background: rgb(6, 62, 130); padding: 8px 10px;&quot;&gt;Day-06: Reach Back Delhi Around 8 Am&lt;/h3&gt;&lt;p style=&quot;color: rgb(0, 0, 0); line-height: 1.6;&quot;&gt;On your 6th day, the tourists will reach &quot;DELHI&quot; by 8 am.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;pkg-description&quot; style=&quot;color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; font-size: 16px;&quot;&gt;&lt;h5 style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, sans-serif;&quot;&gt;&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;!!!!! THE TOUR END BUT SWEET MEMORIES ALWAYS REMAINS !!!!&lt;/span&gt;&lt;/h5&gt;&lt;p style=&quot;color: rgb(0, 0, 0);&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;h5 style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, sans-serif;&quot;&gt;&lt;span style=&quot;color: rgb(0, 51, 0);&quot;&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;For Tour Bookings:&lt;/span&gt;&lt;/span&gt;&lt;/h5&gt;&lt;p style=&quot;color: rgb(0, 0, 0);&quot;&gt;If you want to book a package with us kindly mail journeyofhimalaya@gmail.com along with the package you desire. Also, Volvo bookings will be done one day before the check-in date.&lt;/p&gt;&lt;p style=&quot;color: rgb(0, 0, 0);&quot;&gt;Though we have tried to answer your queries in the FAQ section and on this page, if there is anything else you would like to know, you can Call Us at +91 9872544126, 9056691264&hellip;&lt;/p&gt;&lt;h5 style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, sans-serif;&quot;&gt;&lt;span style=&quot;color: rgb(0, 51, 0);&quot;&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;Package Inclusions:-&lt;/span&gt;&lt;/span&gt;&lt;/h5&gt;&lt;ol style=&quot;border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;&lt;li style=&quot;margin-top: 0px; margin-bottom: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;Accommodation in Manali hotels for 3 Nights.&lt;/li&gt;&lt;li style=&quot;margin-top: 0px; margin-bottom: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;Meals: 3 Breakfast and 3 Dinner.&lt;/li&gt;&lt;li style=&quot;margin-top: 0px; margin-bottom: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;02 Delhi&ndash;Manali&ndash;Delhi Super Deluxe A/C Volvo tickets.&lt;/li&gt;&lt;li style=&quot;margin-top: 0px; margin-bottom: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;All Sightseeing by individual car.&lt;/li&gt;&lt;li style=&quot;margin-top: 0px; margin-bottom: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;Day-01): Half Day Local Manali Sightseeing by Individual Car.&lt;/li&gt;&lt;li style=&quot;margin-top: 0px; margin-bottom: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;Day-02): Rohtang-Pass, Solang Valley, Nehru Kund, Him Valley, Gulaba by Individual Car.&lt;/li&gt;&lt;li style=&quot;margin-top: 0px; margin-bottom: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;Day-03): Full Day Naggar Castle &amp;amp; Kullu Sightseeing by Individual Car&lt;br&gt;Pick &amp;amp; Drop Manali Bus Stand.&lt;/li&gt;&lt;li style=&quot;margin-top: 0px; margin-bottom: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;All Applicable Hotel Taxes&hellip;&lt;/li&gt;&lt;li style=&quot;margin-top: 0px; margin-bottom: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;Driver Allowance Toll, Tax &amp;amp; Parking Etc.&lt;/li&gt;&lt;/ol&gt;&lt;h5 style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, sans-serif;&quot;&gt;&lt;span style=&quot;color: rgb(0, 51, 0);&quot;&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;Package Exclusions:-&lt;/span&gt;&lt;/span&gt;&lt;/h5&gt;&lt;ol style=&quot;border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;Amount 2,000/- Extra for Atal Tunnel &amp;amp; Sissu-(Spiti Valley)&lt;p style=&quot;color: rgb(0, 0, 0);&quot;&gt;&lt;/p&gt;&lt;li style=&quot;margin-top: 0px; margin-bottom: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;The Package Cost Does Not Include Any Airfare And Train Fare, Room Heater Charge.&lt;br&gt;Entrance Fees, Guide Charges, and Travel Insurance.&lt;/li&gt;&lt;li style=&quot;margin-top: 0px; margin-bottom: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;Snow Vehicle Fare, If Road Is Block Due To Snow.&lt;/li&gt;&lt;li style=&quot;margin-top: 0px; margin-bottom: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;Personal Expenses Such As Laundry, Luggage Charge, Telephone Calls, Room Heater&lt;br&gt;Charges, Tips &amp;amp; Gratuity, Camera Fee, Mineral Water, Soft &amp;amp; Hard Drinks, Adventure Activities.&lt;/li&gt;&lt;li style=&quot;margin-top: 0px; margin-bottom: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;Any Cost Arising Due To Natural Calamities Like Landslides, Road Blockage, Political&lt;br&gt;Disturbances (Strikes), Etc. To Be Borne By The Guest.&lt;/li&gt;&lt;li style=&quot;margin-top: 0px; margin-bottom: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;Anything Which Is Not Included In the Inclusion&hellip;.&lt;/li&gt;&lt;/ol&gt;&lt;/div&gt;', 'uploads/package_9', 1, '2024-04-18 14:50:23');

-- --------------------------------------------------------

--
-- Table structure for table `rate_review`
--

CREATE TABLE `rate_review` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `package_id` int(30) NOT NULL,
  `rate` int(11) NOT NULL,
  `review` text DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rate_review`
--

INSERT INTO `rate_review` (`id`, `user_id`, `package_id`, `rate`, `review`, `date_created`) VALUES
(3, 5, 8, 5, '<p>Sample</p>', '2021-06-19 11:53:16'),
(4, 5, 8, 3, '&lt;p&gt;Sample feedback only&lt;/p&gt;', '2021-06-19 13:49:26');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'PlanetSurf'),
(6, 'short_name', 'Planet Surf'),
(11, 'logo', 'uploads/1714631940_alexSRVCTS_Digital_Sticker_American_Bully_Face_with_sunglasses__63bfd4d2-2030-44ad-ab6f-ccbebe9d3dd9.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/1714391220_wallpaperflare-cropped.jfif');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1714391280_3.jpg', NULL, 1, '2021-01-20 14:02:37', '2024-04-29 17:18:55'),
(4, 'John', 'Smith', 'jsmith', '1254737c076cf867dc53d60a0364f38e', NULL, NULL, 0, '2021-06-19 08:36:09', '2021-06-19 10:53:12'),
(5, 'Claire', 'Blake', 'cblake', '4744ddea876b11dcb1d169fadf494418', NULL, NULL, 0, '2021-06-19 10:01:51', '2021-06-19 12:03:23'),
(6, 'Test', 'test', 'test1', '157c9a021fa0cc26960ae1aa2b52175d', NULL, NULL, 0, '2024-04-18 14:44:55', NULL),
(7, 'Freak', 'Yash', 'yash@gmail.com', '7294001ae51b8cdfd50eb4459ee28182', NULL, NULL, 0, '2024-04-29 17:11:43', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_list`
--
ALTER TABLE `book_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inquiry`
--
ALTER TABLE `inquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rate_review`
--
ALTER TABLE `rate_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_list`
--
ALTER TABLE `book_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `inquiry`
--
ALTER TABLE `inquiry`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `rate_review`
--
ALTER TABLE `rate_review`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
