SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `easybook`
--
CREATE DATABASE `easybook` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `easybook`;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(32) NOT NULL,
  `message` varchar(1024) NOT NULL,
  `ip` varchar(64) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `created` (`created`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `author`, `message`, `ip`, `created`) VALUES
(1, 'Jules', 'And in Paris, you can buy a beer in McDonald''s. You know what they call a Quarter-Pounder  with Cheese in Paris?', '127.0.0.1', '2012-12-11 15:54:05'),
(2, 'Vincent', 'They don''t call it a Quarter-Pounder with Cheese?', '127.0.0.1', '2012-12-11 15:54:26'),
(3, 'Jules', 'They got the metric system. They wouldn''t know what the fuck a Quarter-Pounder is.', '127.0.0.1', '2012-12-11 15:55:40');