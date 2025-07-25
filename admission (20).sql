-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2025 at 06:12 PM
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
-- Database: `admission`
--

-- --------------------------------------------------------

--
-- Table structure for table `exam_applicants`
--

CREATE TABLE `exam_applicants` (
  `id` int(11) NOT NULL,
  `schedule_id` int(11) DEFAULT NULL,
  `applicant_id` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_schedule`
--

CREATE TABLE `exam_schedule` (
  `exam_id` int(11) NOT NULL,
  `exam_date` date NOT NULL,
  `exam_start_time` varchar(10) NOT NULL,
  `exam_end_time` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exam_schedule`
--

INSERT INTO `exam_schedule` (`exam_id`, `exam_date`, `exam_start_time`, `exam_end_time`) VALUES
(2, '2025-05-21', '12:00', '13:30'),
(3, '2025-05-21', '09:30', '10:30'),
(4, '2025-05-21', '07:00', '21:00');

-- --------------------------------------------------------

--
-- Table structure for table `person_status_table`
--

CREATE TABLE `person_status_table` (
  `id` int(11) NOT NULL,
  `person_id` int(11) DEFAULT NULL,
  `applicant_id` varchar(20) DEFAULT NULL,
  `exam_status` int(11) DEFAULT NULL,
  `requirements` int(11) DEFAULT NULL,
  `residency` int(11) DEFAULT NULL,
  `student_registration_status` int(11) DEFAULT NULL,
  `exam_result` int(11) DEFAULT NULL,
  `hs_ave` float DEFAULT NULL,
  `qualifying_result` int(11) DEFAULT 0,
  `interview_result` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `person_status_table`
--

INSERT INTO `person_status_table` (`id`, `person_id`, `applicant_id`, `exam_status`, `requirements`, `residency`, `student_registration_status`, `exam_result`, `hs_ave`, `qualifying_result`, `interview_result`) VALUES
(10, NULL, '2025-00001-A', 0, NULL, NULL, NULL, 52, NULL, 38, 38),
(11, NULL, '2025-00002-A', 0, NULL, NULL, NULL, 81, NULL, 42, 44),
(12, NULL, '2025-00003-A', 0, NULL, NULL, NULL, 71, NULL, 51, 67),
(13, NULL, '2025-00004-A', 0, NULL, NULL, NULL, 61, NULL, 67, 39),
(14, NULL, '2025-00005-A', 0, NULL, NULL, NULL, 98, NULL, 74, 85),
(15, NULL, '2025-00006-A', 0, NULL, NULL, NULL, 69, NULL, 33, 49),
(16, NULL, '2025-00007-A', 0, NULL, NULL, NULL, 96, NULL, 56, 57),
(17, NULL, '2025-00008-A', 0, NULL, NULL, NULL, 88, NULL, 85, 36),
(18, NULL, '2025-00009-A', 0, NULL, NULL, NULL, 96, NULL, 91, 68),
(19, NULL, '2025-00010-A', 0, NULL, NULL, NULL, 96, NULL, 62, 43),
(20, NULL, '2025-00011-A', 0, NULL, NULL, NULL, 93, NULL, 30, 74),
(21, NULL, '2025-00012-A', 0, NULL, NULL, NULL, 92, NULL, 49, 37),
(22, NULL, '2025-00013-A', 0, NULL, NULL, NULL, 89, NULL, 88, 30),
(23, NULL, '2025-00014-A', NULL, NULL, NULL, NULL, 74, NULL, 77, 88),
(24, NULL, '2025-00015-A', NULL, NULL, NULL, NULL, 68, NULL, 69, 62),
(25, NULL, '2025-00016-A', NULL, NULL, NULL, NULL, 65, NULL, 40, 52),
(26, NULL, '2025-00017-A', NULL, NULL, NULL, NULL, 82, NULL, 54, 71),
(27, NULL, '2025-00018-A', NULL, NULL, NULL, NULL, 57, NULL, 96, 79),
(28, NULL, '2025-00019-A', NULL, NULL, NULL, NULL, 68, NULL, 31, 40),
(29, NULL, '2025-00020-A', NULL, NULL, NULL, NULL, 70, NULL, 60, 33),
(30, NULL, '2025-00021-A', NULL, NULL, NULL, NULL, 74, NULL, 35, 54),
(31, NULL, '2025-00022-A', NULL, NULL, NULL, NULL, 92, NULL, 66, 84),
(32, NULL, '2025-00023-A', NULL, NULL, NULL, NULL, 98, NULL, 80, 59),
(33, NULL, '2025-00024-A', NULL, NULL, NULL, NULL, 92, NULL, 92, 45),
(34, NULL, '2025-00025-A', NULL, NULL, NULL, NULL, 52, NULL, 44, 69),
(35, NULL, '2025-00026-A', NULL, NULL, NULL, NULL, 59, NULL, 59, 81),
(36, NULL, '2025-00027-A', NULL, NULL, NULL, NULL, 96, NULL, 39, 46),
(37, NULL, '2025-00028-A', NULL, NULL, NULL, NULL, 68, NULL, 72, 34),
(38, NULL, '2025-00029-A', NULL, NULL, NULL, NULL, 56, NULL, 83, 53),
(39, NULL, '2025-00030-A', NULL, NULL, NULL, NULL, 86, NULL, 97, 50),
(40, NULL, '2025-00031-A', NULL, NULL, NULL, NULL, 70, NULL, 45, 72),
(41, NULL, '2025-00032-A', NULL, NULL, NULL, NULL, 61, NULL, 68, 77),
(42, NULL, '2025-00033-A', NULL, NULL, NULL, NULL, 86, NULL, 55, 42),
(43, NULL, '2025-00034-A', NULL, NULL, NULL, NULL, 78, NULL, 70, 87),
(44, NULL, '2025-00035-A', NULL, NULL, NULL, NULL, 71, NULL, 47, 31),
(45, NULL, '2025-00036-A', NULL, NULL, NULL, NULL, 98, NULL, 93, 66),
(46, NULL, '2025-00037-A', NULL, NULL, NULL, NULL, 80, NULL, 41, 35),
(47, NULL, '2025-00038-A', NULL, NULL, NULL, NULL, 77, NULL, 64, 60),
(48, NULL, '2025-00039-A', NULL, NULL, NULL, NULL, 61, NULL, 53, 73),
(49, NULL, '2025-00040-A', NULL, NULL, NULL, NULL, 61, NULL, 81, 48),
(50, NULL, '2025-00041-A', NULL, NULL, NULL, NULL, 77, NULL, 36, 82),
(51, NULL, '2025-00042-A', NULL, NULL, NULL, NULL, 72, NULL, 75, 41),
(52, NULL, '2025-00043-A', NULL, NULL, NULL, NULL, 50, NULL, 65, 51),
(53, NULL, '2025-00044-A', NULL, NULL, NULL, NULL, 62, NULL, 78, 56),
(54, NULL, '2025-00045-A', NULL, NULL, NULL, NULL, 82, NULL, 34, 83),
(55, NULL, '2025-00046-A', NULL, NULL, NULL, NULL, 63, NULL, 87, 39),
(56, NULL, '2025-00047-A', NULL, NULL, NULL, NULL, 65, NULL, 46, 55),
(57, NULL, '2025-00048-A', NULL, NULL, NULL, NULL, 61, NULL, 58, 65),
(58, NULL, '2025-00049-A', NULL, NULL, NULL, NULL, 97, NULL, 50, 70),
(59, NULL, '2025-00050-A', NULL, NULL, NULL, NULL, 84, NULL, 82, 47);

-- --------------------------------------------------------

--
-- Table structure for table `person_table`
--

CREATE TABLE `person_table` (
  `person_id` int(11) NOT NULL,
  `profile_img` varchar(255) DEFAULT NULL,
  `campus` int(11) DEFAULT NULL,
  `academicProgram` varchar(100) DEFAULT NULL,
  `classifiedAs` varchar(50) DEFAULT NULL,
  `program` varchar(100) DEFAULT NULL,
  `program2` varchar(100) DEFAULT NULL,
  `program3` varchar(100) DEFAULT NULL,
  `yearLevel` varchar(30) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `extension` varchar(10) DEFAULT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `height` varchar(10) DEFAULT NULL,
  `weight` varchar(10) DEFAULT NULL,
  `lrnNumber` varchar(20) DEFAULT NULL,
  `nolrnNumber` int(5) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `pwdMember` int(5) DEFAULT NULL,
  `pwdType` varchar(50) DEFAULT NULL,
  `pwdId` varchar(50) DEFAULT NULL,
  `birthOfDate` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `birthPlace` varchar(255) DEFAULT NULL,
  `languageDialectSpoken` varchar(255) DEFAULT NULL,
  `citizenship` varchar(50) DEFAULT NULL,
  `religion` varchar(50) DEFAULT NULL,
  `civilStatus` varchar(50) DEFAULT NULL,
  `tribeEthnicGroup` varchar(50) DEFAULT NULL,
  `cellphoneNumber` varchar(20) DEFAULT NULL,
  `emailAddress` varchar(100) DEFAULT NULL,
  `presentStreet` varchar(255) DEFAULT NULL,
  `presentBarangay` varchar(100) DEFAULT NULL,
  `presentZipCode` varchar(10) DEFAULT NULL,
  `presentRegion` varchar(100) DEFAULT NULL,
  `presentProvince` varchar(100) DEFAULT NULL,
  `presentMunicipality` varchar(100) DEFAULT NULL,
  `presentDswdHouseholdNumber` varchar(50) DEFAULT NULL,
  `sameAsPresentAddress` int(5) DEFAULT NULL,
  `permanentStreet` varchar(255) DEFAULT NULL,
  `permanentBarangay` varchar(100) DEFAULT NULL,
  `permanentZipCode` varchar(10) DEFAULT NULL,
  `permanentRegion` varchar(75) DEFAULT NULL,
  `permanentProvince` varchar(75) DEFAULT NULL,
  `permanentMunicipality` varchar(75) DEFAULT NULL,
  `permanentDswdHouseholdNumber` varchar(50) DEFAULT NULL,
  `solo_parent` int(5) DEFAULT NULL,
  `father_deceased` int(5) DEFAULT NULL,
  `father_family_name` varchar(100) DEFAULT NULL,
  `father_given_name` varchar(100) DEFAULT NULL,
  `father_middle_name` varchar(100) DEFAULT NULL,
  `father_ext` varchar(10) DEFAULT NULL,
  `father_nickname` varchar(50) DEFAULT NULL,
  `father_education` int(5) NOT NULL,
  `father_education_level` varchar(100) DEFAULT NULL,
  `father_last_school` varchar(100) DEFAULT NULL,
  `father_course` varchar(100) DEFAULT NULL,
  `father_year_graduated` varchar(10) DEFAULT NULL,
  `father_school_address` varchar(255) DEFAULT NULL,
  `father_contact` varchar(20) DEFAULT NULL,
  `father_occupation` varchar(100) DEFAULT NULL,
  `father_employer` varchar(100) DEFAULT NULL,
  `father_income` varchar(20) DEFAULT NULL,
  `father_email` varchar(100) DEFAULT NULL,
  `mother_deceased` int(5) DEFAULT NULL,
  `mother_family_name` varchar(100) DEFAULT NULL,
  `mother_given_name` varchar(100) DEFAULT NULL,
  `mother_middle_name` varchar(100) DEFAULT NULL,
  `mother_ext` varchar(10) DEFAULT NULL,
  `mother_nickname` varchar(50) DEFAULT NULL,
  `mother_education` int(5) NOT NULL,
  `mother_education_level` varchar(100) DEFAULT NULL,
  `mother_last_school` varchar(100) DEFAULT NULL,
  `mother_course` varchar(100) DEFAULT NULL,
  `mother_year_graduated` varchar(10) DEFAULT NULL,
  `mother_school_address` varchar(255) DEFAULT NULL,
  `mother_contact` varchar(20) DEFAULT NULL,
  `mother_occupation` varchar(100) DEFAULT NULL,
  `mother_employer` varchar(100) DEFAULT NULL,
  `mother_income` varchar(20) DEFAULT NULL,
  `mother_email` varchar(100) DEFAULT NULL,
  `guardian` varchar(100) DEFAULT NULL,
  `guardian_family_name` varchar(100) DEFAULT NULL,
  `guardian_given_name` varchar(100) DEFAULT NULL,
  `guardian_middle_name` varchar(100) DEFAULT NULL,
  `guardian_ext` varchar(20) DEFAULT NULL,
  `guardian_nickname` varchar(50) DEFAULT NULL,
  `guardian_address` varchar(255) DEFAULT NULL,
  `guardian_contact` varchar(20) DEFAULT NULL,
  `guardian_email` varchar(100) DEFAULT NULL,
  `annual_income` varchar(50) DEFAULT NULL,
  `schoolLevel` varchar(50) DEFAULT NULL,
  `schoolLastAttended` varchar(100) DEFAULT NULL,
  `schoolAddress` varchar(255) DEFAULT NULL,
  `courseProgram` varchar(100) DEFAULT NULL,
  `honor` varchar(100) DEFAULT NULL,
  `generalAverage` decimal(5,2) DEFAULT NULL,
  `yearGraduated` int(11) DEFAULT NULL,
  `schoolLevel1` varchar(50) DEFAULT NULL,
  `schoolLastAttended1` varchar(100) DEFAULT NULL,
  `schoolAddress1` varchar(255) DEFAULT NULL,
  `courseProgram1` varchar(100) DEFAULT NULL,
  `honor1` varchar(100) DEFAULT NULL,
  `generalAverage1` decimal(5,2) DEFAULT NULL,
  `yearGraduated1` int(11) DEFAULT NULL,
  `strand` varchar(100) DEFAULT NULL,
  `cough` int(11) DEFAULT NULL,
  `colds` int(11) DEFAULT NULL,
  `fever` int(11) DEFAULT NULL,
  `asthma` int(11) DEFAULT NULL,
  `faintingSpells` int(11) DEFAULT NULL,
  `heartDisease` int(11) DEFAULT NULL,
  `tuberculosis` int(11) DEFAULT NULL,
  `frequentHeadaches` int(11) DEFAULT NULL,
  `hernia` int(11) DEFAULT NULL,
  `chronicCough` int(11) DEFAULT NULL,
  `headNeckInjury` int(11) DEFAULT NULL,
  `hiv` int(11) DEFAULT NULL,
  `highBloodPressure` int(11) DEFAULT NULL,
  `diabetesMellitus` int(11) DEFAULT NULL,
  `allergies` int(11) DEFAULT NULL,
  `cancer` int(11) DEFAULT NULL,
  `smokingCigarette` int(11) DEFAULT NULL,
  `alcoholDrinking` int(11) DEFAULT NULL,
  `hospitalized` int(11) DEFAULT NULL,
  `hospitalizationDetails` varchar(255) DEFAULT NULL,
  `medications` varchar(255) DEFAULT NULL,
  `hadCovid` int(11) DEFAULT NULL,
  `covidDate` varchar(50) DEFAULT NULL,
  `vaccine1Brand` varchar(50) DEFAULT NULL,
  `vaccine1Date` varchar(50) DEFAULT NULL,
  `vaccine2Brand` varchar(50) DEFAULT NULL,
  `vaccine2Date` varchar(50) DEFAULT NULL,
  `booster1Brand` varchar(50) DEFAULT NULL,
  `booster1Date` varchar(50) DEFAULT NULL,
  `booster2Brand` varchar(50) DEFAULT NULL,
  `booster2Date` varchar(50) DEFAULT NULL,
  `chestXray` varchar(100) DEFAULT NULL,
  `cbc` varchar(100) DEFAULT NULL,
  `urinalysis` varchar(100) DEFAULT NULL,
  `otherworkups` varchar(255) DEFAULT NULL,
  `symptomsToday` int(11) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `termsOfAgreement` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `person_table`
--

INSERT INTO `person_table` (`person_id`, `profile_img`, `campus`, `academicProgram`, `classifiedAs`, `program`, `program2`, `program3`, `yearLevel`, `last_name`, `first_name`, `middle_name`, `extension`, `nickname`, `height`, `weight`, `lrnNumber`, `nolrnNumber`, `gender`, `pwdMember`, `pwdType`, `pwdId`, `birthOfDate`, `age`, `birthPlace`, `languageDialectSpoken`, `citizenship`, `religion`, `civilStatus`, `tribeEthnicGroup`, `cellphoneNumber`, `emailAddress`, `presentStreet`, `presentBarangay`, `presentZipCode`, `presentRegion`, `presentProvince`, `presentMunicipality`, `presentDswdHouseholdNumber`, `sameAsPresentAddress`, `permanentStreet`, `permanentBarangay`, `permanentZipCode`, `permanentRegion`, `permanentProvince`, `permanentMunicipality`, `permanentDswdHouseholdNumber`, `solo_parent`, `father_deceased`, `father_family_name`, `father_given_name`, `father_middle_name`, `father_ext`, `father_nickname`, `father_education`, `father_education_level`, `father_last_school`, `father_course`, `father_year_graduated`, `father_school_address`, `father_contact`, `father_occupation`, `father_employer`, `father_income`, `father_email`, `mother_deceased`, `mother_family_name`, `mother_given_name`, `mother_middle_name`, `mother_ext`, `mother_nickname`, `mother_education`, `mother_education_level`, `mother_last_school`, `mother_course`, `mother_year_graduated`, `mother_school_address`, `mother_contact`, `mother_occupation`, `mother_employer`, `mother_income`, `mother_email`, `guardian`, `guardian_family_name`, `guardian_given_name`, `guardian_middle_name`, `guardian_ext`, `guardian_nickname`, `guardian_address`, `guardian_contact`, `guardian_email`, `annual_income`, `schoolLevel`, `schoolLastAttended`, `schoolAddress`, `courseProgram`, `honor`, `generalAverage`, `yearGraduated`, `schoolLevel1`, `schoolLastAttended1`, `schoolAddress1`, `courseProgram1`, `honor1`, `generalAverage1`, `yearGraduated1`, `strand`, `cough`, `colds`, `fever`, `asthma`, `faintingSpells`, `heartDisease`, `tuberculosis`, `frequentHeadaches`, `hernia`, `chronicCough`, `headNeckInjury`, `hiv`, `highBloodPressure`, `diabetesMellitus`, `allergies`, `cancer`, `smokingCigarette`, `alcoholDrinking`, `hospitalized`, `hospitalizationDetails`, `medications`, `hadCovid`, `covidDate`, `vaccine1Brand`, `vaccine1Date`, `vaccine2Brand`, `vaccine2Date`, `booster1Brand`, `booster1Date`, `booster2Brand`, `booster2Date`, `chestXray`, `cbc`, `urinalysis`, `otherworkups`, `symptomsToday`, `remarks`, `termsOfAgreement`) VALUES
(1, '1_1by1_2025.jpg', 0, 'Undergraduate', 'Freshman (First Year)', '1', '6', '16', 'First Year', 'Does', 'Johncena15', 'MichaelHello', 'V', 'Johnny', '5\'11', '65kg', 'No LRN Number', 0, 0, 0, '', '', '2003-06-20', 21, 'Manila, Philippines', 'Tagalog, English', 'FILIPINO', 'Born Again', 'Single', 'Agta', '09171234567999999', '', '19 G Dona Yayang Street ', 'Libis', '1000', 'National Capital Region (NCR)', 'Metro Manila, Second District', 'Quezon City', 'DSWD123456', 0, '19 G Dona Yayang Street ', 'Libis', '1000', 'National Capital Region (NCR)', 'Metro Manila, Second District', 'Quezon City', 'DSWD123456', 0, 0, 'Doe Sr.', 'Jonathan', 'Smiths', 'III', 'Jon', 0, '', '', '', '', '', '09181234567', 'Engineer', 'ABC Corp', '50000', 'jon.doe@abc.com', 0, 'Jane', 'Mary', 'Anne', '', 'Janey', 0, '', '', '', '', '', '09221234567', 'Accountant', 'XYZ Corp', '100000', 'jane.doe@xyz.com', 'StepFather', 'Parker', 'Ben', 'Jose', 'IV', 'Benny', '789 Recto Av', '09192233445', '', '135,000 to 250,000', 'Senior High School', 'CGEAHS', 'Pasig City', 'STEM', 'With Honors', 92.50, 2022, 'Senior High School', 'CGEAHS', 'Rizal High School', 'Rizal High School', '0', 100.00, 0, 'Information and Communications Technology (ICT)', 1, NULL, NULL, 1, 1, NULL, 0, 0, NULL, 1, 1, NULL, 0, 0, NULL, 1, 1, NULL, NULL, 'Wala ngani', 'Vitamins C', 1, '2022-02-11', 'Pfizer', '2022-03-14', 'Pfizer', '2022-04-13', 'Moderna', '2022-07-14', 'Pfizer', '2023-01-14', 'Normal', 'Normal', 'Normal', 'Normal', 1, 'Fit to enroll', 1),
(3, '3_1by1_2025.jpg', 1, 'Techvoc', 'Freshman (First Year)', '7', '4', '3', 'First Year', 'Montano', 'Mark Anthony', 'p.', '', 'MARK', '5\'11', '65', '123456789012', NULL, 0, NULL, '', '', '2003-06-26', 21, 'Manila, Philippines', 'Tagalog, English', 'ALGERIAN', 'Iglesia Ni Cristo', 'Single', 'Cebuano', '09953242510', 'montano.ma.bsinfotech@gmail.com', '19 G Dona yayang Street Libis', 'Pag-asa', '4100', 'National Capital Region (NCR)', 'Metro Manila, Second District', 'City Of Mandaluyong', 'DSWD123456', NULL, '19 G Dona yayang Street Libis', 'Malipayon', '4100', 'Region X (Northern Mindanao)', 'Bukidnon', 'Pangantucan', 'DSWD123456', 0, 0, '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0.00, 0, '', '', '', '', '', 0.00, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0),
(59, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `requirements_table`
--

CREATE TABLE `requirements_table` (
  `id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `requirements_table`
--

INSERT INTO `requirements_table` (`id`, `description`) VALUES
(1, 'PSA Birth Certificate '),
(2, 'Form 138 (4th Quarter / No failing Grades)'),
(3, 'Certificate of Good Moral Character\n'),
(4, 'Copy of Vaccine Card (1st and 2nd Dose)');

-- --------------------------------------------------------

--
-- Table structure for table `requirement_uploads`
--

CREATE TABLE `requirement_uploads` (
  `upload_id` int(11) NOT NULL,
  `requirements_id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `requirement_uploads`
--

INSERT INTO `requirement_uploads` (`upload_id`, `requirements_id`, `person_id`, `file_path`, `created_at`) VALUES
(21, 3, 3, '/uploads/3_BirthCertificate_2025.jpg', '2025-07-08 05:53:40'),
(26, 1, 1, '/uploads/1_Form138_2025.jpg', '2025-07-09 03:17:34'),
(28, 3, 1, '/uploads/1_BirthCertificate_2025.jpg', '2025-07-09 03:20:46'),
(29, 4, 1, '/uploads/1_Form137_2025.jpg', '2025-07-09 03:20:53'),
(35, 2, 1, '/uploads/1_GoodMoralCharacter_2025.jpg', '2025-07-11 08:14:37'),
(36, 1, 35, '/uploads/35_Form138_2025.jpeg', '2025-07-11 17:31:31'),
(37, 4, 1, '/uploads/1_Unknown_2025.jpg', '2025-07-20 15:57:49');

-- --------------------------------------------------------

--
-- Table structure for table `user_accounts`
--

CREATE TABLE `user_accounts` (
  `user_id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'applicant'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_accounts`
--

INSERT INTO `user_accounts` (`user_id`, `person_id`, `email`, `password`, `role`) VALUES
(1, 8, 'ardenhello@gmail.com', '$2b$10$dxs3rjyLGQtPIeDpyeAUTOsViqjJWC6ZYb1uhlWSZLePjvPOj/qZ.', 'applicant'),
(2, 9, 'helloworld@gmail.com', '$2b$10$nFy87sT3nxNm86U2h68Q3u4kWEQaKX2RoNAvTE4hbr65833rNq8Qq', 'applicant'),
(3, 10, 'cedrick.delacruz@gmail.com', '$2b$10$iS690ZkAbnEK1d35JhonwO6RxEVsK9M.R4PkgHWiJHtvktwCAT642', 'applicant'),
(4, 11, 'cedrick.delacruz', '$2b$10$hiAlk6x24spR8Syk7jGOyOlsFnH3ztSyKij1hCn6laNYVE/E/rQGa', 'applicant'),
(6, 15, 'mecasio.a.bsinfotech@gmail.com', '$2b$10$1A/ryJsTy5Y7fMFGYjLmkeyr8LMAtqxlPxREG//Q4h9pp9uqHzYGu', 'applicant'),
(21, 30, 'ardenmecasio1211@gmail.com', '$2b$10$CwMDQ9trHjw2DLbz6mpD3ummXPTKGMNDdxFcXHRuTRm7iHS1okspa', 'applicant'),
(22, 31, 'arden13qwerty@gmail.com', '$2b$10$MLJOG7LqgmsxdP1dFbzfJeB7p0a0zWCTd0oodmK1Hg8G8DBPDm4E.', 'applicant'),
(23, 32, 'rafaelkennethsaluba@gmail.com', '$2b$10$WFqoon2ZpoTehDeAdTYtjuE5I2IhrP7lKYBecjFnNOTV2GM82HRQ.', 'applicant'),
(24, 33, 'ardenhello123@gmail.com', '$2b$10$H2DNHN9ZbbU7bnrO24T65eTF.BLiBwWvdFXNLeFmhrnpASwwj3Wcy', 'applicant'),
(25, 34, 'freddiellove9@gmail.com', '$2b$10$ouU4m5BvmMPtPacCR1c/Z.Jw3PzWkm7NoMVAw/btg6/OVBy/AHoli', 'applicant'),
(26, 35, 'helloarden@gmail.com', '$2b$10$YVNJgFT27RZlhF7pKaBJge8hIIQlDptxGnCDvemt.NxisJ9PZ6T1C', 'applicant'),
(28, 1, 'disanjose@gmail.com', '$2b$10$EXnLzbWbGpEi2Jl3klENyeHzwLPLUm18GFb9HkbQVoU2.VmruMBdG', 'applicant'),
(29, 2, 'genny@gmail.com', '$2b$10$VviAvvo6XPsFRASrP5y1meiGeFTjU1h3UaALYivW7CMY/72piefBa', 'applicant'),
(45, 61, 'markmontano522@gmail.com', '$2b$10$2a6aA.cacvxT/FfxN8lBI..QzOYYP2J8CuqKflBV5ZTnkcDRRA/Ea', 'applicant');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `exam_applicants`
--
ALTER TABLE `exam_applicants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_schedule`
--
ALTER TABLE `exam_schedule`
  ADD PRIMARY KEY (`exam_id`);

--
-- Indexes for table `person_status_table`
--
ALTER TABLE `person_status_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `person_table`
--
ALTER TABLE `person_table`
  ADD PRIMARY KEY (`person_id`);

--
-- Indexes for table `requirements_table`
--
ALTER TABLE `requirements_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requirement_uploads`
--
ALTER TABLE `requirement_uploads`
  ADD PRIMARY KEY (`upload_id`);

--
-- Indexes for table `user_accounts`
--
ALTER TABLE `user_accounts`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `person_id` (`person_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `exam_applicants`
--
ALTER TABLE `exam_applicants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `exam_schedule`
--
ALTER TABLE `exam_schedule`
  MODIFY `exam_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `person_status_table`
--
ALTER TABLE `person_status_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `person_table`
--
ALTER TABLE `person_table`
  MODIFY `person_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `requirements_table`
--
ALTER TABLE `requirements_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `requirement_uploads`
--
ALTER TABLE `requirement_uploads`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `user_accounts`
--
ALTER TABLE `user_accounts`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
