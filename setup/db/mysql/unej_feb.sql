-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 29, 2026 at 12:15 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `unej_feb`
--

-- --------------------------------------------------------

--
-- Table structure for table `accreditation`
--

CREATE TABLE `accreditation` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `accredited` varchar(255) NOT NULL,
  `accredited_by` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `major_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT (now()),
  `level` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `accreditation`
--

INSERT INTO `accreditation` (`id`, `name`, `accredited`, `accredited_by`, `start_date`, `end_date`, `attachment`, `major_id`, `created_at`, `level`) VALUES
(1, 'Doctor of Management', 'Very Good', 'LAMEMBA', '2024-01-05', '2028-11-21', NULL, NULL, '2026-03-22 09:41:35', NULL),
(2, 'Bachelor of Management', 'Excellence', 'FIBAA', '2023-09-20', '2028-09-20', NULL, NULL, '2026-03-22 09:41:35', NULL),
(3, 'Bachelor of Development Economics', 'Excellence', 'FIBAA', '2023-09-20', '2028-09-19', NULL, NULL, '2026-03-22 09:41:35', NULL),
(4, 'Bachelor of Accounting', 'Excellence', 'FIBAA', '2023-09-20', '2028-09-19', NULL, NULL, '2026-03-22 09:41:35', NULL),
(5, 'Master of Management', 'Excellence', 'LAMEMBA', '2023-04-10', '2028-04-10', NULL, NULL, '2026-03-22 09:41:35', NULL),
(6, 'Master of Accounting', 'Excellence', 'LAMEMBA', '2023-03-20', '2028-03-20', NULL, NULL, '2026-03-22 09:41:35', NULL),
(7, 'Study Program of Accounting Diploma', 'Excellence', 'LAMEMBA', '2023-03-16', '2028-03-16', NULL, NULL, '2026-03-22 09:41:35', NULL),
(8, 'Bachelor of Management', 'Excellence', 'LAMEMBA', '2023-03-16', '2028-03-16', NULL, NULL, '2026-03-22 09:41:35', NULL),
(9, 'Doctor of Economics', 'Very Good', 'LAMEMBA', '2022-12-31', '2027-12-31', NULL, NULL, '2026-03-22 09:41:35', NULL),
(10, 'Bachelor of Accounting', 'Excellence', 'LAMEMBA', '2022-12-31', '2027-12-31', NULL, NULL, '2026-03-22 09:41:35', NULL),
(11, 'Study Program of Financial Administration', 'A', 'BAN-PT', '2022-10-11', '2027-10-11', NULL, NULL, '2026-03-22 09:41:35', NULL),
(12, 'Master of Economics', 'Excellence', 'LAMEMBA', '2022-10-10', '2027-10-10', NULL, NULL, '2026-03-22 09:41:35', NULL),
(13, 'Study Program of Secretary', 'Very Good', 'BAN-PT', '2022-07-05', '2027-07-05', NULL, NULL, '2026-03-22 09:41:35', NULL),
(14, 'Study Program of Secretary', 'Very Good', 'BAN-PT', '2022-07-05', '2027-07-05', NULL, NULL, '2026-03-22 09:41:35', NULL),
(15, 'Study Program of Company Management', 'A', 'BAN-PT', '2020-11-17', '2025-11-17', NULL, NULL, '2026-03-22 09:41:35', NULL),
(16, 'Study Program of Company Management', 'Excellence', 'BAN-PT', '2024-04-16', '2025-11-17', NULL, NULL, '2026-03-22 09:41:35', NULL),
(17, 'Bachelor of Sharia Economics', 'B', 'BAN-PT', '2020-08-25', '2025-08-25', NULL, NULL, '2026-03-22 09:41:35', NULL),
(18, 'Doctor of Management', 'B', 'BAN-PT', '2018-11-21', '2023-11-21', NULL, NULL, '2026-03-22 09:41:35', NULL),
(19, 'Master of Management', 'A', 'BAN-PT', '2018-04-03', '2023-04-03', NULL, NULL, '2026-03-22 09:41:35', NULL),
(20, 'Master of Accounting', 'B', 'B', '2018-03-20', '2023-03-20', NULL, NULL, '2026-03-22 09:41:35', NULL),
(21, 'Doctor of Economics', 'B', 'BAN-PT', '2018-02-27', '2023-02-27', NULL, NULL, '2026-03-22 09:41:35', NULL),
(22, 'Bachelor of Development Economics', 'A', 'LAMEMBA', '2022-06-20', '2022-12-20', NULL, NULL, '2026-03-22 09:41:35', NULL),
(23, 'Bachelor of Accounting', 'A', 'LAMEMBA', '2022-05-09', '2022-12-09', NULL, NULL, '2026-03-22 09:41:35', NULL),
(24, 'Bachelor of Management', 'A', 'LAMEMBA', '2022-05-23', '2022-11-23', NULL, NULL, '2026-03-22 09:41:35', NULL),
(25, 'Master of Economics', 'A', 'BAN-PT', '2017-10-10', '2022-10-10', NULL, NULL, '2026-03-22 09:41:35', NULL),
(26, 'Study Program of Financial Administration', 'A', 'BAN-PT', '2017-10-10', '2022-10-10', NULL, NULL, '2026-03-22 09:41:35', NULL),
(27, 'Study Program of Secretary', 'B', 'BAN-PT', '2017-07-04', '2022-07-04', NULL, NULL, '2026-03-22 09:41:35', NULL),
(28, 'Bachelor of Development Economics', 'A', 'BAN-PT', '2017-06-20', '2022-06-20', NULL, NULL, '2026-03-22 09:41:35', NULL),
(29, 'Study Program of Accounting Diploma', 'A', 'BAN-PT', '2017-08-29', '2022-06-20', NULL, NULL, '2026-03-22 09:41:35', NULL),
(30, 'Bachelor of Management', 'A', 'BAN-PT', '2017-05-23', '2022-05-23', NULL, NULL, '2026-03-22 09:41:35', NULL),
(31, 'Bachelor of Accounting', 'A', 'BAN-PT', '2017-05-09', '2022-05-09', NULL, NULL, '2026-03-22 09:41:35', NULL),
(32, 'Study Program of Company Management', 'B', 'BAN-PT', '2015-05-30', '2020-05-30', NULL, NULL, '2026-03-22 09:41:35', NULL),
(33, 'Master of Management', 'A', 'BAN-PT', '2013-02-07', '2018-02-07', NULL, NULL, '2026-03-22 09:41:35', NULL),
(34, 'Study Program of Financial Administration', 'B', 'BAN-PT', '2012-01-20', '2017-01-20', NULL, NULL, '2026-03-22 09:41:35', NULL),
(35, 'Study Program of Accounting Diploma', 'B', 'BAN-PT', '2012-01-20', '2017-01-20', NULL, NULL, '2026-03-22 09:41:35', NULL),
(36, 'Bachelor of Development Economics', 'A', 'BAN-PT', '2012-01-13', '2017-01-13', NULL, NULL, '2026-03-22 09:41:35', NULL),
(37, 'Master of Economics', '-', 'BAN-PT', '2012-01-06', '2017-01-06', NULL, NULL, '2026-03-22 09:41:35', NULL),
(38, 'Bachelor of Management', 'A', 'BAN-PT', '2011-12-29', '2016-12-29', NULL, NULL, '2026-03-22 09:41:35', NULL),
(39, 'Bachelor of Accounting', 'B', 'BAN-PT', '2011-11-18', '2016-11-18', NULL, NULL, '2026-03-22 09:41:35', NULL),
(40, 'Study Program of Secretary', 'C', 'BAN-PT', '2011-11-11', '2016-11-11', NULL, NULL, '2026-03-22 09:41:35', NULL),
(41, 'Bachelor of Development Economics', 'B', 'BAN-PT', '2006-09-07', '2011-09-07', NULL, NULL, '2026-03-22 09:41:35', NULL),
(42, 'Study Program of Accounting Diploma', 'B', 'BAN-PT', '2006-09-01', '2011-09-01', NULL, NULL, '2026-03-22 09:41:35', NULL),
(43, 'Bachelor of Management', 'A', 'BAN-PT', '2006-07-27', '2011-07-27', NULL, NULL, '2026-03-22 09:41:35', NULL),
(44, 'Bachelor of Accounting', 'B', 'BAN-PT', '2006-07-13', '2011-07-13', NULL, NULL, '2026-03-22 09:41:35', NULL),
(45, 'Bachelor of Development Economics', 'B', 'BAN-PT', '2000-08-10', '2005-08-10', NULL, NULL, '2026-03-22 09:41:35', NULL),
(46, 'Study Program of Company Management', '-', 'DIRJEN PENDIDIKAN', '1990-11-01', '1995-11-01', NULL, NULL, '2026-03-22 09:41:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `degrees`
--

CREATE TABLE `degrees` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `degree_code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT (now())
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `degrees`
--

INSERT INTO `degrees` (`id`, `name`, `degree_code`, `created_at`) VALUES
(1, 'Bachelor', 'bachelor', '2026-03-20 02:53:48'),
(2, 'Diploma', 'diploma', '2026-03-20 02:56:28'),
(3, 'Master', 'master', '2026-03-20 02:56:49'),
(4, 'Doctoral', 'doctoral', '2026-03-20 02:56:59');

-- --------------------------------------------------------

--
-- Table structure for table `lectures`
--

