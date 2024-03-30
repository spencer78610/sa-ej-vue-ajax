-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 29, 2024 at 10:56 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vue_portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
CREATE TABLE IF NOT EXISTS `media` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_id` int DEFAULT NULL,
  `image_filename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `project_id`, `image_filename`) VALUES
(1, 1, 'image1a.png'),
(2, 1, 'image1b.png'),
(3, 1, 'image1c.png'),
(4, 2, 'image2a.png'),
(5, 2, 'image2b.png'),
(6, 2, 'image2c.png'),
(7, 3, 'image3a.jpg'),
(8, 3, 'image3b.png'),
(9, 3, 'image3c.jpg'),
(10, 4, 'image4a.png'),
(11, 4, 'image4b.png'),
(12, 4, 'image4c.png'),
(13, 5, 'image5a.png'),
(14, 5, 'image5b.png'),
(15, 5, 'image5c.png'),
(16, 6, 'image6a.png'),
(17, 6, 'image6b.png'),
(18, 6, 'image6c.png');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
CREATE TABLE IF NOT EXISTS `projects` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `image_url` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `credit` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `problem_solution` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `features` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `testimonials` int UNSIGNED NOT NULL,
  `skills` int UNSIGNED NOT NULL,
  `catagory` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `image_url`, `description`, `credit`, `problem_solution`, `features`, `testimonials`, `skills`, `catagory`) VALUES
(1, 'Spence Speakers Earbuds', 'earbuds_thumbnail.jpg', 'Spence Speakers is a website designed to display their new line of earbuds.', 'Spencer Abbott\r\n\r\nHaem Hariran Rajeswariskar', 'When coding the scroll animation I was able to get it functional. However, the x-ray slider would bug out and break the site.', 'What we did was start from the beginning and begin troubleshooting using the console messages. Then we went through the HTML and CSS to make sure the classes were matching and that\'s when we found some fixed width and height issues.', 1, 1, 'motion web-development ui-ux all'),
(2, 'Sports Team Animation', 'sports_thumbnail.png', 'A new intro for the sports center, using the Toronto Maple Leaf\'s and Pittsburgh Penguins.', 'Spencer Abbott', 'No problems', 'Only solutions', 4, 2, 'motion all'),
(3, 'Fanshawe\'s Interactive Media Design page', 'bootcamp_thumbnail.png', 'The target audience for this project is directed to students looking to get into interactive media design. This site shows you everything you need to know about the program, what software you will use, and the work you will be tasked with. You can also see what kind of talent comes out of this program through the portfolio page', 'Sophia Westrop\r\nDan Singer\r\nSpencer Abbott\r\nJintao (Jax) Duan', 'Designing the student portfolios section we ran into a few issues with sizing and layout. We didn\'t know what the best way to display the names without making it look overwhelming or complicated. We kept trying to make it look fancy which was taking up space, so we decided to simplify it. For the best functionality.', 'This team-built project uses a bunch of different features for the best functionality possible. We used tons of javascript to make the portfolio page functional we did this using an array filled with student names. We included a video right when you load in it starts playing, providing a nice warm welcome!  ', 2, 3, 'motion web-development ui-ux all'),
(4, 'Smoke', 'smoke_thumbnail.jpg', 'Kavorca the lure of the animal is a makeup product used for skin care and beauty. This was a project that really showed the power of after effects.', 'Spencer Abbott', 'No problems', 'Only solutions', 3, 4, 'motion all'),
(5, 'Dr.Nut', 'drnut_thumbnail.png', 'Dr.Nut is a beer rebranded from its original soda but as a beer to bring some nostalgia to older customers. This was a fun project that started my coding journey.', 'Spencer Abbott\r\n\r\nHaem hariharran rajeswaiskar', 'When we coded this site the grid was set up wrong.', 'That\'s when we went back through and fixed some html tag issues and re wrote some CSS. ', 1, 5, 'web-development ui-ux all'),
(6, 'Melting Lego', 'lego_thumbnail.jpg', 'This is a short animation I made using Cinema 4D to make the Lego brick look like it\'s melting.', 'Spencer Abbott', 'When building this animation my computer would crash every time I tried to use a lathe to smooth out the the look of the transition. ', 'Since I couldn\'t use the lathe without my computer crashing I used an extra square with the border-radius increased. I then lowered it as the brick melted. This was to help smooth the effect of the melting. ', 1, 6, 'motion all');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
