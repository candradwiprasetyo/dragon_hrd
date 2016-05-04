-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 04, 2016 at 10:09 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dragon_hrd`
--

-- --------------------------------------------------------

--
-- Table structure for table `absences`
--

CREATE TABLE `absences` (
  `id` bigint(31) NOT NULL,
  `person_id` varchar(10) DEFAULT NULL,
  `absences_type_id` int(11) DEFAULT NULL,
  `absences_date` date DEFAULT NULL,
  `filing_date` date DEFAULT NULL,
  `approved` bit(1) DEFAULT b'0',
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `notes` text,
  `salary_deduction` bit(1) DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `absences_type`
--

CREATE TABLE `absences_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `absences_type`
--

INSERT INTO `absences_type` (`id`, `name`) VALUES
(1, 'Cuti'),
(2, 'Ijin'),
(3, 'Sakit');

-- --------------------------------------------------------

--
-- Table structure for table `allergies`
--

CREATE TABLE `allergies` (
  `allergy_id` int(11) NOT NULL,
  `allergy_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `allergies`
--

INSERT INTO `allergies` (`allergy_id`, `allergy_name`) VALUES
(1, '-'),
(2, 'Telur'),
(3, 'Seafood'),
(4, 'Kacang');

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `answer_id` bigint(21) NOT NULL,
  `answer_basic_info_id` bigint(21) NOT NULL,
  `answer_question_id` int(11) NOT NULL,
  `answer_question_option_id` int(11) NOT NULL,
  `answer_value` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `application_histories`
--

CREATE TABLE `application_histories` (
  `application_history_id` bigint(21) NOT NULL,
  `application_history_date` date DEFAULT NULL,
  `basic_info_id` bigint(21) NOT NULL,
  `application_history_status_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `basic_infos`
--

CREATE TABLE `basic_infos` (
  `basic_info_id` bigint(21) NOT NULL,
  `basic_info_first_name` varchar(100) DEFAULT NULL,
  `basic_info_last_name` varchar(100) DEFAULT NULL,
  `basic_info_gender` varchar(1) DEFAULT NULL,
  `basic_info_birth_date` date DEFAULT NULL,
  `basic_info_birth_place` varchar(100) DEFAULT NULL,
  `basic_info_country_id` int(11) NOT NULL,
  `basic_info_npwp_number` varchar(45) DEFAULT NULL,
  `basic_info_city_id` int(11) NOT NULL,
  `basic_info_bpjs_number` varchar(45) DEFAULT NULL,
  `basic_info_license_type_id` int(11) NOT NULL,
  `basic_info_license_number` varchar(45) DEFAULT NULL,
  `basic_info_religion_id` int(11) NOT NULL,
  `basic_info_email` varchar(45) DEFAULT NULL,
  `basic_info_phone_number` varchar(20) DEFAULT NULL,
  `basic_info_marital_status` varchar(1) DEFAULT NULL,
  `basic_info_child_number` decimal(10,0) DEFAULT NULL,
  `basic_info_join_reason` text,
  `basic_info_life_motto` text,
  `basic_info_status_id` int(11) NOT NULL,
  `basic_info_date` date DEFAULT NULL,
  `basic_info_ktp_number` varchar(45) DEFAULT NULL,
  `basic_info_last_education_type_id` int(11) DEFAULT NULL,
  `basic_info_test_date` date DEFAULT NULL,
  `basic_info_test_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `basic_infos`
--

INSERT INTO `basic_infos` (`basic_info_id`, `basic_info_first_name`, `basic_info_last_name`, `basic_info_gender`, `basic_info_birth_date`, `basic_info_birth_place`, `basic_info_country_id`, `basic_info_npwp_number`, `basic_info_city_id`, `basic_info_bpjs_number`, `basic_info_license_type_id`, `basic_info_license_number`, `basic_info_religion_id`, `basic_info_email`, `basic_info_phone_number`, `basic_info_marital_status`, `basic_info_child_number`, `basic_info_join_reason`, `basic_info_life_motto`, `basic_info_status_id`, `basic_info_date`, `basic_info_ktp_number`, `basic_info_last_education_type_id`, `basic_info_test_date`, `basic_info_test_status`) VALUES
(7, '2', '3', '2', '2016-05-03', '4', 1, '5', 1, '6', 1, '7', 1, '12', '11', '1', '8', '10', '9', 10, '2016-05-03', '1', 0, '2016-05-04', 1);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(45) DEFAULT NULL,
  `city_region_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`, `city_region_id`) VALUES
(1, 'Surabaya', 1);

-- --------------------------------------------------------

--
-- Table structure for table `computers`
--

CREATE TABLE `computers` (
  `computer_id` int(11) NOT NULL,
  `computer_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `computers`
--

INSERT INTO `computers` (`computer_id`, `computer_name`) VALUES
(1, 'Laptop Windows'),
(2, 'Laptop Mac'),
(3, 'PC Windows'),
(4, 'PC Mac');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`country_id`, `country_name`) VALUES
(1, 'Indonesia'),
(2, 'WNA');

-- --------------------------------------------------------

--
-- Table structure for table `educations`
--

CREATE TABLE `educations` (
  `education_id` bigint(21) NOT NULL,
  `education_name` varchar(100) DEFAULT NULL,
  `education_major` varchar(100) DEFAULT NULL,
  `education_graduate_year` varchar(45) DEFAULT NULL,
  `education_basic_info_id` bigint(21) NOT NULL,
  `education_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `education_types`
--

CREATE TABLE `education_types` (
  `education_type_id` int(11) NOT NULL,
  `education_type_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hard_skills`
--

CREATE TABLE `hard_skills` (
  `hard_skill_id` bigint(21) NOT NULL,
  `basic_info_id` bigint(21) NOT NULL,
  `hard_skill_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hard_skill_details`
--

CREATE TABLE `hard_skill_details` (
  `hard_skill_detail_id` bigint(21) NOT NULL,
  `hard_skill_detail_value` varchar(5) DEFAULT NULL,
  `hard_skill_detail_date` date DEFAULT NULL,
  `hard_skill_id` bigint(21) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hard_skill_types`
--

CREATE TABLE `hard_skill_types` (
  `hard_skill_type_id` int(11) NOT NULL,
  `hard_skill_type_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hard_skill_types`
--

INSERT INTO `hard_skill_types` (`hard_skill_type_id`, `hard_skill_type_name`) VALUES
(1, 'Microsoft Word'),
(2, 'Microsoft Powerpoint'),
(3, 'Microsoft Excell'),
(4, 'Microsoft Outlook'),
(5, 'Keyboard 10 jari'),
(6, 'Adobe Photoshop'),
(7, 'Adobe Illustrator'),
(8, 'Adobe inDesign'),
(9, 'Adobe Premierre'),
(10, 'Adobe After Effects'),
(11, 'Adobe Dreamweaver'),
(12, '3D Studio Max'),
(13, 'Wacom'),
(14, 'Mouse'),
(15, 'PHP'),
(16, 'HTML + CSS'),
(17, 'Wordpress'),
(18, 'Node JS'),
(19, 'Angular JS'),
(20, 'Java'),
(21, 'Javascript'),
(22, 'Jquery'),
(23, 'C++'),
(24, 'Phyton'),
(25, 'Ruby on Rails'),
(26, 'Oracle'),
(27, 'SQL'),
(28, 'MySQL'),
(29, 'PHPMyAdmin'),
(30, 'Linux OS'),
(31, 'Linux Server'),
(32, 'Windows OS'),
(33, 'Windows Server'),
(34, 'Mikrotik'),
(35, 'AWS');

-- --------------------------------------------------------

--
-- Table structure for table `house_details`
--

CREATE TABLE `house_details` (
  `house_detail_id` bigint(21) NOT NULL,
  `house_detail_address` text,
  `basic_info_id` bigint(21) NOT NULL,
  `house_status_id` int(11) NOT NULL,
  `house_detail_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `house_status`
--

CREATE TABLE `house_status` (
  `house_status_id` int(11) NOT NULL,
  `house_status_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `identification_type`
--

CREATE TABLE `identification_type` (
  `id` bigint(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `identification_type`
--

INSERT INTO `identification_type` (`id`, `name`) VALUES
(1, 'KTP'),
(2, 'Paspor'),
(3, 'NPWP'),
(4, 'BPJSTK'),
(5, 'BPJS'),
(6, 'Manulife'),
(7, 'Sim A'),
(8, 'Sim C');

-- --------------------------------------------------------

--
-- Table structure for table `interview_types`
--

CREATE TABLE `interview_types` (
  `interview_type_id` int(11) NOT NULL,
  `interview_type_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `layer`
--

CREATE TABLE `layer` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `rank_id` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `layer`
--

INSERT INTO `layer` (`id`, `name`, `rank_id`, `start_date`, `end_date`) VALUES
(1, 'Director', 1, NULL, NULL),
(2, 'General Manger', 1, NULL, NULL),
(3, 'Manager', 2, NULL, NULL),
(4, 'Assistant Manager', 2, NULL, NULL),
(5, 'Supervisor', 3, NULL, NULL),
(6, 'Team Leader', 3, NULL, NULL),
(7, 'Staff', 4, NULL, NULL),
(8, 'RESERVED', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `license_types`
--

CREATE TABLE `license_types` (
  `license_type_id` int(11) NOT NULL,
  `license_type_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `license_types`
--

INSERT INTO `license_types` (`license_type_id`, `license_type_name`) VALUES
(1, 'Sim A'),
(2, 'Sim B'),
(3, 'Sim C');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `id` char(10) NOT NULL DEFAULT '',
  `name` varchar(50) DEFAULT NULL,
  `username` varchar(10) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `birth_place` varchar(100) DEFAULT NULL,
  `religion_id` int(11) DEFAULT NULL,
  `dcc_email` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `join_reason` text,
  `join_date` date DEFAULT NULL,
  `life_motto` text,
  `status` tinyint(4) DEFAULT '3' COMMENT '1=founder,2=co,3=staff'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`id`, `name`, `username`, `password`, `gender`, `birth_date`, `birth_place`, `religion_id`, `dcc_email`, `email`, `address`, `phone_number`, `join_reason`, `join_date`, `life_motto`, `status`) VALUES
('DCC0000001', 'Borton Lieuw', NULL, NULL, 'L', NULL, NULL, NULL, 'b@dragoncapital.center', NULL, NULL, '087776005007', NULL, NULL, NULL, 1),
('DCC0000002', 'Victorio Primadi', NULL, NULL, 'L', NULL, NULL, NULL, 'vic@dragoncapital.center', 'moogle.aneh@gmail.com', NULL, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `person_identification`
--

CREATE TABLE `person_identification` (
  `person_id` char(10) NOT NULL,
  ` identification_type_id` bigint(11) NOT NULL,
  `number` varchar(50) DEFAULT NULL,
  `reference_id` bigint(31) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `portfolio_id` bigint(21) NOT NULL,
  `basic_info_id` bigint(21) DEFAULT NULL,
  `portfolio_position_id` int(11) NOT NULL,
  `portfolio_position_level_id` int(11) NOT NULL,
  `portfolio_expected_salary` decimal(10,0) DEFAULT NULL,
  `portfolio_last_company` varchar(45) DEFAULT NULL,
  `portfolio_last_position` varchar(45) DEFAULT NULL,
  `portfolio_last_position_level_id` int(11) NOT NULL,
  `portfolio_last_salary` decimal(10,0) DEFAULT NULL,
  `portfolio_interview_date1` date DEFAULT NULL,
  `portfolio_interview_date2` date DEFAULT NULL,
  `portfolio_interview_type_id` int(11) NOT NULL,
  `portfolio_work_date` date DEFAULT NULL,
  `portfolio_file` text,
  `portfolio_link` text,
  `portfolio_linkedin` varchar(45) DEFAULT NULL,
  `portfolio_behance` varchar(45) DEFAULT NULL,
  `portfolio_facebook` varchar(45) DEFAULT NULL,
  `portfolio_instagram` varchar(45) DEFAULT NULL,
  `portfolio_reason_out_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `id` bigint(31) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `layer_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`id`, `start_date`, `end_date`, `section_id`, `layer_id`, `name`) VALUES
(1, '2015-04-01', NULL, 1, 1, 'Director'),
(2, '2015-04-01', NULL, 3, 2, 'General Manager');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `position_id` int(11) NOT NULL,
  `position_name` varchar(45) DEFAULT NULL,
  `position_description` text,
  `position_scope_id` int(11) NOT NULL,
  `position_file1` text,
  `position_file2` text,
  `position_file3` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `position_levels`
--

CREATE TABLE `position_levels` (
  `position_level_id` int(11) NOT NULL,
  `position_level_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `position_member`
--

CREATE TABLE `position_member` (
  `position_id` bigint(31) NOT NULL,
  `person_id` varchar(10) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `position_member`
--

INSERT INTO `position_member` (`position_id`, `person_id`, `start_date`, `end_date`) VALUES
(1, 'DCC0000001', '2016-04-01', NULL),
(2, 'DCC0000002', '2016-04-01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `question_id` int(11) NOT NULL,
  `question_name` text,
  `question_description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `question_options`
--

CREATE TABLE `question_options` (
  `question_option_id` int(11) NOT NULL,
  `question_option_name` text,
  `question_id` int(11) NOT NULL,
  `question_option_number` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`id`, `name`) VALUES
(1, 'GM - UP'),
(2, 'Manager - Ast. Manager'),
(3, 'Team Leader - SPV'),
(4, 'Staff'),
(5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reason_out`
--

CREATE TABLE `reason_out` (
  `reason_out_id` int(11) NOT NULL,
  `reason_out_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `region_id` int(11) NOT NULL,
  `region_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`region_id`, `region_name`) VALUES
(1, 'Jawa Timur');

-- --------------------------------------------------------

--
-- Table structure for table `reimbursement`
--

CREATE TABLE `reimbursement` (
  `id` int(11) NOT NULL,
  `reimbursement_type_id` int(11) DEFAULT NULL,
  `rank_id` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `limit` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reimbursement`
--

INSERT INTO `reimbursement` (`id`, `reimbursement_type_id`, `rank_id`, `start_date`, `end_date`, `limit`) VALUES
(1, 1, 1, NULL, NULL, '4000000'),
(2, 1, 2, NULL, NULL, '3500000'),
(3, 1, 3, NULL, NULL, '3000000'),
(4, 1, 4, NULL, NULL, '2500000'),
(5, 2, 1, NULL, NULL, '2500000'),
(6, 2, 2, NULL, NULL, '2000000'),
(7, 2, 3, NULL, NULL, '1500000'),
(8, 2, 4, NULL, NULL, '1000000'),
(9, 3, 1, NULL, NULL, '2500000'),
(10, 3, 2, NULL, NULL, '2000000'),
(11, 3, 3, NULL, NULL, '1500000'),
(12, 3, 4, NULL, NULL, '1000000'),
(13, 4, 1, NULL, NULL, '25000000'),
(14, 4, 2, NULL, NULL, '20000000'),
(15, 4, 3, NULL, NULL, '15000000'),
(16, 4, 4, NULL, NULL, '10000000'),
(17, 5, 1, NULL, NULL, '20000000'),
(18, 5, 2, NULL, NULL, '16000000'),
(19, 5, 3, NULL, NULL, '12000000'),
(20, 5, 4, NULL, NULL, '8000000'),
(21, 6, 1, NULL, NULL, '4000000'),
(22, 6, 2, NULL, NULL, '3000000'),
(23, 6, 3, NULL, NULL, '2000000'),
(24, 6, 4, NULL, NULL, '1000000');

-- --------------------------------------------------------

--
-- Table structure for table `reimbursement_filing`
--

CREATE TABLE `reimbursement_filing` (
  `id` bigint(31) NOT NULL,
  `person_id` varchar(10) DEFAULT NULL,
  `rembursement_type_id` int(11) DEFAULT NULL,
  `filing_date` date DEFAULT NULL,
  `approved` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reimbursement_payment`
--

CREATE TABLE `reimbursement_payment` (
  `id` bigint(31) NOT NULL,
  `payment_date` date DEFAULT NULL,
  `amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reimbursement_payment_detail`
--

CREATE TABLE `reimbursement_payment_detail` (
  `reimbursement_payment_id` bigint(31) NOT NULL,
  `reimbursement_filing_id` bigint(31) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reimbursement_type`
--

CREATE TABLE `reimbursement_type` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reimbursement_type`
--

INSERT INTO `reimbursement_type` (`id`, `name`) VALUES
(1, 'Rawat jalan'),
(2, 'Kacamata'),
(3, 'Gigi'),
(4, 'Melahirkan'),
(5, 'Melahirkan (Istri)'),
(6, 'Pernikahan');

-- --------------------------------------------------------

--
-- Table structure for table `religions`
--

CREATE TABLE `religions` (
  `religion_id` int(11) NOT NULL,
  `religion_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `religions`
--

INSERT INTO `religions` (`religion_id`, `religion_name`) VALUES
(1, 'Islam'),
(2, 'Kristen Khatolik'),
(3, 'Kristen Protestan'),
(4, 'Budha'),
(5, 'Hindu'),
(6, 'Konghucu');

-- --------------------------------------------------------

--
-- Table structure for table `resume`
--

CREATE TABLE `resume` (
  `resume_id` bigint(21) NOT NULL,
  `basic_info_id` bigint(21) NOT NULL,
  `resume_total_work_year` varchar(45) DEFAULT NULL,
  `resume_total_work_month` varchar(45) DEFAULT NULL,
  `resume_computer_id` int(11) NOT NULL,
  `resume_monitor` int(11) DEFAULT NULL,
  `resume_wacom` int(11) DEFAULT NULL,
  `resume_keyboard` int(11) DEFAULT NULL,
  `resume_mouse` int(11) DEFAULT NULL,
  `resume_photo` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `resume_tools`
--

CREATE TABLE `resume_tools` (
  `resume_tool_id` bigint(21) NOT NULL,
  `resume_tool_value` int(11) DEFAULT NULL,
  `resume_tool_basic_info_id` bigint(21) NOT NULL,
  `tool_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scopes`
--

CREATE TABLE `scopes` (
  `scope_id` int(11) NOT NULL,
  `scope_name` varchar(45) DEFAULT NULL,
  `scope_description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `secondary_infos`
--

CREATE TABLE `secondary_infos` (
  `secondary_info_id` bigint(21) NOT NULL,
  `basic_info_id` bigint(21) NOT NULL,
  `secondary_info_weight` varchar(10) NOT NULL,
  `secondary_info_height` varchar(10) DEFAULT NULL,
  `secondary_info_blood_group` varchar(2) DEFAULT NULL,
  `secondary_info_blood_group_type` varchar(10) DEFAULT NULL,
  `secondary_info_blood_donation` varchar(10) DEFAULT NULL,
  `secondary_info_use_glasses` varchar(10) DEFAULT NULL,
  `secondary_info_smoker` int(11) DEFAULT NULL,
  `secondary_info_allergy_id` int(11) NOT NULL,
  `secondary_info_sport_id` int(11) NOT NULL,
  `secondary_info_reference_letter` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`id`, `name`, `start_date`, `end_date`) VALUES
(1, 'Dragon Capital Center', '2015-04-01', NULL),
(2, 'HR & GA Department', '2015-04-01', NULL),
(3, 'Operation Division', '2015-04-01', NULL),
(4, 'Illustration Department', '2015-04-01', NULL),
(5, 'Development Department', '2015-04-01', NULL),
(6, 'Creative Department', '2015-04-01', NULL),
(7, 'Activity Section', '2015-04-01', NULL),
(8, 'Item Activity', '2015-04-01', NULL),
(9, 'Places', '2015-04-01', NULL),
(10, 'Avatar', '2015-04-01', NULL),
(11, 'Character Activity', '2015-04-01', NULL),
(12, 'Background', '2015-04-01', NULL),
(13, 'Vector Section', '2015-04-01', NULL),
(14, 'Thumbnail', '2015-04-01', NULL),
(15, 'Achievement', '2015-04-01', NULL),
(16, 'Filter', '2015-04-01', NULL),
(17, 'System Analyst', '2015-04-01', NULL),
(18, 'Support', '2015-04-01', NULL),
(19, 'UI Section', '2015-04-01', NULL),
(20, 'UI Web', '2015-04-01', NULL),
(21, 'UI Android', '2015-04-01', NULL),
(22, 'UI iOS', '2015-04-01', NULL),
(23, 'Web Section', '2015-04-01', NULL),
(24, 'Front End', '2015-04-01', NULL),
(25, 'Back End', '2015-04-01', NULL),
(26, 'Support Programmer', '2015-04-01', NULL),
(27, 'Mobile Section', '2015-04-01', NULL),
(28, 'Android', '2015-04-01', NULL),
(29, 'iOS', '2015-04-01', NULL),
(30, 'UX Section', '2015-04-01', NULL),
(31, 'Product Section', '2015-04-01', NULL),
(32, 'Content', '2015-04-01', NULL),
(33, 'Promotion Section', '2015-04-01', NULL),
(34, 'Social Media', '2015-04-01', NULL),
(35, 'Videography', '2015-04-01', NULL),
(36, 'Animation', '2015-04-01', NULL),
(37, 'Human Resource', '2015-04-01', NULL),
(38, 'General Affair', '2015-04-01', NULL),
(39, 'Payroll', '2015-04-01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `section_structure`
--

CREATE TABLE `section_structure` (
  `id` bigint(31) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `child_id` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `section_structure`
--

INSERT INTO `section_structure` (`id`, `parent_id`, `child_id`, `start_date`, `end_date`) VALUES
(1, 1, 2, '2015-04-01', NULL),
(2, 1, 3, '2015-04-01', NULL),
(3, 3, 4, '2015-04-01', NULL),
(4, 3, 5, '2015-04-01', NULL),
(5, 3, 6, '2015-04-01', NULL),
(6, 4, 7, '2015-04-01', NULL),
(7, 7, 8, '2015-04-01', NULL),
(8, 7, 9, '2015-04-01', NULL),
(9, 7, 10, '2015-04-01', NULL),
(10, 7, 11, '2015-04-01', NULL),
(11, 7, 12, '2015-04-01', NULL),
(12, 4, 13, '2015-04-01', NULL),
(13, 13, 14, '2015-04-01', NULL),
(14, 13, 15, '2015-04-01', NULL),
(15, 13, 16, '2015-04-01', NULL),
(16, 5, 17, '2015-04-01', NULL),
(17, 5, 18, '2015-04-01', NULL),
(18, 5, 19, '2015-04-01', NULL),
(19, 19, 20, '2015-04-01', NULL),
(20, 19, 21, '2015-04-01', NULL),
(21, 19, 22, '2015-04-01', NULL),
(22, 5, 23, '2015-04-01', NULL),
(23, 23, 24, '2015-04-01', NULL),
(24, 23, 25, '2015-04-01', NULL),
(25, 23, 26, '2015-04-01', NULL),
(26, 5, 27, '2015-04-01', NULL),
(27, 27, 28, '2015-04-01', NULL),
(28, 27, 29, '2015-04-01', NULL),
(29, 5, 30, '2015-04-01', NULL),
(30, 6, 31, '2015-04-01', NULL),
(31, 31, 32, '2015-04-01', NULL),
(32, 6, 33, '2015-04-01', NULL),
(33, 33, 34, '2015-04-01', NULL),
(34, 33, 35, '2015-04-01', NULL),
(35, 33, 36, '2015-04-01', NULL),
(36, 2, 37, '2015-04-01', NULL),
(37, 2, 38, '2015-04-01', NULL),
(38, 2, 39, '2015-04-01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `soft_skills`
--

CREATE TABLE `soft_skills` (
  `soft_skill_id` bigint(21) NOT NULL,
  `basic_info_id` bigint(21) NOT NULL,
  `soft_skill_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `soft_skill_details`
--

CREATE TABLE `soft_skill_details` (
  `soft_skill_detail_id` bigint(21) NOT NULL,
  `soft_skill_detail_value` varchar(5) DEFAULT NULL,
  `soft_skill_detail_date` date DEFAULT NULL,
  `soft_skill_id` bigint(21) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `soft_skill_types`
--

CREATE TABLE `soft_skill_types` (
  `soft_skill_type_id` int(11) NOT NULL,
  `soft_skill_type_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `soft_skill_types`
--

INSERT INTO `soft_skill_types` (`soft_skill_type_id`, `soft_skill_type_name`) VALUES
(2, 'Bahasa Indonesia'),
(3, 'Bahasa Inggris'),
(4, 'Bahasa Mandarin'),
(5, 'Public Speaking'),
(6, 'Presentasi'),
(7, 'Leadership'),
(8, 'Teamwork'),
(9, 'Planning'),
(10, 'Marketing'),
(11, 'Socializing'),
(12, 'Activation'),
(13, 'Branding'),
(14, 'Sales'),
(15, 'Mindmapping'),
(16, 'Drawing'),
(17, 'Openmind'),
(18, 'Passion'),
(19, 'Sport');

-- --------------------------------------------------------

--
-- Table structure for table `sports`
--

CREATE TABLE `sports` (
  `sport_id` int(11) NOT NULL,
  `sport_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sports`
--

INSERT INTO `sports` (`sport_id`, `sport_name`) VALUES
(1, 'Basket'),
(2, 'Futsal'),
(3, 'Tenis Meja'),
(4, 'Renang'),
(5, 'Lari'),
(6, 'Gym');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `status_id` int(11) NOT NULL,
  `status_name` varchar(100) DEFAULT NULL,
  `status_email_content` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`status_id`, `status_name`, `status_email_content`) VALUES
(1, 'Review by personalia', NULL),
(2, '<a>Rejected</a> Incomplete documents', NULL),
(3, '<a>Rejected</a> Does not fit the criteria', NULL),
(4, '<a>Save</a> in draft', NULL),
(5, '<a>Test</a> phase 1', NULL),
(6, '<a>Test</a> phase 2', NULL),
(7, '<a>Test</a> phase 3', NULL),
(8, '<a>Psychological test</a>', NULL),
(9, '<a>Interview</a>', NULL),
(10, '<a>Accepted</a> welcome to DCC', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tools`
--

CREATE TABLE `tools` (
  `tool_id` int(11) NOT NULL,
  `tool_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tools`
--

INSERT INTO `tools` (`tool_id`, `tool_name`) VALUES
(1, 'Monitor'),
(2, 'Wacom'),
(3, 'Keyboard'),
(4, 'Mouse');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `user_password` varchar(100) DEFAULT NULL,
  `user_img` text,
  `user_active_status` int(11) DEFAULT NULL,
  `user_type_id` int(11) NOT NULL,
  `user_username` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_password`, `user_img`, `user_active_status`, `user_type_id`, `user_username`) VALUES
(1, 'Administrator', 'admin@dcc.center', '$2y$11$uvUqahyQ/TIyY0tltbK6JOfc.NsqDlX/hRv2kQYWCn9YKIIWdTvBa', '1_1460947410_candramelon.png', 1, 1, 'admin@dcc.center'),
(4, 'Candra', 'candra@gmail.com', '$2y$11$0O3Lk6A0gT0l39X2I0my8uBDYpgHiWVoKJKc2inrJ.NcKkMpbZCie', '1_1460951606_box_content.jpg', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
  `user_type_id` int(11) NOT NULL,
  `user_type_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`user_type_id`, `user_type_name`) VALUES
(1, 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `weight_details`
--

CREATE TABLE `weight_details` (
  `weight_detail_id` bigint(21) NOT NULL,
  `weight_detail_value` varchar(45) DEFAULT NULL,
  `weight_detail_date` date DEFAULT NULL,
  `basic_info_id` bigint(21) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `work_experiences`
--

CREATE TABLE `work_experiences` (
  `work_experience_id` bigint(21) NOT NULL,
  `work_experience_company` varchar(45) DEFAULT NULL,
  `work_experience_from` varchar(5) DEFAULT NULL,
  `work_experience_to` varchar(5) DEFAULT NULL,
  `work_experience_position` varchar(45) DEFAULT NULL,
  `work_experience_basic_info_id` bigint(21) NOT NULL,
  `work_experience_company_industry_id` int(11) NOT NULL,
  `work_experience_position_level_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absences`
--
ALTER TABLE `absences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `absences_type_id` (`absences_type_id`),
  ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `absences_type`
--
ALTER TABLE `absences_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `allergies`
--
ALTER TABLE `allergies`
  ADD PRIMARY KEY (`allergy_id`);

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`answer_id`,`answer_basic_info_id`),
  ADD KEY `fk_answers_basic_infos1_idx` (`answer_basic_info_id`),
  ADD KEY `fk_answers_questions1_idx` (`answer_question_id`),
  ADD KEY `fk_answers_question_options1_idx` (`answer_question_option_id`);

--
-- Indexes for table `application_histories`
--
ALTER TABLE `application_histories`
  ADD PRIMARY KEY (`application_history_id`),
  ADD KEY `fk_application_histories_basic_infos1_idx` (`basic_info_id`),
  ADD KEY `fk_application_histories_status1_idx` (`application_history_status_id`);

--
-- Indexes for table `basic_infos`
--
ALTER TABLE `basic_infos`
  ADD PRIMARY KEY (`basic_info_id`),
  ADD KEY `fk_applications_city1_idx` (`basic_info_city_id`),
  ADD KEY `fk_applications_application_status1_idx` (`basic_info_status_id`),
  ADD KEY `fk_applications_countries1_idx` (`basic_info_country_id`),
  ADD KEY `fk_applications_religions1_idx` (`basic_info_religion_id`),
  ADD KEY `fk_basic_infos_license_types1_idx` (`basic_info_license_type_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`),
  ADD KEY `fk_city_region1_idx` (`city_region_id`);

--
-- Indexes for table `computers`
--
ALTER TABLE `computers`
  ADD PRIMARY KEY (`computer_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `educations`
--
ALTER TABLE `educations`
  ADD PRIMARY KEY (`education_id`,`education_basic_info_id`),
  ADD KEY `fk_educations_applications1_idx` (`education_basic_info_id`),
  ADD KEY `fk_educations_education_types1_idx` (`education_type_id`);

--
-- Indexes for table `education_types`
--
ALTER TABLE `education_types`
  ADD PRIMARY KEY (`education_type_id`);

--
-- Indexes for table `hard_skills`
--
ALTER TABLE `hard_skills`
  ADD PRIMARY KEY (`hard_skill_id`,`basic_info_id`),
  ADD KEY `fk_hard_skill_basic_info1_idx` (`basic_info_id`),
  ADD KEY `fk_hard_skill_hard_skill_types1_idx` (`hard_skill_type_id`);

--
-- Indexes for table `hard_skill_details`
--
ALTER TABLE `hard_skill_details`
  ADD PRIMARY KEY (`hard_skill_detail_id`),
  ADD KEY `fk_hard_skill_details_hard_skills1_idx` (`hard_skill_id`);

--
-- Indexes for table `hard_skill_types`
--
ALTER TABLE `hard_skill_types`
  ADD PRIMARY KEY (`hard_skill_type_id`);

--
-- Indexes for table `house_details`
--
ALTER TABLE `house_details`
  ADD PRIMARY KEY (`house_detail_id`,`basic_info_id`),
  ADD KEY `fk_house_details_basic_infos1_idx` (`basic_info_id`),
  ADD KEY `fk_house_details_house_status1_idx` (`house_status_id`);

--
-- Indexes for table `house_status`
--
ALTER TABLE `house_status`
  ADD PRIMARY KEY (`house_status_id`);

--
-- Indexes for table `identification_type`
--
ALTER TABLE `identification_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interview_types`
--
ALTER TABLE `interview_types`
  ADD PRIMARY KEY (`interview_type_id`);

--
-- Indexes for table `layer`
--
ALTER TABLE `layer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rank_id` (`rank_id`);

--
-- Indexes for table `license_types`
--
ALTER TABLE `license_types`
  ADD PRIMARY KEY (`license_type_id`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `person_identification`
--
ALTER TABLE `person_identification`
  ADD PRIMARY KEY (`person_id`,` identification_type_id`),
  ADD KEY `person_identification_ibfk_2` (` identification_type_id`);

--
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`portfolio_id`),
  ADD KEY `fk_application2_application11_idx` (`basic_info_id`),
  ADD KEY `fk_application2_positions1_idx` (`portfolio_position_id`),
  ADD KEY `fk_application2_position_levels1_idx` (`portfolio_position_level_id`),
  ADD KEY `fk_application2_position_levels2_idx` (`portfolio_last_position_level_id`),
  ADD KEY `fk_application2_interview_types1_idx` (`portfolio_interview_type_id`),
  ADD KEY `fk_portfolios_reason_out1_idx` (`portfolio_reason_out_id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`id`),
  ADD KEY `layer_structure_ibfk_1` (`layer_id`),
  ADD KEY `section_id` (`section_id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`position_id`),
  ADD KEY `fk_positions_scopes1_idx` (`position_scope_id`);

--
-- Indexes for table `position_levels`
--
ALTER TABLE `position_levels`
  ADD PRIMARY KEY (`position_level_id`);

--
-- Indexes for table `position_member`
--
ALTER TABLE `position_member`
  ADD PRIMARY KEY (`position_id`,`person_id`),
  ADD KEY `position_member_ibfk_2` (`person_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `question_options`
--
ALTER TABLE `question_options`
  ADD PRIMARY KEY (`question_option_id`,`question_id`),
  ADD KEY `fk_question_options_questions1_idx` (`question_id`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reason_out`
--
ALTER TABLE `reason_out`
  ADD PRIMARY KEY (`reason_out_id`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`region_id`);

--
-- Indexes for table `reimbursement`
--
ALTER TABLE `reimbursement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reimbursement_type_id` (`reimbursement_type_id`),
  ADD KEY `rank_id` (`rank_id`);

--
-- Indexes for table `reimbursement_filing`
--
ALTER TABLE `reimbursement_filing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rembursement_type_id` (`rembursement_type_id`),
  ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `reimbursement_payment`
--
ALTER TABLE `reimbursement_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reimbursement_payment_detail`
--
ALTER TABLE `reimbursement_payment_detail`
  ADD PRIMARY KEY (`reimbursement_payment_id`),
  ADD KEY `reimbursement_filing_id` (`reimbursement_filing_id`);

--
-- Indexes for table `reimbursement_type`
--
ALTER TABLE `reimbursement_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `religions`
--
ALTER TABLE `religions`
  ADD PRIMARY KEY (`religion_id`);

--
-- Indexes for table `resume`
--
ALTER TABLE `resume`
  ADD PRIMARY KEY (`resume_id`,`basic_info_id`),
  ADD KEY `fk_application3_application11_idx` (`basic_info_id`),
  ADD KEY `fk_application3_computers1_idx` (`resume_computer_id`);

--
-- Indexes for table `resume_tools`
--
ALTER TABLE `resume_tools`
  ADD PRIMARY KEY (`resume_tool_id`,`resume_tool_basic_info_id`),
  ADD KEY `fk_resume_tools_basic_infos1_idx` (`resume_tool_basic_info_id`),
  ADD KEY `fk_resume_tools_tools1_idx` (`tool_id`);

--
-- Indexes for table `scopes`
--
ALTER TABLE `scopes`
  ADD PRIMARY KEY (`scope_id`);

--
-- Indexes for table `secondary_infos`
--
ALTER TABLE `secondary_infos`
  ADD PRIMARY KEY (`secondary_info_id`,`basic_info_id`),
  ADD KEY `fk_application4_application11_idx` (`basic_info_id`),
  ADD KEY `fk_application4_allergies1_idx` (`secondary_info_allergy_id`),
  ADD KEY `fk_application4_sports1_idx` (`secondary_info_sport_id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section_structure`
--
ALTER TABLE `section_structure`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `child_id` (`child_id`);

--
-- Indexes for table `soft_skills`
--
ALTER TABLE `soft_skills`
  ADD PRIMARY KEY (`soft_skill_id`,`basic_info_id`),
  ADD KEY `fk_soft_skills_basic_infos1_idx` (`basic_info_id`),
  ADD KEY `fk_soft_skills_soft_skill_types1_idx` (`soft_skill_type_id`);

--
-- Indexes for table `soft_skill_details`
--
ALTER TABLE `soft_skill_details`
  ADD PRIMARY KEY (`soft_skill_detail_id`),
  ADD KEY `fk_soft_skill_details_soft_skills1_idx` (`soft_skill_id`);

--
-- Indexes for table `soft_skill_types`
--
ALTER TABLE `soft_skill_types`
  ADD PRIMARY KEY (`soft_skill_type_id`);

--
-- Indexes for table `sports`
--
ALTER TABLE `sports`
  ADD PRIMARY KEY (`sport_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `tools`
--
ALTER TABLE `tools`
  ADD PRIMARY KEY (`tool_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `fk_users_user_types1_idx` (`user_type_id`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`user_type_id`);

--
-- Indexes for table `weight_details`
--
ALTER TABLE `weight_details`
  ADD PRIMARY KEY (`weight_detail_id`,`basic_info_id`),
  ADD KEY `fk_weight_details_basic_infos1_idx` (`basic_info_id`);

--
-- Indexes for table `work_experiences`
--
ALTER TABLE `work_experiences`
  ADD PRIMARY KEY (`work_experience_id`,`work_experience_basic_info_id`),
  ADD KEY `fk_work_experiences_applications1_idx` (`work_experience_basic_info_id`),
  ADD KEY `fk_work_experiences_position_levels1_idx` (`work_experience_position_level_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absences_type`
--
ALTER TABLE `absences_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `allergies`
--
ALTER TABLE `allergies`
  MODIFY `allergy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `basic_infos`
--
ALTER TABLE `basic_infos`
  MODIFY `basic_info_id` bigint(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `computers`
--
ALTER TABLE `computers`
  MODIFY `computer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `educations`
--
ALTER TABLE `educations`
  MODIFY `education_id` bigint(21) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `education_types`
--
ALTER TABLE `education_types`
  MODIFY `education_type_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hard_skills`
--
ALTER TABLE `hard_skills`
  MODIFY `hard_skill_id` bigint(21) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hard_skill_details`
--
ALTER TABLE `hard_skill_details`
  MODIFY `hard_skill_detail_id` bigint(21) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hard_skill_types`
--
ALTER TABLE `hard_skill_types`
  MODIFY `hard_skill_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `house_details`
--
ALTER TABLE `house_details`
  MODIFY `house_detail_id` bigint(21) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `house_status`
--
ALTER TABLE `house_status`
  MODIFY `house_status_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `identification_type`
--
ALTER TABLE `identification_type`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `interview_types`
--
ALTER TABLE `interview_types`
  MODIFY `interview_type_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `layer`
--
ALTER TABLE `layer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `license_types`
--
ALTER TABLE `license_types`
  MODIFY `license_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `portfolio_id` bigint(21) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `id` bigint(31) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `position_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `position_levels`
--
ALTER TABLE `position_levels`
  MODIFY `position_level_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `question_options`
--
ALTER TABLE `question_options`
  MODIFY `question_option_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rank`
--
ALTER TABLE `rank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `reason_out`
--
ALTER TABLE `reason_out`
  MODIFY `reason_out_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
  MODIFY `region_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `reimbursement`
--
ALTER TABLE `reimbursement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `reimbursement_filing`
--
ALTER TABLE `reimbursement_filing`
  MODIFY `id` bigint(31) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reimbursement_payment`
--
ALTER TABLE `reimbursement_payment`
  MODIFY `id` bigint(31) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reimbursement_type`
--
ALTER TABLE `reimbursement_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `religions`
--
ALTER TABLE `religions`
  MODIFY `religion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `resume`
--
ALTER TABLE `resume`
  MODIFY `resume_id` bigint(21) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `resume_tools`
--
ALTER TABLE `resume_tools`
  MODIFY `resume_tool_id` bigint(21) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `scopes`
--
ALTER TABLE `scopes`
  MODIFY `scope_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `secondary_infos`
--
ALTER TABLE `secondary_infos`
  MODIFY `secondary_info_id` bigint(21) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `section_structure`
--
ALTER TABLE `section_structure`
  MODIFY `id` bigint(31) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `soft_skills`
--
ALTER TABLE `soft_skills`
  MODIFY `soft_skill_id` bigint(21) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soft_skill_details`
--
ALTER TABLE `soft_skill_details`
  MODIFY `soft_skill_detail_id` bigint(21) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soft_skill_types`
--
ALTER TABLE `soft_skill_types`
  MODIFY `soft_skill_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `sports`
--
ALTER TABLE `sports`
  MODIFY `sport_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tools`
--
ALTER TABLE `tools`
  MODIFY `tool_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `user_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `weight_details`
--
ALTER TABLE `weight_details`
  MODIFY `weight_detail_id` bigint(21) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `work_experiences`
--
ALTER TABLE `work_experiences`
  MODIFY `work_experience_id` bigint(21) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `absences`
--
ALTER TABLE `absences`
  ADD CONSTRAINT `absences_ibfk_1` FOREIGN KEY (`absences_type_id`) REFERENCES `absences_type` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `absences_ibfk_2` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `fk_answers_basic_infos1` FOREIGN KEY (`answer_basic_info_id`) REFERENCES `basic_infos` (`basic_info_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_answers_question_options1` FOREIGN KEY (`answer_question_option_id`) REFERENCES `question_options` (`question_option_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_answers_questions1` FOREIGN KEY (`answer_question_id`) REFERENCES `questions` (`question_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `application_histories`
--
ALTER TABLE `application_histories`
  ADD CONSTRAINT `fk_application_histories_basic_infos1` FOREIGN KEY (`basic_info_id`) REFERENCES `basic_infos` (`basic_info_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_application_histories_status1` FOREIGN KEY (`application_history_status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `basic_infos`
--
ALTER TABLE `basic_infos`
  ADD CONSTRAINT `fk_applications_application_status1` FOREIGN KEY (`basic_info_status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_applications_city1` FOREIGN KEY (`basic_info_city_id`) REFERENCES `city` (`city_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_applications_countries1` FOREIGN KEY (`basic_info_country_id`) REFERENCES `countries` (`country_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_applications_religions1` FOREIGN KEY (`basic_info_religion_id`) REFERENCES `religions` (`religion_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_basic_infos_license_types1` FOREIGN KEY (`basic_info_license_type_id`) REFERENCES `license_types` (`license_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `fk_city_region1` FOREIGN KEY (`city_region_id`) REFERENCES `region` (`region_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `educations`
--
ALTER TABLE `educations`
  ADD CONSTRAINT `fk_educations_applications1` FOREIGN KEY (`education_basic_info_id`) REFERENCES `basic_infos` (`basic_info_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_educations_education_types1` FOREIGN KEY (`education_type_id`) REFERENCES `education_types` (`education_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `hard_skills`
--
ALTER TABLE `hard_skills`
  ADD CONSTRAINT `fk_hard_skill_basic_info1` FOREIGN KEY (`basic_info_id`) REFERENCES `basic_infos` (`basic_info_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_hard_skill_hard_skill_types1` FOREIGN KEY (`hard_skill_type_id`) REFERENCES `hard_skill_types` (`hard_skill_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `hard_skill_details`
--
ALTER TABLE `hard_skill_details`
  ADD CONSTRAINT `fk_hard_skill_details_hard_skills1` FOREIGN KEY (`hard_skill_id`) REFERENCES `hard_skills` (`hard_skill_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `house_details`
--
ALTER TABLE `house_details`
  ADD CONSTRAINT `fk_house_details_basic_infos1` FOREIGN KEY (`basic_info_id`) REFERENCES `basic_infos` (`basic_info_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_house_details_house_status1` FOREIGN KEY (`house_status_id`) REFERENCES `house_status` (`house_status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `layer`
--
ALTER TABLE `layer`
  ADD CONSTRAINT `layer_ibfk_1` FOREIGN KEY (`rank_id`) REFERENCES `rank` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `person_identification`
--
ALTER TABLE `person_identification`
  ADD CONSTRAINT `person_identification_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `person_identification_ibfk_2` FOREIGN KEY (` identification_type_id`) REFERENCES `identification_type` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD CONSTRAINT `fk_application2_application11` FOREIGN KEY (`basic_info_id`) REFERENCES `basic_infos` (`basic_info_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_application2_interview_types1` FOREIGN KEY (`portfolio_interview_type_id`) REFERENCES `interview_types` (`interview_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_application2_position_levels1` FOREIGN KEY (`portfolio_position_level_id`) REFERENCES `position_levels` (`position_level_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_application2_position_levels2` FOREIGN KEY (`portfolio_last_position_level_id`) REFERENCES `position_levels` (`position_level_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_application2_positions1` FOREIGN KEY (`portfolio_position_id`) REFERENCES `positions` (`position_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_portfolios_reason_out1` FOREIGN KEY (`portfolio_reason_out_id`) REFERENCES `reason_out` (`reason_out_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `position`
--
ALTER TABLE `position`
  ADD CONSTRAINT `position_ibfk_1` FOREIGN KEY (`layer_id`) REFERENCES `layer` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `position_ibfk_2` FOREIGN KEY (`section_id`) REFERENCES `section` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `positions`
--
ALTER TABLE `positions`
  ADD CONSTRAINT `fk_positions_scopes1` FOREIGN KEY (`position_scope_id`) REFERENCES `scopes` (`scope_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `position_member`
--
ALTER TABLE `position_member`
  ADD CONSTRAINT `position_member_ibfk_1` FOREIGN KEY (`position_id`) REFERENCES `position` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `position_member_ibfk_2` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `question_options`
--
ALTER TABLE `question_options`
  ADD CONSTRAINT `fk_question_options_questions1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`question_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `reimbursement`
--
ALTER TABLE `reimbursement`
  ADD CONSTRAINT `reimbursement_ibfk_3` FOREIGN KEY (`reimbursement_type_id`) REFERENCES `reimbursement_type` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `reimbursement_ibfk_4` FOREIGN KEY (`rank_id`) REFERENCES `rank` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `reimbursement_filing`
--
ALTER TABLE `reimbursement_filing`
  ADD CONSTRAINT `reimbursement_filing_ibfk_1` FOREIGN KEY (`rembursement_type_id`) REFERENCES `reimbursement_type` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `reimbursement_filing_ibfk_2` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `reimbursement_payment_detail`
--
ALTER TABLE `reimbursement_payment_detail`
  ADD CONSTRAINT `reimbursement_payment_detail_ibfk_1` FOREIGN KEY (`reimbursement_payment_id`) REFERENCES `reimbursement_payment` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `reimbursement_payment_detail_ibfk_2` FOREIGN KEY (`reimbursement_filing_id`) REFERENCES `reimbursement_filing` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `resume`
--
ALTER TABLE `resume`
  ADD CONSTRAINT `fk_application3_application11` FOREIGN KEY (`basic_info_id`) REFERENCES `basic_infos` (`basic_info_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_application3_computers1` FOREIGN KEY (`resume_computer_id`) REFERENCES `computers` (`computer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `resume_tools`
--
ALTER TABLE `resume_tools`
  ADD CONSTRAINT `fk_resume_tools_basic_infos1` FOREIGN KEY (`resume_tool_basic_info_id`) REFERENCES `basic_infos` (`basic_info_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_resume_tools_tools1` FOREIGN KEY (`tool_id`) REFERENCES `tools` (`tool_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `secondary_infos`
--
ALTER TABLE `secondary_infos`
  ADD CONSTRAINT `fk_application4_allergies1` FOREIGN KEY (`secondary_info_allergy_id`) REFERENCES `allergies` (`allergy_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_application4_application11` FOREIGN KEY (`basic_info_id`) REFERENCES `basic_infos` (`basic_info_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_application4_sports1` FOREIGN KEY (`secondary_info_sport_id`) REFERENCES `sports` (`sport_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `section_structure`
--
ALTER TABLE `section_structure`
  ADD CONSTRAINT `section_structure_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `section` (`id`),
  ADD CONSTRAINT `section_structure_ibfk_2` FOREIGN KEY (`child_id`) REFERENCES `section` (`id`);

--
-- Constraints for table `soft_skills`
--
ALTER TABLE `soft_skills`
  ADD CONSTRAINT `fk_soft_skills_basic_infos1` FOREIGN KEY (`basic_info_id`) REFERENCES `basic_infos` (`basic_info_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_soft_skills_soft_skill_types1` FOREIGN KEY (`soft_skill_type_id`) REFERENCES `soft_skill_types` (`soft_skill_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `soft_skill_details`
--
ALTER TABLE `soft_skill_details`
  ADD CONSTRAINT `fk_soft_skill_details_soft_skills1` FOREIGN KEY (`soft_skill_id`) REFERENCES `soft_skills` (`soft_skill_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_user_types1` FOREIGN KEY (`user_type_id`) REFERENCES `user_types` (`user_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `weight_details`
--
ALTER TABLE `weight_details`
  ADD CONSTRAINT `fk_weight_details_basic_infos1` FOREIGN KEY (`basic_info_id`) REFERENCES `basic_infos` (`basic_info_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `work_experiences`
--
ALTER TABLE `work_experiences`
  ADD CONSTRAINT `fk_work_experiences_applications1` FOREIGN KEY (`work_experience_basic_info_id`) REFERENCES `basic_infos` (`basic_info_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_work_experiences_position_levels1` FOREIGN KEY (`work_experience_position_level_id`) REFERENCES `position_levels` (`position_level_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
