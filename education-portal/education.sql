-- phpMyAdmin SQL Dump
-- version 4.0.10.18
-- https://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Nov 29, 2017 at 10:51 AM
-- Server version: 5.6.30-76.3-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `waywezel_education`
--

-- --------------------------------------------------------

--
-- Table structure for table `attempt_test`
--

DROP TABLE IF EXISTS `attempt_test`;
CREATE TABLE IF NOT EXISTS `attempt_test` (
  `attempt_test_id` int(11) NOT NULL AUTO_INCREMENT,
  `attempt_quiz_result_id` int(11) NOT NULL,
  `attempt_student_id` int(11) NOT NULL,
  `attempt_qus_id` int(11) NOT NULL,
  `attempt_ans` int(11) NOT NULL,
  `attempt_r_ans` int(11) NOT NULL,
  PRIMARY KEY (`attempt_test_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

--
-- Dumping data for table `attempt_test`
--

INSERT INTO `attempt_test` (`attempt_test_id`, `attempt_quiz_result_id`, `attempt_student_id`, `attempt_qus_id`, `attempt_ans`, `attempt_r_ans`) VALUES
(25, 7, 5, 18, 1, 0),
(26, 7, 5, 18, 2, 0),
(27, 8, 5, 34, 3, 4),
(28, 8, 5, 35, 2, 4),
(29, 8, 5, 36, 2, 1),
(30, 8, 5, 37, 3, 2),
(31, 8, 5, 38, 3, 4),
(32, 9, 5, 56, 3, 2),
(33, 10, 5, 20, 3, 2),
(34, 10, 5, 21, 3, 1),
(35, 10, 5, 22, 3, 1),
(36, 11, 5, 1, 1, 1),
(37, 11, 5, 2, 1, 0),
(38, 12, 5, 1, 1, 1),
(39, 12, 5, 2, 1, 0),
(40, 12, 5, 3, 1, 1),
(41, 12, 5, 4, 1, 0),
(42, 12, 5, 5, 1, 0),
(43, 12, 5, 6, 2, 2),
(44, 13, 5, 44, 1, 1),
(45, 13, 5, 45, 1, 0),
(46, 13, 5, 45, 1, 0),
(47, 13, 5, 46, 2, 0),
(48, 13, 5, 47, 2, 2),
(49, 13, 5, 48, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `attendence`
--

DROP TABLE IF EXISTS `attendence`;
CREATE TABLE IF NOT EXISTS `attendence` (
  `attendence_id` int(11) NOT NULL AUTO_INCREMENT,
  `school_id` int(11) NOT NULL,
  `standard_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `attendence_date` date NOT NULL,
  `attended` int(11) NOT NULL,
  `attendence_reason` varchar(100) CHARACTER SET utf8 NOT NULL,
  `on_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`attendence_id`),
  UNIQUE KEY `standard_id` (`standard_id`,`student_id`,`attendence_date`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=64 ;

--
-- Dumping data for table `attendence`
--

INSERT INTO `attendence` (`attendence_id`, `school_id`, `standard_id`, `student_id`, `attendence_date`, `attended`, `attendence_reason`, `on_date`) VALUES
(1, 7, 13, 7, '2016-04-15', 1, '', '2016-04-17 13:24:10'),
(2, 7, 13, 15, '2016-04-15', 1, '', '2016-04-17 13:24:10'),
(3, 7, 13, 8, '2016-04-15', 1, '', '2016-04-17 13:24:10'),
(4, 8, 8, 1, '2016-04-18', 1, '', '2016-04-18 06:04:27'),
(5, 8, 8, 2, '2016-04-18', 1, '', '2016-04-18 06:04:27'),
(6, 8, 8, 3, '2016-04-18', 0, 'not well', '2016-04-18 06:04:27'),
(7, 8, 9, 4, '2016-04-25', 1, '', '2016-04-24 06:35:00'),
(8, 8, 9, 20, '2016-04-25', 1, '', '2016-04-24 06:35:00'),
(9, 7, 13, 7, '2016-04-25', 1, '', '2016-04-24 07:57:43'),
(10, 7, 13, 8, '2016-04-25', 1, '', '2016-04-24 07:57:43'),
(11, 7, 13, 15, '2016-04-25', 0, 'not well', '2016-04-24 07:57:43'),
(12, 7, 14, 9, '2016-04-25', 1, '', '2016-04-24 07:58:02'),
(13, 7, 14, 13, '2016-04-25', 0, 'not good', '2016-04-24 07:58:02'),
(14, 7, 14, 16, '2016-04-25', 1, '', '2016-04-24 07:58:02'),
(21, 7, 13, 7, '2016-04-26', 1, '', '2016-04-24 08:29:47'),
(22, 7, 13, 8, '2016-04-26', 1, '', '2016-04-24 08:29:47'),
(23, 7, 13, 15, '2016-04-26', 0, 'not well', '2016-04-24 08:29:47'),
(24, 7, 1, 5, '2017-07-15', 1, '', '2017-07-30 05:11:47'),
(25, 7, 1, 6, '2017-07-15', 1, '', '2017-07-30 05:11:47'),
(30, 7, 1, 5, '2017-07-16', 1, '', '2017-07-30 05:12:38'),
(31, 7, 1, 6, '2017-07-16', 1, '', '2017-07-30 05:12:38'),
(32, 7, 1, 5, '2017-07-17', 1, '', '2017-07-30 05:12:54'),
(33, 7, 1, 6, '2017-07-17', 1, '', '2017-07-30 05:12:54'),
(34, 7, 1, 5, '2017-07-18', 1, '', '2017-07-30 05:13:01'),
(35, 7, 1, 6, '2017-07-18', 1, '', '2017-07-30 05:13:01'),
(36, 7, 1, 5, '2017-07-20', 0, 'heavy rain', '2017-07-30 05:13:19'),
(37, 7, 1, 6, '2017-07-20', 1, '', '2017-07-30 05:13:19'),
(38, 7, 1, 5, '2017-07-21', 1, '', '2017-07-30 05:13:27'),
(39, 7, 1, 6, '2017-07-21', 1, '', '2017-07-30 05:13:27'),
(40, 7, 1, 5, '2017-07-19', 1, '', '2017-07-30 05:13:49'),
(41, 7, 1, 6, '2017-07-19', 1, '', '2017-07-30 05:13:49'),
(42, 7, 1, 5, '2017-08-04', 1, '', '2017-08-04 04:43:13'),
(43, 7, 1, 6, '2017-08-04', 1, '', '2017-08-04 04:43:13'),
(48, 7, 1, 5, '2017-08-03', 0, ' Double Decker Train. Rake maintained by NWR/North Western Railway Zone. Coach Position/Compositi Do', '2017-08-04 04:43:48'),
(49, 7, 1, 6, '2017-08-03', 0, ' Double Decker Train. Rake maintained by NWR/North Western Railway Zone. Coach Position/Compositi Do', '2017-08-04 04:43:48'),
(52, 7, 1, 5, '2017-08-02', 1, '', '2017-08-04 04:44:30'),
(53, 7, 1, 6, '2017-08-02', 1, '', '2017-08-04 04:44:31'),
(54, 7, 1, 5, '2017-08-01', 1, '', '2017-08-04 04:44:51'),
(55, 7, 1, 6, '2017-08-01', 1, '', '2017-08-04 04:44:51'),
(56, 7, 1, 5, '2017-07-25', 0, 'Sign in to your accountSign in to your accountSign in to your account', '2017-08-04 04:45:50'),
(57, 7, 1, 6, '2017-07-25', 0, 'Sign in to your accountSign in to your accountSign in to your account', '2017-08-04 04:45:51'),
(58, 7, 1, 5, '2017-07-26', 0, ' Double Decker Train. Rake maintained by NWR/North Western Railway Zone. Coach Position/Compositi', '2017-08-04 04:47:12'),
(59, 7, 1, 6, '2017-07-26', 0, ' Double Decker Train. Rake maintained by NWR/North Western Railway Zone. Coach Position/Compositi', '2017-08-04 04:47:12'),
(60, 7, 1, 5, '2017-10-15', 0, 'hi i am absent', '2017-10-16 06:46:27'),
(61, 7, 1, 6, '2017-10-15', 1, '', '2017-10-16 06:46:27'),
(62, 7, 1, 5, '2017-10-16', 1, '', '2017-10-16 06:46:39'),
(63, 7, 1, 6, '2017-10-16', 1, '', '2017-10-16 06:46:39');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
CREATE TABLE IF NOT EXISTS `book` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `book_title` varchar(200) NOT NULL,
  `book_author` varchar(200) NOT NULL,
  `book_description` varchar(200) NOT NULL,
  `book_file` varchar(200) NOT NULL,
  `book_thumb` varchar(220) NOT NULL,
  `school_id` int(200) NOT NULL,
  `book_standard` int(200) NOT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `book_title`, `book_author`, `book_description`, `book_file`, `book_thumb`, `school_id`, `book_standard`) VALUES
(15, 'General Knowledge', 'Mr Jack', 'Here you can find General Knowledge interview questions with answers and explanation. ... IndiaBIX provides you lots of fully solved General Knowledge questions and answers with explanation.', 'India-sportsmens.pdf', 'ic_menu_book.png', 7, 1),
(16, 'New Communicate in English – 7', 'Ratna Sagar', 'Here you can find General Knowledge interview questions with answers and explanation. ... IndiaBIX provides you lots of fully solved General Knowledge questions and answers with explanation.', 'MM_Special_195.pdf', 'download_2.png', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `days`
--

DROP TABLE IF EXISTS `days`;
CREATE TABLE IF NOT EXISTS `days` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `days`
--

INSERT INTO `days` (`id`, `day_name`) VALUES
(1, 'Monday'),
(2, 'Tuesday'),
(3, 'Wednesday'),
(4, 'Thursday'),
(5, 'Friday'),
(6, 'Saturday'),
(7, 'Sunday');

-- --------------------------------------------------------

--
-- Table structure for table `demo_enquiry`
--

DROP TABLE IF EXISTS `demo_enquiry`;
CREATE TABLE IF NOT EXISTS `demo_enquiry` (
  `demo_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 NOT NULL,
  `subject` varchar(100) CHARACTER SET utf8 NOT NULL,
  `message` varchar(100) CHARACTER SET utf8 NOT NULL,
  `on_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`demo_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `demo_enquiry`
--

INSERT INTO `demo_enquiry` (`demo_id`, `name`, `email`, `phone`, `subject`, `message`, `on_date`) VALUES
(1, 'nirav', 'test@gmail.com', '9825858585', 'test', 'test', '2016-04-30 14:02:52');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
CREATE TABLE IF NOT EXISTS `event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `school_id` int(11) NOT NULL,
  `event_title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `event_description` longtext CHARACTER SET utf8 NOT NULL,
  `event_image` varchar(100) CHARACTER SET utf8 NOT NULL,
  `event_start` date NOT NULL,
  `event_end` date NOT NULL,
  `event_status` int(11) NOT NULL,
  `on_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`event_id`, `school_id`, `event_title`, `event_description`, `event_image`, `event_start`, `event_end`, `event_status`, `on_date`) VALUES
(1, 7, 'Exam paper written seminar', 'we are organize on student exam paper writing seminar at our school and we organize all type of examination preparation of all of student.', '', '2016-04-15', '2016-04-30', 1, '2016-04-12 15:01:53'),
(2, 7, 'annual program', 'we organize in annual function in our school..participated student please come to one day before you come in the school.', '', '2016-04-13', '2016-04-13', 1, '2016-04-12 15:04:07'),
(4, 8, 'fairwell party', 'we organize annual function and fair well party for detained student . so please come to our school and attain all program.', '', '2016-04-20', '2016-04-21', 1, '2016-04-13 05:00:09'),
(5, 8, 'test', 'test event', '', '2016-04-20', '2016-04-23', 1, '2016-04-13 05:00:26'),
(6, 7, 'test', 'test event for school1', '', '2016-04-25', '2016-04-27', 1, '2016-04-13 05:03:03'),
(9, 7, 'vegetable event', '1test vegetable event for all student in sayona school', 'slider2.jpg', '2016-04-14', '2016-04-15', 1, '2016-04-23 08:23:19'),
(10, 7, 'test', 'test', '', '2016-04-25', '2016-04-28', 1, '2016-04-23 13:41:28'),
(11, 8, 'test today event', 'test today event', '', '2016-04-24', '2016-04-24', 1, '2016-04-24 11:32:03'),
(12, 8, 'test today  and tommoro', 'teoday and tomorrow', '', '2016-04-24', '2016-04-26', 1, '2016-04-24 11:38:37'),
(13, 7, 'Diwali Rangoli Festival', 'Date : 25/10/2016 Rangoli function at play area at 11:00 Am.', 'ic_logo.png', '2016-10-25', '2016-10-26', 1, '2016-10-20 13:18:14'),
(14, 7, 'Diwali Rangoli Festival  Woman', 'Date : 25/10/2016 Rangoli function at play area at 11:00 Am.', 'casva.png', '2016-10-25', '2016-10-26', 1, '2016-10-20 13:26:36');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

DROP TABLE IF EXISTS `exam`;
CREATE TABLE IF NOT EXISTS `exam` (
  `exam_id` int(11) NOT NULL AUTO_INCREMENT,
  `school_id` int(11) NOT NULL,
  `exam_title` varchar(50) CHARACTER SET utf8 NOT NULL,
  `exam_note` varchar(100) CHARACTER SET utf8 NOT NULL,
  `exam_status` int(11) NOT NULL,
  `exam_standard` int(11) NOT NULL,
  `exam_date` date NOT NULL,
  `on_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`exam_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`exam_id`, `school_id`, `exam_title`, `exam_note`, `exam_status`, `exam_standard`, `exam_date`, `on_date`) VALUES
(1, 8, 'monthaly test', 'monthaly test', 0, 9, '2016-01-12', '2016-04-15 06:13:37'),
(2, 8, 'english test', 'english test', 0, 8, '2016-04-13', '2016-04-15 06:16:14'),
(3, 7, 'monthaly test', 'we can held this exam on next month', 0, 13, '2016-05-12', '2016-04-15 06:22:40'),
(4, 7, 'math test', 'this test held on any time and any date because this is test exam in surprice test', 0, 3, '2016-12-12', '2016-04-15 06:24:38'),
(5, 7, 'test exam', 'test exam', 0, 3, '2016-04-23', '2016-04-15 06:30:46'),
(6, 7, 'first test', 'first test for h.k.g in sayona school.', 0, 14, '2012-02-12', '2016-04-15 08:23:58'),
(7, 7, 'second test', 'second test for h.k.g in sayona school', 0, 1, '2012-12-12', '2016-04-15 10:29:35'),
(8, 7, 'Exam Title 1', 'my first exam', 0, 1, '2017-07-07', '2017-07-30 05:15:06'),
(9, 7, 'Exam Title 2', 'Exam Title 2', 0, 1, '2017-07-25', '2017-07-30 05:33:30'),
(10, 7, 'Test Exam stranded  fdf', 'dfsfdsf', 0, 1, '2017-09-30', '2017-09-30 12:53:59');

-- --------------------------------------------------------

--
-- Table structure for table `exam_result`
--

DROP TABLE IF EXISTS `exam_result`;
CREATE TABLE IF NOT EXISTS `exam_result` (
  `exam_result_id` int(11) NOT NULL AUTO_INCREMENT,
  `exam_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `subject` varchar(100) CHARACTER SET utf8 NOT NULL,
  `mark_obtain` varchar(100) CHARACTER SET utf8 NOT NULL,
  `total_mark` varchar(100) CHARACTER SET utf8 NOT NULL,
  `on_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`exam_result_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `exam_result`
--

INSERT INTO `exam_result` (`exam_result_id`, `exam_id`, `student_id`, `subject`, `mark_obtain`, `total_mark`, `on_date`) VALUES
(1, 10, 5, 'Maths', '63', '100', '2017-10-16 06:51:06');

-- --------------------------------------------------------

--
-- Table structure for table `fee`
--

DROP TABLE IF EXISTS `fee`;
CREATE TABLE IF NOT EXISTS `fee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fee_types_id` int(11) NOT NULL,
  `standard_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `fee` int(11) NOT NULL,
  `on_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fee_types`
--

DROP TABLE IF EXISTS `fee_types`;
CREATE TABLE IF NOT EXISTS `fee_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `standard_id` varchar(200) NOT NULL,
  `title` varchar(110) NOT NULL,
  `year` varchar(120) NOT NULL,
  `base_amount` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `fee_types`
--

INSERT INTO `fee_types` (`id`, `standard_id`, `title`, `year`, `base_amount`, `school_id`) VALUES
(11, '5', 'summer camp', '2017', 5000, 7),
(12, '1', 'Tuition Fees', '2015', 6000, 7),
(13, '1', 'Sport Fees', '2017', 6000, 7),
(14, '1', 'Transport Fees', '2017', 5000, 7),
(15, '2', 'Tuition Fees', '2017', 6000, 7);

-- --------------------------------------------------------

--
-- Table structure for table `holiday`
--

DROP TABLE IF EXISTS `holiday`;
CREATE TABLE IF NOT EXISTS `holiday` (
  `holiday_id` int(11) NOT NULL AUTO_INCREMENT,
  `school_id` int(11) NOT NULL,
  `holiday_title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `holiday_date` date NOT NULL,
  PRIMARY KEY (`holiday_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `holiday`
--

INSERT INTO `holiday` (`holiday_id`, `school_id`, `holiday_title`, `holiday_date`) VALUES
(1, 8, 'gandhi jayanti', '2016-04-25'),
(2, 8, 'krismas day', '2016-06-16'),
(3, 8, 'test holiday', '2016-04-26'),
(4, 7, 'gandhi jayanti', '2016-04-25'),
(5, 7, 'monson start', '2016-06-30'),
(6, 7, 'mehta bhuvan', '2016-05-02'),
(7, 7, 'makar sankraanti', '2016-06-23'),
(8, 7, 'testing day', '2016-06-12'),
(9, 7, 'modiji birthday', '2016-05-25'),
(10, 8, 'test holiday', '2016-04-01'),
(11, 8, 'shitla satam', '2016-08-25'),
(12, 7, 'Independence Day (India)', '2017-08-15'),
(13, 7, 'Raksha Bandhan', '2017-08-08'),
(14, 7, 'Diwali', '2017-10-19'),
(15, 7, 'Kit Festival', '2018-01-14');

-- --------------------------------------------------------

--
-- Table structure for table `notice_board`
--

DROP TABLE IF EXISTS `notice_board`;
CREATE TABLE IF NOT EXISTS `notice_board` (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT,
  `school_id` int(11) NOT NULL,
  `notice_description` longtext CHARACTER SET utf8 NOT NULL,
  `notice_type` varchar(100) CHARACTER SET utf8 NOT NULL,
  `notice_status` int(11) NOT NULL,
  `on_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `notice_board`
--

INSERT INTO `notice_board` (`notice_id`, `school_id`, `notice_description`, `notice_type`, `notice_status`, `on_date`) VALUES
(1, 7, 'tomorrow 20-04-2016 is holiday because tomorrow is Gandhi jay anti.so please inform all student and all parent', 'holiday', 1, '2016-04-18 07:15:05'),
(2, 7, 'our school organize meting on 25-04-2016.\r\nso all parent must be prensent on that dat.\r\ntime: 12:10 am\r\ndate: 25-04-2016', 'meating', 1, '2016-04-18 07:16:39'),
(3, 7, 'please present all student to next sunday', 'other', 0, '2016-04-18 07:17:15'),
(4, 7, 'all student please verify your exam result in 25-04-2016 to 28-04-2016.', 'circular', 1, '2016-04-18 08:38:51'),
(5, 8, 'date: 25-04-2016 is holiday because that day is our school mainatin on server side and lab releted', 'holiday', 1, '2016-04-18 08:40:20'),
(7, 8, 'this is notice for only standard 10 student..plase present all standard student for next sunday itsw an surprice test held for any subject', 'other', 1, '2016-04-18 08:53:11'),
(8, 8, 'test other notice', 'other', 1, '2016-04-18 09:01:16'),
(9, 7, 'ent please verify your exam result in 25-04-2016 to 28-04-201', 'holiday', 1, '2017-09-09 04:37:51');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
CREATE TABLE IF NOT EXISTS `notification` (
  `noti_id` int(11) NOT NULL AUTO_INCREMENT,
  `noti_title` varchar(200) NOT NULL,
  `noti_description` longtext NOT NULL,
  `noti_image` varchar(300) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `school_id` int(11) NOT NULL,
  PRIMARY KEY (`noti_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`noti_id`, `noti_title`, `noti_description`, `noti_image`, `date`, `school_id`) VALUES
(8, 'notification 2', 'dsdsd', 'ic_menu_book3.png', '2017-10-04 07:22:25', 7),
(9, 'shreehari', 'hi rajesh', 'ic_menu_book.png', '2017-10-04 11:12:14', 7),
(10, 'notification 2', 'sdsd', 'ic_menu_book1.png', '2017-10-04 11:16:46', 7),
(11, 'notification 2', 'next send', 'ic_menu_book2.png', '2017-10-04 11:28:07', 7),
(12, 'shreehari', 'today today', 'ic_menu_book3.png', '2017-10-05 16:34:52', 7),
(13, 'room rate', 'sdsds', 'bell-128.png', '2017-10-05 16:51:34', 7),
(14, 'room rate', 'New Festival Function in 2017', 'softwaredevelopment.png', '2017-10-05 05:01:43', 7),
(15, 'summer deal', 'dddddd', 'e-commerce.png', '2017-10-05 05:25:51', 7),
(16, 'terrer', 'New sem fees', 'domainhosting.png', '2017-10-05 05:29:38', 7),
(17, 'Happy new year', 'hello', 'KARNIS_RED_R1.jpg', '2017-10-26 12:33:45', 7),
(18, 'hii', 'yryyt', '', '2017-10-26 12:34:06', 7),
(19, 'shreehari dffd', 'dfdfd', '', '2017-10-26 15:40:55', 7),
(20, 'shreehari', 'gfgfg', '', '2017-10-26 15:41:39', 7),
(21, 'teryer', 'rerer', '', '2017-10-26 15:41:56', 7),
(22, 'room rate tey', 'send you', '', '2017-10-26 15:54:23', 7),
(23, 'Happy new year 2018', 'gfhghg', '', '2017-10-26 15:56:14', 7),
(24, 'notification 2d', 'dddff', '', '2017-10-26 15:59:24', 7);

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
CREATE TABLE IF NOT EXISTS `question` (
  `ques_id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_id` varchar(100) NOT NULL,
  `question` longtext NOT NULL,
  `ans_1` varchar(500) NOT NULL,
  `ans_2` varchar(500) NOT NULL,
  `ans_3` varchar(500) NOT NULL,
  `ans_4` varchar(500) NOT NULL,
  `ans_5` varchar(500) NOT NULL,
  `ans_6` varchar(500) NOT NULL,
  `total_ans` varchar(100) NOT NULL,
  `r_ans` varchar(100) NOT NULL,
  PRIMARY KEY (`ques_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=173 ;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`ques_id`, `subject_id`, `question`, `ans_1`, `ans_2`, `ans_3`, `ans_4`, `ans_5`, `ans_6`, `total_ans`, `r_ans`) VALUES
(1, '3', 'Who would use a creel?', 'Electrician', 'Fisherman', 'Blacksmith', 'Ostler', '', '', '', '2'),
(2, '3', 'The American Yorkshire, Beijing Black, British Lop, Danish Landrace, Gloucestershire Old Spots, Iberian, Lacombe, Meishan, Mulefoot, Saddleback, Vietnamese Potbelly and Yanan are all types of what?', 'Pigs', 'Sheep', 'Goat', 'Cheese', '', '', '', '1'),
(3, '3', 'Which creature gives its name to the centre of a shooting target, or the shot which strikes it?', 'Goat', 'Bull', 'Cat', 'Peacock', '', '', '', '2'),
(4, '3', 'Which area is particularly favoured for building observatories and powerful astronomical telescopes?', 'Atacama Desert', 'Tierra del Fuego', 'Galapagos Islands', 'Maracaibo', '', '', '', '1'),
(5, '3', 'Which film actor and winemaker won his first César Award for his role in “The Last Metro” (1980), was nominated for an Academy Award for the title role in "Cyrano de Bergerac" (1990) and won the Golden Globe award for Best Actor in "Green Card" in 1990?', ' Yves Montand', 'Gérard Depardieu', '', '', '', '', '', '2'),
(6, '3', 'The forces of which country were defeated at the Battle of Marengo in 1800?', 'France', 'Austria', 'Spain', 'Prussia', 'India', '', '', '2'),
(7, '3', 'Dr. Gregory House, Dr. Lisa Cuddy, Dr. James Wilson, Dr. Robert Chase, Dr. Allison Cameron and Dr. Eric Foreman have all worked in which TV hospital?', 'Seattle Grace Hospital', 'Princeton-Plainsboro Teaching Hospital', 'Sacred Heart Teaching Hospital', 'Holby City Hospital', '', '', '', '2'),
(8, '3', 'What is a guitar-based instrumental composed by Peter Green, released as a single by Fleetwood Mac in 1969, later featuring on the compilation albums The Pious Bird of Good Omen (UK) and English Rose (USA)?', 'Cormorant', 'Seagull', 'Vulture', 'Albatross', '', '', '', '4'),
(9, '3', 'By a proclamation of a binding "axis" and then a formal Pact a month later between, respectively, Germany-Italy and Germany-Japan an offensive alliance was sealed relating to what became known as World War II. When were the agreements made?', '1936', '1939', '1922', '1941', '', '', '', '1'),
(10, '3', 'Which of the following people made their debut as a dancer in 1908, appeared with the Diaghileff Company, and became a choreographer in 1912?', 'Rudolph Nureyev', 'Poul Gnatt', 'Vaslav Nijinsky', 'Mikhail Baryshnikov', '', '', '', '3'),
(11, '3', 'Which is most likely to be seen wild in Laos?', 'Armadillo', 'Pangolin', 'Aardvark', 'Echidna', '', '', '', '2'),
(12, '3', 'Electric Christmas tree lights were first used in what year?', '1952', '2001', '1882', '1701', '', '', '', '3'),
(13, '3', 'The circuit at Parc Jean-Drapeau on Île Notre-Dame, a man-made island in the St. Lawrence River, is named after which winner of the Formula One World Championship for drivers?', 'Gilles Villeneuve', 'Jacques Villeneuve', ' Jochen Rindt', 'Nelson Piquet', '', '', '', '1'),
(14, '3', 'Who is a senior servant in a large household, specifically in charge of the dining room, wine cellar, and pantries?', ' Secretary', 'Footman', 'Butler', 'Valet', '', '', '', '3'),
(15, '3', 'Which of these starred in the television series "The Rockford Files"?', 'Peter Falk', 'James Garner', 'Raymond Burr', 'Telly Savalas', '', '', '', '2'),
(56, '6', 'Which of the following is a non metal that remains liquid at room temperature?', 'Phosphorous', 'Bromine', 'Chlorine', 'Helium', '', '', '', '2'),
(55, '6', 'Brass gets discoloured in air because of the presence of which of the following gases in air?', 'Oxygen', 'Hydrogen sulphide', 'Carbon dioxide', 'Nitrogen', '', '', '', '2'),
(18, '1', 'How many ways can a batsman be dismissed in cricket?', '12', '5', '10', '2', '', '', '', '3'),
(19, '1', 'Which one of the following is not a prime number?', '31', '61', '71', '91', '', '', '', '4'),
(21, '5', 'What least number must be added to 1056, so that the sum is completely divisible by 23 ?', '2', '3', '18', '21', '', '', '', '1'),
(22, '5', 'How many of the following numbers are divisible by 132 ?\r\n264, 396, 462, 792, 968, 2178, 5184, 6336', '4', '5', '6', '7', '', '', '', '1'),
(23, '5', '(935421 x 625) = ?', '575648125', '584638125', '584649125', '585628125', '', '', '', '2'),
(24, '5', 'The largest 4 digit number exactly divisible by 88 is:', '9944', '9768', '9988', '9988', 'None of these', '', '', '1'),
(26, '5', '1397 x 1397 = ?', '1951609', '1981709', '18362619', '2031719', 'None of these', '', '', '1'),
(27, '5', 'What is the unit digit in {(6374)1793 x (625)317 x (341491)}?', '0', '2', '3', '5', '', '', '', '1'),
(28, '5', '5358 x 51 = ?', '273258', '273268', '273348', '273358', '', '', '', '1'),
(29, '5', 'The sum of first five prime numbers is:', '11', '18', '26', '28', '', '', '', '4'),
(30, '5', 'The difference of two numbers is 1365. On dividing the larger number by the smaller, we get 6 as quotient and the 15 as remainder. What is the smaller number ?', '240', '270', '295', '360', '', '', '', '2'),
(31, '5', '72519 x 9999 = ?', '725117481', '674217481', '685126481', '696217481', 'None of these', '', '', '1'),
(32, '5', 'If the number 517*324 is completely divisible by 3, then the smallest whole number in the place of * will be:', '0', '1', '2', 'None of these', '', '', '', '3'),
(33, '5', 'The smallest 3 digit prime number is:', '101', '103', '109', '113', '', '', '', '1'),
(34, '2', 'How long is an IPv6 address?', '32 bits', '128 bytes', '64 bits', '128 bits', '', '', '', '4'),
(35, '2', 'What flavor of Network Address Translation can be used to have one IP address allow many users to connect to the global Internet?', 'NAT', 'Static', 'Dynamic', 'PAT', '', '', '', '4'),
(36, '2', 'What are the two main types of access control lists (ACLs)?\r\nStandard\r\nIEEE\r\nExtended\r\nSpecialized', '1 and 3', '2 and 4', '3 and 4', '1 and 2', '', '', '', '1'),
(37, '2', 'What command is used to create a backup configuration?', 'copy running backup', 'copy running-config startup-config', 'config mem', 'wr mem', '', '', '', '2'),
(38, '2', 'You have 10 users plugged into a hub running 10Mbps half-duplex. There is a server connected to the switch running 10Mbps half-duplex as well. How much bandwidth does each host have to the server?', '100 kbps', '1 Mbps', '2 Mbps', '10 Mbps', '', '', '', '4'),
(39, '2', 'Which WLAN IEEE specification allows up to 54Mbps at 2.4GHz?', 'A', 'B', 'G', 'N', '', '', '', 'C'),
(40, '2', 'Which of the following is the valid host range for the subnet on which the IP address 192.168.168.188 255.255.255.192 resides?', '192.168.168.129-190', '192.168.168.129-191', '192.168.168.128-190', '192.168.168.128-192', '', '', '', '1'),
(41, '2', 'To back up an IOS, what command will you use?', 'backup IOS disk', 'copy ios tftp', 'copy tftp flash', 'copy flash tftp', '', '', '', '4'),
(42, '2', 'What protocol does PPP use to identify the Network layer protocol?', 'NCP', 'ISDN', 'HDLC', 'LCP', '', '', '', '1'),
(43, '2', 'Which of the following commands will allow you to set your Telnet password on a Cisco router?', 'line telnet 0 4', 'line aux 0 4', 'line vty 0 4', 'line con 0', '', '', '', '3'),
(44, '4', '2010 Commonwealth Games held in ?', 'Canada', 'India', 'Britian', 'Malaysia', '', '', '', '2'),
(45, '4', 'The term“Googly” is associated with ?', 'Cricket', 'Football', 'Badminton', 'Hockey', '', '', '', '1'),
(46, '4', 'Aga Khan Cup is awarded to ?', 'International Hockey', ' Asian Hockey', 'National Hockey in India', 'None of these', '', '', '', '3'),
(47, '4', 'Krishna Poonia is associated with ?', 'Football', 'Hockey', 'Chess', ' Athletics', '', '', '', '3'),
(48, '4', 'In 1924 the first winter Olympics was held in ?', 'Italy', 'France', 'Austria', 'Canada', '', '', '', '2'),
(49, '4', 'India first took part in the olympic games in the year ?', '1920', ' 1928', ' 1972', ' 1974', '', '', '', '1'),
(50, '4', 'Pullela Gopichand is associated with ?', 'Hockey', ' Badminton', 'Football', 'Cricket', '', '', '', '2'),
(51, '4', 'Sundarrajan Kidambi is associated with ?', 'Chess', 'Cricket', 'Athletics', 'Hockey', '', '', '', '1'),
(52, '4', 'Sundarrajan Kidambi is associated with ?', 'Chess', 'Cricket', 'Athletics', 'Hockey', '', '', '', '1'),
(53, '4', 'The ASIAD is held every ?', '3 years', '4 years', '5 years', '6 years', '', '', '', '2'),
(54, '4', '. Who are Kangaroos ?', 'Bangladesh', 'Kenya', 'Newzeland', 'Australia', '', '', '', '4'),
(57, '8', 'How many pins does a SIMM have?', '20 or 30', '30 or 40', '30 or 72', '30 or 80', '', '', '', '3'),
(58, '8', 'What is the name of the printed circuit board?', ' Mother Board', 'cpu', 'harddisk', 'printer', '', '', '', '1'),
(59, '8', 'The Board of Industrial and Financial Reconstruction (BIFR) came into existence in', '1984', '1986', '	 1987', '1989', '', '', '', '3'),
(60, '8', 'Deficit financing implies', 'printing new currency notes', 'replacing new currency with worn out currency', 'public expenditure in excess of public revenue	', 'public revenue in excess of public expenditure', '', '', '', '3'),
(61, '8', 'Lal Bahadur Shastri is also known as', 'Guruji', 'Man of Peace', 'Punjab Kesari', 'Mahamana', '', '', '', '2'),
(62, '8', 'Liquid asset is', 'a type of asset that is in cash in the current account of the commercial bank', 'a type of asset that is in the form of a deposit in the current account of the commercial bank', 'either of these', 'None of the above', '', '', '', '1'),
(63, '8', 'Moment of inertia is', 'vector', 'scalar', 'phasor', 'tensor', '', '', '', '1'),
(64, '8', 'What invention caused many deaths while testing it?', 'Dynamite', 'Ladders', 'Race cars', 'Parachute	', '', '', '', '4'),
(65, '8', 'What invention caused many deaths while testing it?', 'Dynamite', 'Ladders', 'Race cars', 'Parachute	', '', '', '', '4'),
(66, '8', 'What beverage was invented by Charles Alderton in 1885 in Waco, Texas?', 'Cream soda', 'Coca-Cola', 'Dr. Pepper', 'Sprite', '', '', '', '3'),
(67, '8', 'Experts say the healthiest way to view a computer monitor is by...', 'Placing it 18 to 30 inches away from your eyes	', 'Viewing from a darkened room', 'Adjusting the screen for maximum contrast', 'Using special glasses that filter out UV rays', '', '', '', '1'),
(68, '8', 'Ramapithecus and Cro-Magnon man are considered', 'ancestors of modern man', 'ancestors of monkey', 'ancestors of lion', 'None of the above', '', '', '', '1'),
(69, '8', 'The important industries of Assam are', 'tea processing, oil refineries and coal', 'silk and plywood', 'both (a) and (b)', 'None of the above', '', '', '', '1'),
(70, '9', 'When did India enter into space age by launching the satellite ''Aryabhatta''?', '1966', '1932', '1975', '1990', '', '', '', 'c'),
(71, '9', 'The longest day (shortest night) in the southern hemisphere is', 'June 21	', 'December 22', 'July 21', 'November 22', '', '', '', '2'),
(72, '9', 'The process that explains the recent changes in the height of sea level in coastal areas of eastern and northern Canada and Scandinavi is', 'isostasy', 'continental drift', 'plate tectonics', 'None of the above', '', '', '', '1'),
(73, '9', 'Who won the Grand Slam title four times successively?', 'Mortina Navratilova', 'Steffi Graf', 'Jennifer Capriati	', 'Monica Seles', '', '', '', '2'),
(74, '9', 'Jude Felix is a famous Indian player in which of the fields?', 'Volleyball', 'Tennis', 'Football	', 'Hockey', '', '', '', '4'),
(75, '9', 'The title of ''sparrow'' given to', 'Napoleon	', 'Major General Rajinder Singh', 'T. T. Krishnamachari', 'Sardar Patel', '', '', '', '2'),
(76, '9', 'Which of the following awards was conferred on Mrs. Kiran Bedi?', 'Golden Globe', 'Rani Lakshmi', 'Magsaysay', 'Saraswati', '', '', '', '3'),
(77, '9', '''Crime and Punishment'' was written by', 'Fyodor Dostoevsky', 'Vladimir Nabakov', 'Lewis Carrol', 'Alexander Solzhenitsyn', '', '', '', '1'),
(78, '9', 'Gypsum is added to cement clinker to', 'increase the tensile strength of cement', 'decrease the rate of setting of cement', 'facilitate the formation of colloidal gel', 'bind the particles of calcium silicate	', '', '', '', '2'),
(79, '9', 'The members of the Rajya Sabha are', 'directly elected by the people on the basis of universal adult franchise', 'elected by the members of the state legislative assemblies', 'elected by the members of the state legislative councils', 'elected by the members of the state legislative councils and state legislative assemblies', '', '', '', '2'),
(80, '9', 'The islands of Seychelles are located in the', 'Arctic Ocean', 'Atlantic Ocean', 'Indian Ocean', 'Pacific Ocean', '', '', '', '3'),
(81, '9', 'For which of the following disciplines is Nobel Prize awarded?', 'Physics and Chemistry', 'Physiology or Medicine', 'Literature, Peace and Economics', 'All of the above', '', '', '', '4'),
(82, '9', 'India played its first cricket Test Match in', '1922', '1932', '1942', '1952', '', '', '', '2'),
(83, '9', 'ML2T-2 is the dimensional formula for', 'moment of inertia', 'pressure', 'elasticity', 'couple acting on a body', '', '', '', '4'),
(84, '9', 'How many gold medals did P.T.Usha win in the 1986 Seoul Asian Games?', '1', '2', '3', '4', '', '', '', '4'),
(85, '9', 'Gautam Gambhir made his ODI debut in 2003.That match was won by India by 200 runs.How many balls did he face for his 11 runs?', '10', '11', '22', '33', '', '', '', '3'),
(86, '9', 'The transformer that develops the high voltage in a home television is commonly called a...?', 'Tesla coil', 'Flyback', 'Yoke	', 'Van de Graaf', '', '', '', '2'),
(87, '9', 'How many bits is a byte?', '4', '8', '16', '32', '', '', '', '2'),
(88, '9', 'What does CPU stand for?', 'Cute People United', 'Commonwealth Press Union	', 'Computer Parts of USA', 'Central Processing Unit', '', '', '', '4'),
(89, '10', 'The most abundant rare gas in the atmosphere is', 'He', 'Ne', 'Ar', 'Xe', '', '', '', '3'),
(90, '10', 'Pyorrhoea is a disease of the', 'nose', 'gums', 'heart', 'lungs', '', '', '', '2'),
(91, '10', 'O2 released in the process of photosynthesis comes from', 'CO2', 'water', 'sugar', 'pyruvic acid', '', '', '', '2'),
(92, '10', 'The temperature increases rapidly after', 'ionosphere', 'exosphere', 'stratosphere', 'troposphere', '', '', '', '1'),
(93, '10', 'Tripping is associates with', 'Snooker', 'Volleyball', 'Football', 'Cricket', '', '', '', '3'),
(94, '10', 'Girilal Jain was a noted figure in which of the following fields?', 'Social Service', 'Journalism', 'Literature	', 'Politics', '', '', '', '2'),
(95, '10', 'The famous book ''Anandmath'' was authored by', 'Sarojini Naidu', 'Bankim Chandra Chottapadhya', 'Sri Aurobindo	', 'Rabindrnath Tagore', '', '', '', '2'),
(96, '10', 'Which of the following is a military alliance?', 'NATO', 'NAFTA', 'EEC', 'ASEAN', '', '', '', '1'),
(97, '10', 'The filament of an electric bulb is made of', 'tungsten', 'nichrome', 'graphite', 'iron', '', '', '', '1'),
(98, '10', 'The main constituents of pearls are', 'calcium oxide and ammonium chloride', 'calcium carbonate and magnesium carbonate', ' aragonite and conchiolin', 'ammonium sulphate and sodium carbonate', '', '', '', '2'),
(99, '11', 'The iron and steel industries of which of the following countries are almost fully dependent on imported raw materials?', 'Britain', 'Japan', 'Poland', 'Germany', '', '', '', '2'),
(100, '11', 'The iron ore mined at Bailadila is mostly', 'haematite', 'siderite', 'limonite', 'magnetic', '', '', '', '1'),
(101, '11', 'India''s first indigenously built submarine was', 'INS Savitri', 'INS Shalki', 'INS Delhi', 'INS Vibhuti', '', '', '', '2'),
(102, '11', 'The 2002 Commonwealth Games were held in', 'Canada', 'UK', 'Australia', 'Malaysia', '', '', '', '2'),
(103, '11', 'Rana Pratap Sagar (Rajasthan) is famous for', 'nuclear power station', 'aluminum industry', 'brassware', 'sports goods', '', '', '', '1'),
(104, '11', 'Which of the following crops needs maximum water per hectare?', 'Barley', 'Maize', 'Sugarcane', 'Wheat', '', '', '', '3'),
(105, '11', 'Sir C.V. Raman was awarded Nobel Prize for his work connected with which of the following phenomenon of radiation?', 'Scattering', 'Diffraction', 'Interference', 'Polarization', '', '', '', '1'),
(106, '11', 'If the picture is stretched or distorted up and down like a fun house mirror the circuit to adjust or repair is...?', 'Vertical', 'Tuning', 'Horizontal', 'Filament', '', '', '', '1'),
(107, '11', 'Who created Pretty Good Privacy (PGP)?', 'Phil Zimmermann', 'Tim Berners-Lee', 'Marc Andreessen', 'Ken Thompson', '', '', '', '1'),
(108, '11', 'Placenta is the structure formed', 'by the union of foetal and uterine tissue', 'by foetus only', 'by fusion of germ layers', 'None of these', '', '', '', '1'),
(109, '12', 'Mumps is a disease caused by', 'fungus', 'bacterium', 'virus', 'None of these', '', '', '', '3'),
(110, '12', 'The helicopter fleet of Air Force consists of', 'Chetak', 'Cheetah', 'MI-8s, MI-17s, MI-26', 'All of the above', '', '', '', '4'),
(111, '12', 'Which of the following are the members of SAARC (South Asian Association for Regional Cooperation)?', 'Bhutan, Bangladesh, India and Pakistan', 'Bhutan, Bangladesh, the Maldives, Nepal, India, Pakistan, Afghanistan and Sri Lanka', 'Afghanistan, Pakistan, Thailand, Indonesia, Nepal and Sri Lanka', 'None of the above', '', '', '', '2'),
(112, '12', 'The ratio of the weight of water vapour to the total weight of air (including the water vapor) is called', 'specific humidity', 'mixing ratio', 'relative humidity', 'absolute humidity', '', '', '', '1'),
(113, '12', 'The sidereal month may be defined as', 'the period in which the moon completes an orbit around the earth', 'the period in which the moon completes an orbit around the earth and returns to the same positions in the sky', 'the period of rotation of moon', 'None of the above', '', '', '', '2'),
(114, '12', 'On whose name is the highest award for services to the development of cinema given?', 'Raj Kapoor', 'Dada Saheb', 'Meena Kumari', 'Amitabh Bachchan', '', '', '', '2'),
(115, '12', 'In India the first television programme was broadcasted in', '1959', '1965', '1976', '1957', '', '', '', '1'),
(116, '12', 'The United Nations declared 1993 as a year of the', 'disabled', 'forests', 'girl child', 'indigenous people', '', '', '', '4'),
(117, '12', 'The United Nations Conference on Trade and Development (UNCTAD) is located at which of the following places?', 'Geneva', 'Rome', 'Paris', 'Vienna', '', '', '', '1'),
(118, '12', 'Who suggested that most of the mass of the atom is located in the nucleus?', 'Thompson', 'Bohr', 'Rutherford', 'Einstein', '', '', '', '3'),
(132, '14', 'We hear of two envoys being sent to the Roman kings, one in 27-28 AD to the court of Augustus and the other in 110-20 AD to the court of', 'Cartius', 'Trajan', 'Nero', 'Brutus', '', '', '', '2'),
(133, '14', 'There was a sharp class division at Harappa and Mohen-jodaro. This is clear from the', 'Indus seals excavated', 'religious beliefs of the Harappans', 'tools and implements used by the Harappans', 'different types of dwellings excavated', '', '', '', '4'),
(134, '14', 'We can know about early vedic period from', 'archaeological excavations', 'the Rig Veda', 'Jatak Katha', 'contemporary culture', '', '', '', '2'),
(122, '13', 'The initial increase of magnetic field in magnetic storms is caused', 'when the shock wave, associated with the gusty solar wind, compresses the magnetosphere', 'when there is a large decrease in field intensity', 'when the gust wind itself engulfs the magnetosphere', 'when the gust wind itself engulfs the magnetosphere', '', '', '', '1'),
(123, '13', 'Jesus Christ was crucified in', '4 BC', '4 AD', '20 AD', '1 AD', '', '', '', '3'),
(124, '13', 'Rabindranath Tagore is also known as', 'Guruji', 'Gurudev', 'Mahamana', 'Netaji', '', '', '', '2'),
(125, '13', 'Which of the following crops is regarded as a plantation crop?', 'Coconut', 'Cotton', 'Sugarcane', 'Rice', '', '', '', '1'),
(126, '13', 'What inspired reflecting road lights to be invented?', 'Car door reflecting mirrors', 'The light a cat''s eyes gave off on a fence', 'Sun light on steel posts on road sides', 'The sun light on the windshield', '', '', '', '2'),
(127, '13', 'Who invented Electric Generator?', 'Sir Alexander Graham Bell', 'Michael Faraday', 'Alfred B. Nobel', 'Thomas Alva Edison', '', '', '', '2'),
(128, '13', 'In which year did Ajay Sharma play his only Test match?', '1990', '1989', '1985', '1988', '', '', '', '4'),
(129, '13', 'A coating of dust on a computer''s main circuit boards has this probable consequence', 'Overheating', 'Short circuits', 'Slower hard disk', 'None', '', '', '', '1'),
(130, '13', 'The maximum capacity of any orbital is', '2', '6', '14', 'Cannot be determined unless the principal quantum number is known', '', '', '', '1'),
(131, '13', 'Most highly intelligent mammals are', 'whales', 'dolphins', 'elephants', 'kangaroos', '', '', '', '2'),
(135, '14', 'Photosynthesis is a process', 'reductive and exergonic', 'reductive and catabolic', 'reductive, endergonic and catabolic', 'reductive, endergonic and anabolic', '', '', '', '4'),
(136, '14', 'Deforestation in the uplands may cause pollution in rivers through', 'leaching of salts', 'erosion and silting', 'inflow of forest material', 'increased discharge rate', '', '', '', '2'),
(137, '14', 'What was the purpose of establishment of NATO?', 'To maintain and develop individual and collective capacity to resist armed attack', 'To defend economic and trade interests of the developing nations of the world', 'TO provide collective defence and economic cooperation in south-east Asia', 'None of the above', '', '', '', '1'),
(138, '14', 'The main properties of cosmic ray particles are', 'its electric charge', 'its rest mass', 'its energy', 'All of these are its properties', '', '', '', '4'),
(139, '14', 'The periods of different eras are further divided into', 'eons', 'epochs', 'stages', 'Any of the above', '', '', '', '3'),
(140, '14', 'Pandit Vishwa Mohan Bhatt, who has won the prestigious ''Grammy Awards'' is an exponent in which of the following musical instruments?', 'Guitar', 'Violin', 'sarod', 'Tabla', '', '', '', '1'),
(141, '14', 'The ''satellite freight city'' is being developed near which of the following cities?', ' New Delhi', 'Orissa', 'Gurgaon', 'Kolkata', '', '', '', '3'),
(148, '15', 'Which of the following is the first Indian private company to sign an accord with Government of Myanmar for oil exploration in two offshore blocks in that country?', 'Reliance Energy', 'Essar Oil', 'GAIL', 'ONGC', '', '', '', '2'),
(149, '15', 'John F. Kennedy was', 'one the most popular Presidents of USA', 'the first Roman Catholic President', 'writer of Why England slept and Profile in Courage', 'All the above', '', '', '', '4'),
(150, '15', 'The Salal Project is on the river', 'Chenab', 'Jhelum', 'Ravi', 'Sutlej', '', '', '', '1'),
(151, '15', 'CORN FLAKES - Who made them first?', 'Nabisco', 'Kellogg', 'Quaker', 'Archers', '', '', '', '2'),
(152, '15', 'How many wickets did Yograj Singh take in his 1st ODI match?', '1', '2', '4', '3', '', '', '', '2'),
(153, '15', '"FET" is a type of transistor, Its full name is ________ Effect Transistor...?', 'Field', 'Factor', 'Flash', 'Force', '', '', '', '1'),
(154, '15', 'A program that neither replicates or copies itself, but does damage or compromises the security of the computer. Which ''Computer Virus'' it is?', 'Joke Program', 'Worm', 'Trojan', 'Hoax', '', '', '', '3'),
(155, '15', 'The mass number of an atom is equal to', 'the number of protons', 'the number of protons and electrons', 'the number of nucleons', 'the number of neutrons', '', '', '', '3'),
(156, '15', 'The language spoken in Sikkim are', 'Nepali, Hindi, Lepcha, Bhutani', 'Marathi', 'Bengali, Tripuri', 'Manipuri', '', '', '', '1'),
(157, '15', 'The largest airport in the world is', 'Palam Airport', 'Indira Gandhi International Airport', 'Cochin International Airport', 'King Khalid International Airport', '', '', '', '4'),
(158, '15', 'The velocity of light was first measured by', 'Einstein', 'Newton', 'Romer', 'Galileo', '', '', '', '3'),
(159, '15', 'The world''s largest international organisation and a successor to the League of Nations is', 'UNESCO', 'UNO', 'UNICEF', 'None of the above', '', '', '', '2'),
(160, '16', 'The term cover point in cricket means', '	 the position given by the bowler to the fielder on the offside, in front of a wicket', 'if the ball goes off the batsman''s leg', 'an off-break ball bowled by a left-handed bowler to a right-handed batsman', 'None of the above', '', '', '', '1'),
(161, '16', 'What is the capital of Dadra and Nagar Haveli?', 'Daman', 'Silvassa', 'Dispur', 'Shilling', '', '', '', '2'),
(162, '16', 'India first won the Olympic Hockey gold at', 'London', 'Rome', 'Berlin', 'Amsterdam', '', '', '', '4'),
(163, '16', 'Bahadur Singh is famous in which of the following?', 'Athletics', 'Swimming', 'Boxing', 'Weight Lifting', '', '', '', '1'),
(164, '16', 'Which of the following fields A. Nageshwara Rao is associated with?', 'Sports', 'Literature', 'Motion Pictures', 'Politics', '', '', '', '3'),
(165, '16', 'Who is the author of the book ''The Future of Freedom''?', 'Richard Wolfee', 'Peter Hudson', 'Tamara Lipper', 'Fareed Zakaria', '', '', '', '4'),
(166, '16', 'The average salinity of sea water is', '	 3%', '3.5%', '2.5%', '2%', '', '', '', '2'),
(167, '16', 'Grand Central Terminal, Park Avenue, New York is the world''s', 'largest railway station', 'highest railway station', 'longest railway station', 'None of the above', '', '', '', '1'),
(168, '16', 'Entomology is the science that studies', 'Behavior of human beings', 'Insects', 'The origin and history of technical and scientific terms', 'The formation of rocks', '', '', '', '2'),
(169, '16', 'Eritrea, which became the 182nd member of the UN in 1993, is in the continent of', 'Asia', 'Africa', 'Europe', 'Australia', '', '', '', '2'),
(170, '17', 'Garampani sanctuary is located at', 'Junagarh, Gujarat', 'Diphu, Assam', 'Kohima, Nagaland', 'Gangtok, Sikkim', '', '', '', '2'),
(171, '17', 'For which of the following disciplines is Nobel Prize awarded?', 'Physics and Chemistry', 'Physiology or Medicine', 'Literature, Peace and Economics', '	All of the above', '', '', '', '4'),
(172, '17', 'Hitler party which came into power in 1933 is known as', 'Labour Party', 'Nazi Party', 'Ku-Klux-Klan', 'Democratic Party', '', '', '', '2');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_result`
--

DROP TABLE IF EXISTS `quiz_result`;
CREATE TABLE IF NOT EXISTS `quiz_result` (
  `quiz_result_id` int(11) NOT NULL AUTO_INCREMENT,
  `quiz_student_id` varchar(200) NOT NULL,
  `quiz_school_id` varchar(200) NOT NULL,
  `quiz_student_standard` varchar(250) NOT NULL,
  `quiz_subject_id` int(11) NOT NULL,
  `quiz_total_right_ans` varchar(200) NOT NULL,
  `quiz_student_time` varchar(200) NOT NULL,
  PRIMARY KEY (`quiz_result_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `quiz_result`
--

INSERT INTO `quiz_result` (`quiz_result_id`, `quiz_student_id`, `quiz_school_id`, `quiz_student_standard`, `quiz_subject_id`, `quiz_total_right_ans`, `quiz_student_time`) VALUES
(7, '5', '7', '1', 1, '0', '01:00'),
(8, '5', '7', '1', 2, '0', '00:30'),
(9, '5', '7', '1', 6, '0', '00:05'),
(10, '5', '7', '1', 5, '0', '00:10'),
(11, '5', '7', '1', 3, '1', '00:30'),
(12, '5', '7', '1', 3, '3', '00:30'),
(13, '5', '7', '1', 4, '3', '00:15');

-- --------------------------------------------------------

--
-- Table structure for table `school_detail`
--

DROP TABLE IF EXISTS `school_detail`;
CREATE TABLE IF NOT EXISTS `school_detail` (
  `school_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `school_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `school_address` varchar(100) CHARACTER SET utf8 NOT NULL,
  `school_state` varchar(100) CHARACTER SET utf8 NOT NULL,
  `school_city` varchar(100) CHARACTER SET utf8 NOT NULL,
  `school_postal_code` varchar(100) CHARACTER SET utf8 NOT NULL,
  `school_phone1` varchar(50) CHARACTER SET utf8 NOT NULL,
  `school_phone2` varchar(50) CHARACTER SET utf8 NOT NULL,
  `school_email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `school_fax` varchar(50) CHARACTER SET utf8 NOT NULL,
  `school_logo` varchar(50) CHARACTER SET utf8 NOT NULL,
  `school_facebook` varchar(500) NOT NULL,
  `school_person_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`school_id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `school_detail`
--

INSERT INTO `school_detail` (`school_id`, `user_id`, `school_name`, `school_address`, `school_state`, `school_city`, `school_postal_code`, `school_phone1`, `school_phone2`, `school_email`, `school_fax`, `school_logo`, `school_facebook`, `school_person_name`) VALUES
(7, 7, 'sayona school', 'nr.st bus stand, sanala road, morbi', 'Gujarat', 'morbi', '363650', '9125896325', '9696589630', 'sayonaschoolmorbi@gmail.com', '', '18_School_Building-256.png', 'https://www.facebook.com/shreehariweb', 'mahavis sinh'),
(8, 8, 'navyug vidhyalay', 'nr. chitrakut society, b/h st bus stand, morbi', '', 'morbi', '', '9615896320', '', 'navyugvidhyalay@yahoo.com', '', '14454012981436168479.jpg', 'https://www.facebook.com/themanalitrekkers', 'ansoya ben');

-- --------------------------------------------------------

--
-- Table structure for table `school_student_chat`
--

DROP TABLE IF EXISTS `school_student_chat`;
CREATE TABLE IF NOT EXISTS `school_student_chat` (
  `chat_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `message` varchar(200) CHARACTER SET utf8 NOT NULL,
  `subject` varchar(100) CHARACTER SET utf8 NOT NULL,
  `reply` varchar(200) CHARACTER SET utf8 NOT NULL,
  `on_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`chat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `school_student_chat`
--

INSERT INTO `school_student_chat` (`chat_id`, `student_id`, `school_id`, `message`, `subject`, `reply`, `on_date`) VALUES
(1, 5, 7, 'tomorrow is my birthday..so i celebrate my birthday in school..?', 'birthday', '', '2016-04-24 08:52:24'),
(2, 1, 8, 'hi this is my test message', 'test', '', '2016-04-24 08:54:48'),
(3, 6, 7, 'can we celabrate all event in next week..?', 'event week', '<p>yes we celebrate</p>', '2016-04-24 08:55:25'),
(5, 7, 7, 'i am not good today so i will not come to the school. please inform to my class teacher', 'not well today', '<p>okay, care your heath.</p>', '2016-04-24 09:20:01'),
(6, 9, 7, 'hi this is my firs birthday to celebrat in school..?', 'celebrate birthdat', '<p>okay you can celebrate your birthday in school</p>', '2016-04-25 09:24:38'),
(7, 20, 8, 'my school bus is not come to the time in morning can you help and solve my problem please...?', 'school bus', '<p>oky..your school bus will be come to the time to time on tomorrow.</p>', '2016-04-24 09:36:28'),
(8, 7, 7, 'exam time and date with subject name.', 'sir, final exam date?', '<p>Exam start Next Monday 9:30 To 11:00 Mathas paper.</p>', '2016-10-20 10:13:24'),
(9, 7, 7, 'my family plan to visit Singapore summer holiday.', 'summer holiday date.?', '<p>Summer holiday start Date : 02/02/2016 To 08/02/2016.</p>', '2016-10-20 10:17:34'),
(10, 5, 7, 'sir today my areas heavy rain in there.', 'heavy rains', '<p>Okay Today holiday becuase heavy rain - School Management&nbsp;</p>', '2017-07-30 05:20:48'),
(11, 5, 7, 'sir aaj schhool pr aavano mood nathi', 'Mood nathi', '', '2017-08-02 04:44:41'),
(12, 5, 7, 'asdfasdfdasf', 'adsfasdf', '', '2017-08-02 07:23:12'),
(13, 5, 7, 'Testing app', 'Test', '', '2017-08-02 15:58:39'),
(14, 5, 7, 'Reading day', 'Set Test', '', '2017-08-02 16:36:34'),
(15, 5, 7, 'Because of after some time will be coming Rakhsha Bandhan', 'Just Test', '', '2017-08-03 15:29:04'),
(16, 5, 7, '_____________________', 'Nothing Test', '', '2017-08-03 15:30:26'),
(17, 5, 7, 'Fasdfasd', 'asdf', '', '2017-08-03 15:31:35'),
(18, 5, 7, 'Testing Completed', 'Test', '', '2017-08-04 03:27:36'),
(19, 5, 7, 'Just testing app now', 'testing', '', '2017-08-12 17:07:20'),
(20, 5, 7, 'App tested', 'No any sub', '', '2017-09-18 17:08:38'),
(21, 5, 7, 'yes completed', 'Student app is complited', '', '2017-09-20 05:43:53'),
(22, 5, 7, 'Test', 'test', '', '2017-10-14 13:57:00'),
(23, 5, 7, 'Dada', 'dads', '', '2017-10-17 03:15:21');

-- --------------------------------------------------------

--
-- Table structure for table `standard`
--

DROP TABLE IF EXISTS `standard`;
CREATE TABLE IF NOT EXISTS `standard` (
  `standard_id` int(11) NOT NULL AUTO_INCREMENT,
  `school_id` int(11) NOT NULL,
  `standard_title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `standard_devoir` varchar(500) NOT NULL,
  PRIMARY KEY (`standard_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `standard`
--

INSERT INTO `standard` (`standard_id`, `school_id`, `standard_title`, `standard_devoir`) VALUES
(1, 7, '1', 'https://www.google.co.in'),
(2, 7, '2', 'http://www.w3schools.com/jsref/met_loc_reload.asp'),
(3, 7, '3', 'https://www.devoir.tn/ is working'),
(4, 7, '4', 'https://www.devoir.tn/ is working'),
(5, 7, '5', 'https://www.devoir.tn/ is working'),
(6, 7, '6', 'https://www.devoir.tn/ is working'),
(7, 7, '7', 'https://www.devoir.tn/ is working'),
(8, 8, '8', 'https://www.devoir.tn/ is working'),
(9, 8, '9', 'https://www.devoir.tn'),
(10, 8, '10', 'https://www.devoir.tn/ is working'),
(12, 8, '7', 'https://www.devoir.tn/ is working'),
(13, 7, 'L.K.G12', 'http://waywebsolutio.com/'),
(14, 7, 'H.K.G', 'https://www.devoir.tn/ is working'),
(15, 7, '8', 'https://www.devoir.tn/ is working'),
(16, 7, '9', 'https://www.devoir.tn/ is working'),
(17, 7, '10', 'https://www.devoir.tn/ is working'),
(18, 7, 'Shreehari Web new1', 'http://shreehariwebsolutionnew.com/');

-- --------------------------------------------------------

--
-- Table structure for table `student_detail`
--

DROP TABLE IF EXISTS `student_detail`;
CREATE TABLE IF NOT EXISTS `student_detail` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `school_id` int(11) NOT NULL,
  `student_user_name` varchar(100) NOT NULL,
  `student_status` int(11) NOT NULL,
  `student_password` varchar(100) NOT NULL,
  `student_orgpassword` varchar(100) NOT NULL,
  `student_unique_no` varchar(100) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `student_birthdate` date NOT NULL,
  `student_roll_no` varchar(100) NOT NULL,
  `student_standard` int(11) NOT NULL,
  `student_address` varchar(100) NOT NULL,
  `student_city` varchar(100) NOT NULL,
  `student_phone` varchar(50) NOT NULL,
  `student_parent_phone` varchar(50) NOT NULL,
  `student_enr_no` varchar(50) NOT NULL,
  `student_email` varchar(50) NOT NULL,
  `student_photo` varchar(100) NOT NULL,
  `student_branch` varchar(100) NOT NULL,
  `student_semester` varchar(100) NOT NULL,
  `student_division` varchar(50) NOT NULL,
  `student_batch` varchar(50) NOT NULL,
  `gcm_code` longtext NOT NULL,
  `ios_token` longtext NOT NULL,
  PRIMARY KEY (`student_id`),
  UNIQUE KEY `student_roll_no` (`student_roll_no`,`student_standard`),
  UNIQUE KEY `student_roll_no_2` (`student_roll_no`,`student_standard`),
  UNIQUE KEY `student_user_name` (`student_user_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `student_detail`
--

INSERT INTO `student_detail` (`student_id`, `school_id`, `student_user_name`, `student_status`, `student_password`, `student_orgpassword`, `student_unique_no`, `student_name`, `student_birthdate`, `student_roll_no`, `student_standard`, `student_address`, `student_city`, `student_phone`, `student_parent_phone`, `student_enr_no`, `student_email`, `student_photo`, `student_branch`, `student_semester`, `student_division`, `student_batch`, `gcm_code`, `ios_token`) VALUES
(1, 8, 'nirav', 1, 'ede997b0caf2ec398110d79d9eba38bb', 'terminal', '20160413_570e22dc364ac', 'nirav patel', '2016-04-21', '1', 8, 'b/h vardhman apartment, alap road, satadhar park-2, morbi', 'morbi', '9696569630', '9696963652', '1', 'patelnirav@gmail.com', '14454052651436169016.png', 'computer', '1', 'a', 'morning', 'eLhjuIXn8IU:APA91bE853cQfdcqzjcs-yRiEsUk0KbNhFqXD22GNt2XS35h9fH2K8PKdCbQll3mvECbEBMTlVy9YLVDJWeSI5SBEAAt7rSu3VAOVLwjYA5Y7AYGhL8ptwqh0TMDo5PLvIsrjqlKb08y', ''),
(2, 8, 'jayesh', 1, 'ede997b0caf2ec398110d79d9eba38bb', 'terminal', '20160413_570e231a92a07', 'jayesh kotadiya', '2016-04-08', '2', 8, 'b/h vardhman apartment, alap road, satadhar park-2, morbi', 'morbi', '9696569630', '', '', '', '', '', '', '', '', '', ''),
(3, 8, 'subhash', 1, 'ede997b0caf2ec398110d79d9eba38bb', 'terminal', '20160413_570e2483ae0b8', 'subhash sanghani', '2016-04-19', '3', 8, 'nr. bypass road,  sanala road, morbi', 'morbi', '9659636541', '', '', '', '144540526514361690161.png', '', '', '', '', '', ''),
(4, 8, 'gautam', 1, 'ede997b0caf2ec398110d79d9eba38bb', 'terminal', '20160413_570e2516a1dd4', 'gautam chadasana', '2016-04-21', '1', 9, 'chitrkut society, morbi', 'morbi', '9612596320', '', '', '', '', '', '', '', '', 'cvwZeqc52CM:APA91bFqPXq9fpvrm_RaVN1QwWc3FDKfpzCKAzWBxysR61k2oZhf1LuzfqSl0cGp5_X7Xkxi3lNznN1yLN1fXy6lz9axypn7HYAhQ-I-OXsuW4mZWCkgrlqUWa7lHb4FgJxZwjU4uVh0', ''),
(5, 7, 'student', 1, 'ede997b0caf2ec398110d79d9eba38bb', 'terminal', '20160413_570e254bf19cf', 'jagruti patel', '2016-04-09', '1', 1, 'behind vardhman apartment, alap road, morbi', 'morbi', '9612596256', '9636987563', '1', 'pateljagruti@gmail.com', '144540526514361690162.png', 'gujarati', '1', 'b', 'afternoon', 'c4C0s3GQ30g:APA91bEDgSZ4yjhKRprX6Ex6IhS8iXkqOcwh_QG7psWDJZDW9laL12kXWPc4aBz1a5OLGQlW_tC6xJEtwzhppOjSqAo95XpqeyTPVtvgLds3jF4CheNa9Hiz7YpftOv6iTf7BLSVE6Dp', ''),
(6, 7, 'manish', 1, 'ede997b0caf2ec398110d79d9eba38bb', 'terminal', '20160414_570f1d9307be8', 'manish pandya', '2016-04-18', '2', 1, 'at-mahendra nagar, nr cng petrol pump, morbi-2', 'morbi', '9636859630', '', '', '', '14454038951436170152.jpg', '', '', '', '', '', ''),
(7, 7, 'daxa', 1, 'ede997b0caf2ec398110d79d9eba38bb', 'terminal', '20160414_570f20d29a9c4', 'Daxa Parmar', '2016-04-10', '1', 13, 'sanala road, nr bypass road, morbi', 'morbi', '9258965230', '9869635696', '1', 'daxaparmar@gmail.com', '', '', '', '', '', 'eTAX_MFw8Y0:APA91bGBWC6C6A5mF_JtjZ6Pa3Rn3qqIk0-_Zl5JYN4jxVBuw2d8BpCg2cxGqmhKLqbKwO0-zft8hV__CYTg3GYGehhsY9uqjjbKzP_UwzMSmrWN99biQ6coJBSPK4sUPx4bumwaYXP6', ''),
(8, 7, 'meet', 1, 'ede997b0caf2ec398110d79d9eba38bb', 'terminal', '20160414_570f215b1f619', 'meet khavadiya', '2016-04-27', '2', 13, 'mahendranagar, morbi-2', 'morbi', '9696569630', '', '', '', '', '', '', '', '', '', ''),
(9, 7, 'akash', 1, 'ede997b0caf2ec398110d79d9eba38bb', 'terminal', '20160414_570f21ef8dbcd', 'akash patel', '2016-04-20', '1', 14, 'sakta sanala, morbi', 'morbi', '9612596256', '9636585630', '1', 'akashpatel@gmail.com', '14454012981436168479.jpg', 'gujarati', '1', 'a', 'morning', '', ''),
(10, 7, 'amit', 1, 'ede997b0caf2ec398110d79d9eba38bb', 'terminal', '20160414_570f4cf672f74', 'amit panara', '1991-04-11', '1', 7, 'morbi-tankara road, tankara', 'morbi', '6935698560', '', '', '', '', '', '', '', '', '', ''),
(11, 7, 'test', 1, 'ede997b0caf2ec398110d79d9eba38bb', 'terminal', '20160415_57106dcf00a4c', 'student', '1991-12-31', '1', 2, 'morbi', 'morbi', '9696569630', '9696963652', '12', 'test@gmail.com', '144540389514361701521.jpg', 'hindi', '1', 'b', 'morning', '', ''),
(12, 7, 'gautam1', 1, 'ede997b0caf2ec398110d79d9eba38bb', 'terminal', '20160415_5710741574633', 'gautam chadasana', '1991-12-12', '1', 16, 'morbi', 'morbi', '9621526963', '', '', '', '', '', '', '', '', '', ''),
(13, 7, 'nitish', 1, 'ede997b0caf2ec398110d79d9eba38bb', 'terminal', '20160415_5710a56e706c1', 'nitish kumar', '1963-12-12', '2', 14, 'ravapar road, nr managlam medical , morbi', 'morbi', '9636859630', '', '', '', '', '', '', '', '', '', ''),
(14, 7, 'reshma', 1, 'ede997b0caf2ec398110d79d9eba38bb', 'terminal', '20160415_5710b0a9bd560', 'reshma patel', '1991-11-01', '1', 3, 'morbi-sanala road, lajai', 'morbi', '9369632587', '', '', '', '', '', '', '', '', '', ''),
(15, 7, 'nilesh', 1, 'ede997b0caf2ec398110d79d9eba38bb', 'terminal', '20160417_571311053cda1', 'nilesh goladhra', '1996-12-12', '5', 13, 'morbi', 'morbi', '9536985696', '', '', '', '', '', '', '', '', 'f1Q-sXiADrQ:APA91bGwLg6NqTuoBuT2qZsqyEykSMAkpAYLsDs6Ylg-CXEeEp5JS16WJOKBd_sDx-7tknsn-jW4mpqyyHLOJ5nsE8_4eoHbBOpwBTa4dKZoFzaIxt1MukGqw5Qk5jzHxNZVjvzXuYnl', ''),
(16, 7, 'hitesh', 1, 'ede997b0caf2ec398110d79d9eba38bb', 'terminal', '20160417_571311296d1e0', 'hitesh virja', '1963-12-10', '6', 14, 'morbi', 'morbi', '9536985696', '', '', '', '', '', '', '', '', 'eLhjuIXn8IU:APA91bE853cQfdcqzjcs-yRiEsUk0KbNhFqXD22GNt2XS35h9fH2K8PKdCbQll3mvECbEBMTlVy9YLVDJWeSI5SBEAAt7rSu3VAOVLwjYA5Y7AYGhL8ptwqh0TMDo5PLvIsrjqlKb08y', ''),
(17, 8, 'jayesh1', 1, 'ede997b0caf2ec398110d79d9eba38bb', 'terminal', '20160418_5714a58c326dc', 'jayesh sutariya', '1996-10-01', '5', 8, 'morbi', 'morbi', '9636961485', '', '', '', '', '', '', '', '', '', ''),
(18, 8, 'mahesh', 1, 'ede997b0caf2ec398110d79d9eba38bb', 'terminal', '20160418_5714a87bd8f0f', 'mahesh sitapara', '1996-03-01', '4', 8, 'at- lajai ravpar villege, morbi', 'morbi', '9364785963', '', '', '', '', '', '', '', '', '', ''),
(20, 8, 'chintan', 1, 'ede997b0caf2ec398110d79d9eba38bb', 'terminal', '20160418_5714bde01663b', 'chitan patel', '1996-03-06', '5', 9, 'morbi', 'morbi', '6935698560', '', '', '', '', '', '', '', '', '', ''),
(21, 8, 'test1', 1, 'ede997b0caf2ec398110d79d9eba38bb', 'terminal', '20160418_5714c2bf77de5', 'tets1', '2016-09-06', '1', 10, 'ravapr road morbi', 'morbi', '9625696325', '8956962478', '1', 'test@gmail.com', '', 'hindi', '1', 'b', 'morning', '', ''),
(22, 7, 'mayur', 0, 'c4f4b2eb6d63dd4dd8afed001c61c956', 'mayur', '20171129_5a1e89159bee0', 'mayur', '1992-10-10', '100', 1, 'pune', 'pune', '1234567890', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `student_fees`
--

DROP TABLE IF EXISTS `student_fees`;
CREATE TABLE IF NOT EXISTS `student_fees` (
  `student_fees_id` int(11) NOT NULL AUTO_INCREMENT,
  `standard_id` varchar(250) NOT NULL,
  `student_id` varchar(250) NOT NULL,
  `fee_types` varchar(250) NOT NULL,
  `fee_amount` varchar(250) NOT NULL,
  `pay_fee_amount` varchar(250) NOT NULL,
  `pay_date` date NOT NULL,
  `school_id` varchar(250) NOT NULL,
  PRIMARY KEY (`student_fees_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `student_fees`
--

INSERT INTO `student_fees` (`student_fees_id`, `standard_id`, `student_id`, `fee_types`, `fee_amount`, `pay_fee_amount`, `pay_date`, `school_id`) VALUES
(1, '1', '5', '13', '6000', '6000', '2017-08-22', '7'),
(2, '2', '11', '15', '5000', '6000', '2020-09-02', '7'),
(3, '1', '5', '12', '6000', '6000', '2017-09-04', '7'),
(5, '1', '5', '14', '5000', '4000', '2017-09-04', '7');

-- --------------------------------------------------------

--
-- Table structure for table `student_growth`
--

DROP TABLE IF EXISTS `student_growth`;
CREATE TABLE IF NOT EXISTS `student_growth` (
  `growth_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `standard_id` int(11) NOT NULL,
  `month` varchar(100) NOT NULL,
  `growth` varchar(100) NOT NULL,
  `percentage` varchar(50) NOT NULL,
  `on_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`growth_id`),
  UNIQUE KEY `student_id` (`student_id`,`month`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `student_growth`
--

INSERT INTO `student_growth` (`growth_id`, `student_id`, `standard_id`, `month`, `growth`, `percentage`, `on_date`) VALUES
(1, 10, 7, 'January', 'average', '40', '2016-04-23 08:41:34'),
(9, 9, 14, 'February', 'good', '60', '2016-04-23 08:41:41'),
(11, 6, 1, 'February', 'average', '40', '2016-04-23 08:41:44'),
(12, 4, 9, 'January', 'excellent', '80', '2016-04-23 08:41:47'),
(13, 18, 8, 'January', 'everage', '40', '2016-04-23 08:41:50'),
(14, 18, 8, 'February', 'everage', '40', '2016-04-23 08:41:54'),
(19, 1, 8, 'April', 'good', '60', '2016-04-23 08:42:03'),
(20, 1, 8, 'February', 'everage', '40', '2016-04-23 08:42:06'),
(21, 3, 8, 'April', 'good', '60', '2016-04-23 08:42:09'),
(23, 5, 1, 'April', 'best', '80', '2016-10-15 09:08:53'),
(24, 7, 13, 'January', 'good', '60', '2016-04-23 08:42:15'),
(26, 5, 1, 'January', 'Good', '60', '2016-10-15 09:08:11'),
(28, 8, 13, 'January', 'average', '40', '2016-04-23 08:50:12'),
(29, 16, 14, 'January', 'Bad', '15', '2016-04-25 10:18:50'),
(31, 16, 14, 'February', 'Medium', '28', '2016-04-25 10:14:46'),
(32, 16, 14, 'April', 'Good', '65', '2016-04-25 10:15:15'),
(33, 16, 14, 'May', 'Excellent', '85', '2016-04-25 10:16:02'),
(35, 5, 1, 'February', 'Average', '65', '2016-10-15 09:08:34'),
(37, 2, 8, 'January', 'Good', '60', '2017-06-22 05:50:44');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
CREATE TABLE IF NOT EXISTS `subject` (
  `subject_id` int(11) NOT NULL AUTO_INCREMENT,
  `school_id` varchar(200) NOT NULL,
  `subject_standard` varchar(300) NOT NULL,
  `subject_title` varchar(200) NOT NULL,
  `subject_total_ques` varchar(100) NOT NULL,
  `quiz_time` varchar(100) NOT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `school_id`, `subject_standard`, `subject_title`, `subject_total_ques`, `quiz_time`) VALUES
(1, '7', '1', 'Reasoning', '10', '01:00'),
(2, '7', '1', 'Computer', '10', '00:30'),
(3, '7', '1', 'General Knowledge', '15', '00:30'),
(4, '7', '1', 'Games and Sports', '10', '00:15'),
(6, '7', '1', 'science', '3', '00:05'),
(5, '7', '1', 'mathematical', '10', '00:10'),
(8, '7', '1', 'FDE', '10', '00:10'),
(9, '7', '1', 'MAT', '10', '00:10'),
(10, '7', '1', 'CMT', '10', '00:10'),
(11, '7', '1', 'MALP', '10', '00:10'),
(12, '7', '1', 'JAVA', '10', '00:10'),
(13, '7', '1', 'DWSL', '10', '00:10'),
(14, '7', '1', 'DWPD', '10', '00:10'),
(15, '7', '1', 'BE', '10', '00:10'),
(16, '7', '1', '.NET', '10', '00:10'),
(17, '7', '1', 'FSD', '10', '00:10');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_detail`
--

DROP TABLE IF EXISTS `teacher_detail`;
CREATE TABLE IF NOT EXISTS `teacher_detail` (
  `teacher_id` int(11) NOT NULL AUTO_INCREMENT,
  `school_id` int(11) NOT NULL,
  `teacher_name` varchar(100) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `maritalstatus` varchar(50) NOT NULL,
  `teacher_birthdate` date NOT NULL,
  `teacher_detail` longtext NOT NULL,
  `teacher_image` varchar(100) NOT NULL,
  `teacher_phone` varchar(50) NOT NULL,
  `teacher_email` varchar(50) NOT NULL,
  `teacher_education` varchar(100) NOT NULL,
  `teacher_address` varchar(100) NOT NULL,
  `teacher_exp` varchar(100) NOT NULL,
  `teacher_notes` varchar(100) NOT NULL,
  `on_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `teacher_detail`
--

INSERT INTO `teacher_detail` (`teacher_id`, `school_id`, `teacher_name`, `gender`, `maritalstatus`, `teacher_birthdate`, `teacher_detail`, `teacher_image`, `teacher_phone`, `teacher_email`, `teacher_education`, `teacher_address`, `teacher_exp`, `teacher_notes`, `on_date`) VALUES
(1, 7, 'jagruti motka', 'female', 'single', '1991-04-09', '<p>standar : 8,9,10</p>\r\n\r\n<p>subject: gujarati, hindi and sanskrit..</p>\r\n\r\n<p>this is jagruti patel is good teacher for sanskrit and gujarati subject..she is special in extral all achivenent for our school</p>\r\n\r\n<p>&nbsp;</p>', '14454052651436169016.png', '9596254896', 'pateljagruti@gmail.com', 'M.A., B.ed', 'satadhar park-2, alap rasod, morbi', '2 year 6 month', 'paper taps in Gujarat board for Gujarati and Hindi subject', '2016-04-23 10:22:36'),
(2, 7, 'nirav patel', 'male', 'single', '1991-01-11', '<p>standard: 1 to 8</p>\r\n\r\n<p>subject : computer</p>\r\n\r\n<p>this is only one teacher in computer education he is very good knowledge of computer</p>', '14454012981436168479.jpg', '9692584596', '', 'bca,mca', 'sanala road, morbi', '1 year and 6 month', '', '2016-04-23 10:26:01'),
(3, 8, 'gautam ladani', 'male', 'married', '1990-11-01', '<p>standard: 1 to 6</p>\r\n\r\n<p>subject : gujarati</p>', '14454012981436168479.jpg', '9562587412', 'gautamladani@gmail.com', 'b.a', 'chitrakut society , morbi', '6 month', '', '2016-04-23 11:01:44'),
(4, 8, 'monika savani', 'female', 'married', '1998-09-15', '<p>standard: 11, 12 arts</p>\r\n\r\n<p>subject: english, social samaj</p>', '', '9632596858', '', 'M.A., B.ed', 'at- lajai, tankar road, morbi', '2 year 8 month', '', '2016-04-23 11:03:57'),
(6, 7, 'test1', 'female', 'married', '2016-02-21', '<p>test1</p>', '14454038951436170152.jpg', '96325968581', 'test1@gmail.com', 'ba, ma', 'morbi1', '1 year 6 month', 'extra1', '2016-04-23 12:23:21');

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

DROP TABLE IF EXISTS `timetable`;
CREATE TABLE IF NOT EXISTS `timetable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `standard_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `subject` varchar(110) NOT NULL,
  `day_id` int(11) NOT NULL,
  `start_time` varchar(110) NOT NULL,
  `end_time` varchar(110) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `timetable`
--

INSERT INTO `timetable` (`id`, `standard_id`, `teacher_id`, `school_id`, `subject`, `day_id`, `start_time`, `end_time`) VALUES
(2, 2, 1, 0, 'science', 2, '11:00:00', '12:00:00'),
(3, 2, 2, 0, 'English', 6, '08:00:00', '10:00:00'),
(5, 4, 4, 0, 'Maths Eight', 3, '07:15:00', '08:00:00'),
(6, 1, 3, 7, 'Account', 2, '09:15:00', '10:45:00'),
(7, 1, 2, 7, 'English', 2, '10:15:00', '11:15:00'),
(8, 1, 1, 7, 'Project Demo', 1, '11:30 AM', '01:30 AM'),
(9, 1, 6, 7, 'Maths', 1, '06:30:00', '08:30:00'),
(10, 1, 6, 7, 'Maths', 2, '06:30:00', '08:30:00'),
(11, 1, 1, 7, 'Maths', 5, '08:30 AM', '10:00 AM'),
(12, 1, 2, 7, 'Friday', 5, '03:45 PM', '04:30 PM'),
(13, 1, 1, 7, 'English', 6, '06:30 PM', '08:30 PM'),
(14, 1, 2, 7, 'Saminar', 7, '10:15 AM', '02:15 PM');

-- --------------------------------------------------------

--
-- Table structure for table `top_student`
--

DROP TABLE IF EXISTS `top_student`;
CREATE TABLE IF NOT EXISTS `top_student` (
  `top_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `standard_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `student_rank` varchar(50) NOT NULL,
  `on_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`top_id`),
  UNIQUE KEY `student_id` (`student_id`,`standard_id`,`school_id`,`student_rank`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `top_student`
--

INSERT INTO `top_student` (`top_id`, `student_id`, `standard_id`, `school_id`, `student_rank`, `on_date`) VALUES
(22, 9, 14, 7, '3', '2016-05-02 04:19:27'),
(23, 13, 14, 7, '2', '2016-05-02 04:19:27'),
(24, 16, 14, 7, '1', '2016-05-02 04:19:27'),
(28, 7, 13, 7, '1', '2016-05-02 04:21:57'),
(29, 8, 13, 7, '3', '2016-05-02 04:21:57'),
(30, 15, 13, 7, '2', '2016-05-02 04:21:57'),
(35, 1, 8, 8, '3', '2016-05-02 04:23:16'),
(36, 2, 8, 8, '2', '2016-05-02 04:23:16'),
(37, 3, 8, 8, '1', '2016-05-02 04:23:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `user_password` longtext NOT NULL,
  `user_type_id` int(11) NOT NULL,
  `user_status` int(11) NOT NULL,
  `user_image` varchar(300) NOT NULL,
  `on_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_password`, `user_type_id`, `user_status`, `user_image`, `on_date`) VALUES
(1, 'admin', 'ede997b0caf2ec398110d79d9eba38bb', 0, 1, 'women_gym_workout_wallpaper1.jpg', '2016-04-11 12:04:28'),
(7, 'school', 'ede997b0caf2ec398110d79d9eba38bb', 1, 1, '', '2016-04-11 12:04:28'),
(8, 'school of commerce', 'ede997b0caf2ec398110d79d9eba38bb', 1, 1, '', '2016-04-12 05:49:57'),
(9, 'school of arts', 'ede997b0caf2ec398110d79d9eba38bb', 1, 1, '', '2016-04-18 06:22:43'),
(10, 'school of computer', 'ede997b0caf2ec398110d79d9eba38bb', 1, 1, '', '2016-10-15 08:48:20'),
(11, 'school of pharmacy', 'ede997b0caf2ec398110d79d9eba38bb', 1, 1, '', '2016-10-15 08:49:03'),
(12, 'school of management', 'ede997b0caf2ec398110d79d9eba38bb', 1, 1, '', '2016-10-15 08:49:25'),
(13, 'school of engineering', 'ede997b0caf2ec398110d79d9eba38bb', 1, 1, '', '2016-10-15 08:50:31'),
(14, 'school of primary', 'ede997b0caf2ec398110d79d9eba38bb', 1, 1, '', '2016-10-15 08:51:11'),
(15, 'school  of higher secondary', 'ede997b0caf2ec398110d79d9eba38bb', 1, 1, '', '2016-10-15 08:52:16'),
(16, 'anthony', '7c6a180b36896a0a8c02787eeafb0e4c', 1, 1, '', '2017-11-29 00:34:14');

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

DROP TABLE IF EXISTS `user_types`;
CREATE TABLE IF NOT EXISTS `user_types` (
  `user_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_type_title` varchar(30) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`user_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`user_type_id`, `user_type_title`) VALUES
(1, 'School');

-- --------------------------------------------------------

--
-- Table structure for table `user_type_access`
--

DROP TABLE IF EXISTS `user_type_access`;
CREATE TABLE IF NOT EXISTS `user_type_access` (
  `user_type_id` int(11) NOT NULL,
  `class` varchar(30) NOT NULL,
  `method` varchar(30) NOT NULL,
  `access` int(11) NOT NULL,
  UNIQUE KEY `user_type_id` (`user_type_id`,`class`,`method`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_type_access`
--

INSERT INTO `user_type_access` (`user_type_id`, `class`, `method`, `access`) VALUES
(0, 'admin', '*', 1),
(0, 'requestdemo', '*', 1),
(0, 'users', '*', 1),
(1, 'attendence', '*', 1),
(1, 'book', '*', 1),
(1, 'chat', '*', 1),
(1, 'event', '*', 1),
(1, 'exam', '*', 1),
(1, 'examresult', '*', 1),
(1, 'fee', '*', 1),
(1, 'growth', '*', 1),
(1, 'holiday', '*', 1),
(1, 'noticeboard', '*', 1),
(1, 'notification', '*', 1),
(1, 'question', '*', 1),
(1, 'school', '*', 1),
(1, 'standard', '*', 1),
(1, 'student', '*', 1),
(1, 'subject', '*', 1),
(1, 'teacher', '*', 1),
(1, 'Timetable', '*', 1),
(1, 'topstudent', '*', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
