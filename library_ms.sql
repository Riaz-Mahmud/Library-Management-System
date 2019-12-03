-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2019 at 01:01 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_ms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admininfo`
--

CREATE TABLE `admininfo` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admininfo`
--

INSERT INTO `admininfo` (`id`, `name`, `username`, `password`) VALUES
(1, 'Riaz Mahmud', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `author_id` varchar(20) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`author_id`, `name`) VALUES
('145787', 'Richard Bruce Wright'),
('146-698-1', 'Carlo D\'Este'),
('22222', 'Gina Kolata'),
('54454', 'adsfa'),
('54646', 'adfadf');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `isbn` varchar(20) NOT NULL,
  `title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`isbn`, `title`) VALUES
('074322678X', 'Flu: he Story Of The Great Influenza Pandemic Of 1918 And The Search For The Virus That Caused It'),
('1646464', 'c++'),
('16548496', 'javaFx'),
('2005018', 'Clara Callan: A Novel'),
('60973129x', 'Decision In Normandy');

-- --------------------------------------------------------

--
-- Table structure for table `book_authors`
--

CREATE TABLE `book_authors` (
  `author_id` varchar(20) NOT NULL,
  `isbn` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_authors`
--

INSERT INTO `book_authors` (`author_id`, `isbn`) VALUES
('145787', '2005018'),
('146-698-1', '60973129x'),
('22222', '074322678X'),
('54454', '1646464'),
('54646', '16548496');

-- --------------------------------------------------------

--
-- Table structure for table `book_loans`
--

CREATE TABLE `book_loans` (
  `loan_id` varchar(20) NOT NULL,
  `student_id` varchar(10) NOT NULL,
  `isbn` varchar(20) NOT NULL,
  `card_id` varchar(20) NOT NULL,
  `date_out` date NOT NULL,
  `due_date` date NOT NULL,
  `date_in` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_loans`
--

INSERT INTO `book_loans` (`loan_id`, `student_id`, `isbn`, `card_id`, `date_out`, `due_date`, `date_in`) VALUES
('100005', '1234', '60973129x', '100005', '2019-11-19', '2019-11-18', '2019-11-19'),
('100006', '1234', '16548496', '100006', '2019-10-29', '2019-11-12', NULL),
('100007', '1234', '16548496', '100007', '2019-11-19', '2019-11-16', '2019-11-19'),
('100008', '12346', '2005018', '100008', '2019-11-19', '2019-12-03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `borrower`
--

CREATE TABLE `borrower` (
  `card_id` varchar(20) NOT NULL,
  `student_id` varchar(11) NOT NULL,
  `ssn` varchar(20) NOT NULL,
  `bname` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `phone` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `borrower`
--

INSERT INTO `borrower` (`card_id`, `student_id`, `ssn`, `bname`, `address`, `phone`) VALUES
('100005', '1234', '1452', 'adsfa', 'adfa', '124578963'),
('100006', '1234', '14454', 'Mr y', 'dadsf', '123456789'),
('100007', '1234', '2454', 'dfgh', 'dfghsdfg', '12354789'),
('100008', '12346', '14575666x', 'Mr X', 'Dhaka Bangladesh', '123456799');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admininfo`
--
ALTER TABLE `admininfo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`isbn`);

--
-- Indexes for table `book_authors`
--
ALTER TABLE `book_authors`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `book_loans`
--
ALTER TABLE `book_loans`
  ADD PRIMARY KEY (`loan_id`);

--
-- Indexes for table `borrower`
--
ALTER TABLE `borrower`
  ADD PRIMARY KEY (`card_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admininfo`
--
ALTER TABLE `admininfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
