-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 08, 2024 at 08:17 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flix`
--

-- --------------------------------------------------------

--
-- Table structure for table `CAST`
--

CREATE TABLE `CAST` (
  `MName` varchar(20) DEFAULT NULL,
  `SName` varchar(20) DEFAULT NULL,
  `Male_lead` varchar(20) DEFAULT NULL,
  `Female_lead` varchar(20) DEFAULT NULL,
  `Director` varchar(20) DEFAULT NULL,
  `Role` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GENRE`
--

CREATE TABLE `GENRE` (
  `MName` varchar(20) DEFAULT NULL,
  `SName` varchar(20) DEFAULT NULL,
  `continue-watching` varchar(500) DEFAULT NULL,
  `Trending` varchar(500) DEFAULT NULL,
  `Recommendations` varchar(500) DEFAULT NULL,
  `Thriller` varchar(500) DEFAULT NULL,
  `Crime` varchar(500) DEFAULT NULL,
  `Romance` varchar(500) DEFAULT NULL,
  `Horror` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `GENRE`
--

INSERT INTO `GENRE` (`MName`, `SName`, `continue-watching`, `Trending`, `Recommendations`, `Thriller`, `Crime`, `Romance`, `Horror`) VALUES
('kkch', NULL, 'yes', NULL, NULL, NULL, NULL, 'yes', NULL),
('animal', NULL, 'yes', NULL, 'yes', NULL, NULL, NULL, NULL),
('openheimer', NULL, NULL, 'yes', NULL, NULL, NULL, NULL, NULL),
('hungergames', NULL, NULL, 'yes', NULL, NULL, NULL, NULL, NULL),
('flowermoon', NULL, NULL, 'yes', NULL, NULL, NULL, NULL, NULL),
('dark-night-rises', NULL, NULL, 'yes', NULL, NULL, NULL, NULL, NULL),
('spider-man', NULL, NULL, 'yes', NULL, NULL, NULL, NULL, NULL),
('shershah', NULL, NULL, 'yes', 'yes', NULL, NULL, NULL, NULL),
('conjuring', NULL, NULL, 'yes', NULL, 'yes', NULL, NULL, NULL),
('raanjhanaa', NULL, NULL, NULL, 'yes', NULL, NULL, NULL, NULL),
('12th fail', NULL, NULL, NULL, 'yes', NULL, NULL, NULL, NULL),
('captainmiller', NULL, NULL, NULL, 'yes', NULL, NULL, NULL, NULL),
('dearzindagi', NULL, NULL, NULL, 'yes', NULL, NULL, 'yes', NULL),
('dilbechara', NULL, NULL, NULL, 'yes', NULL, NULL, 'yes', NULL),
('yjhd', NULL, NULL, NULL, NULL, NULL, NULL, 'yes', NULL),
('love-aaj-kal', NULL, NULL, NULL, NULL, NULL, NULL, 'yes', NULL),
('love-mocktail', NULL, NULL, NULL, NULL, NULL, NULL, 'yes', NULL),
('dtph', NULL, NULL, NULL, NULL, NULL, NULL, 'yes', NULL),
('alaipayuthey', NULL, NULL, NULL, NULL, NULL, NULL, 'yes', NULL),
('imaika-nodigal', NULL, NULL, NULL, NULL, 'yes', NULL, NULL, 'yes'),
('gone-girl', NULL, NULL, NULL, NULL, 'yes', 'yes', NULL, 'yes'),
('shutter-island', NULL, NULL, NULL, NULL, 'yes', NULL, NULL, 'yes'),
('silence-of-the-lambs', NULL, NULL, NULL, NULL, 'yes', NULL, NULL, 'yes'),
('exorcist', NULL, NULL, NULL, NULL, 'yes', NULL, NULL, 'yes'),
('drishyam', NULL, NULL, NULL, NULL, 'yes', NULL, NULL, 'yes'),
('veerappan', NULL, NULL, NULL, NULL, NULL, 'yes', NULL, NULL),
('joker', NULL, NULL, NULL, NULL, NULL, 'yes', NULL, NULL),
('seven', NULL, NULL, NULL, NULL, NULL, 'yes', NULL, NULL),
('shawshank-redemption', NULL, NULL, NULL, NULL, NULL, 'yes', NULL, NULL),
(NULL, 'Greys-anatomy', 'yes', NULL, NULL, NULL, NULL, 'yes', NULL),
(NULL, 'aarya', 'yes', NULL, 'yes', NULL, NULL, NULL, NULL),
(NULL, 'bridgerton', NULL, 'yes', NULL, NULL, NULL, 'yes', NULL),
(NULL, 'vampire-diaries', NULL, 'yes', NULL, NULL, NULL, 'yes', NULL),
(NULL, 'young-sheldon', NULL, 'yes', NULL, NULL, NULL, NULL, NULL),
(NULL, 'office', NULL, 'yes', NULL, NULL, NULL, 'yes', NULL),
(NULL, 'walking-dead', NULL, 'yes', NULL, NULL, NULL, NULL, NULL),
(NULL, 'breaking-bad', NULL, 'yes', 'yes', NULL, NULL, NULL, NULL),
(NULL, 'killer-soup', NULL, NULL, 'yes', NULL, NULL, NULL, NULL),
(NULL, 'summerIturnedpretty', NULL, NULL, NULL, NULL, NULL, 'yes', NULL),
(NULL, 'hillhouse', NULL, NULL, NULL, 'yes', NULL, NULL, 'yes'),
(NULL, 'squid-game', NULL, NULL, NULL, 'yes', NULL, NULL, 'yes'),
(NULL, 'wednesday', NULL, NULL, NULL, 'yes', NULL, NULL, 'yes'),
(NULL, 'dark', NULL, NULL, NULL, 'yes', NULL, NULL, 'yes'),
(NULL, 'money-heist', NULL, NULL, NULL, 'yes', NULL, NULL, 'yes'),
(NULL, 'lock-&-key', NULL, NULL, NULL, 'yes', NULL, NULL, 'yes'),
(NULL, 'sherlock-holmes', NULL, NULL, NULL, NULL, 'yes', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `LANGUAGE`
--

CREATE TABLE `LANGUAGE` (
  `MName` varchar(20) DEFAULT NULL,
  `SName` varchar(20) DEFAULT NULL,
  `English` varchar(20) DEFAULT NULL,
  `Hindi` varchar(20) DEFAULT NULL,
  `Kannada` varchar(20) DEFAULT NULL,
  `Tamil` varchar(20) DEFAULT NULL,
  `Telugu` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `LOGIN`
--

CREATE TABLE `LOGIN` (
  `User_id` varchar(20) NOT NULL,
  `Password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `LOGIN`
--

INSERT INTO `LOGIN` (`User_id`, `Password`) VALUES
('', ''),
('ab@gmail.com', '123'),
('abcd@gmail.com', '123'),
('harry@gmail.com', 'harry'),
('kate@gmail.com', '56');

-- --------------------------------------------------------

--
-- Table structure for table `MOVIES`
--

CREATE TABLE `MOVIES` (
  `MName` varchar(20) NOT NULL,
  `Duration` time DEFAULT NULL,
  `Release_Date` date DEFAULT NULL,
  `Plot` varchar(150) DEFAULT NULL,
  `Links` varchar(500) DEFAULT NULL,
  `Img_Name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `MOVIES`
--

INSERT INTO `MOVIES` (`MName`, `Duration`, `Release_Date`, `Plot`, `Links`, `Img_Name`) VALUES
('12th fail', '03:30:54', NULL, NULL, NULL, 'r3.jpg'),
('alaipayuthey', '03:30:54', NULL, NULL, 'https://youtu.be/BRFdGc3ku-k?si=94DcYhBke-m1VZIW', 'rom-6.jpeg'),
('animal', '03:30:30', '2023-12-01', NULL, 'https://youtu.be/WuH9ahB-68Q?si=Qn4-px5Vp4dfNixg', 'r1.jpg'),
('captainmiller', '03:30:54', NULL, NULL, NULL, 'r4.webp'),
('conjuring', '01:30:54', NULL, NULL, 'https://youtu.be/ejMMn0t58Lc?si=Ny8BEQRW6ppJ0gaA', 'th-5.jpg'),
('dark-night-rises', '03:30:54', NULL, NULL, NULL, 'trending-4(dk).jpeg'),
('dearzindagi', '03:02:30', NULL, NULL, NULL, 'r5.jpeg'),
('dilbechara', '02:30:30', NULL, NULL, NULL, 'r6.jpeg'),
('drishyam', '03:30:54', NULL, NULL, NULL, 'th-3.jpeg'),
('dtph', '03:30:54', NULL, NULL, NULL, 'rom-4.jpg'),
('exorcist', '01:30:54', NULL, NULL, 'https://youtu.be/YDGw1MTEe9k?si=ANUoGhg7J-llYJhP', 'th-7.jpeg'),
('flowermoon', '03:02:30', NULL, NULL, NULL, 'trending-kofm.webp'),
('gone-girl', '01:30:54', NULL, NULL, NULL, 'th-2.jpg'),
('hungergames', '03:10:30', NULL, NULL, NULL, 'trending-hg.jpg'),
('imaika-nodigal', '03:30:54', NULL, NULL, 'https://youtu.be/Q0QoCgbwPjs?si=gZYxTXA-KnICCPsn', 'th-1.webp'),
('joker', '01:30:54', NULL, NULL, 'https://youtu.be/zAGVQLHvwOY?si=1B6BOhnRHVWRQDIZ', 'c3.jpeg'),
('kkch', '03:30:54', '2010-03-07', NULL, NULL, 'rom-3.jpg'),
('love-aaj-kal', '03:30:54', NULL, NULL, NULL, 'rom-1.avif'),
('love-mocktail', '03:30:54', NULL, NULL, NULL, 'rom-2.jpeg'),
('openheimer', '03:02:30', '2023-06-21', NULL, 'https://youtu.be/uYPbbksJxIg?si=-nP3frs0WHrYHApM', 'trending-op.jpg'),
('raanjhanaa', '03:02:30', NULL, NULL, NULL, 'r2.jpeg'),
('seven', '02:30:30', NULL, NULL, NULL, 'c1.jpg'),
('shawshank-redemption', '02:30:30', NULL, NULL, NULL, 'c2.jpeg'),
('shershah', '03:30:54', NULL, NULL, 'https://youtu.be/Q0FTXnefVBA?si=ExQ_ry3FpBmPwRMK', 'r7.jpeg'),
('shutter-island', '02:30:30', NULL, NULL, NULL, 'th-4.jpg'),
('silence-of-the-lambs', '02:30:30', NULL, NULL, NULL, 'th-6.jpg'),
('spider-man', '01:30:54', NULL, NULL, 'https://youtu.be/JfVOs4VSpmA?si=6_T2-nGokU-GOZHk', 'trending-5(sm).jpeg'),
('veerappan', '03:30:54', NULL, NULL, NULL, 'c4.webp'),
('yjhd', '03:30:54', NULL, NULL, 'https://youtu.be/Rbp2XUSeUNE?si=A6vyz967urWK-fmX', 'rom-mainn.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `RATING`
--

CREATE TABLE `RATING` (
  `MName` varchar(20) DEFAULT NULL,
  `SName` varchar(20) DEFAULT NULL,
  `Imdb` float DEFAULT NULL,
  `Rotten_tomatoes` int(11) DEFAULT NULL,
  `Times_of_india` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SERIES`
--

CREATE TABLE `SERIES` (
  `SName` varchar(20) NOT NULL,
  `No_of_episodes` int(11) DEFAULT NULL,
  `Duration` time DEFAULT NULL,
  `Release_Date` date DEFAULT NULL,
  `Plot` varchar(150) DEFAULT NULL,
  `Links` varchar(500) DEFAULT NULL,
  `Seasons` int(11) DEFAULT NULL,
  `Img_Name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `SERIES`
--

INSERT INTO `SERIES` (`SName`, `No_of_episodes`, `Duration`, `Release_Date`, `Plot`, `Links`, `Seasons`, `Img_Name`) VALUES
('aarya', 8, NULL, NULL, NULL, NULL, 3, 'tv-cw2.webp'),
('breaking-bad', NULL, NULL, NULL, NULL, 'https://youtu.be/VFLkMDEO-Xc?si=x6KBJeO2wQ1Ql608', NULL, 'trending4.jpeg'),
('bridgerton', NULL, NULL, NULL, NULL, NULL, NULL, 'tv-rom1.jpeg'),
('dark', NULL, NULL, NULL, NULL, NULL, NULL, 'thriller5.jpeg'),
('Greys-anatomy', 24, NULL, NULL, NULL, 'https://youtu.be/q1pcpgREQ5c?si=9jw1f7tnBKHCiY7S', 18, 'tv-cw.webp'),
('hillhouse', NULL, NULL, NULL, NULL, 'https://youtu.be/3eqxXqJDmcY?si=5CNfAfU1drE4qncW', NULL, 'thriller1.jpeg'),
('killer-soup', NULL, NULL, NULL, NULL, NULL, NULL, 'recommendation1.jpeg'),
('lock-&-key', NULL, NULL, NULL, NULL, NULL, NULL, 'thriller7.jpeg'),
('money-heist', NULL, NULL, NULL, NULL, NULL, NULL, 'thriller6.jpeg'),
('office', NULL, NULL, NULL, NULL, NULL, NULL, 'trending2.jpeg'),
('sherlock-holmes', NULL, NULL, NULL, NULL, 'https://youtu.be/IrBKwzL3K7s?si=RZ0XmqG0NsujMddb', NULL, 'crime5.jpeg'),
('squid-game', NULL, NULL, NULL, NULL, NULL, NULL, 'thriller2.jpeg'),
('summerIturnedpretty', NULL, NULL, NULL, NULL, NULL, NULL, 'tv-rom2.jpg'),
('vampire-diaries', NULL, NULL, NULL, NULL, 'https://youtu.be/BmVmhjjkN4E?si=jaTeJGSl1HlBkS6Q', NULL, 'tv-rom3.jpeg'),
('walking-dead', NULL, NULL, NULL, NULL, NULL, NULL, 'trending3.jpg'),
('wednesday', NULL, NULL, NULL, NULL, NULL, NULL, 'thriller3.jpeg'),
('young-sheldon', NULL, NULL, NULL, NULL, NULL, NULL, 'trending1.png');

-- --------------------------------------------------------

--
-- Table structure for table `SUBSCRIPTION`
--

CREATE TABLE `SUBSCRIPTION` (
  `Type` varchar(20) NOT NULL,
  `Price` int(11) DEFAULT NULL,
  `Resolution` varchar(10) DEFAULT NULL,
  `No_of_devices` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SUBSCRIPTIONS`
--

CREATE TABLE `SUBSCRIPTIONS` (
  `email` varchar(20) NOT NULL,
  `Price` int(11) DEFAULT NULL,
  `Resolution` varchar(10) DEFAULT NULL,
  `No_of_devices` int(11) DEFAULT NULL,
  `plan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `SUBSCRIPTIONS`
--

INSERT INTO `SUBSCRIPTIONS` (`email`, `Price`, `Resolution`, `No_of_devices`, `plan`) VALUES
('', NULL, NULL, NULL, 'trial'),
('ab@gmail.com', NULL, NULL, NULL, 'trial'),
('abcd@gmail.com', NULL, NULL, NULL, 'premium'),
('harry@gmail.com', NULL, NULL, NULL, 'basic'),
('kate@gmail.com', NULL, NULL, NULL, 'basic');

-- --------------------------------------------------------

--
-- Table structure for table `USER`
--

CREATE TABLE `USER` (
  `User_Name` varchar(20) DEFAULT NULL,
  `User_id` varchar(20) DEFAULT NULL,
  `Ph_Number` mediumtext DEFAULT NULL,
  `Email` varchar(20) DEFAULT NULL,
  `Address` varchar(20) DEFAULT NULL,
  `Type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `USER`
--

INSERT INTO `USER` (`User_Name`, `User_id`, `Ph_Number`, `Email`, `Address`, `Type`) VALUES
('Vaishnavi', NULL, NULL, 'ollie@gmail.com', NULL, NULL),
('$firstName', NULL, NULL, '$email', NULL, NULL),
('harry', NULL, NULL, 'harry@gmail.com', NULL, NULL),
('henry', NULL, NULL, 'kate@gmail.com', NULL, NULL),
('b', NULL, NULL, 'ab@gmail.com', NULL, NULL),
('abcd', NULL, NULL, 'abcd@gmail.com', NULL, NULL),
('', NULL, NULL, '', NULL, NULL);

--
-- Triggers `USER`
--
DELIMITER $$
CREATE TRIGGER `after_update_user_details` AFTER UPDATE ON `USER` FOR EACH ROW BEGIN
    IF OLD.Email <> NEW.Email THEN
        UPDATE LOGIN SET User_id = NEW.Email WHERE User_id = OLD.Email;UPDATE subscriptions SET email = NEW.Email WHERE email = OLD.Email;END IF;END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_update_user_detailss` AFTER UPDATE ON `USER` FOR EACH ROW BEGIN
    IF OLD.Email <> NEW.Email THEN
        UPDATE LOGIN SET User_id = NEW.Email WHERE User_id = OLD.Email;UPDATE subscriptions SET email = NEW.Email WHERE email = OLD.Email;END IF;END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `v1`
-- (See below for the actual view)
--
CREATE TABLE `v1` (
`MName` varchar(20)
,`SName` varchar(20)
,`continue-watching` varchar(500)
,`Trending` varchar(500)
,`Recommendations` varchar(500)
,`Thriller` varchar(500)
,`Crime` varchar(500)
,`Romance` varchar(500)
,`Horror` varchar(500)
);

-- --------------------------------------------------------

--
-- Structure for view `v1`
--
DROP TABLE IF EXISTS `v1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v1`  AS SELECT `genre`.`MName` AS `MName`, `genre`.`SName` AS `SName`, `genre`.`continue-watching` AS `continue-watching`, `genre`.`Trending` AS `Trending`, `genre`.`Recommendations` AS `Recommendations`, `genre`.`Thriller` AS `Thriller`, `genre`.`Crime` AS `Crime`, `genre`.`Romance` AS `Romance`, `genre`.`Horror` AS `Horror` FROM `genre` WHERE `genre`.`Trending` = 'yes' ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `CAST`
--
ALTER TABLE `CAST`
  ADD KEY `MName` (`MName`),
  ADD KEY `SName` (`SName`);

--
-- Indexes for table `GENRE`
--
ALTER TABLE `GENRE`
  ADD KEY `MName` (`MName`),
  ADD KEY `SName` (`SName`);

--
-- Indexes for table `LANGUAGE`
--
ALTER TABLE `LANGUAGE`
  ADD KEY `MName` (`MName`),
  ADD KEY `SName` (`SName`);

--
-- Indexes for table `LOGIN`
--
ALTER TABLE `LOGIN`
  ADD PRIMARY KEY (`User_id`);

--
-- Indexes for table `MOVIES`
--
ALTER TABLE `MOVIES`
  ADD PRIMARY KEY (`MName`);

--
-- Indexes for table `RATING`
--
ALTER TABLE `RATING`
  ADD KEY `MName` (`MName`),
  ADD KEY `SName` (`SName`);

--
-- Indexes for table `SERIES`
--
ALTER TABLE `SERIES`
  ADD PRIMARY KEY (`SName`);

--
-- Indexes for table `SUBSCRIPTION`
--
ALTER TABLE `SUBSCRIPTION`
  ADD PRIMARY KEY (`Type`);

--
-- Indexes for table `SUBSCRIPTIONS`
--
ALTER TABLE `SUBSCRIPTIONS`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `USER`
--
ALTER TABLE `USER`
  ADD KEY `User_id` (`User_id`),
  ADD KEY `Type` (`Type`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `CAST`
--
ALTER TABLE `CAST`
  ADD CONSTRAINT `cast_ibfk_1` FOREIGN KEY (`MName`) REFERENCES `MOVIES` (`MName`),
  ADD CONSTRAINT `cast_ibfk_2` FOREIGN KEY (`SName`) REFERENCES `SERIES` (`SName`);

--
-- Constraints for table `GENRE`
--
ALTER TABLE `GENRE`
  ADD CONSTRAINT `genre_ibfk_1` FOREIGN KEY (`MName`) REFERENCES `MOVIES` (`MName`),
  ADD CONSTRAINT `genre_ibfk_2` FOREIGN KEY (`SName`) REFERENCES `SERIES` (`SName`);

--
-- Constraints for table `LANGUAGE`
--
ALTER TABLE `LANGUAGE`
  ADD CONSTRAINT `language_ibfk_1` FOREIGN KEY (`MName`) REFERENCES `MOVIES` (`MName`),
  ADD CONSTRAINT `language_ibfk_2` FOREIGN KEY (`SName`) REFERENCES `SERIES` (`SName`);

--
-- Constraints for table `RATING`
--
ALTER TABLE `RATING`
  ADD CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`MName`) REFERENCES `MOVIES` (`MName`),
  ADD CONSTRAINT `rating_ibfk_2` FOREIGN KEY (`SName`) REFERENCES `SERIES` (`SName`);

--
-- Constraints for table `USER`
--
ALTER TABLE `USER`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`User_id`) REFERENCES `login` (`User_id`),
  ADD CONSTRAINT `user_ibfk_2` FOREIGN KEY (`Type`) REFERENCES `Subscription` (`Type`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
