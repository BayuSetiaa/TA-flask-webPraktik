-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jan 07, 2024 at 11:48 PM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ssisdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('bayusetia', 'sha256$IsRvMhDKEuqPXbpK$4df877fbd72055c3a4315ffc9d0d298e6b2c900e59e0c65742663dc02f860b42');

-- --------------------------------------------------------

--
-- Table structure for table `college`
--

CREATE TABLE `college` (
  `code` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `college`
--

INSERT INTO `college` (`code`, `name`) VALUES
('EB', 'Ekonomi Dan Bisnis'),
('HM', 'Humaniora'),
('PD', 'Pendidikan'),
('ST', 'Sains & Teknologi'),
('TIE', 'Teknologi Informasi Dan Elektro');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `code` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `college` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`code`, `name`, `college`) VALUES
('AK', 'Akuntansi', 'EB'),
('AR', 'Arsitektur', 'ST'),
('BK', 'Bimbingan Dan Konseling', 'PD'),
('BSCE', 'Bachelor of Science in Civil Engineering', 'COET'),
('BSChemEng', 'Bachelor of Science in Chemical Engineering', 'CCS'),
('BSCS', 'Bachelor of Science in Computer Science', 'CCS'),
('BSIS', 'Bachelor of Science in Information System', 'CCS'),
('BSIT', 'Bachelor of Science in Information Technology', 'CCS'),
('HI', 'Hubungan Internasional', 'HM'),
('IF', 'Informatika', 'ST'),
('IK', 'Ilmu Komunikasi', 'HM'),
('MJ', 'Manajemen', 'EB'),
('PBI', 'Pendidikan Bahasa Inggris', 'PD'),
('PSI', 'Psikologi', 'HM'),
('PTI', 'Pendidikan Teknologi Informasi', 'PD'),
('PWK', 'Perencanaan Wilayah Kota', 'ST'),
('SI', 'Sistem Informasi', 'TIE'),
('SING', 'Sastra Inggris', 'HM'),
('SK', 'Sistem Komputer', 'TIE'),
('SPL', 'Sipil', 'ST'),
('TE', 'Teknik Elektro', 'TIE'),
('TI', 'Teknik Industri', 'ST');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` varchar(10) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `year` int(1) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `coursecode` varchar(10) NOT NULL,
  `collegecode` varchar(10) DEFAULT NULL,
  `photo` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `firstname`, `middlename`, `lastname`, `year`, `gender`, `coursecode`, `collegecode`, `photo`) VALUES
('5220411236', 'Kim', '', 'Jennie', 4, 'Perempuan', 'PTI', 'PD', 'http://res.cloudinary.com/dziytueqn/image/upload/v1704648714/mwclupx9fftfnunrnult.jpg'),
('5220411237', 'Rose', '', 'Park', 5, 'Perempuan', 'SK', 'TIE', 'http://res.cloudinary.com/dziytueqn/image/upload/v1704648576/ogapmgfhu96j7sgjitb1.jpg'),
('5220411238', 'Lalisa', '', 'Manobal', 6, 'Perempuan', 'BK', 'PD', 'http://res.cloudinary.com/dziytueqn/image/upload/v1704648464/biq33rzta54b5dfxtp3e.jpg'),
('5220411239', 'Kim', '', 'Jisoo', 8, 'Perempuan', 'PWK', 'ST', 'http://res.cloudinary.com/dziytueqn/image/upload/v1704648751/cid0qvoicy8att7pphei.jpg'),
('5220411240', 'Freya', '', 'Jayawardana', 1, 'Perempuan', 'IF', 'ST', 'http://res.cloudinary.com/dziytueqn/image/upload/v1704638756/uks3xexmjjyup39icfll.jpg'),
('5220411241', 'Marsha', '', 'Lenathea', 3, 'Perempuan', 'SPL', 'ST', 'http://res.cloudinary.com/dziytueqn/image/upload/v1704644370/rozbke65frqal4embiqa.jpg'),
('5220411242', 'Angelina', '', 'Christy', 2, 'Perempuan', 'AK', 'EB', 'http://res.cloudinary.com/dziytueqn/image/upload/v1704639819/jobfxlq0jkadheod6z8t.jpg'),
('5220411243', 'Azizi', '', 'Asadel', 3, 'Perempuan', 'HI', 'HM', 'http://res.cloudinary.com/dziytueqn/image/upload/v1704646392/f1rqduwi2pol2mg4xjxo.jpg'),
('5220411244', 'Adzana', '', 'Shaliha', 5, 'Perempuan', 'IK', 'HM', 'http://res.cloudinary.com/dziytueqn/image/upload/v1704646470/esnmgwhb0jrdv2jtcirl.jpg'),
('5220411246', 'Reva', '', 'Fidela', 7, 'Perempuan', 'MJ', 'EB', 'http://res.cloudinary.com/dziytueqn/image/upload/v1704646989/zoqhtbvzuxuxye6rmhu3.jpg'),
('5220411247', 'Shani', 'Indira', 'Natio', 7, 'Perempuan', 'TI', 'ST', 'http://res.cloudinary.com/dziytueqn/image/upload/v1704647061/ovsg7tcy0no300pndcai.jpg'),
('5220411248', 'Shin', '', 'Yuna', 2, 'Perempuan', 'PBI', 'PD', 'http://res.cloudinary.com/dziytueqn/image/upload/v1704648993/rpi4lwgbc7sbn6nsu32k.jpg'),
('5220411249', 'Choi', '', 'Jisu', 3, 'Perempuan', 'AR', 'ST', 'http://res.cloudinary.com/dziytueqn/image/upload/v1704649240/cmm38thezxaz9piiy1eo.jpg'),
('5220411250', 'Shin', '', 'Ryujin', 4, 'Perempuan', 'PSI', 'HM', 'http://res.cloudinary.com/dziytueqn/image/upload/v1704649406/o4o06pskctfoslqmhjwg.jpg'),
('5220411251', 'Hwang', '', 'Yeji', 7, 'Perempuan', 'SI', 'TIE', 'http://res.cloudinary.com/dziytueqn/image/upload/v1704649681/u32ie2wewngsiiktiagc.jpg'),
('5220411253', 'Chou', '', 'Tzuyu', 3, 'Perempuan', 'TE', 'TIE', 'http://res.cloudinary.com/dziytueqn/image/upload/v1704650355/mtmodqesyu15qyhprpq2.jpg'),
('5220411254', 'Momo', '', 'Hirai', 3, 'Perempuan', 'SING', 'HM', 'http://res.cloudinary.com/dziytueqn/image/upload/v1704650878/u0rkzhvcrdeeitcevjb9.jpg'),
('5220411299', 'Yessica', '', 'Tamara', 5, 'Perempuan', 'IK', 'HM', 'http://res.cloudinary.com/dziytueqn/image/upload/v1704671094/ismljzghsebourrhwlga.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `college`
--
ALTER TABLE `college`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coursecode` (`coursecode`),
  ADD KEY `collegecode` (`collegecode`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`coursecode`) REFERENCES `course` (`code`),
  ADD CONSTRAINT `students_ibfk_2` FOREIGN KEY (`collegecode`) REFERENCES `college` (`code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
