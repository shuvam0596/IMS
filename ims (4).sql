-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2019 at 12:04 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.0.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ims`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `id` int(10) NOT NULL,
  `designation_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`id`, `designation_name`) VALUES
(3, 'Director, MIET'),
(4, 'Director, Academics'),
(5, 'Senior Manager Strategic'),
(6, 'Assistant Professor,CSE Engineer'),
(7, 'Manager-Student Expeience'),
(8, 'HOD,IT & CSE'),
(9, 'HOD,ECE'),
(10, 'Professor'),
(11, 'Student'),
(12, 'Assistant Professor');

-- --------------------------------------------------------

--
-- Table structure for table `handler_panel`
--

CREATE TABLE `handler_panel` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `handler_designation` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `handler_panel`
--

INSERT INTO `handler_panel` (`id`, `category_name`, `handler_designation`) VALUES
(2, 'Plumbing', 'Plumber'),
(3, 'Estates', 'Security Guard');

-- --------------------------------------------------------

--
-- Table structure for table `handler_registration`
--

CREATE TABLE `handler_registration` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `handler_registration`
--

INSERT INTO `handler_registration` (`id`, `name`, `designation`, `email`, `phone`, `password`, `type`) VALUES
(1, 'Rahul', 'Plumber', 'r@r.com', '1234567890', '12345', 'handler'),
(2, 'Sharma', 'Plumber', 'sh@sh.com', '111111111111111', '12345', 'handler'),
(3, 'Gupta', 'Electrcain', 'gt@gt.com', '1234567890', '12345', 'handler'),
(4, 'Mahajan', 'Electrcain', 'mh@mh.com', '1234567890', '12345', 'handler'),
(5, 'test', 'Painter', 'tt@tt.com', '1234567890', '12345', 'handler'),
(6, 'raju', 'Painter', 'test@test.com', '5544554455', '12345', 'handler'),
(7, 'Ramesh', 'Carpenetr', 'rm@rm.com', '1234567890', '12345', 'handler'),
(8, 'Mahesh', 'Network Team', 'm@m.com', '1234567890', '12345', 'handler'),
(9, 'test1', 'Plumber', 'test1@test1.com', '1231231231', '12345', 'handler');

-- --------------------------------------------------------

--
-- Table structure for table `incident_records`
--

