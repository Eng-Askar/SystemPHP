-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2024 at 07:56 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `al_irshaaddbs`
--

-- --------------------------------------------------------

--
-- Table structure for table `final_exam`
--

CREATE TABLE `final_exam` (
  `Id` int(11) NOT NULL,
  `Stu_id` int(11) NOT NULL,
  `Stu_name` varchar(65) NOT NULL,
  `Class` int(11) NOT NULL,
  `Academic_year` int(11) NOT NULL,
  `Islamic` int(11) NOT NULL,
  `Arabic` int(11) NOT NULL,
  `Chemistry` int(11) NOT NULL,
  `Physics` int(11) NOT NULL,
  `Biology` int(11) NOT NULL,
  `Maths` int(11) NOT NULL,
  `History` int(11) NOT NULL,
  `Geography` int(11) NOT NULL,
  `English` int(11) NOT NULL,
  `Somali` int(11) NOT NULL,
  `Total` int(11) NOT NULL,
  `Average` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `final_exam`
--

INSERT INTO `final_exam` (`Id`, `Stu_id`, `Stu_name`, `Class`, `Academic_year`, `Islamic`, `Arabic`, `Chemistry`, `Physics`, `Biology`, `Maths`, `History`, `Geography`, `English`, `Somali`, `Total`, `Average`) VALUES
(9, 1, '0', 3, 2024, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 55, '5.50'),
(11, 3, 'mustafe', 3, 2024, 100, 2, 3, 4, 5, 6, 7, 8, 9, 10, 154, '15.40');

--
-- Triggers `final_exam`
--
DELIMITER $$
CREATE TRIGGER `calculate_average_total_insert_final` BEFORE INSERT ON `final_exam` FOR EACH ROW BEGIN
  -- Calculate the total of all subject columns, handling NULL values as 0
  SET NEW.Total = COALESCE(NEW.Islamic, 0) + COALESCE(NEW.Arabic, 0) + COALESCE(NEW.Chemistry, 0) + COALESCE(NEW.Physics, 0) + COALESCE(NEW.Biology, 0) + COALESCE(NEW.Maths, 0) + COALESCE(NEW.History, 0) + COALESCE(NEW.Geography, 0) + COALESCE(NEW.English, 0) + COALESCE(NEW.Somali, 0);
  
  -- Calculate the average of all subject columns, handling NULL values as 0
  SET NEW.Average = CASE
    WHEN NEW.Total = 0 THEN 0 -- Avoid division by zero
    ELSE NEW.Total / 10 -- Assuming there are 10 subject columns
  END;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `calculate_average_total_update_final` BEFORE UPDATE ON `final_exam` FOR EACH ROW BEGIN
  -- Calculate the total of all subject columns, handling NULL values as 0
  SET NEW.Total = COALESCE(NEW.Islamic, 0) + COALESCE(NEW.Arabic, 0) + COALESCE(NEW.Chemistry, 0) + COALESCE(NEW.Physics, 0) + COALESCE(NEW.Biology, 0) + COALESCE(NEW.Maths, 0) + COALESCE(NEW.History, 0) + COALESCE(NEW.Geography, 0) + COALESCE(NEW.English, 0) + COALESCE(NEW.Somali, 0);
  
  -- Calculate the average of all subject columns, handling NULL values as 0
  SET NEW.Average = CASE
    WHEN NEW.Total = 0 THEN 0 -- Avoid division by zero
    ELSE NEW.Total / 10 -- Assuming there are 10 subject columns
  END;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `midterm_exam`
--

CREATE TABLE `midterm_exam` (
  `Id` int(11) NOT NULL,
  `Stu_id` int(11) NOT NULL,
  `Stu_name` varchar(99) NOT NULL,
  `Class` int(11) NOT NULL,
  `Academic_year` int(11) NOT NULL,
  `Islamic` int(11) NOT NULL,
  `Arabic` int(11) NOT NULL,
  `Chemistry` int(11) NOT NULL,
  `Physics` int(11) NOT NULL,
  `Biology` int(11) NOT NULL,
  `Maths` int(11) NOT NULL,
  `History` int(11) NOT NULL,
  `Geography` int(11) NOT NULL,
  `English` int(11) NOT NULL,
  `Somali` int(11) NOT NULL,
  `Total` int(11) NOT NULL,
  `Average` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `midterm_exam`
--

INSERT INTO `midterm_exam` (`Id`, `Stu_id`, `Stu_name`, `Class`, `Academic_year`, `Islamic`, `Arabic`, `Chemistry`, `Physics`, `Biology`, `Maths`, `History`, `Geography`, `English`, `Somali`, `Total`, `Average`) VALUES
(11, 1, 'Askar', 3, 2024, 100, 2, 3, 4, 5, 6, 7, 8, 9, 10, 154, '15.00');

--
-- Triggers `midterm_exam`
--
DELIMITER $$
CREATE TRIGGER `calculate_average_total_insert_midterm` BEFORE INSERT ON `midterm_exam` FOR EACH ROW BEGIN
  -- Calculate the total of all subject columns, handling NULL values as 0
  SET NEW.Total = COALESCE(NEW.Islamic, 0) + COALESCE(NEW.Arabic, 0) + COALESCE(NEW.Chemistry, 0) + COALESCE(NEW.Physics, 0) + COALESCE(NEW.Biology, 0) + COALESCE(NEW.Maths, 0) + COALESCE(NEW.History, 0) + COALESCE(NEW.Geography, 0) + COALESCE(NEW.English, 0) + COALESCE(NEW.Somali, 0);
  
  -- Calculate the average of all subject columns, handling NULL values as 0
  SET NEW.Average = CASE
    WHEN NEW.Total = 0 THEN 0 -- Avoid division by zero
    ELSE NEW.Total / 10 -- Assuming there are 10 subject columns
  END;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `calculate_average_total_update_midterm` BEFORE UPDATE ON `midterm_exam` FOR EACH ROW BEGIN
  -- Calculate the total of all subject columns, handling NULL values as 0
  SET NEW.Total = COALESCE(NEW.Islamic, 0) + COALESCE(NEW.Arabic, 0) + COALESCE(NEW.Chemistry, 0) + COALESCE(NEW.Physics, 0) + COALESCE(NEW.Biology, 0) + COALESCE(NEW.Maths, 0) + COALESCE(NEW.History, 0) + COALESCE(NEW.Geography, 0) + COALESCE(NEW.English, 0) + COALESCE(NEW.Somali, 0);
  
  -- Calculate the average of all subject columns, handling NULL values as 0
  SET NEW.Average = CASE
    WHEN NEW.Total = 0 THEN 0 -- Avoid division by zero
    ELSE NEW.Total / 10 -- Assuming there are 10 subject columns
  END;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `monthly_exam`
--

CREATE TABLE `monthly_exam` (
  `Id` int(11) NOT NULL,
  `Stu_Id` int(11) NOT NULL,
  `Stu_name` varchar(222) NOT NULL,
  `Class` varchar(222) NOT NULL,
  `Academic_year` year(4) NOT NULL,
  `Islamic` int(11) NOT NULL,
  `Arabic` int(11) NOT NULL,
  `Chemistry` int(11) NOT NULL,
  `Physics` int(11) NOT NULL,
  `Biology` int(11) NOT NULL,
  `Maths` int(11) NOT NULL,
  `History` int(11) NOT NULL,
  `Geography` int(11) NOT NULL,
  `English` int(11) NOT NULL,
  `Somali` int(11) NOT NULL,
  `Total` int(11) NOT NULL,
  `Average` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `monthly_exam`
--

INSERT INTO `monthly_exam` (`Id`, `Stu_Id`, `Stu_name`, `Class`, `Academic_year`, `Islamic`, `Arabic`, `Chemistry`, `Physics`, `Biology`, `Maths`, `History`, `Geography`, `English`, `Somali`, `Total`, `Average`) VALUES
(1, 1, 'Askar', '3B', 2024, 50, 50, 3, 4, 5, 6, 7, 8, 9, 10, 152, '15.20'),
(2, 2, 'Eid', '3B', 2024, 32, 11, 0, 0, 0, 0, 0, 0, 0, 0, 43, '4.00'),
(4, 3, 'mustafe', '3B', 2024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 100, '10.00'),
(6, 4, 'khadar', '3B', 2024, 27, 12, 0, 0, 0, 0, 0, 0, 0, 0, 39, '4.00');

--
-- Triggers `monthly_exam`
--
DELIMITER $$
CREATE TRIGGER `calculate_average_total_insert` BEFORE INSERT ON `monthly_exam` FOR EACH ROW BEGIN
  -- Calculate the total of all subject columns, handling NULL values as 0
  SET NEW.Total = COALESCE(NEW.Islamic, 0) + COALESCE(NEW.Arabic, 0) + COALESCE(NEW.Chemistry, 0) + COALESCE(NEW.Physics, 0) + COALESCE(NEW.Biology, 0) + COALESCE(NEW.Maths, 0) + COALESCE(NEW.History, 0) + COALESCE(NEW.Geography, 0) + COALESCE(NEW.English, 0) + COALESCE(NEW.Somali, 0);
  
  -- Calculate the average of all subject columns, handling NULL values as 0
  SET NEW.Average = CASE
    WHEN NEW.Total = 0 THEN 0 -- Avoid division by zero
    ELSE NEW.Total / 10 -- Assuming there are 10 subject columns
  END;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `calculate_average_total_update` BEFORE UPDATE ON `monthly_exam` FOR EACH ROW BEGIN
  -- Calculate the total of all subject columns, handling NULL values as 0
  SET NEW.Total = COALESCE(NEW.Islamic, 0) + COALESCE(NEW.Arabic, 0) + COALESCE(NEW.Chemistry, 0) + COALESCE(NEW.Physics, 0) + COALESCE(NEW.Biology, 0) + COALESCE(NEW.Maths, 0) + COALESCE(NEW.History, 0) + COALESCE(NEW.Geography, 0) + COALESCE(NEW.English, 0) + COALESCE(NEW.Somali, 0);
  
  -- Calculate the average of all subject columns, handling NULL values as 0
  SET NEW.Average = CASE
    WHEN NEW.Total = 0 THEN 0 -- Avoid division by zero
    ELSE NEW.Total / 10 -- Assuming there are 10 subject columns
  END;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `Id` int(11) NOT NULL,
  `Fullname` varchar(255) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `P_phone` varchar(20) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Class` varchar(20) DEFAULT NULL,
  `Shift` varchar(20) DEFAULT NULL,
  `Academic_year` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`Id`, `Fullname`, `Phone`, `P_phone`, `Address`, `Class`, `Shift`, `Academic_year`) VALUES
(1, 'Askar', '348384', '435343', 'jig jiga yar', '4B', 'Morning', 2023),
(2, 'Eid', '348384', '435343', 'jig jiga yar', '4C', 'Morning', 2023),
(3, 'mustafe', '45566567', '776553445', 'call', '4D', 'Afternoon', 2025),
(4, 'khadar', '45566567', '776553445', 'call', '4D', 'Afternoon', 2025);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `final_exam`
--
ALTER TABLE `final_exam`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UC_Stu_Id` (`Stu_id`);

--
-- Indexes for table `midterm_exam`
--
ALTER TABLE `midterm_exam`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UC_Stu_Id` (`Stu_id`);

--
-- Indexes for table `monthly_exam`
--
ALTER TABLE `monthly_exam`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UC_Stu_Id` (`Stu_Id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `final_exam`
--
ALTER TABLE `final_exam`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `midterm_exam`
--
ALTER TABLE `midterm_exam`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `monthly_exam`
--
ALTER TABLE `monthly_exam`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `final_exam`
--
ALTER TABLE `final_exam`
  ADD CONSTRAINT `FK_final_exam_Student` FOREIGN KEY (`Stu_id`) REFERENCES `students` (`Id`);

--
-- Constraints for table `midterm_exam`
--
ALTER TABLE `midterm_exam`
  ADD CONSTRAINT `FK_Monthly_exam_Student` FOREIGN KEY (`Stu_id`) REFERENCES `students` (`Id`),
  ADD CONSTRAINT `FK_midterm_exam_Student` FOREIGN KEY (`Stu_id`) REFERENCES `students` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