CREATE TABLE `lectures` (
  `id` int NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `name` varchar(60) NOT NULL,
  `nip` varchar(20) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `academic_level` varchar(60) DEFAULT NULL,
  `research_interest` varchar(255) DEFAULT NULL,
  `sinta_id` varchar(20) DEFAULT NULL,
  `scopus_id` varchar(20) DEFAULT NULL,
  `attachments` text,
  `front_title` varchar(20) DEFAULT NULL,
  `back_title` varchar(100) DEFAULT NULL,
  `nidn` varchar(20) DEFAULT NULL,
  `nuptk` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT (now())
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `lectures`
--

INSERT INTO `lectures` (`id`, `photo`, `name`, `nip`, `email`, `academic_level`, `research_interest`, `sinta_id`, `scopus_id`, `attachments`, `front_title`, `back_title`, `nidn`, `nuptk`, `created_at`) VALUES
(1, 'https://placehold.co/300x400', 'Dhian Kristantiningtyas, S.E, M.Ak.', '199410082025062006', '1774785727722@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(2, 'https://placehold.co/300x400', 'Dhealelia Munandari, S.M., M.SM.', '199901082025062008', '1774785727722@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(3, 'https://placehold.co/300x400', 'Rinda Andriana, S.M, M.SM', '200109082025062017', '1774785727723@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(4, 'https://placehold.co/300x400', 'Akbar Fathoni Husena, M.B.A.', '199606092025061004', '1774785727723@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(5, 'https://placehold.co/300x400', 'Muhammad Ilham Naufal, S.A, MBA.', '199212052025061004', '1774785727723@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(6, 'https://placehold.co/300x400', 'Deki Zulkarnain, S.AB., M.Si.', '199108242025061002', '1774785727724@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(7, 'https://placehold.co/300x400', 'Mohammad Iqbal Fawzi, S.E., M.B.A', '199708062025061008', '1774785727724@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(8, 'https://placehold.co/300x400', 'Kurniasari Novi Hardanti, SE.,MSA', '199011072025062005', '1774785727724@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(9, 'https://placehold.co/300x400', 'Sandy Kuswara,M.S.Ak', '199003302025061001', '1774785727725@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(10, 'https://placehold.co/300x400', 'Dimas Luhung Prakoso, S.E., M.S.Ak.', '199107152025061002', '1774785727725@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(11, 'https://placehold.co/300x400', 'Eka Andri Kurniawan,S.E., M.Sc.', '199605222025061006', '1774785727725@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(12, 'https://placehold.co/300x400', 'Misbahol Yaqin,S.E M.S.E', '199805172025061007', '1774785727725@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(13, 'https://placehold.co/300x400', 'Meisyaroh Catur Wulandari,M.E.', '199905052025062013', '1774785727726@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(14, 'https://placehold.co/300x400', 'Nadiah Sabrina Himam,M.E.', '199512292025062006', '1774785727726@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(15, 'https://placehold.co/300x400', 'Mohamad Rifqi Fathoni,S.E., M.SEI', '199702102025061007', '1774785727726@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(16, 'https://placehold.co/300x400', 'Eka Puspa Dewi, S.E., M.SEI', '199711192025062010', '1774785727726@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(17, 'https://placehold.co/300x400', 'Sandi Agus, S.Kom.', '197105172005012002', '1774785727727@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(18, 'https://placehold.co/300x400', 'Prof. Dr. Isti Fadah, M.Si., CRA., CMA.', '196610201990022001', '1774785727727@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(19, 'https://placehold.co/300x400', 'Dr. Siti Maria Wardayati, M.Si, Ak.CA,CPA.', '196608051992012001', '1774785727727@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(20, 'https://placehold.co/300x400', 'Dr. Regina Niken Wilantari, S.E., M.Si.', '197409132001122001', '1774785727727@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(21, 'https://placehold.co/300x400', 'Dr. Markus Apriono, MM.', '196404041989021001', '1774785727728@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(22, 'https://placehold.co/300x400', 'Prof. Dr. Mohammad Saleh, S.E., M.Sc.', '195608311984031002', '1774785727728@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(23, 'https://placehold.co/300x400', 'Prof. Dr. Ahmad Roziq, S.E., M.M., Ak.', '197004281997021001', '1774785727728@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(24, 'https://placehold.co/300x400', 'Prof. Dr. Raden Andi Sularso, MSM.', '196004131986031002', '1774785727729@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(25, 'https://placehold.co/300x400', 'Prof. Dr. Diah Yulisetiarini, Dra. M.Si.', '196107291986032001', '1774785727729@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(26, 'https://placehold.co/300x400', 'Prof. Dr. Sumani, S.E., M.Si., CRA.', '196901142005011002', '1774785727730@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(27, 'https://placehold.co/300x400', 'Prof. Dr. Alwan Sri Kustono, S.E, M.Si, Ak.', '197204162001121001', '1774785727730@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(28, 'https://placehold.co/300x400', 'Dr. Muhammad Miqdad, S.E., M.M., Ak.', '197107271995121001', '1774785727730@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(29, 'https://placehold.co/300x400', 'Prof. Dr. Zainuri, M.Si.', '196403251989021001', '1774785727731@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(30, 'https://placehold.co/300x400', 'Dr. Sebastiana Viphindrartin, M.Kes', '196411081989022001', '1774785727731@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(31, 'https://placehold.co/300x400', 'Dra. Nanik Istiyani, M.Si', '196101221987022002', '1774785727732@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(32, 'https://placehold.co/300x400', 'Dr. Moehammad Fathorrazi, M.Si.', '196306141990021001', '1774785727732@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(33, 'https://placehold.co/300x400', 'Dr. Agus Luthfi, M.Si.', '196505221990021001', '1774785727732@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(34, 'https://placehold.co/300x400', 'Dr. Moh. Adenan, MM,', '196610311992031001', '1774785727733@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(35, 'https://placehold.co/300x400', 'Dr. Anifatul Hanim, M.Si', '196507301991032001', '1774785727734@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(36, 'https://placehold.co/300x400', 'Aisah Jumiati, S.E,. M.P', '196809261994032002', '1774785727734@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(37, 'https://placehold.co/300x400', 'Dr. Herman Cahyo Diartho, S.E., M.P', '197207131999031001', '1774785727734@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(38, 'https://placehold.co/300x400', 'Dr. Siti Komariyah, S.E., M.Si.', '197106102001122002', '1774785727735@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(39, 'https://placehold.co/300x400', 'Dr. Lilis Yuliati, S.E., M.Si.', '196907181995122001', '1774785727735@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(40, 'https://placehold.co/300x400', 'Adhitya Wardhono, S.E., M.Si., M.Sc., Ph.D.', '197109051998021001', '1774785727735@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(41, 'https://placehold.co/300x400', 'Dr. Yulia Indrawati, S.E., M.Si.', '197707302001122003', '1774785727736@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(42, 'https://placehold.co/300x400', 'Dr. Duwi Yunitasari, S.E., M.E.', '197806162003122001', '1774785727736@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(43, 'https://placehold.co/300x400', 'Dr. Ciplis Gema Qori\'ah, S.E., M.Sc', '197707142008122003', '1774785727737@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(44, 'https://placehold.co/300x400', 'Dr. Edy Santoso, S.E., M.Sc', '197511052008121001', '1774785727737@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(45, 'https://placehold.co/300x400', 'Fivien Muslihatinningsih, S.E., M.Si', '198301162008122001', '1774785727738@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(46, 'https://placehold.co/300x400', 'Dr. Endah Kurnia Lestari, S.E., M.E.', '197804142001122003', '1774785727738@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(47, 'https://placehold.co/300x400', 'Fajar Wahyu Prianto, S.E., M.E.', '198103302005011003', '1774785727739@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(48, 'https://placehold.co/300x400', 'M. Abd. Nasir, S.E., M.Sc.', '199005172015041001', '1774785727739@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(49, 'https://placehold.co/300x400', 'Dra. Sudarsih, M.Si', '196212121992012001', '1774785727740@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(50, 'https://placehold.co/300x400', 'Dr. Hari Sukarno, M.M., CRA., CSF.', '196105301988021001', '1774785727740@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(51, 'https://placehold.co/300x400', 'Hadi Paramu, S.E., MBA., Ph.D.', '196901201993031002', '1774785727741@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(52, 'https://placehold.co/300x400', 'Dr. Bambang Irawan, M.Si.', '196103171988021001', '1774785727741@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(53, 'https://placehold.co/300x400', 'Drs. Agus Priyono, M.M.', '196010161987021001', '1774785727741@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(54, 'https://placehold.co/300x400', 'Dr. Purnamie Titisari, S.E., M.Si., QIA., CRA', '197501062000032001', '1774785727742@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(55, 'https://placehold.co/300x400', 'Prof. Dr. Elok Sri Utami, M.Si.', '196412281990022001', '1774785727742@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(56, 'https://placehold.co/300x400', 'Dr. Nurhayati, M.M.', '196106071987022001', '1774785727742@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(57, 'https://placehold.co/300x400', 'Dra. Susanti Prasetiyaningtiyas, M.Si', '196609181992032002', '1774785727743@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:07'),
(58, 'https://placehold.co/300x400', 'Dr. Diana Sulianti K. Tobing, SE., M.Si., CRA., CMA.', '197412122000122001', '1774785727744@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(59, 'https://placehold.co/300x400', 'Drs. Sudaryanto, MBA, Ph.D., CMA.', '196604081991031001', '1774785727744@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(60, 'https://placehold.co/300x400', 'Dr. Handriyono, M.Si', '196208021990021001', '1774785727745@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(61, 'https://placehold.co/300x400', 'Dr.Sri Wahyu Lelly Hana Setyanti, S.E., M.Si.', '197405022000032001', '1774785727746@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(62, 'https://placehold.co/300x400', 'Drs. Ketut Indraningrat, M.Si', '196107101989021002', '1774785727746@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(63, 'https://placehold.co/300x400', 'Dra. Lilik Farida, M.Si', '196311281989022001', '1774785727747@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(64, 'https://placehold.co/300x400', 'Drs. Marmono Singgih, M.Si., AFA., CRA.', '196609041990021001', '1774785727747@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(65, 'https://placehold.co/300x400', 'Prof. Dr. Novi Puspitasari, S.E., M.M', '198012062005012001', '1774785727748@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(66, 'https://placehold.co/300x400', 'Drs. Nyoman Gede Krishnabudi, M.Agb.', '196304021988021001', '1774785727748@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(67, 'https://placehold.co/300x400', 'Dra. Dewi Prihatini, M.M., Ph.D.', '196903291993032001', '1774785727749@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(68, 'https://placehold.co/300x400', 'Dr. Deasy Wulandari, S.E., M.Si.', '197309082000032001', '1774785727749@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(69, 'https://placehold.co/300x400', 'Drs. Eka Bambang Gusminto, M.M.', '196702191992031001', '1774785727749@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(70, 'https://placehold.co/300x400', 'Dr. Intan Nurul Awwaliyah S.E., M.Sc.', '197605082002122003', '1774785727750@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(71, 'https://placehold.co/300x400', 'Ana Mufidah, S.E., M.M', '198002012005012001', '1774785727750@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(72, 'https://placehold.co/300x400', 'Chairul Saleh, S.E., M.Si.', '196903061999031001', '1774785727751@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(73, 'https://placehold.co/300x400', 'N. Ari Subagio, S.E., M.Si.', '197311092000031002', '1774785727751@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(74, 'https://placehold.co/300x400', 'Gusti Ayu Wulandari, S.E., M.M,', '198309122008122001', '1774785727751@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(75, 'https://placehold.co/300x400', 'Dr. Mochammad Farid Afandi, S.E., M.Si', '197912272008121002', '1774785727752@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(76, 'https://placehold.co/300x400', 'Ema Desia Prajitiasari, S.E., M.M.', '197912212008122002', '1774785727752@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(77, 'https://placehold.co/300x400', 'Fajar Destari, S.E, M.M.', '197912062015042001', '1774785727753@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(78, 'https://placehold.co/300x400', 'Cempaka Paramita, S.E, M.Sc.', '198601092015042002', '1774785727753@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(79, 'https://placehold.co/300x400', 'Kristian Suhartadi Widi Nugraha., S.E, M.M', '198609172015041001', '1774785727753@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(80, 'https://placehold.co/300x400', 'Dr. Arnis Budi Susanto, S.E, M.Si', '198204152023211015', '1774785727754@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(81, 'https://placehold.co/300x400', 'Dr. Ririn Irmadariyani, M.Si., Ak.', '196701021992032002', '1774785727754@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(82, 'https://placehold.co/300x400', 'Drs. Sudarno, M.Si., Ak, CA, CSRS, CSRA', '196012251989021001', '1774785727755@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(83, 'https://placehold.co/300x400', 'Dr. Yosefa Sayekti, S.E., M.Com.', '196408091990032001', '1774785727755@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(84, 'https://placehold.co/300x400', 'Rochman Effendi, S.E., M.Si., Ak.', '197102172000031001', '1774785727755@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(85, 'https://placehold.co/300x400', 'Dr. Agung Budi Sulistiyo, SE, MSi, Ak,', '197809272001121002', '1774785727756@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(86, 'https://placehold.co/300x400', 'Dr. Whedy Prasetyo, S.E., M.SA., Ak,', '197705232008011012', '1774785727756@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(87, 'https://placehold.co/300x400', 'Taufik Kurrohman, S.E., M.SA, Ak. Ph.D', '198207232005011002', '1774785727757@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(88, 'https://placehold.co/300x400', 'Dr. Hendrawan Santosa Putra, S.E., M.Si., Ak.', '197405062002121006', '1774785727757@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(89, 'https://placehold.co/300x400', 'Novi Wulandari W, S.E., M.Acc&Fin., Ak.', '198011272005012003', '1774785727758@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(90, 'https://placehold.co/300x400', 'Dr. Wahyu Agus Winarno, S.E., M.Sc., Ak.', '198308102006041001', '1774785727758@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(91, 'https://placehold.co/300x400', 'Dr. Nining Ika Wahyuni, S.E. M.Sc, Ak.', '198306242006042001', '1774785727758@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(92, 'https://placehold.co/300x400', 'Dr. Alfi Arif, SE., M.AK., Ak.', '197210041999031001', '1774785727759@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(93, 'https://placehold.co/300x400', 'Ahmad Ahsin Kusuma M, S.E., M.Si', '196306061998021001', '1774785727759@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(94, 'https://placehold.co/300x400', 'Kartika, S.E., M.Sc, Ak.', '198202072008122002', '1774785727759@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(95, 'https://placehold.co/300x400', 'Nur Hisamuddin, S.E. M.SA, Ak, CA, CSRS', '197910142009121001', '1774785727760@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(96, 'https://placehold.co/300x400', 'Andriana, S.E, M.Sc, Ak.', '198209292010122002', '1774785727760@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(97, 'https://placehold.co/300x400', 'Bunga Maharani, S.E, M.SA,', '198503012010122005', '1774785727760@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(98, 'https://placehold.co/300x400', 'Aisa Tri Agustini, SE.M.Sc., CPA', '198808032014042002', '1774785727761@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(99, 'https://placehold.co/300x400', 'Moch. Shulthoni, S.E, MSA., CSRS, CSRA', '198007072015041002', '1774785727761@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(100, 'https://placehold.co/300x400', 'Dewi Ayu Puspita, S.E, MSA, Ak.', '198602162015042003', '1774785727761@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(101, 'https://placehold.co/300x400', 'Indah Purnamawati, S.E., M.Si., Ak', '196910111997022001', '1774785727762@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(102, 'https://placehold.co/300x400', 'Septarina Prita Dania Sofianti, MSA, S.E., Ak,', '198209122006042002', '1774785727762@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(103, 'https://placehold.co/300x400', 'Oktaviani Ari Wardhaningrum, S.E., M.Sc', '199210202023212051', '1774785727762@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(104, 'https://placehold.co/300x400', 'Agus Mahardiyanto, S.E., M.A.', '199108172023211032', '1774785727762@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(105, 'https://placehold.co/300x400', 'Akhmad Munir S.,Th.I.,MA.,', '197812252024211002', '1774785727763@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(106, 'https://placehold.co/300x400', 'Suparman, S.Ag.,M.HI', '197705212024211003', '1774785727763@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(107, 'https://placehold.co/300x400', 'Lusiana Ulfa Hardinawati, S.EI., M.Si.', '199203012023212046', '1774785727764@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(108, 'https://placehold.co/300x400', 'Resha Dwi Ayu Pangesti Mulyono, S.E., M.A., Ak.', '199207092023212048', '1774785727764@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(109, 'https://placehold.co/300x400', 'Eza Gusti Anugerah, S.E., M.S.A', '199208162022031013', '1774785727764@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(110, 'https://placehold.co/300x400', 'Abdul Fatah, Lc., M.SEI', '198704082023211013', '1774785727764@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(111, 'https://placehold.co/300x400', 'Bayu Aprillianto, S.E., M.Akun.', '199204052019031018', '1774785727765@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(112, 'https://placehold.co/300x400', 'Alif Mirzania, S.E., MBA.', '199206172019032021', '1774785727765@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(113, 'https://placehold.co/300x400', 'Khanifatul Khusna, S.Sos., M.PSDM.', '199110182019032016', '1774785727765@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(114, 'https://placehold.co/300x400', 'Salma Fauziyyah, S.E., M.M.', '199206212019032024', '1774785727766@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(115, 'https://placehold.co/300x400', 'Abdul Muhsyi, S.Kom., MMSI.', '199102282019031022', '1774785727766@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(116, 'https://placehold.co/300x400', 'Almas Farah Dinna Dewi,S.E.,M.M', '199103012022032008', '1774785727766@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(117, 'https://placehold.co/300x400', 'Rachmania Nurul Fitri Amijaya, S.E., M.SEI.', '199308122022032019', '1774785727767@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(118, 'https://placehold.co/300x400', 'Musa Al Kadzim, S.Ag., M.Ag.', '199410112023211015', '1774785727767@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(119, 'https://placehold.co/300x400', 'Okyviandi Putra Erlangga, S.EI., M.SEI.', '199210152023211027', '1774785727768@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(120, 'https://placehold.co/300x400', 'Suryaning Bawono, S.E., M.Si.', '199011172025061003', '1774785727768@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(121, 'https://placehold.co/300x400', 'Tria Putri Noviasari, S.E., M.Sc.', '199511212023212037', '1774785727768@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(122, 'https://placehold.co/300x400', 'Mohammad Zeqi Yasin,S.E., M.Sc', '199509292022031007', '1774785727769@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(123, 'https://placehold.co/300x400', 'Galih Wicaksono S.E.,M.Si.,Akt.,CA.,BKP', '198603112015041001', '1774785727769@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(124, 'https://placehold.co/300x400', 'Venantya Asmandani S.E., M.A.', '760018035', '1774785727769@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(125, 'https://placehold.co/300x400', 'Inayah Swasti Ratih, M.SEI.', '199301182023212038', '1774785727770@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(126, 'https://placehold.co/300x400', 'Robby Reza Zulfikri, S.E.,M.E', '199308312023211017', '1774785727770@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(127, 'https://placehold.co/300x400', 'Sjafruddin, M.E', '198311182023211010', '1774785727770@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(128, 'https://placehold.co/300x400', 'Bahrina Almas, S.E., M.SEI.', '199307022023212027', '1774785727770@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(129, 'https://placehold.co/300x400', 'Hendrik Tri Oktaviansyah, S.E.,M.Akun', '199010272023211029', '1774785727771@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(130, 'https://placehold.co/300x400', 'Fauziyah Azzahro.,S,Ak.,M.Ak', '3509195106990004', '1774785727771@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(131, 'https://placehold.co/300x400', 'Julian Adam Ridjal, S.P.,M.P', '198207102008121003', '1774785727771@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(132, 'https://placehold.co/300x400', 'Dr. Dwi Perwitasari Wiryaningtyas S.E., M.M.', '198808192024212023', '1774785727771@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(133, 'https://placehold.co/300x400', 'Salahuddin Rijal Arifin S.EI. M.SM.', '199209252024061001', '1774785727771@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(134, 'https://placehold.co/300x400', 'Rizky Atika Salsabila Ivabianca Putri M.M.', '199912282024062002', '1774785727772@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(135, 'https://placehold.co/300x400', 'Dichi Febrian Putra S.E. M.Sc.', '199102142024061001', '1774785727772@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(136, 'https://placehold.co/300x400', 'Gerrinko Giffari Wurintara', '123', '1774785727772@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(137, 'https://placehold.co/300x400', 'Dianidza Arodha, M.E.', '199603262024062001', '1774785727772@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(138, 'https://placehold.co/300x400', 'Linda Suci Wahyuni SS.,MA', '3509195603830004', '1774785727773@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(139, 'https://placehold.co/300x400', 'Priyo Widodo S.Pd., M.Pd.', '3509300106820003', '1774785727773@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(140, 'https://placehold.co/300x400', 'Hadi Sampurna, S.S., M.A.', '0', '1774785727773@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(141, 'https://placehold.co/300x400', 'Ilzam Mahfudurido S.Pd, M.Li', '0', '1774785727774@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(142, 'https://placehold.co/300x400', 'Ra\'iyatu Imadidin,M.Si.', '199202162024062001', '1774785727774@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(143, 'https://placehold.co/300x400', 'Vanya Pinkan Maridelana, SP.,MBA', '199104132024062001', '1774785727775@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(144, 'https://placehold.co/300x400', 'Elisabeth Fransiska Sibarani, S.E., M.SM.', '199301012024062002', '1774785727775@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(145, 'https://placehold.co/300x400', 'Imamatin Listya Putri, S.E., M.Akun.', '198905242024062002', '1774785727775@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(146, 'https://placehold.co/300x400', 'Aulia Rahmadiani Negoro, S.E., M.Sc.', '199607132024062001', '1774785727776@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(147, 'https://placehold.co/300x400', 'Husnunnida Maharani, S.E., M.S.A.', '199306202024062001', '1774785727776@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(148, 'https://placehold.co/300x400', 'Nur Awali Khoirunnisa, S.E., M.E.', '199705032024062002', '1774785727776@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(149, 'https://placehold.co/300x400', 'Ghanesya Hari Murti, S.S., M.Hum.', '0', '1774785727777@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 12:02:08'),
(150, 'https://placehold.co/300x400', 'Ika Barokah Suryaningsih', '197805252003122002', '1774786188904@lecture.feb.unej.com', NULL, NULL, NULL, NULL, NULL, 'Prof. Dr.', 'S.E., M.M., CPIA., CHRM., CRP., QIA.', NULL, NULL, '2026-03-29 12:09:48');

-- --------------------------------------------------------

--
-- Table structure for table `majors`
--

CREATE TABLE `majors` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `major_code` varchar(255) NOT NULL,
  `degree_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT (now())
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `majors`
--

INSERT INTO `majors` (`id`, `name`, `major_code`, `degree_id`, `created_at`) VALUES
(1, 'Accounting', 'accounting', 1, '2026-03-20 03:02:47'),
(2, 'Management', 'management', 1, '2026-03-20 03:03:10'),
(3, 'Development Economics', 'development_economics', 1, '2026-03-20 03:04:09'),
(4, 'Sharia Econimics', 'sharia_economics', 1, '2026-03-20 03:04:36'),
(5, 'Company Management', 'company_management', 2, '2026-03-20 03:05:25'),
(6, 'Financial Administration', 'financial_administration', 2, '2026-03-20 03:06:08'),
(7, 'Secretary', 'secretary', 2, '2026-03-20 03:06:58'),
(8, 'Accounting', 'accounting', 2, '2026-03-20 03:07:22'),
(9, 'Economics', 'economics', 3, '2026-03-20 03:08:01'),
(10, 'Management', 'management', 3, '2026-03-20 03:08:29'),
(11, 'Accounting', 'accounting', 3, '2026-03-20 03:08:41'),
(12, 'Accounting', 'accounting', 4, '2026-03-20 03:09:04'),
(13, 'Management', 'management', 4, '2026-03-20 03:09:24'),
(14, 'Economics', 'economics', 4, '2026-03-20 03:09:46');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `author` varchar(100) DEFAULT NULL,
  `category_id` int DEFAULT '1',
  `created_at` timestamp NULL DEFAULT (now()),
  `updated_at` timestamp NULL DEFAULT (now()) ON UPDATE CURRENT_TIMESTAMP,
  `tags` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `image`, `title`, `slug`, `content`, `author`, `category_id`, `created_at`, `updated_at`, `tags`) VALUES
(1, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'Dekan Cup Bola Basket', 'dekan-cup-bola-basket', 'string', NULL, 2, '2025-11-12 12:24:11', '2025-11-12 10:33:20', 'local_news'),
(2, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'Program Mahasiswa Berdampak', 'program-mahasiswa-berdampak', 'string', NULL, 2, '2025-11-18 13:08:47', '2025-11-18 13:17:34', 'local_news'),
(689823, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'Selamat dan Sukses atas diterima dalam kegiatan student mobility di Faculty Business and Management (FPP) Universitas Zainal Abidin, Malaysia', 'selamat-dan-sukses-atas-diterima-dalam-kegiatan-student-mobility-di-faculty-business-and-management', 'string', NULL, 2, '2025-08-24 17:00:00', '2026-03-20 16:05:27', 'local_news'),
(689831, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'Workshop Pemberdayaan 150 BUMDes & KDMP 2025', 'workshop-pemberdayaan-150-bumdes-kdmp-2025', 'string', NULL, 2, '2025-08-17 10:00:00', '2026-03-20 16:11:14', 'local_news'),
(689832, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'Para Ahli Global Berkumpul untuk Merancang Masa Depan Net-Zero dalam Konferensi Internasional ICEBAST 2025', 'para-ahli-global-berkumpul-untuk-merancang-masa-depan-net-zero-dalam-konferensi-internasional-icebas', 'string', NULL, 2, '2025-09-14 10:00:00', '2026-03-20 16:12:16', 'local_news'),
(689833, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'Penyusunan LKE ZI WBK di Fakultas Ekonomi dan Bisnis Universitas Jember', 'penyusunan-lke-zi-wbk-di-fakultas-ekonomi-dan-bisnis-universitas-jember', 'string', NULL, 2, '2025-11-09 10:00:00', '2026-03-20 16:12:49', 'local_news'),
(689834, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'Penerima KIP 2025', 'penerima-kip-2025', 'string', NULL, 2, '2025-11-04 10:00:00', '2026-03-20 16:13:11', 'local_news'),
(689835, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'Selamat dan Sukses atas dibukanya Program International Undergraduate Programme (IUP) Management.', 'selamat-dan-sukses-atas-dibukanya-program-international-undergraduate-programme-iup-management', 'string', NULL, 2, '2025-08-26 10:00:00', '2026-03-20 16:13:46', 'local_news'),
(689836, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'Penerimaan mahasiswa baru Universitas Jember melalui jalur Rekognisi Pembelajaran Lampau (RPL)', 'penerimaan-mahasiswa-baru-universitas-jember-melalui-jalur-rekognisi-pembelajaran-lampau-rpl', 'string', NULL, 2, '2025-07-16 10:00:00', '2026-03-20 16:14:13', 'local_news'),
(689837, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'Selamat dan Sukses atas Akreditas Unggul Universitas Jember 2025-2030', 'selamat-dan-sukses-atas-akreditas-unggul-universitas-jember-2025-2030', 'string', NULL, 2, '2025-08-15 10:00:00', '2026-03-20 16:14:44', 'local_news'),
(689838, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'Juara II LKTI - BI 2025', 'juara-ii-lkti-bi-2025', 'string', NULL, 5, '2025-08-21 10:00:00', '2026-03-20 16:17:37', 'student_achievement'),
(689839, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'MABA 2025 UPDATE', 'maba-2025-update', 'string', NULL, 5, '2025-07-21 10:00:00', '2026-03-20 16:17:59', 'student_achievement'),
(689840, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'Echoes of Nusantara: Youth Voices in Verse (ENIV) ', 'echoes-of-nusantara-youth-voices-in-verse-eniv', 'string', NULL, 2, '2024-11-24 10:00:00', '2026-03-22 01:49:49', 'international_news'),
(689841, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'International Public Speaking Workshop: Speak with Confidence ', 'international-public-speaking-workshop-speak-with-confidence', 'string', NULL, 2, '2024-11-24 10:00:00', '2026-03-22 01:49:49', 'international_news'),
(689842, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'Inspire: International Youth Leadership and Culture Immersion Program – Unity in Diversity: A Cultural Mosaic ', 'inspire-international-youth-leadership-and-culture-immersion-program-unity-in-diversity-a-cultural-m', 'string', NULL, 2, '2024-11-24 10:00:00', '2026-03-22 01:49:49', 'international_news'),
(689843, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'Ramadhan Box ', 'ramadhan-box', 'string', NULL, 2, '2024-03-12 10:00:00', '2026-03-22 01:49:49', 'international_news'),
(689844, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'World Tadarus Al-Qur\'an ', 'world-tadarus-al-quran', 'string', NULL, 2, '2024-03-11 10:00:00', '2026-03-22 01:49:49', 'international_news'),
(689845, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'ESG Round Table ', 'esg-round-table', 'string', NULL, 2, '2024-03-10 10:00:00', '2026-03-22 01:49:49', 'international_news'),
(689846, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'International 3 Minutes Business Pitching ', 'international-3-minutes-business-pitching', 'string', NULL, 2, '2024-03-09 10:00:00', '2026-03-22 01:49:49', 'international_news'),
(689847, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'Cultural Exchange ', 'cultural-exchange', 'string', NULL, 2, '2024-03-08 10:00:00', '2026-03-22 01:49:49', 'international_news'),
(689848, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'International Business Ideas and Innovation Workshop  ', 'international-business-ideas-and-innovation-workshop', 'string', NULL, 2, '2024-03-08 10:00:00', '2026-03-22 01:49:49', 'international_news'),
(689849, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'International Youth Leadership Symposium ', 'international-youth-leadership-symposium', 'string', NULL, 2, '2024-03-06 10:00:00', '2026-03-22 01:49:49', 'international_news'),
(689850, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'International Youth Leadership Program ', 'international-youth-leadership-program', 'string', NULL, 2, '2024-02-28 10:00:00', '2026-03-22 01:49:49', 'international_news'),
(689851, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'Congratulation Dr. Ir. Iwan Taruna, M.Eng, IPM. as Elected Chancellor of the University of Jember for the 2024-2028 period ', 'congratulation-dr-ir-iwan-taruna-meng-ipm-as-elected-chancellor-of-the-university-of-jember-for-the', 'string', NULL, 2, '2024-01-04 10:00:00', '2026-03-22 01:49:49', 'international_news'),
(689852, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'Faculty of Economics and Business at Universitas Jember: Home to FIBAA Internationally Certified Bachelor\'s Programs in Accounting, Development Economics, and Management ', 'faculty-of-economics-and-business-at-universitas-jember-home-to-fibaa-internationally-certified-bach', 'string', NULL, 2, '2023-10-03 10:00:00', '2026-03-22 01:49:49', 'international_news'),
(689853, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'To enhance international competency, the Bachelor of Accounting program sent four of its faculty members for the Project Management Ready Competency Certification ', 'to-enhance-international-competency-the-bachelor-of-accounting-program-sent-four-of-its-faculty-memb', 'string', NULL, 2, '2023-09-09 10:00:00', '2026-03-22 01:49:49', 'international_news'),
(689854, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'International Dissemination: Innovation in Public Sector Finance ', 'international-dissemination-innovation-in-public-sector-finance', 'string', NULL, 2, '2023-08-23 10:00:00', '2026-03-22 01:49:49', 'international_news'),
(689855, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'Driving Innovation and Sustainability in Global Business ', 'driving-innovation-and-sustainability-in-global-business', 'string', NULL, 2, '2023-07-10 10:00:00', '2026-03-22 01:49:49', 'international_news'),
(689856, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'YOUNG ENTREPRENEURSHIP PERSONAL TALENT (TAPAL KUDA) ', 'young-entrepreneurship-personal-talent-tapal-kuda', 'string', NULL, 2, '2023-06-20 10:00:00', '2026-03-22 01:49:49', 'international_news'),
(689857, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'Independent Entrepreneur 2023 (Wirausaha Merdeka 2023) ', 'independent-entrepreneur-2023-wirausaha-merdeka-2023', 'string', NULL, 2, '2023-06-20 10:00:00', '2026-03-22 01:49:49', 'international_news'),
(689858, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'PANCASILA FAIR 2023 ', 'pancasila-fair-2023', 'string', NULL, 2, '2023-06-11 10:00:00', '2026-03-22 01:49:49', 'international_news'),
(689859, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'TRAINING AND CERTIFICATION TEST WITH THE THEME  ', 'training-and-certification-test-with-the-theme', 'string', NULL, 2, '2023-06-10 10:00:00', '2026-03-22 01:49:49', 'international_news'),
(689860, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'New Southbound Program Internal Recruitment 2023 ', 'new-southbound-program-internal-recruitment-2023', 'string', NULL, 2, '2023-06-04 10:00:00', '2026-03-22 01:49:49', 'international_news'),
(689861, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'Pancasilais Fair 2023 ', 'pancasilais-fair-2023', 'string', NULL, 2, '2023-06-04 10:00:00', '2026-03-22 01:49:49', 'international_news'),
(689862, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'Pancasila Birthday Ceremony at FEB University of Jember June 1 2023 ', 'pancasila-birthday-ceremony-at-feb-university-of-jember-june-1-2023', 'string', NULL, 2, '2023-06-01 10:00:00', '2026-03-22 01:49:49', 'international_news'),
(689863, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'Independent Selection of new students at the University of Jember ', 'independent-selection-of-new-students-at-the-university-of-jember', 'string', NULL, 2, '2023-05-29 10:00:00', '2026-03-22 01:49:49', 'international_news'),
(689864, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', '2023 International Credit Transfer Program Apply until 22nd of March, 2023 ', '2023-international-credit-transfer-program-apply-until-22nd-of-march-2023', 'string', NULL, 2, '2023-03-21 10:00:00', '2026-03-22 01:49:49', 'international_news'),
(689865, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'Exam Registration International Audit Practitioner ', 'exam-registration-international-audit-practitioner', 'string', NULL, 2, '2023-03-20 10:00:00', '2026-03-22 01:49:49', 'international_news'),
(689866, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'Trainer & Account DSA Training ASEAN Foundation 2023 ', 'trainer-account-dsa-training-asean-foundation-2023', 'string', NULL, 2, '2023-02-19 10:00:00', '2026-03-22 01:49:49', 'international_news'),
(689867, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'International Credit Transfer at Universiti Sultan Zainal Abidin, Malaysia ', 'international-credit-transfer-at-universiti-sultan-zainal-abidin-malaysia', 'string', NULL, 2, '2023-02-07 10:00:00', '2026-03-22 01:49:49', 'international_news'),
(689868, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'Introducing TeFa (Teaching Factory) Launch ', 'introducing-tefa-teaching-factory-launch', 'string', NULL, 2, '2022-11-30 10:00:00', '2026-03-22 01:49:49', 'international_news'),
(689869, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'Implementation of Jember University International Credit Transfer 2022 ', 'implementation-of-jember-university-international-credit-transfer-2022', 'string', NULL, 2, '2022-06-30 10:00:00', '2026-03-22 01:49:49', 'international_news'),
(689870, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'General Membership Meeting 2022 ', 'general-membership-meeting-2022', 'string', NULL, 2, '2022-06-06 10:00:00', '2026-03-22 01:49:49', 'international_news'),
(689871, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'Lecturer of the Faculty of Economics and Business, University of Jember is listed as an official member of IIA Indonesia and IIA Global ', 'lecturer-of-the-faculty-of-economics-and-business-university-of-jember-is-listed-as-an-official-memb', 'string', NULL, 2, '2022-05-11 10:00:00', '2026-03-22 01:49:49', 'international_news'),
(689872, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'International Conference - ICOMBEST 2021 ', 'international-conference-icombest-2021', 'string', NULL, 2, '2021-10-11 10:00:00', '2026-03-22 01:49:49', 'international_news'),
(689873, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'Prosiding International - Short Course & Site Visit to South Korea with SSRI and CBNU ', 'prosiding-international-short-course-site-visit-to-south-korea-with-ssri-and-cbnu', 'string', NULL, 2, '2018-07-14 10:00:00', '2026-03-22 01:49:49', 'international_news'),
(689876, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'Pengabdian Dosen FEB ', 'pengabdian-dosen-feb', 'string', NULL, 2, '2025-11-12 10:00:00', '2026-03-22 06:14:50', 'news_feb'),
(689877, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'Dekan Cup Bola Basket ', 'dekan-cup-bola-basket_-_2026-03-22', 'string', NULL, 2, '2025-11-12 10:00:00', '2026-03-22 06:14:50', 'news_feb'),
(689878, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'Program Mahasiswa Berdampak ', 'program-mahasiswa-berdampak_-_2026-03-22', 'string', NULL, 2, '2025-11-12 10:00:00', '2026-03-22 06:14:50', 'news_feb'),
(689882, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'Penyusunan LKE ZI WBK di Fakultas Ekonomi dan Bisnis Universitas Jember ', 'penyusunan-lke-zi-wbk-di-fakultas-ekonomi-dan-bisnis-universitas-jember_-_2026-03-22', 'string', NULL, 2, '2025-11-09 10:00:00', '2026-03-22 06:14:50', 'news_feb'),
(689883, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'Workshop Pemberdayaan 150 BUMDes & KDMP 2025 ', 'workshop-pemberdayaan-150-bumdes-kdmp-2025_-_2026-03-22', 'string', NULL, 2, '2025-09-17 10:00:00', '2026-03-22 06:14:50', 'news_feb'),
(689884, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'Para Ahli Global Berkumpul untuk Merancang Masa Depan Net-Zero dalam Konferensi Internasional ICEBAST 2025 ', 'para-ahli-global-berkumpul-untuk-merancang-masa-depan-net-zero-dalam-konferensi-internasional-icebas_-_2026-03-22', 'string', NULL, 2, '2025-09-14 10:00:00', '2026-03-22 06:14:50', 'news_feb'),
(689888, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'Selamat dan Sukses atas dibukanya Program International Undergraduate Programme (IUP) Management. ', 'selamat-dan-sukses-atas-dibukanya-program-international-undergraduate-programme-iup-management_-_2026-03-22', 'string', NULL, 2, '2025-08-26 10:00:00', '2026-03-22 06:14:50', 'news_feb'),
(689889, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'Selamat dan Sukses atas Akreditas Unggul Universitas Jember 2025-2030 ', 'selamat-dan-sukses-atas-akreditas-unggul-universitas-jember-2025-2030_-_2026-03-22', 'string', NULL, 2, '2025-08-25 10:00:00', '2026-03-22 06:14:50', 'news_feb'),
(689890, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'Selamat dan Sukses atas diterima dalam kegiatan student mobility di Faculty Business and Management (FPP) Universitas Zainal Abidin, Malaysia ', 'selamat-dan-sukses-atas-diterima-dalam-kegiatan-student-mobility-di-faculty-business-and-management_-_2026-03-22', 'string', NULL, 2, '2025-08-24 10:00:00', '2026-03-22 06:14:50', 'news_feb'),
(689891, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'Penerimaan Mahasiswa Baru Program Pascasarjana Universitas Jember Semester Gasal T.A 2025/2026 Gel.2  ', 'penerimaan-mahasiswa-baru-program-pascasarjana-universitas-jember-semester-gasal-ta-20252026-gel2', 'string', NULL, 2, '2025-07-16 10:00:00', '2026-03-22 06:14:50', 'news_feb'),
(689893, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'Penerimaan mahasiswa baru Universitas Jember melalui jalur Rekognisi Pembelajaran Lampau (RPL) ', 'penerimaan-mahasiswa-baru-universitas-jember-melalui-jalur-rekognisi-pembelajaran-lampau-rpl_-_2026-03-22', 'string', NULL, 2, '2025-07-16 10:00:00', '2026-03-22 06:14:50', 'news_feb'),
(689895, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'Khaled Hasan mahasiswa D3 Akuntansi lolos pada Program Indonesian International Student Mobility Awards (IISMA) Technische University of Dresden - Jerman ', 'khaled-hasan-mahasiswa-d3-akuntansi-lolos-pada-program-indonesian-international-student-mobility-awa', 'string', NULL, 5, '2024-03-22 10:00:00', '2026-03-22 06:18:03', 'achievement_news'),
(689896, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'Juara II LKTI - BI 2025 ', 'juara-ii-lkti-bi-2025_-_2026-03-22', 'string', NULL, 5, '2025-08-21 10:00:00', '2026-03-22 06:18:03', 'achievement_news'),
(689897, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'FEB Students Got 1st Place in IAIN PONOROGO National Debate Competition ', 'feb-students-got-1st-place-in-iain-ponorogo-national-debate-competition', 'string', NULL, 5, '2023-06-06 10:00:00', '2026-03-22 06:18:03', 'achievement_news'),
(689898, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'FEB Lecturers and Students Got Grants for the 2023 Research Institute Village Student Service Program (PROMAHADESA) ', 'feb-lecturers-and-students-got-grants-for-the-2023-research-institute-village-student-service-progra', 'string', NULL, 5, '2023-05-07 10:00:00', '2026-03-22 06:18:03', 'achievement_news'),
(689899, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'Raissa Aulia Salsabila Won 1st Place in The Business Presentation Sharia Economic Festival 6th competition ', 'raissa-aulia-salsabila-won-1st-place-in-the-business-presentation-sharia-economic-festival-6th-compe', 'string', NULL, 5, '2023-03-26 10:00:00', '2026-03-22 06:18:03', 'achievement_news'),
(689900, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'FEB UNEJ student, Raisa, Won 2nd place in the 2023 Muamalah Fair Essay Competition ', 'feb-unej-student-raisa-won-2nd-place-in-the-2023-muamalah-fair-essay-competition', 'string', NULL, 5, '2023-03-24 10:00:00', '2026-03-22 06:18:03', 'achievement_news'),
(689901, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'Risqi Got A Silver Medal in The National Heroes of Prestasi Maju Indonesia (PRESMANIA) Science Olympics ', 'risqi-got-a-silver-medal-in-the-national-heroes-of-prestasi-maju-indonesia-presmania-science-olympic', 'string', NULL, 5, '2023-03-17 10:00:00', '2026-03-22 06:18:03', 'achievement_news'),
(689902, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'FEB Student Won 5th Place in the NEOICT National Business Plan Competition Faculty of Communication Fest UPN Veterans East Java ', 'feb-student-won-5th-place-in-the-neoict-national-business-plan-competition-faculty-of-communication', 'string', NULL, 5, '2023-03-15 10:00:00', '2026-03-22 06:18:03', 'achievement_news'),
(689903, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', 'Mr. and Miss Campus Indonesia and East Java Ethnic Wear 2023 ', 'mr-and-miss-campus-indonesia-and-east-java-ethnic-wear-2023', 'string', NULL, 5, '2023-01-29 10:00:00', '2026-03-22 06:18:03', 'achievement_news'),
(689904, 'https://img.freepik.com/free-vector/news-grunge-text_460848-9369.jpg', '3 Management Study Program students won 1st place in Best Paper and Best Presentation ', '3-management-study-program-students-won-1st-place-in-best-paper-and-best-presentation', 'string', NULL, 5, '2022-12-13 10:00:00', '2026-03-22 06:18:03', 'achievement_news');

-- --------------------------------------------------------

--
-- Table structure for table `news_categories`
--

CREATE TABLE `news_categories` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `news_categories`
--

INSERT INTO `news_categories` (`id`, `name`, `slug`) VALUES
(1, 'Uncategorized', 'uncategorized'),
(2, 'News', 'news'),
(3, 'Events', 'events'),
(4, 'Announcements', 'announcements'),
(5, 'Achievement', 'achievement');

-- --------------------------------------------------------

--
-- Table structure for table `partnerships`
--

CREATE TABLE `partnerships` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `activity` varchar(255) NOT NULL,
  `from_date` date NOT NULL,
  `category` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT (now())
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `partnerships`
--

INSERT INTO `partnerships` (`id`, `name`, `activity`, `from_date`, `category`, `created_at`) VALUES
(1, 'PT Mahendra Maharani Makmur', 'Pelaksanaan Magang Praktik Kerja Nyata', '2024-01-01', 'National', '2026-03-22 10:28:20'),
(2, 'Badan Perencanaan Pembangunan Daerah Kabupaten Lumajang', 'Penguatan dan Pengembangan Penyelenggaraan Tridharma Perguruan Tinggi', '2024-01-01', 'National', '2026-03-22 10:28:20'),
(3, 'PT Ragasport Gunawan Mandiri', 'Program Magang Mahasiswa', '2024-01-01', 'National', '2026-03-22 10:28:20'),
(4, 'PT Graha Makmur Cipta Pratama', 'Program Merdeka Belajar Kampus Merdeka Mahasiswa DIII Fakultas Ekonomi dan Bisnis Universitas Jember', '2024-01-01', 'National', '2026-03-22 10:28:20'),
(5, 'Dinas Perindustrian dan Perdagangan Kabupaten Mojokerto', 'Program Merdeka Belajar Kampus Merdeka', '2024-01-01', 'National', '2026-03-22 10:28:20'),
(6, 'Bank Mandiri Utama Finance Kabupaten Jember', 'Program Merdeka Belajar Kampus Merdeka', '2024-01-01', 'National', '2026-03-22 10:28:20'),
(7, 'Kantor Imigrasi Kelas 1 TPI Jember', 'Program Merdeka Belajar Kampus Merdeka', '2024-01-01', 'National', '2026-03-22 10:28:20'),
(8, 'Sekretariat DPRD Kota Probolinggo', 'Penguatan dan Pengembangan Penyelenggaraan Tridharma Perguruan Tinggi', '2024-01-01', 'National', '2026-03-22 10:28:20'),
(9, 'PT Bukan Sekadar Air (BUKADIR)', 'Program Merdeka Belajar Kampus Merdeka', '2024-01-01', 'National', '2026-03-22 10:28:20'),
(10, 'Aston Jember Hotel & Conference Center', 'Program Merdeka Belajar Kampus Merdeka', '2024-01-01', 'National', '2026-03-22 10:28:20'),
(11, 'PT. Bank Mandiri (Persero) Tbk. Micro Banking Cluster Jember 1', 'Program Merdeka Belajar Kampus Merdeka', '2024-01-01', 'National', '2026-03-22 10:28:20'),
(12, 'PT Bank Rakyat Indonesia (Persero) Tbk', 'Program Merdeka Belajar Kampus Merdeka', '2024-01-01', 'National', '2026-03-22 10:28:20'),
(13, 'CV Aulia Mandiri Sejahtera', 'Penguatan dan Pengembangan Penyelenggaraan Tridharma Perguruan Tinggi', '2024-01-01', 'National', '2026-03-22 10:28:20'),
(14, 'PT. Bernady Sukses Grup', 'Program Merdeka Belajar Kampus Merdeka', '2024-01-01', 'National', '2026-03-22 10:28:20'),
(15, 'Badan Pusat Statistik Kabupaten Jember', 'Program Merdeka Belajar Kampus Merdeka', '2024-01-01', 'National', '2026-03-22 10:28:20'),
(16, 'Royal Hotel N\' Lounge Jember', 'Program Merdeka Belajar Kampus Merdeka', '2024-01-01', 'National', '2026-03-22 10:28:20'),
(17, 'Dinas Perpustakaan dan Kearsipan Kabupaten Tuban', 'Program Merdeka Belajar Kampus Merdeka', '2024-01-01', 'National', '2026-03-22 10:28:20'),
(18, 'PT Panorama Wisata Sejahtera (Gumul Paradise Island Waterpark)', 'Program Merdeka Belajar Kampus Merdeka', '2024-01-01', 'National', '2026-03-22 10:28:20'),
(19, 'PG Krebet Baru', 'Program Merdeka Belajar Kampus Merdeka', '2024-01-01', 'National', '2026-03-22 10:28:20'),
(20, 'Lembaga Penyiaran Publik Radio Republik Indonesia', 'Program Merdeka Belajar Kampus Merdeka', '2024-01-01', 'National', '2026-03-22 10:28:20'),
(21, 'PT Konsultan Berkah Indonesia', 'Program Merdeka Belajar Kampus Merdeka', '2024-01-01', 'National', '2026-03-22 10:28:20'),
(22, 'Dinas Pekerjaan Umum dan Penataan Ruang Kota Madiun', 'Program Merdeka Belajar Kampus Merdeka', '2024-01-01', 'National', '2026-03-22 10:28:20'),
(23, 'CV Redline Jember', 'Program Merdeka Belajar Kampus Merdeka', '2024-01-01', 'National', '2026-03-22 10:28:20'),
(24, 'SMK Negeri 8 Malang', 'Program Merdeka Belajar Kampus Merdeka', '2024-01-01', 'National', '2026-03-22 10:28:20'),
(25, 'Fakultas Ekonomi dan Bisnis Universitas Airlangga', 'Pelaksanaan Tridharma Perguruan Tinggi', '2024-01-01', 'National', '2026-03-22 10:28:20'),
(26, 'KKP Eka Prasetia dan Rekan', 'Program Merdeka Belajar Kampus Merdeka', '2024-01-01', 'National', '2026-03-22 10:28:20'),
(27, 'Geopark Ijen', 'Program Merdeka Belajar Kampus Merdeka', '2024-01-01', 'National', '2026-03-22 10:28:20'),
(28, 'Badan Perencanaan, Pembangunan, Penelitian dan Pengembangan Daerah (BP4D) Kabupaten Bondowoso', 'Sinergi Penguatan Penyelenggaraan Tri Dharma Perguruan Tinggi dan Pembangunan Sumber Daya dan Kelembagaan', '2024-01-01', 'National', '2026-03-22 10:28:20'),
(29, 'PT Fin Centerindo Satu', 'Penyelenggaraan Kerja Sama Kegiatan Tridharma Perguruan Tinggi dan Merdeka Belajar-Kampus Merdeka (MBKM)', '2024-01-01', 'National', '2026-03-22 10:28:20'),
(30, 'PT Senyum Media Utama', 'Program Merdeka Belajar Kampus Merdeka', '2024-01-01', 'National', '2026-03-22 10:28:20'),
(31, 'Fakultas Ekonomi dan Bisnis Islam Institut Agama Islam Nahdlatul Ulama Kebumen', 'Penyelenggaraan Kerja Sama Kegiatan Tridharma Perguruan Tinggi dan Merdeka Belajar-Kampus Merdeka (MBKM)', '2024-01-01', 'National', '2026-03-22 10:28:20'),
(32, 'Perusahaan Umum Daerah Air Minum Tirta Pandalungan Jember', 'Program Merdeka Belajar Kampus Merdeka', '2024-01-01', 'National', '2026-03-22 10:28:20'),
(33, 'Fakultas Ekonomi dan Bisnis Universitas Lambung Mangkurat', 'Peningkatan Mutu Akademik Program D3, S1, S2, dan S3', '2024-01-01', 'National', '2026-03-22 10:28:21'),
(34, 'Sekolah Tinggi Agama Islam Al-Utsmani Bondowoso', 'Penyelenggaraan Kerja Sama Kegiatan Tridharma Perguruan Tinggi dan Merdeka Belajar-Kampus Merdeka (MBKM)', '2024-01-01', 'National', '2026-03-22 10:28:21'),
(35, 'Pemerintahan Desa Sumberpakem', 'Pengabdian Program Studi Ekonomi Syariah', '2024-01-01', 'National', '2026-03-22 10:28:21'),
(36, 'Fakultas Ekonomi dan Ilmu Sosial UIN Suska Riau', 'Penyelenggaraan Pendidikan , Penelitian, dan Pengabdian Kepada Masyarakat', '2024-01-01', 'National', '2026-03-22 10:28:21'),
(37, 'Rumah Tahanan Kelas IIB Situbondo', 'Penyelenggaraan Kerja Sama Kegiatan Tridharma Perguruan Tinggi dan Program Kemandirian Warga Binaan', '2024-01-01', 'National', '2026-03-22 10:28:21'),
(38, 'LPPM Institut Teknologi dan Sains Mandala', 'Co Host The 5th International Conference on Economics and Business (ICEBIT 2024)', '2024-01-01', 'National', '2026-03-22 10:28:21'),
(39, 'Fakultas Ekonomika dan Bisnis Universitas Diponegoro', 'Pendidikan, Penelitian dan Pengabdian Kepada Masyarakat', '2024-01-01', 'National', '2026-03-22 10:28:21'),
(40, 'PT Sembilan Bintang Lestari', 'Program Merdeka Belajar Kampus Merdeka', '2024-01-01', 'National', '2026-03-22 10:28:21'),
(41, 'Sekolah Tinggi Ilmu Sosial dan Ilmu Politik (STISIP) Margarana Tabanan', '-', '2024-01-01', 'National', '2026-03-22 10:28:21'),
(42, 'PT Economica Nextmedia', 'Program Merdeka Belajar Kampus Merdeka', '2024-01-01', 'National', '2026-03-22 10:28:21'),
(43, 'PT Sintesa Citra Abadi', 'Program Merdeka Belajar Kampus Merdeka', '2024-01-01', 'National', '2026-03-22 10:28:21'),
(44, 'Pusat Halal Universitas Airlangga', 'Pelaksanaan Tridharma Perguruan Tinggi', '2023-01-01', 'National', '2026-03-22 10:28:21'),
(45, 'Business Administration and Humanities Department University College of Bahrain', 'Promote Cultural, Educational, Research, Internship and Scholarly Exchange', '2023-01-01', 'International', '2026-03-22 10:28:21'),
(46, 'Matastrategy Inc Toronto Canada', 'Promote Cultural, Educational, Research, Internship and Scholarly Exchange', '2023-01-01', 'International', '2026-03-22 10:28:21'),
(47, 'GHG Management Institute', 'Human Resource Development Programme', '2023-01-01', 'International', '2026-03-22 10:28:21'),
(48, 'PT Panahmas Dwitama Distrindo', 'Penguatan dan Pengembangan Penyelenggaraan Tridharma Perguruan Tinggi', '2023-01-01', 'National', '2026-03-22 10:28:21'),
(49, 'Fakultas Ekonomi Universitas 17 Agustus 1945 Banyuwangi', 'Kerjasama Bidang Pendidikan, Penelitian, dan Pengabdian Kepada Masyarakat dalam Rangka Kegiatan Merdeka Belajar-Kampus Merdeka (MBKM)', '2023-01-01', 'National', '2026-03-22 10:28:21'),
(50, 'Lembaga Sertifikasi Profesi Mitra Wirausaha Produktif Merdeka (LSP MWPM)', 'Uji Kompetensi di Bidang Kewirausahaan', '2023-01-01', 'National', '2026-03-22 10:28:21'),
(51, 'PT Soerabaja Printing Indonesia', 'Penguatan dan Pengembangan Penyelenggaraan Tridharma Perguruan Tinggi', '2023-01-01', 'National', '2026-03-22 10:28:21'),
(52, 'Yayasan Rumah Itqon Zakat dan Infak (RIZKI)', 'Program Merdeka Belajar Kampus Merdeka', '2023-01-01', 'National', '2026-03-22 10:28:21'),
(53, 'Perusahaan Umum Daerah (PERUMDA) Perkebunan Kahyangan Jember', 'Penguatan dan Pengembangan Penyelenggaraan Tridharma Perguruan Tinggi', '2023-01-01', 'National', '2026-03-22 10:28:21'),
(54, 'STIE Jaya Negara Tamansiswa Malang', 'Pengembangan, Penelitian, dan Publikasi Internasional Berbasis Teknologi AI', '2023-01-01', 'National', '2026-03-22 10:28:21'),
(55, 'Fakultas Ekonomi dan Bisnis Universitas Halu Oleo', 'Kemitraan Dalam Kegiatan Tri Darma Perguruan Tinggi dan Merdeka Belajar Kampus Merdeka', '2023-01-01', 'National', '2026-03-22 10:28:21'),
(56, 'PT Mangli Djaya Raya', 'Program Magang Bersertifikat', '2023-01-01', 'National', '2026-03-22 10:28:21'),
(57, 'KAP Darmawan Hendang Kaslim & Rekan', 'Pelaksanaan Tridharma Perguruan Tinggi', '2023-01-01', 'National', '2026-03-22 10:28:21'),
(58, 'KAP Habib Basuni dan Heryadi', 'Pelaksanaan Tridharma Perguruan Tinggi', '2023-01-01', 'National', '2026-03-22 10:28:21'),
(59, 'Fakultas Bisnis dan Keuangan Nitro Makassar', 'Pelaksanaan Tridharma Perguruan Tinggi', '2023-01-01', 'National', '2026-03-22 10:28:21'),
(60, 'Ikatan Akuntan Indonesia Kompartemen Akuntan Pendidik (IAI KAPd)', '-', '2023-01-01', 'National', '2026-03-22 10:28:21'),
(61, 'Pusat Halal Universitas Airlangga', 'Pelaksanaan Tridharma Perguruan Tinggi', '2023-01-01', 'National', '2026-03-22 10:28:21'),
(62, 'PT Djarum', '-', '2023-01-01', 'National', '2026-03-22 10:28:21'),
(63, 'Fakultas Ekonomi dan Bisnis Islam Universitas Islam Negeri Sunan Kalijaga Yogyakarta', 'Implementation of Higher Education Tridharma Cooperation and Independent Learning-Independent Campus (MBKM) Activities', '2022-01-01', 'National', '2026-03-22 10:28:21'),
(64, 'Lembaga Manajemen Infaq', 'Independent Campus Learning Program', '2022-01-01', 'National', '2026-03-22 10:28:21'),
(65, 'Fakultas Ekonomi Universitas Terbuka', 'Education, Research and Community Service Programs', '2022-01-01', 'National', '2026-03-22 10:28:21'),
(66, 'Institut Teknologi dan Bisnis Widya Gama Lumajang', 'Improving the Tridharma of Higher Education', '2022-01-01', 'National', '2026-03-22 10:28:21'),
(67, 'Fakultas Ekonomi dan Bisnis Universitas Pembangunan Nasional \"Veteran\" Jawa Timur', 'Education, Research and Community Service Activity Programs', '2022-01-01', 'National', '2026-03-22 10:28:21'),
(68, 'Yayasan Astra Honda Motor', 'Awarding of Scholarships', '2022-01-01', 'National', '2026-03-22 10:28:21'),
(69, 'BUMDes Mandiri', 'Implementation of Independent Learning Campus Merdeka', '2022-01-01', 'National', '2026-03-22 10:28:21'),
(70, 'Pengurus Harian Ijen Geopark Wilayah Bondowoso', 'Implementation of Independent Learning Campus Merdeka', '2022-01-01', 'National', '2026-03-22 10:28:21'),
(71, 'KSU Koperasi Buah Ketakasi', 'Implementation of the Directorate General of Vocational Matching Fund Program', '2022-01-01', 'National', '2026-03-22 10:28:21'),
(72, 'Badan Kepegawaian Daerah Kabupaten Lumajang', 'Implementation of Education and Utilization of Science and Technology to Improve Human Resources', '2022-01-01', 'National', '2026-03-22 10:28:21'),
(73, 'Fakultas Ekonomi UIN Maulana Malik Ibrahim Malang', 'Education, Research, Community Service', '2022-01-01', 'National', '2026-03-22 10:28:21'),
(74, 'Fakultas Ekonomi UIN Maulana Malik Ibrahim Malang', 'Co-Host Cooperation of The 8th International Conference of Islamic Economics and Business (8th ICONIES)', '2022-01-01', 'National', '2026-03-22 10:28:21'),
(75, 'PT Satu Visi Indocreative (B One Corporation)', 'Strengthening and Development of Higher Education Tridharma Implementation', '2022-01-01', 'National', '2026-03-22 10:28:21'),
(76, 'Fakultas Ekonomi dan Bisnis Universitas Buana Perjuangan Karawang', 'Implementation of Independent Learning - Merdeka Campus', '2022-01-01', 'National', '2026-03-22 10:28:21'),
(77, 'Badan Amil Zakat Nasional Kabupaten Lumajang', 'Strengthening and Development of Higher Education Tridharma Implementation', '2022-01-01', 'National', '2026-03-22 10:28:21'),
(78, 'Fakultas Ekonomi dan Bisnis Universitas Mataram', 'Implementation of Doctoral Program Education (S3) in Management Science and Economics', '2022-01-01', 'National', '2026-03-22 10:28:21'),
(79, 'Association of Certified Fraud Examiners (ACFE)', 'Education, Training, Research, Human Resource Development in Forensic Auditing and Accounting', '2022-01-01', 'National', '2026-03-22 10:28:21'),
(80, 'Universiti Sultan Zainal Abidin', 'Research collaborations, student credit transfers, staff exchanges', '2022-01-01', 'International', '2026-03-22 10:28:21'),
(81, 'Griffith University', 'Research collaboration', '2022-01-01', 'International', '2026-03-22 10:28:21'),
(82, 'Fakultas Ekonomi dan Bisnis Islam Universitas Islam Negeri Sunan Kalijaga Yogyakarta', 'Penyelenggaraan Kerja Sama Kegiatan Tridharma Perguruan Tinggi dan Merdeka Belajar-Kampus Merdeka (MBKM)', '2022-01-01', 'National', '2026-03-22 10:28:21'),
(83, 'Lembaga Manajemen Infaq', 'Program Merdeka Belajar Kampus Merdeka', '2022-01-01', 'National', '2026-03-22 10:28:21'),
(84, 'Fakultas Ekonomi Universitas Terbuka', 'Program Pendidikan, Penelitian, dan Pengabdian Masyarakat', '2022-01-01', 'National', '2026-03-22 10:28:21'),
(85, 'Institut Teknologi dan Bisnis Widya Gama Lumajang', 'Meningkatkan Tridharma Perguruan Tinggi', '2022-01-01', 'National', '2026-03-22 10:28:21'),
(86, 'Fakultas Ekonomi dan Bisnis Universitas Pembangunan Nasional \"Veteran\" Jawa Timur', 'Program Kegiatan Pendidikan, Penelitian, dan Pengabdian Kepada Masyarakat', '2022-01-01', 'National', '2026-03-22 10:28:21'),
(87, 'Yayasan Astra Honda Motor', 'Pemberian Beasiswa', '2022-01-01', 'National', '2026-03-22 10:28:21'),
(88, 'BUMDes Mandiri', 'Penyelenggaraan Merdeka Belajar Kampus Merdeka', '2022-01-01', 'National', '2026-03-22 10:28:21'),
(89, 'Pengurus Harian Ijen Geopark Wilayah Bondowoso', 'Penyelenggaraan Merdeka Belajar Kampus Merdeka', '2022-01-01', 'National', '2026-03-22 10:28:21'),
(90, 'KSU Koperasi Buah Ketakasi', 'Penyelenggaraan Program Matching Fund Direktorat Jenderal Vokasi', '2022-01-01', 'National', '2026-03-22 10:28:21'),
(91, 'Badan Kepegawaian Daerah Kabupaten Lumajang', 'Pelaksanaan Pendidikan dan Pemanfaatan Ilmu Pengetahuan dan Teknologi untuk Peningkatan Sumber Daya Manusia', '2022-01-01', 'National', '2026-03-22 10:28:21'),
(92, 'Fakultas Ekonomi UIN Maulana Malik Ibrahim Malang', 'Pendidikan, Penelitian, Pengabdian Kepada Masyarakat', '2022-01-01', 'National', '2026-03-22 10:28:21'),
(93, 'Fakultas Ekonomi UIN Maulana Malik Ibrahim Malang', 'Kerja Sama Co-Host Kegiatan The 8th International Conference of Islamic Economics and Business )8th ICONIES)', '2022-01-01', 'National', '2026-03-22 10:28:21'),
(94, 'PT Satu Visi Indocreative (B One Corporation)', 'Penguatan dan Pengembangan Penyelenggaraan Tridharma Perguruan Tinggi', '2022-01-01', 'National', '2026-03-22 10:28:21'),
(95, 'Fakultas Ekonomi dan Bisnis Universitas Buana Perjuangan Karawang', 'Implementasi Merdeka Belajar - Kampus Merdeka', '2022-01-01', 'National', '2026-03-22 10:28:21'),
(96, 'Badan Amil Zakat Nasional Kabupaten Lumajang', 'Penguatan dan Pengembangan Penyelenggaraan Tridharma Perguruan Tinggi', '2022-01-01', 'National', '2026-03-22 10:28:21'),
(97, 'Fakultas Ekonomi dan Bisnis Universitas Mataram', 'Penyelenggaraan Pendidikan Program Doktor (S3) Ilmu Manajemen dan Ilmu Ekonomi', '2022-01-01', 'National', '2026-03-22 10:28:21'),
(98, 'Lembaga ZIS Saku Yatim Lumajang', 'Penguatan dan Pengembangan Penyelenggaraan Tridharma Perguruan Tinggi', '2022-01-01', 'National', '2026-03-22 10:28:21'),
(99, 'Fakultas Ekonomi dan Bisnis Universitas Sultan Ageng Tirtayasa', 'Tri Dharma Perguruan Tinggi dan Kemahasiswaan', '2022-01-01', 'National', '2026-03-22 10:28:21'),
(100, 'Association of Certified Fraud Examiners (ACFE)', 'Pendidikan, Pelatihan, Penelitian, Pengembangan Sumber Daya Manusia di Bidang Auditing dan Akuntansi Forensik', '2022-01-01', 'National', '2026-03-22 10:28:21'),
(101, 'Yayasan Dompet Dhuafa Republika', 'Program Merdeka Belajar Kampus Merdeka', '2022-01-01', 'National', '2026-03-22 10:28:21'),
(102, 'Bank Syariah Indonesia Area Jember', 'MBKM Curriculum Implementation', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(103, 'Fakultas Ekonomi dan Bisnis Universitas Brawijaya', 'MBKM Curriculum Implementation', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(104, 'PT Intidaya Dinamika Sejati', 'MBKM Curriculum Implementation', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(105, 'Program Studi S1 Manajemen Fakultas Ekonomi Universitas Negeri Surabaya', 'Project in the Village', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(106, 'Program Studi S1 Manajemen Fakultas Ekonomi Universitas Negeri Surabaya', 'Journal Reviewer Exchange', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(107, 'Program Studi S1 Manajemen Fakultas Ekonomi Universitas Negeri Surabaya', 'Journal Editor Exchange', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(108, 'Program Studi S1 Manajemen Fakultas Ekonomi Universitas Negeri Surabaya', 'Joint Research', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(109, 'Program Studi S1 Manajemen Fakultas Ekonomi Universitas Negeri Surabaya', 'Guest Lecture', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(110, 'Program Studi S1 Manajemen Fakultas Ekonomi Universitas Negeri Surabaya', 'Lecturer Exchange', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(111, 'Program Studi S1 Manajemen Fakultas Ekonomi Universitas Negeri Surabaya', 'National Seminar', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(112, 'Program Studi S1 Manajemen Fakultas Ekonomi Universitas Negeri Surabaya', 'Student Exchange', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(113, 'Fakultas Ekonomi dan Bisnis Islam IAIN Jember', 'MBKM Curriculum Implementation', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(114, 'Program Studi S1 Manajemen Fakultas Ekonomi Universitas Negeri Malang', 'Guest Lecture', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(115, 'Program Studi S1 Manajemen Fakultas Ekonomi Universitas Negeri Malang', 'Joint Research', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(116, 'Program Studi S1 Manajemen Fakultas Ekonomi Universitas Negeri Malang', 'Lecturer Exchange', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(117, 'Program Studi S1 Manajemen Fakultas Ekonomi Universitas Negeri Malang', 'Journal Editor Exchange', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(118, 'Program Studi S1 Manajemen Fakultas Ekonomi Universitas Negeri Malang', 'Journal Reviewer Exchange', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(119, 'Program Studi S1 Manajemen Fakultas Ekonomi Universitas Negeri Malang', 'Project in the Village', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(120, 'Program Studi S1 Manajemen Fakultas Ekonomi Universitas Negeri Malang', 'National Seminar', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(121, 'Program Studi S1 Manajemen Fakultas Ekonomi Universitas Negeri Malang', 'Student Exchange', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(122, 'BPJS Ketenagakerjaan', 'MBKM Curriculum Implementation', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(123, 'Program Studi S1 Manajemen Fakultas Ekonomi dan Bisnis Universitas Mataram', 'Student Exchange', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(124, 'Program Studi S1 Manajemen Fakultas Ekonomi dan Bisnis Universitas Mataram', 'National Seminar', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(125, 'Program Studi S1 Manajemen Fakultas Ekonomi dan Bisnis Universitas Mataram', 'Project in the Village', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(126, 'Program Studi S1 Manajemen Fakultas Ekonomi dan Bisnis Universitas Mataram', 'Journal Reviewer Exchange', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(127, 'Program Studi S1 Manajemen Fakultas Ekonomi dan Bisnis Universitas Mataram', 'Journal Editor Exchange', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(128, 'Program Studi S1 Manajemen Fakultas Ekonomi dan Bisnis Universitas Mataram', 'Joint Research', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(129, 'Program Studi S1 Manajemen Fakultas Ekonomi dan Bisnis Universitas Mataram', 'Guest Lecture', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(130, 'Program Studi S1 Manajemen Fakultas Ekonomi dan Bisnis Universitas Mataram', 'Lecturer Exchange', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(131, 'PT Precision Agriculture Indonesia', 'MBKM Curriculum Implementation', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(132, 'Fakultas Ekonomi dan Bisnis Universitas Lambung Mangkurat', 'MBKM Curriculum Implementation', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(133, 'Fakultas Ekonomi dan Bisnis Universitas Lambung Mangkurat (Vokasi)', 'MBKM Curriculum Implementation', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(134, 'Sekolah Tinggi Ilmu Ekonomi Widya Gama Lumajang', 'Indonesian Conference Activities', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(135, 'Program Studi S1 Manajemen Fakultas Pendidikan Ekonomi dan Bisnis Universitas Pendidikan Indonesia', 'Student Exchange', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(136, 'Program Studi S1 Manajemen Fakultas Pendidikan Ekonomi dan Bisnis Universitas Pendidikan Indonesia', 'Lecturer Exchange', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(137, 'Program Studi S1 Manajemen Fakultas Pendidikan Ekonomi dan Bisnis Universitas Pendidikan Indonesia', 'Journal Reviewer Exchange', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(138, 'Program Studi S1 Manajemen Fakultas Pendidikan Ekonomi dan Bisnis Universitas Pendidikan Indonesia', 'Journal Editor Exchange', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(139, 'Program Studi S1 Manajemen Fakultas Pendidikan Ekonomi dan Bisnis Universitas Pendidikan Indonesia', 'Joint Research', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(140, 'Program Studi S1 Manajemen Fakultas Pendidikan Ekonomi dan Bisnis Universitas Pendidikan Indonesia', 'National Seminar', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(141, 'Program Studi S1 Manajemen Fakultas Pendidikan Ekonomi dan Bisnis Universitas Pendidikan Indonesia', 'Guest Lecture', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(142, 'Program Studi S1 Manajemen Fakultas Pendidikan Ekonomi dan Bisnis Universitas Pendidikan Indonesia', 'Project in the Village', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(143, 'Universitas Terbuka Jember', 'Implementation of the Master of Management Study Program', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(144, 'Fakultas Ekonomi dan Bisnis Universitas Jendral Soedirman', 'Implementation of MBKM', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(145, 'Dompet Amanah Umat (DAU)', 'Independent Campus Learning Program', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(146, 'Badan Pendapatan, Pengelolaan Keuangan dan Aset Daerah Kota Probolinggo', 'Organizing Internship Activities for Lecturers, Students and Organizing Research Activities at the Agency for Revenue, Financial Management and Regional Assets in Probolinggo City', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(147, 'Sekretariat Jenderal Kementerian Keuangan', 'Implementation of the Collaborative Program for Increasing the Capacity of Human Resources and Organizational Knowledge Capacity', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(148, 'Yayasan Inisiatif Zakat Indonesia (IZI)', 'Independent Campus Learning Program', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(149, 'Institut Akuntan Publik Indonesia (IAPI)', 'Implementation of the Public Accountant Professional Examination', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(150, 'Laz. Azka Al Baitul Amien Jember', 'Independent Campus Learning Program', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(151, 'PT. Selecta', 'Strengthening and Development of Higher Education Tridharma Implementation', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(152, 'Amke KTH Panderman Kota Batu', 'Strengthening and Development of Higher Education Tridharma Implementation', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(153, 'Fakultas Ekonomi dan Bisnis Universitas Syiah Kuala', 'Implementation of MBKM', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(154, 'PT. Mitratani Dua Tujuh', 'Strengthening and Development of Higher Education Tridharma Implementation', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(155, 'Politeknik Negeri Banyuwangi', 'Development of Economics, Management, and Accounting', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(156, 'SMK 2 Pancasila Jember', 'Strengthening and Development of Higher Education Tridharma Implementation', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(157, 'Fakultas Ekonomi dan Bisnis Universitas Udayana', 'Development of Economics, Management, and Accounting', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(158, 'Pemerintah Kabupaten Situbondo', 'Implementation of Internship Activities and Student Research Activities in the Situbondo Regency Government Environment', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(159, 'GHG Management Institute', 'Human Resource Development Programme', '2021-01-01', 'International', '2026-03-22 10:28:21'),
(160, 'Atlantis Press', 'Publishing international proceedings', '2021-01-01', 'International', '2026-03-22 10:28:21'),
(161, 'National Taipei University of Technology', 'Research collaboration, BISMA journal reviewer, ICOMBEST keynote speaker', '2021-01-01', 'International', '2026-03-22 10:28:21'),
(162, 'ASEAN Foundation', 'Cooperation in education and human resource development programs', '2021-01-01', 'International', '2026-03-22 10:28:21'),
(163, 'Bank Syariah Indonesia Area Jember', 'Implementasi Kurikulum MBKM', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(164, 'Fakultas Ekonomi dan Bisnis Universitas Brawijaya', 'Implementasi Kurikulum MBKM', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(165, 'PT Intidaya Dinamika Sejati', 'Implementasi Kurikulum MBKM', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(166, 'Program Studi S1 Manajemen Fakultas Ekonomi Universitas Negeri Surabaya', 'Proyek di Desa', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(167, 'Program Studi S1 Manajemen Fakultas Ekonomi Universitas Negeri Surabaya', 'Pertukaran Reviewer Jurnal', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(168, 'Program Studi S1 Manajemen Fakultas Ekonomi Universitas Negeri Surabaya', 'Pertukaran Editor Jurnal', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(169, 'Program Studi S1 Manajemen Fakultas Ekonomi Universitas Negeri Surabaya', 'Penelitian Bersama (Joint Research)', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(170, 'Program Studi S1 Manajemen Fakultas Ekonomi Universitas Negeri Surabaya', 'Kuliah Tamu', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(171, 'Program Studi S1 Manajemen Fakultas Ekonomi Universitas Negeri Surabaya', 'Pertukaran Dosen', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(172, 'Program Studi S1 Manajemen Fakultas Ekonomi Universitas Negeri Surabaya', 'Seminar Nasional', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(173, 'Program Studi S1 Manajemen Fakultas Ekonomi Universitas Negeri Surabaya', 'Pertukaran Mahasiswa', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(174, 'Fakultas Ekonomi dan Bisnis Islam IAIN Jember', 'Implementasi Kurikulum MBKM', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(175, 'Program Studi S1 Manajemen Fakultas Ekonomi Universitas Negeri Malang', 'Kuliah Tamu', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(176, 'Program Studi S1 Manajemen Fakultas Ekonomi Universitas Negeri Malang', 'Penelitian Bersama (Joint Research)', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(177, 'Program Studi S1 Manajemen Fakultas Ekonomi Universitas Negeri Malang', 'Pertukaran Dosen', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(178, 'Program Studi S1 Manajemen Fakultas Ekonomi Universitas Negeri Malang', 'Pertukaran Editor Jurnal', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(179, 'Program Studi S1 Manajemen Fakultas Ekonomi Universitas Negeri Malang', 'Pertukaran Reviewer Jurnal', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(180, 'Program Studi S1 Manajemen Fakultas Ekonomi Universitas Negeri Malang', 'Proyek di Desa', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(181, 'Program Studi S1 Manajemen Fakultas Ekonomi Universitas Negeri Malang', 'Seminar Nasional', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(182, 'Program Studi S1 Manajemen Fakultas Ekonomi Universitas Negeri Malang', 'Pertukaran Mahasiswa', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(183, 'BPJS Ketenagakerjaan', 'Implementasi Kurikulum MBKM', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(184, 'Program Studi S1 Manajemen Fakultas Ekonomi dan Bisnis Universitas Mataram', 'Pertukaran Mahasiswa', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(185, 'Program Studi S1 Manajemen Fakultas Ekonomi dan Bisnis Universitas Mataram', 'Seminar Nasional', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(186, 'Program Studi S1 Manajemen Fakultas Ekonomi dan Bisnis Universitas Mataram', 'Proyek di Desa', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(187, 'Program Studi S1 Manajemen Fakultas Ekonomi dan Bisnis Universitas Mataram', 'Pertukaran Reviewer Jurnal', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(188, 'Program Studi S1 Manajemen Fakultas Ekonomi dan Bisnis Universitas Mataram', 'Pertukaran Editor Jurnal', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(189, 'Program Studi S1 Manajemen Fakultas Ekonomi dan Bisnis Universitas Mataram', 'Penelitian Bersama (Joint Research)', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(190, 'Program Studi S1 Manajemen Fakultas Ekonomi dan Bisnis Universitas Mataram', 'Kuliah Tamu', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(191, 'Program Studi S1 Manajemen Fakultas Ekonomi dan Bisnis Universitas Mataram', 'Pertukaran Dosen', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(192, 'PT Precision Agriculture Indonesia', 'Implementasi Kurikulum MBKM', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(193, 'Fakultas Ekonomi dan Bisnis Universitas Lambung Mangkurat', 'Implementasi Kurikulum MBKM', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(194, 'Fakultas Ekonomi dan Bisnis Universitas Lambung Mangkurat (Vokasi)', 'Implementasi Kurikulum MBKM', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(195, 'Sekolah Tinggi Ilmu Ekonomi Widya Gama Lumajang', 'Kegiatan Indonesian Conference', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(196, 'Program Studi S1 Manajemen Fakultas Pendidikan Ekonomi dan Bisnis Universitas Pendidikan Indonesia', 'Pertukaran Mahasiswa', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(197, 'Program Studi S1 Manajemen Fakultas Pendidikan Ekonomi dan Bisnis Universitas Pendidikan Indonesia', 'Pertukaran Dosen', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(198, 'Program Studi S1 Manajemen Fakultas Pendidikan Ekonomi dan Bisnis Universitas Pendidikan Indonesia', 'Pertukaran Reviewer Jurnal', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(199, 'Program Studi S1 Manajemen Fakultas Pendidikan Ekonomi dan Bisnis Universitas Pendidikan Indonesia', 'Pertukaran Editor Jurnal', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(200, 'Program Studi S1 Manajemen Fakultas Pendidikan Ekonomi dan Bisnis Universitas Pendidikan Indonesia', 'Penelitian Bersama (Joint Research)', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(201, 'Program Studi S1 Manajemen Fakultas Pendidikan Ekonomi dan Bisnis Universitas Pendidikan Indonesia', 'Seminar Nasional', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(202, 'Program Studi S1 Manajemen Fakultas Pendidikan Ekonomi dan Bisnis Universitas Pendidikan Indonesia', 'Kuliah Tamu', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(203, 'Program Studi S1 Manajemen Fakultas Pendidikan Ekonomi dan Bisnis Universitas Pendidikan Indonesia', 'Proyek di Desa', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(204, 'Universitas Terbuka Jember', 'Penyelenggaraan Program Studi Magister Manajemen', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(205, 'Fakultas Ekonomi dan Bisnis Universitas Jendral Soedirman', 'Penyelenggaraan MBKM', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(206, 'Dompet Amanah Umat (DAU)', 'Program Merdeka Belajar Kampus Merdeka', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(207, 'Badan Pendapatan, Pengelolaan Keuangan dan Aset Daerah Kota Probolinggo', 'Penyelenggaraan Kegiatan Magang Dosen, Mahasiswa dan Penyelenggaraan Kegiatan Penelitian di Badan Pendapatan, Pengelolaan Keuangan dan Aset Daerah Kota Probolinggo', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(208, 'Sekretariat Jenderal Kementerian Keuangan', 'Pelaksanaan Program Kolaborasi Peningkatan Kapasitas Sumber Daya Manusia dan Kapasitas Pengetahuan Organisasi', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(209, 'Yayasan Inisiatif Zakat Indonesia (IZI)', 'Program Merdeka Belajar Kampus Merdeka', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(210, 'Institut Akuntan Publik Indonesia (IAPI)', 'Pelaksanaan Ujian Profesi Akuntan Publik', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(211, 'Laz. Azka Al Baitul Amien Jember', 'Program Merdeka Belajar Kampus Merdeka', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(212, 'PT. Selecta', 'Penguatan dan Pengembangan Penyelenggaraan Tridharma Perguruan Tinggi', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(213, 'Amke KTH Panderman Kota Batu', 'Penguatan dan Pengembangan Penyelenggaraan Tridharma Perguruan Tinggi', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(214, 'Fakultas Ekonomi dan Bisnis Universitas Syiah Kuala', 'Penyelenggaraan MBKM', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(215, 'PT. Mitratani Dua Tujuh', 'Penguatan dan Pengembangan Penyelenggaraan Tridharma Perguruan Tinggi', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(216, 'Politeknik Negeri Banyuwangi', 'Pengembangan Ilmu Ekonomi, Manajemen, dan Akuntansi', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(217, 'SMK 2 Pancasila Jember', 'Penguatan dan Pengembangan Penyelenggaraan Tridharma Perguruan Tinggi', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(218, 'Fakultas Ekonomi dan Bisnis Universitas Udayana', 'Pengembangan Ilmu Ekonomi, Manajemen, dan Akuntansi', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(219, 'Pemerintah Kabupaten Situbondo', 'Pelaksanaan Kegiatan Magang Serta Kegiatan Penelitian Mahasiswa di Lingkungan Pemerintah Kabupaten Situbondo', '2021-01-01', 'National', '2026-03-22 10:28:21'),
(220, 'Perusahaan Umum Daerah Air Minum Tirta Pandalungan Kab. Jember', 'MBKM Curriculum Implementation', '2020-01-01', 'National', '2026-03-22 10:28:21'),
(221, 'PT Hutama Karya (Persero)', 'Tridharma Higher Education and Institutional Development', '2020-01-01', 'National', '2026-03-22 10:28:21'),
(222, 'Kepala Desa Karangbayat Kecamatan Sumberbaru Kabupaten Jember', 'Improving the Tri Dharma of Higher Education', '2020-01-01', 'National', '2026-03-22 10:28:21'),
(223, 'Akademi Kesehatan Rustida', 'Strengthening and Development of Higher Education Tridharma Implementation', '2020-01-01', 'National', '2026-03-22 10:28:21'),
(224, 'Kepala Sekolah SMA PGRI 10 Glenmore Kab. Banyuwangi', 'Improving the Tri Dharma of Higher Education', '2020-01-01', 'National', '2026-03-22 10:28:21'),
(225, 'SMPN 1 Kota Mojokerto', 'Improving the Tri Dharma of Higher Education', '2020-01-01', 'National', '2026-03-22 10:28:21'),
(226, 'Ecological Observation and Wetland Convervation (ECOTON)', 'Improving the Tri Dharma of Higher Education', '2020-01-01', 'National', '2026-03-22 10:28:21'),
(227, 'Asosiasi Fakultas Ekonomi dan Bisnis Indonesia', 'Development in the Fields of Education, Research and Community Service', '2020-01-01', 'National', '2026-03-22 10:28:21'),
(228, 'Institute of Certified Sustainability Practitioners (ICSP)', 'Improving the Tri Dharma of Higher Education', '2020-01-01', 'International', '2026-03-22 10:28:21'),
(229, 'Perusahaan Umum Daerah Air Minum Tirta Pandalungan Kab. Jember', 'Implementasi Kurikulum MBKM', '2020-01-01', 'National', '2026-03-22 10:28:21'),
(230, 'PT Hutama Karya (Persero)', 'Tridharma Perguruan Tinggi dan Pengembangan Kelembagaan', '2020-01-01', 'National', '2026-03-22 10:28:21'),
(231, 'Kepala Desa Karangbayat Kecamatan Sumberbaru Kabupaten Jember', 'Meningkatan Tri Dharma Perguruan Tinggi', '2020-01-01', 'National', '2026-03-22 10:28:21'),
(232, 'Akademi Kesehatan Rustida', 'Penguatan dan Pengembangan Penyelenggaraan Tridharma Perguruan Tinggi', '2020-01-01', 'National', '2026-03-22 10:28:21'),
(233, 'Kepala Sekolah SMA PGRI 10 Glenmore Kab. Banyuwangi', 'Meningkatan Tri Dharma Perguruan Tinggi', '2020-01-01', 'National', '2026-03-22 10:28:21'),
(234, 'SMPN 1 Kota Mojokerto', 'Meningkatan Tri Dharma Perguruan Tinggi', '2020-01-01', 'National', '2026-03-22 10:28:21'),
(235, 'Ecological Observation and Wetland Convervation (ECOTON)', 'Meningkatan Tri Dharma Perguruan Tinggi', '2020-01-01', 'National', '2026-03-22 10:28:21'),
(236, 'Asosiasi Fakultas Ekonomi dan Bisnis Indonesia', 'Pengembangan di Bidang Pendidikan, Penelitian dan Pengabdian Kepada Masyarakat', '2020-01-01', 'National', '2026-03-22 10:28:21'),
(237, 'PT Pelabuhan Indonesia III (Persero)', 'Implementing a Certified Student Internship Program to Improve Skills', '2019-01-01', 'National', '2026-03-22 10:28:21'),
(238, 'Institut Akuntan Publik Indonesia', 'Improving Exam Quality, Human Resource Capacity, and Synergy between Agencies', '2019-01-01', 'National', '2026-03-22 10:28:21'),
(239, 'Badan Penelitian dan Pengembangan Pertanian, Kementerian Pertanian Republik Indonesia (BALITJESTRO)', 'Research and Community Service in Agriculture', '2019-01-01', 'National', '2026-03-22 10:28:21'),
(240, 'Asosiasi Dosen dan Peneliti Perkoperasian Indonesia (ADOPKOP-INDONESIA)', 'Establishing Synergy between Human Resource Providers', '2019-01-01', 'National', '2026-03-22 10:28:21'),
(241, 'Fakultas Ekonomi Universitas Terbuka', 'Institutional Development by Utilizing Resources', '2019-01-01', 'National', '2026-03-22 10:28:21'),
(242, 'Institute of Internal Auditors Indonesia (IIA Indonesia)', 'Improving the Tri Dharma of Higher Education', '2019-01-01', 'International', '2026-03-22 10:28:21'),
(243, 'PT Pelabuhan Indonesia III (Persero)', 'Melaksanakan Program Magang Mahasiswa Bersertifikat untuk Meningkatkan Keterampilan', '2019-01-01', 'National', '2026-03-22 10:28:21'),
(244, 'Institut Akuntan Publik Indonesia', 'Meningkatan Kualitas Ujian, Kapasitas Sumber Daya Manusia, dan Sinergi antar Instansi', '2019-01-01', 'National', '2026-03-22 10:28:21'),
(245, 'Badan Penelitian dan Pengembangan Pertanian, Kementerian Pertanian Republik Indonesia (BALITJESTRO)', 'Penelitian dan Pengabdian Kepada Masyarakat dalam Bidang Pertanian', '2019-01-01', 'National', '2026-03-22 10:28:21'),
(246, 'Asosiasi Dosen dan Peneliti Perkoperasian Indonesia (ADOPKOP-INDONESIA)', 'Menjalin Sinergitas antar Penyedia Sumber Daya Manusia', '2019-01-01', 'National', '2026-03-22 10:28:21'),
(247, 'Fakultas Ekonomi Universitas Terbuka', 'Pengembangan Kelembagaan dengan Memanfaatkan Sumber Daya', '2019-01-01', 'National', '2026-03-22 10:28:21'),
(248, 'Paket Kompetensi Keahlian Akuntansi dan Keuangan Lembaga SMKN 6 Jember', '-', '2018-01-01', 'National', '2026-03-22 10:28:21'),
(249, 'PT Telekomunikasi Indonesia Tbk (Jember)', 'Academic Support', '2018-01-01', 'National', '2026-03-22 10:28:21'),
(250, 'Bank Syariah Mandiri (BSM)', 'Corporate Social Responsibility (CSR)', '2018-01-01', 'National', '2026-03-22 10:28:21'),
(251, 'PT Pos Indonesia Cabang Probolinggo', 'Academic Support', '2018-01-01', 'National', '2026-03-22 10:28:21'),
(252, 'PT Sun Life Financial Indonesia', 'Improving the Tri Dharma of Higher Education', '2018-01-01', 'National', '2026-03-22 10:28:21'),
(253, 'Bank Indonesia Institute', 'Supporting Research in the Field of Economics and Central Banking', '2018-01-01', 'National', '2026-03-22 10:28:21'),
(254, 'Trust Unified Systems', 'Obtained Certification from Microsoft Learning Solution', '2018-01-01', 'International', '2026-03-22 10:28:21'),
(255, 'Paket Kompetensi Keahlian Akuntansi dan Keuangan Lembaga SMKN 6 Jember', '-', '2018-01-01', 'National', '2026-03-22 10:28:21'),
(256, 'PT Telekomunikasi Indonesia Tbk (Jember)', 'Pendukung Akademik', '2018-01-01', 'National', '2026-03-22 10:28:21'),
(257, 'Bank Syariah Mandiri (BSM)', 'Corporate Social Responsibility (CSR)/ Tanggung Jawab Social Perusahaan', '2018-01-01', 'National', '2026-03-22 10:28:21'),
(258, 'PT Pos Indonesia Cabang Probolinggo', 'Pendukung Akademik', '2018-01-01', 'National', '2026-03-22 10:28:21'),
(259, 'PT Sun Life Financial Indonesia', 'Meningkatan Tri Dharma Perguruan Tinggi', '2018-01-01', 'National', '2026-03-22 10:28:21'),
(260, 'Bank Indonesia Institute', 'Mendukung Penelitian di Bidang Ekonomi dan Kebanksentralan', '2018-01-01', 'National', '2026-03-22 10:28:21'),
(261, 'Trust Unified Systems', 'Memperoleh Sertifikasi dari Microsoft Learning Solution', '2018-01-01', 'National', '2026-03-22 10:28:21'),
(262, 'Business Administration and Humanities Department University College of Bahrain', 'Promote Cultural, Educational, Research, Internship and Scholarly Exchange', '2017-01-01', 'International', '2026-03-22 10:28:21'),
(263, 'Matastrategy Inc Toronto Canada', 'Promote Cultural, Educational, Research, Internship and Scholarly Exchange', '2017-01-01', 'International', '2026-03-22 10:28:21'),
(264, 'University of San Carlos', 'Student exchange, professorship exchange', '2009-01-01', 'International', '2026-03-22 10:28:21'),
(265, 'Ikatan Akuntan Indonesia (IAI) Wilayah Jawa Timur', '-', '2023-01-01', 'National', '2026-03-22 10:45:01'),
(266, 'System Dynamics Center', '-', '2023-01-01', 'National', '2026-03-22 10:46:10'),
(267, 'PT. Djarum', '-', '2023-01-01', 'National', '2026-03-22 10:46:31'),
(268, 'Ikatan Akuntan Indonesia Kompartemen Akuntan Pendidik (IAI KAPd)', '-', '2023-01-01', 'National', '2026-03-22 10:46:50'),
(269, 'Fakultas Studi Akademik Universitas Sains dan Teknologi Komputer (Universitas Stekom)', '-', '2024-01-01', 'National', '2026-03-22 10:47:05'),
(270, 'Trust Academic Solutions', '-', '2024-01-01', 'National', '2026-03-22 10:47:19');

-- --------------------------------------------------------

--
-- Table structure for table `photo_gallery`
--

CREATE TABLE `photo_gallery` (
  `id` int NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT (now())
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `research_groups`
--

CREATE TABLE `research_groups` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `coordinator` int DEFAULT NULL,
  `roadmap` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT (now())
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `research_group_members`
--

CREATE TABLE `research_group_members` (
  `id` int NOT NULL,
  `research_group_id` int NOT NULL,
  `member_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT (now())
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `token_id` varchar(255) NOT NULL,
  `refresh_token_hash` varchar(255) NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `is_revoked` tinyint(1) DEFAULT '0',
  `expires_at` timestamp NOT NULL,
  `created_at` timestamp NULL DEFAULT (now())
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `token_id`, `refresh_token_hash`, `user_agent`, `ip_address`, `is_revoked`, `expires_at`, `created_at`) VALUES
(1, 23, '23-7cc30e45-8aa8-442c-80db-2c179856dfd7', '$2b$10$STYqV7n7FRWDw0iuseaVl.Ie2Xp6glZnP2bHU1B8rMyQepM5VITCm', NULL, NULL, 0, '2026-03-29 02:38:28', '2026-03-15 09:38:28'),
(2, 23, '23-d39312c1-adce-485f-88bb-0424b3f62bba', '$2b$10$FAxqjIJWItys.z4JhafUcu5QWYYQOg.AEVYxGnh8Kd/RxTL9uVPd.', NULL, NULL, 0, '2026-03-29 02:44:40', '2026-03-15 09:44:39'),
(3, 21, '21-6255e18b-eba9-4f42-91c8-0c0eb1244ef8', '$2b$10$6uJpISCiYB5so0F68WWVoecUiGVGHCbSv6BbZ3nWFrNqxF5aQdyhu', NULL, NULL, 0, '2026-03-29 02:48:35', '2026-03-15 09:48:34'),
(4, 23, '23-1366af39-2635-4fbb-89e3-09c26b46bc65', '$2b$10$DxgN5XE8B98pRWFJVJOGvezNxZCsS7W2Kq40t1lf5/WDm9wEHxt6m', NULL, NULL, 0, '2026-04-02 19:25:34', '2026-03-20 02:25:33'),
(5, 23, '23-9252098e-f07d-459e-aba0-77fb2380224c', '$2b$10$vpSWREJUcLzBCzFlDDFpvO1fC8J9PkjHsRd0kGQbZzQnsj/gHiFTW', NULL, NULL, 0, '2026-04-04 18:32:55', '2026-03-22 01:32:55');

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

CREATE TABLE `staffs` (
  `id` int NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `name` varchar(60) NOT NULL,
  `nip` varchar(20) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `academic_level` varchar(60) DEFAULT NULL,
  `attachments` text,
  `front_title` varchar(20) DEFAULT NULL,
  `back_title` varchar(100) DEFAULT NULL,
  `nidn` varchar(20) DEFAULT NULL,
  `nuptk` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT (now())
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `staffs`
--

INSERT INTO `staffs` (`id`, `photo`, `name`, `nip`, `email`, `academic_level`, `attachments`, `front_title`, `back_title`, `nidn`, `nuptk`, `created_at`) VALUES
(1, 'https://placehold.co/300x400', 'Aderharda Boru Sibasopait,S.S., M.M', '197105172005012001', '1774785239956@staff.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 11:54:00'),
(2, 'https://placehold.co/300x400', 'Dr. Teguh Hadi Priyono, S.E., M.Si.', '197002061994031002', '1774785239956@staff.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 11:54:00'),
(3, 'https://placehold.co/300x400', 'Sugianto, S.E., M.M.', '196901131994031001', '1774785239957@staff.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 11:54:00'),
(4, 'https://placehold.co/300x400', 'Nurina Fitrianingtyas, SKM.', '198406182009022004', '1774785239957@staff.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 11:54:00'),
(5, 'https://placehold.co/300x400', 'Fida Lailu Fajri, S.E', '198603302010122006', '1774785239958@staff.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 11:54:00'),
(6, 'https://placehold.co/300x400', 'Harsih Agustinah S.H.', '196708121993032002', '1774785239958@staff.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 11:54:00'),
(7, 'https://placehold.co/300x400', 'Yana Sri Rukmini, S.E.', '198004202008102001', '1774785239959@staff.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 11:54:00'),
(8, 'https://placehold.co/300x400', 'Elfi Agustin Ariyani, S.E.', '197708142008102001', '1774785239959@staff.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 11:54:00'),
(9, 'https://placehold.co/300x400', 'Murtiningsih', '196904282005012002', '1774785239960@staff.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 11:54:00'),
(10, 'https://placehold.co/300x400', 'Taufik Purwanto', '197607092008101001', '1774785239960@staff.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 11:54:00'),
(11, 'https://placehold.co/300x400', 'Sugik Yulianto', '197607222008101001', '1774785239961@staff.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 11:54:00'),
(12, 'https://placehold.co/300x400', 'Totok Yuswantoro', '197107232008101001', '1774785239962@staff.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 11:54:00'),
(13, 'https://placehold.co/300x400', 'Fit Hariono, SE', '198008112009101001', '1774785239962@staff.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 11:54:00'),
(14, 'https://placehold.co/300x400', 'Ahmad Suyanto', '197005072007011003', '1774785239963@staff.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 11:54:00'),
(15, 'https://placehold.co/300x400', 'Ahmad Sugiono', '197607042007011001', '1774785239963@staff.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 11:54:00'),
(16, 'https://placehold.co/300x400', 'Untung Slamet', '197407122007011001', '1774785239964@staff.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 11:54:00'),
(17, 'https://placehold.co/300x400', 'Agus Wahyudi', '196908152014091003', '1774785239964@staff.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 11:54:00'),
(18, 'https://placehold.co/300x400', 'Syaiful Bahri', '197405152014091004', '1774785239964@staff.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 11:54:00'),
(19, 'https://placehold.co/300x400', 'Jamal', '760011408', '1774785239966@staff.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 11:54:00'),
(20, 'https://placehold.co/300x400', 'Ika Agusdini Putri, S.E.', '199108022025212059', '1774785239967@staff.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 11:54:00'),
(21, 'https://placehold.co/300x400', 'Mimin', '1', '1774785239969@staff.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 11:54:00'),
(22, 'https://placehold.co/300x400', 'Moch. Nadiri Edy R.', '197501212025211011', '1774785239970@staff.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 11:54:00'),
(23, 'https://placehold.co/300x400', 'Maryo Setiyo Adi, ST', '198203032025211065', '1774785239970@staff.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 11:54:00'),
(24, 'https://placehold.co/300x400', 'Adhitya Endar Perdana, S.Sos., M.M', '198807092025211062', '1774785239971@staff.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 11:54:00'),
(25, 'https://placehold.co/300x400', 'Moch. Komar', '197301122025211019', '1774785239972@staff.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 11:54:00'),
(26, 'https://placehold.co/300x400', 'Dwi Rekto Yulianto, S.Pd.', '198607222025211039', '1774785239972@staff.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 11:54:00'),
(27, 'https://placehold.co/300x400', 'Indah Hendarti, S.Sos.', '198411232025212027', '1774785239972@staff.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 11:54:00'),
(28, 'https://placehold.co/300x400', 'Robby Hendrawijaya', '197604062025211033', '1774785239973@staff.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 11:54:00'),
(29, 'https://placehold.co/300x400', 'Taufik', '197804112025211024', '1774785239973@staff.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 11:54:00'),
(30, 'https://placehold.co/300x400', 'Hermanto', '198102252025211027', '1774785239974@staff.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 11:54:00'),
(31, 'https://placehold.co/300x400', 'Ach Muslech Ansori', '197404172025211021', '1774785239974@staff.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 11:54:00'),
(32, 'https://placehold.co/300x400', 'Syaiful Bahri', '198101222025211023', '1774785239975@staff.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 11:54:00'),
(33, 'https://placehold.co/300x400', 'Ani Budiarti, A.Md.', '198302282025212028', '1774785239975@staff.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 11:54:00'),
(34, 'https://placehold.co/300x400', 'Yunita Dwihapsari M., S.E.', '197706042025212023', '1774785239976@staff.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 11:54:00'),
(35, 'https://placehold.co/300x400', 'Ervan Mulyono', '197804262025211024', '1774785239976@staff.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 11:54:00'),
(36, 'https://placehold.co/300x400', 'Lusi Ana Farisa, S.E.', '198706152025212063', '1774785239976@staff.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 11:54:00'),
(37, 'https://placehold.co/300x400', 'Marjo', '197208152025211019', '1774785239977@staff.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 11:54:00'),
(38, 'https://placehold.co/300x400', 'Fausi', '197302162025211015', '1774785239977@staff.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 11:54:00'),
(39, 'https://placehold.co/300x400', 'Mohamad Halim', '199002152025211050', '1774785239978@staff.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 11:54:00'),
(40, 'https://placehold.co/300x400', 'Muslim', '197007162025211017', '1774785239979@staff.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 11:54:00'),
(41, 'https://placehold.co/300x400', 'Tri Bekti Sulistiyo', '196909192025211017', '1774785239979@staff.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 11:54:00'),
(42, 'https://placehold.co/300x400', 'Yudi Yanto', '198802132025211056', '1774785239979@staff.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 11:54:00'),
(43, 'https://placehold.co/300x400', 'Purnomo Adi Nugroho, S.H.', '760017034', '1774785239980@staff.feb.unej.com', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-29 11:54:00');

-- --------------------------------------------------------

--
-- Table structure for table `static_content`
--

CREATE TABLE `static_content` (
  `id` int NOT NULL,
  `key` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT (now())
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(120) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT (now())
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`) VALUES
(21, 'fahim', 'fahim@gmail.com', '$2b$10$b2AngRN6Q9MGvkbCS/IcEOhni8/2Sk2qTa3cuW.vo122Q5lTmkNTG', '2026-03-13 23:39:59'),
(23, 'admin', 'admin@feb.unej.com', '$2b$10$gDHHxitjLnTnz0bzDE3j6.rhfcI7XU49cFxd3BdtnsI957t91Xgr.', '2026-03-14 10:46:32');

-- --------------------------------------------------------

--
-- Table structure for table `video_gallery`
--

CREATE TABLE `video_gallery` (
  `id` int NOT NULL,
  `video_url` varchar(255) NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT (now())
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accreditation`
--
ALTER TABLE `accreditation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accreditation_major_id_majors_id_fk` (`major_id`);

--
-- Indexes for table `degrees`
--
ALTER TABLE `degrees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lectures`
--
ALTER TABLE `lectures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `majors`
--
ALTER TABLE `majors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `majors_degree_id_degrees_id_fk` (`degree_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_slug_unique` (`slug`),
  ADD KEY `news_category_id_news_categories_id_fk` (`category_id`);

--
-- Indexes for table `news_categories`
--
ALTER TABLE `news_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partnerships`
--
ALTER TABLE `partnerships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photo_gallery`
--
ALTER TABLE `photo_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `research_groups`
--
ALTER TABLE `research_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `research_groups_coordinator_lectures_id_fk` (`coordinator`);

--
-- Indexes for table `research_group_members`
--
ALTER TABLE `research_group_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `research_group_members_research_group_id_research_groups_id_fk` (`research_group_id`),
  ADD KEY `research_group_members_member_id_lectures_id_fk` (`member_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_users_id_fk` (`user_id`);

--
-- Indexes for table `staffs`
--
ALTER TABLE `staffs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `static_content`
--
ALTER TABLE `static_content`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `static_content_key_unique` (`key`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `video_gallery`
--
ALTER TABLE `video_gallery`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accreditation`
--
ALTER TABLE `accreditation`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `degrees`
--
ALTER TABLE `degrees`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lectures`
--
ALTER TABLE `lectures`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `majors`
--
ALTER TABLE `majors`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=689905;

--
-- AUTO_INCREMENT for table `news_categories`
--
ALTER TABLE `news_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `partnerships`
--
ALTER TABLE `partnerships`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

--
-- AUTO_INCREMENT for table `photo_gallery`
--
ALTER TABLE `photo_gallery`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `research_groups`
--
ALTER TABLE `research_groups`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `research_group_members`
--
ALTER TABLE `research_group_members`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `staffs`
--
ALTER TABLE `staffs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `static_content`
--
ALTER TABLE `static_content`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `video_gallery`
--
ALTER TABLE `video_gallery`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accreditation`
--
ALTER TABLE `accreditation`
  ADD CONSTRAINT `accreditation_major_id_majors_id_fk` FOREIGN KEY (`major_id`) REFERENCES `majors` (`id`);

--
-- Constraints for table `majors`
--
ALTER TABLE `majors`
  ADD CONSTRAINT `majors_degree_id_degrees_id_fk` FOREIGN KEY (`degree_id`) REFERENCES `degrees` (`id`);

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_category_id_news_categories_id_fk` FOREIGN KEY (`category_id`) REFERENCES `news_categories` (`id`);

--
-- Constraints for table `research_groups`
--
ALTER TABLE `research_groups`
  ADD CONSTRAINT `research_groups_coordinator_lectures_id_fk` FOREIGN KEY (`coordinator`) REFERENCES `lectures` (`id`);

--
-- Constraints for table `research_group_members`
--
ALTER TABLE `research_group_members`
  ADD CONSTRAINT `research_group_members_member_id_lectures_id_fk` FOREIGN KEY (`member_id`) REFERENCES `lectures` (`id`),
  ADD CONSTRAINT `research_group_members_research_group_id_research_groups_id_fk` FOREIGN KEY (`research_group_id`) REFERENCES `research_groups` (`id`);

--
-- Constraints for table `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `sessions_user_id_users_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