CREATE TABLE `incident_records` (
  `id` int(11) NOT NULL,
  `incident_created_by` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `priority` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `incident_open_date` varchar(255) NOT NULL,
  `incident_closed_date` varchar(255) NOT NULL,
  `incident_no` varchar(255) NOT NULL,
  `userid` varchar(255) NOT NULL,
  `assigned_to` varchar(255) NOT NULL,
  `handler_id` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `incident_records`
--

INSERT INTO `incident_records` (`id`, `incident_created_by`, `title`, `designation`, `email`, `phone`, `priority`, `status`, `location`, `category`, `description`, `incident_open_date`, `incident_closed_date`, `incident_no`, `userid`, `assigned_to`, `handler_id`, `image`) VALUES
(3, 'Gourav', 'Hardware Problem', 'Student', 'g@g.com', '1234567890', 'Low', 'Pending', 'Hostel', 'Plumber', '0000-00-00', '2018-11-20 12:23:25', '', 'MIET201811202853', '13', 'Sharma', '2', ''),
(5, 'Gourav', 'Hardware Problem', 'Student', 'g@g.com', '1234567890', 'Low', 'Processing', 'Computer Lab', 'Lab Equipment', 'Hardware ProblemHardware ProblemHardware ProblemHardware ProblemHardware ProblemHardware ProblemHardware ProblemHardware ProblemHardware Problem', '2018-11-20 12:46:20', '', 'MIET201811202029', '13', '', '', ''),
(6, 'Gourav', 'Book Not Available', 'Student', 'g@g.com', '1234567890', 'Medium', 'Closed', 'Administartor Block', 'Plumber', 'Book', '2018-11-20 12:56:09', '2018-11-21 21:47:45', 'MIET201811202142', '13', 'Rahul', '1', ''),
(7, 'Gourav', 'Book Not Available', 'Student', 'g@g.com', '1234567890', 'Low', 'Closed', 'Administartor Block', 'Plumber', 'Book', '2018-11-20 12:58:06', '', 'MIET20181120329', '13', '', '', ''),
(8, 'Gourav', 'adw', 'Student', 'g@g.com', '1234567890', 'High', 'Pending', 'MBA Block', 'Electrcain', 'asdf', '2018-11-20 12:58:17', '', 'MIET201811203064', '13', 'Mahajan', '4', ''),
(9, 'Gourav', 'adw', 'Student', 'g@g.com', '1234567890', 'Medium', 'Closed', 'MBA Block', 'Electrcain', 'asdf', '2018-11-20 12:58:48', '', 'MIET201811204690', '13', 'Gupta', '3', ''),
(10, 'Gourav', 'Hardware Problem', 'Student', 'g@g.com', '1234567890', 'Low', 'Pending', 'Administartor Block', 'Lab Equipment', '', '2018-11-20 13:01:36', '', 'MIET201811206824', '13', '', '', ''),
(11, 'Gourav', 'Software Issue', 'Student', 'g@g.com', '1234567890', 'Low', 'Pending', 'IT Block', 'Lab Equipment', 'werte', '2018-11-20 13:02:36', '', 'MIET201811203566', '13', '', '', ''),
(12, 'Shivam', 'Book Not Available', 'Professor', 's@s.com', '1234567890', 'Low', 'Pending', 'Hostel', 'Lab Equipment', '', '2018-11-20 13:03:26', '', 'MIET201811209010', '14', '', '', ''),
(13, 'test', 'LAN Problem', 'Teacher', 'test@test.com', '1212121212', 'Low', 'Pending', 'Computer Lab', 'Electrcain', 'njzkcn  bjkbkjnnbjkhj', '2018-11-20 13:23:45', '', 'MIET201811206577', '15', '', '', ''),
(14, 'Gourav', 'Book Not Available', 'Student', 'g@g.com', '1234567890', 'Low', 'Pending', 'Hostel', 'Electrcain', 'bjhg', '2018-11-20 13:37:53', '', 'MIET201811205440', '13', '', '', ''),
(15, 'Gourav', 'bjfhsdjfh', 'Student', 'g@g.com', '1234567890', 'High', 'Pending', 'Hostel', 'Electrcain', 'sdfosjf', '2018-11-21 09:08:15', '', 'MIET201811213622', '13', 'Gupta', '3', ''),
(16, 'Gourav', 'jhbiuhiu', 'Student', 'g@g.com', '1234567890', 'Medium', 'Pending', 'IT Block', 'Plumber', 'biuhbiu9', '2018-11-21 15:49:00', '', 'MIET201811211124', '13', 'Rahul', '1', ''),
(17, 'Neeraj Jamwal', 'Water Supply Issue', 'Professor', 'n@n.com', '979712123455', 'Medium', 'Pending', 'Hostel', 'Plumber', 'Water Supply Issue Water Supply Issue Water Supply Issue', '2018-11-21 21:21:35', '', 'MIET201811211986', '16', 'Sharma', '2', ''),
(18, 'Gourav', 'LAN Problem', 'Student', 'g@g.com', '1234567890', 'Low', 'Pending', 'Computer Lab', 'Carpenetr', 'tets', '2018-11-22 18:21:12', '', 'MIET201811228515', '13', '', '', '78951_erm diagram.png'),
(19, 'Gourav', 'LAN Problem', 'Student', 'g@g.com', '1234567890', 'Medium', 'Closed', 'Hostel', 'Plumber', 'fjyuht', '2018-11-24 17:01:39', '2018-11-24 17:10:07', 'MIET201811243519', '13', 'Rahul', '1', '32548_erm diagram.png'),
(20, 'rishi', 'Book Not Available', 'assistant professor', 'mahajan@gmail.com', '5635362715', 'Low', 'Closed', 'MBA Block', 'Painter', 's', '2018-11-26 19:05:11', '2018-11-26 19:10:39', 'MIET201811263599', '20', 'raju', '6', '68770_erm diagram.png'),
(21, 'Neha', 'any problem', 'Student', 'nn@n.com', '9191919191', 'Medium', 'Processing', 'IT Block', 'Plumber', 'twt', '2018-11-28 08:54:16', '', 'MIET201811282372', '21', 'Sharma', '2', '73220_erm diagram.png'),
(28, 'Neha', 'loreum pispm', 'Student', 'nn@n.com', '9191919191', 'Low', 'Pending', 'MBA Block', 'Plumber', 'nkjh jho', '2018-12-01 11:49:02', '', 'MIET201812019724', '21', 'Rahul', '1', '98055_erm diagram.png'),
(29, 'Rejul Bhat', 'Computer problem', 'Student', 'rj@rj.com', '8188181811', 'Low', 'Closed', 'Computer Lab', 'Electrcain', 'hllo', '2018-12-01 12:51:43', '2018-12-01 13:06:18', 'MIET201812014562', '22', 'Mahajan', '4', '37031_erm diagram.png'),
(32, 'Ankur', 'Hardware Problem', 'Director, MIET', 'a@a.com', '1234567890', 'High', 'Pending', 'Admin Block', 'Plumber', 'fdd', '2018-12-02 14:08:11', '', 'MIET201812024013', '23', 'Sharma', '2', '31777_erm diagram.png'),
(39, 'Vidushi Sharma', 'LAN Problem', 'Assistant Professor,CSE Engineer', 'v@v.com', '1234567890', 'Medium', 'Pending', 'IT Lab', 'Network Team', 'lab', '2018-12-02 14:39:52', '', 'MIET20181202306', '24', 'Mahesh', '8', '24671_erm diagram.png'),
(40, 'Ankur', 'Hardware Problem', 'Director, MIET', 'a@a.com', '1234567890', 'High', 'Pending', 'Library', 'Painter', 'gggg', '2018-12-02 14:40:34', '', 'MIET201812027684', '23', 'raju', '6', '25333_erm diagram.png'),
(41, 'Gourav Sharma', 'LAN Problem', 'HOD,IT & CSE', 'gourav31ite@gmail.com', '1234567890', 'Medium', 'Pending', 'C-Block', 'Carpenetr', 'huh', '2018-12-02 21:04:53', '', 'MIET201812022964', '28', 'Ramesh', '7', '78830_erm diagram.png'),
(42, 'Shiuvam', 'Hardware Problem', 'HOD,IT & CSE', 'mahajanshuvam@gmail.com', '1212345678', 'Medium', 'Pending', 'IT Lab', 'Network Team', 'Hw pblm', '2018-12-03 11:25:14', '', 'MIET201812034756', '30', 'Mahesh', '8', '94423_erm diagram.png'),
(43, 'Shristi Gupta', 'Hardware Problem', 'HOD,IT & CSE', 'gourav31ite@gmail.com', '1234567890', 'Medium', 'Pending', 'C-Block', 'Carpenetr', 'harware problem', '2019-01-06 19:06:06', '', 'MIET20190106701', '29', 'Ramesh', '7', '65603_erm diagram.png'),
(44, 'Gourav', 'Tap leakage', 'Student', 'g@g.com', '1234567890', 'Low', 'Pending', 'Admin Block', 'Plumber', 'testss', '2019-03-10 12:31:59', '', 'MIET201903108090', '13', 'Rahul', '1', '11275_avatar-mini2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `location_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `location_name`) VALUES
(3, 'Hostel'),
(4, 'Admin Block'),
(5, 'A-BLock'),
(6, 'C-Block'),
(7, 'B-Block'),
(8, 'Library'),
(9, 'IT Lab'),
(11, 'D-Block');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `hash` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `name`, `designation`, `email`, `phone`, `password`, `type`, `status`, `hash`) VALUES
(1, 'admin', 'Administrator', 'admin@admin.com', '9070701234', '12345', 'admin', 1, 0),
(13, 'Gourav', 'Student', 'g@g.com', '1234567890', '12345', 'guest', 1, 0),
(14, 'Shivam', 'Professor', 's@s.com', '1234567890', '121212', 'guest', 0, 0),
(15, 'test', 'Teacher', 'test@test.com', '1212121212', '12345', 'guest', 0, 0),
(16, 'Neeraj Jamwal', 'Professor', 'n@n.com', '979712123455', '12345', 'guest', 0, 0),
(19, 'Gupta', 'sssssssss', 'r@r.com', '1234567897', '121212', 'guest', 0, 0),
(20, 'rishi', 'assistant professor', 'mahajan@gmail.com', '5635362715', '12345', 'guest', 0, 0),
(21, 'Neha', 'Student', 'nn@n.com', '9191919191', '12345', 'guest', 0, 0),
(22, 'Rejul Bhat', 'Student', 'rj@rj.com', '8188181811', '12345', 'guest', 0, 0),
(23, 'Ankur', 'Director, MIET', 'a@a.com', '1234567890', '12345', 'guest', 0, 0),
(24, 'Vidushi Sharma', 'Assistant Professor,CSE Engineer', 'v@v.com', '1234567890', '12345', 'guest', 0, 0),
(29, 'Shristi Gupta', 'HOD,IT & CSE', 'gourav31ite@gmail.com', '1234567890', '12345', 'guest', 1, 37152),
(30, 'Shiuvam', 'HOD,IT & CSE', 'mahajanshuvam@gmail.com', '1212345678', '12345', 'guest', 1, 12154);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `handler_panel`
--
ALTER TABLE `handler_panel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `handler_registration`
--
ALTER TABLE `handler_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `incident_records`
--
ALTER TABLE `incident_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `handler_panel`
--
ALTER TABLE `handler_panel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `handler_registration`
--
ALTER TABLE `handler_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `incident_records`
--
ALTER TABLE `incident_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
