-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 09, 2025 at 03:52 PM
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
-- Database: `data`
--

-- --------------------------------------------------------

--
-- Table structure for table `clinics`
--

CREATE TABLE `clinics` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pass` int(11) DEFAULT NULL,
  `ratings` float DEFAULT NULL,
  `mobile` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clinics`
--

INSERT INTO `clinics` (`id`, `email`, `name`, `pass`, `ratings`, `mobile`) VALUES
(1, 'testclinic@gmail.com', 'clinicA', 999, 4.5, '0'),
(2, 'lol@gmail.com', 'clinicB', 777, NULL, ''),
(3, 'new@gmail.com', 'clinicC', 111, NULL, ''),
(4, 'new2@gmail.com', 'clinicD', 222, NULL, '123456789');

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `sl` int(3) DEFAULT NULL,
  `name` varchar(29) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `clinic_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`sl`, `name`, `price`, `clinic_id`) VALUES
(1, 'fungal culture', 300, 1),
(2, 'p/s gm. Stain (gc)', NULL, 2),
(3, 'v.swab for AFB', 300, 4),
(4, 'p/s for cytology', 300, 3),
(5, 'throat for c/s', 500, 1),
(6, 'aural swab r/e m/e', 300, 2),
(7, 'sputum fungus for c/s', 600, 2),
(8, 'skin for scr.fungus for c/s', 700, 4),
(9, 'fluid c/s for anarobic', 1400, 4),
(10, 'csf for afb c/s', 700, 1),
(11, 'csf for anarobic c/s', 700, 4),
(12, 'HLA-B27 (not diab)', 4000, 2),
(13, 'PCR MTB DNA', 6000, 4),
(14, 'ASO TIRE', 6000, 2),
(15, 'C3', 600, 3),
(16, 'C4', 1000, 4),
(17, 'CRP', 1000, 2),
(18, 'CSF TPHA (Q+Q)', 600, 4),
(19, 'FEBRILE/TRIPLE antigen', 750, 4),
(20, 'HBsAg (ICT)', 900, 3),
(21, 'HBsAg (RPHA)', 600, 3),
(22, 'HBsAg latex', 500, 2),
(23, 'HIV (R)', 350, 1),
(24, 'ICT FILARIA', 400, 4),
(25, 'ICT FOR T.B', 900, 4),
(26, 'ICT Kala Azar', 900, 3),
(27, 'ICT malaria', 800, 2),
(28, 'Ige serum', 900, 1),
(29, 'R/A test', 950, 4),
(30, 'Rose waaler test', 600, 4),
(31, 'serum screening test', 400, 3),
(32, 'TPHA', 1500, 3),
(33, 'TPHA (Q+Q)', 700, 4),
(34, 'Urine P.t', 750, 2),
(35, 'VDRL', 250, 4),
(36, 'Widal test', 500, 2),
(37, 'Anti-HCV (ICT)', 450, 2),
(38, 'HCG for urine', 1000, 3),
(39, 'FIBRONECTIN', 250, 2),
(40, 'SKIN scrapping M/E', 800, 2),
(41, 'COOMB\'s direct', 300, 4),
(42, 'Prealbumin', 600, 1),
(43, 'Albumin (serum)', 1000, 4),
(44, 'ALDOLASE', 300, 2),
(45, 'Alkaline phosphate (ALP)', 1100, 1),
(46, 'AMYLASE', 300, 2),
(47, 'Fasting (FBS)', 1100, 3),
(48, 'B.Sugar Random (RBS)', 200, 4),
(49, 'B/s 1.5 hrs.ABF', 200, 2),
(50, 'B/s 1.5 hrs.SHRS 50gm Glucose', 200, 3),
(51, 'B/s 2hrs.ABF', 200, 2),
(52, '2hrs.AL', 200, 3),
(53, 'BILIRUBIN (total)', 200, 4),
(54, 'calcium', 300, 2),
(55, 'Cholestrol', 500, 4),
(56, 'CK-MB (creatine kinase)', 300, 3),
(57, 'Co2', 1000, 3),
(58, 'CPK', 300, 2),
(59, 'Creatine', 800, 2),
(60, 'CSF albumin', 400, 2),
(61, 'CSF CL (cloride)', 300, 1),
(62, 'CSF LDH', 300, 4),
(63, 'eGFR', 800, 4),
(64, 'ELECTROLYTES', 800, 4),
(65, 'endometrial LDH', 850, 1),
(66, 'gamma gt (GGT)', 800, 4),
(67, 'GFR', 800, 2),
(68, 'Glibulin', 1000, 2),
(69, 'HbA1C', 600, 2),
(70, 'Iron', 1200, 1),
(71, 'LDH', 350, 3),
(72, 'LDL', 1200, 1),
(73, 'Lipid profile fasting', 800, 4),
(74, 'Lithium', 400, 3),
(75, 'Liver function test (LFT)', 700, 1),
(76, 'magnesium', 1000, 2),
(77, 'NA+', 900, 1),
(78, 'Pancreatic amylase', 250, 3),
(79, 'pancreatic lipase', 900, 4),
(80, 'S.total protien', 800, 4),
(81, 'serum lipase', 450, 3),
(82, 'Digoxin', 1000, 4),
(83, 'estradiol', 1000, 1),
(84, 'ferritin', 1000, 4),
(85, 'FSH', 1000, 4),
(86, 'FT3', 1700, 1),
(87, 'FT3+FT4', 100, 4),
(88, 'FT4', 2000, 3),
(89, 'H. pylori IgG', 1000, 3),
(90, 'HBeAg', 1000, 2),
(91, 'HBsAb', 1050, 1),
(92, 'anti hev', 1050, 2),
(93, 'HIV (e)', 1000, 2),
(94, 'homocysteine', 1100, 4),
(95, 'LH (luteinizing hormone)', 2400, 3),
(96, 'Oestrogen', 1000, 3),
(97, 'P-anca', 1000, 3),
(98, 'Phenobarbitol', 1100, 2),
(99, 'prolactin', 1000, 3),
(100, 'PSA', 1000, 2),
(101, 'Rubella virus antibody IgG', 1000, 4),
(102, 'Rubella virus antibody IgM', 1000, 2),
(103, 'serum oestrogen', 1000, 3),
(104, 'T3', 800, 3),
(105, 'T3 T4 TSH', 2400, 2),
(106, 'T4', 800, 3),
(107, 'TB-IgA', 1000, 4),
(108, 'TB-IgA.IgM.IgG', 3000, 3),
(109, 'TB-IgG', 1000, 2),
(110, 'TB-IgM', 1000, 4),
(111, 'Testosterone', 1000, 1),
(112, 'Torch', 8000, 2),
(113, 'Troponin-I', 1000, 3),
(114, 'TSH', 800, 4),
(115, 'Urine cortisol 24 hrs', 1000, 4),
(116, 'Valporic acid', 1200, 2),
(117, 'vitamin b12', 2100, 2),
(118, 'vitamin D (25-OH)', 3000, 2),
(119, 'Monospot test (not in dlab)', 600, 1),
(120, 'Cyclosporin', 2200, 2),
(121, 'Hb.Glycated', 1050, 1),
(122, 'alcohol test', 1000, 4),
(123, 'myoglobin', 1100, 4),
(124, 'PTH', 1100, 3),
(125, 'Growth hormone', 2000, 2),
(126, 'LH FSH ratio', 2000, 2),
(127, 'Synacthen test', 1000, 4),
(128, 'cortisol (random)', 3000, 4),
(129, 'Basal cortisol (random)', 9000, 2),
(130, 'AMH', 2400, 1),
(131, 'Multiple allergens', 1500, 4),
(132, 'Anti phospholipid Ab', 1100, 1),
(133, 'anti cardiolipin IgG', 1200, 2),
(134, 'Anti TPO AB', 2000, 2),
(135, 'Free testosterone', 1200, 3),
(136, 'anti cardiolipin IgM', 1500, 2),
(137, 'procalcitonin', 2000, 1),
(138, 'ENAprofile', 7000, 3),
(139, 'Unine cortisol Spot', 1000, 3),
(140, 'HBsAg (confirmatory)', 1600, 3),
(141, 'Syphilis Ab', 700, 4),
(142, 'Covid-19 antigen test', 700, 1),
(143, 'Thyroglobulin (TG)', 1000, 4),
(144, 'serum calcitonin', 2000, 1),
(145, 'HEV IgM', 1200, 1),
(146, 'TB-gold', 8000, 3),
(147, 'SHBG', 1500, 3),
(148, 'Ascitic Fluid malig.cel', 800, 4),
(149, 'paps smear', 800, 1),
(150, 'malignent cell', 600, 1),
(151, 'p/s for malignent cell', 600, 2),
(152, 'pericardial FL.Malig.cell', 600, 3),
(153, 'Peritoneal FL.Malig.cell', 600, 2),
(154, 'Sputum cytology', 700, 3),
(155, 'Urine cytology', 700, 2),
(156, 'Sputum malignant cell', 700, 2),
(157, 'CSF malignant cell', 600, 4),
(158, 'histopath (2)', 2000, 4),
(159, 'Synovial fluid Malig.cell', 700, 2),
(160, 'Tracheal Aspirate Malig.cell', 600, 4),
(NULL, NULL, NULL, 3),
(NULL, NULL, NULL, 2),
(NULL, NULL, NULL, 3),
(NULL, NULL, NULL, 2),
(NULL, NULL, NULL, 4),
(NULL, 'test1', 1, 1),
(NULL, 'test2', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `clinic_id` int(11) NOT NULL,
  `rating` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) NOT NULL,
  `pass` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile`, `pass`) VALUES
(1, 'test', 'test@gmail.com', '', '123'),
(5, 'test2', 'regtest@gmail.com', '123456', '123456'),
(6, 'LOL', 'lol@gmail.com', '1234', '123456789');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clinics`
--
ALTER TABLE `clinics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD KEY `fk_clinic_id` (`clinic_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `clinic_id` (`clinic_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clinics`
--
ALTER TABLE `clinics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data`
--
ALTER TABLE `data`
  ADD CONSTRAINT `fk_clinic_id` FOREIGN KEY (`clinic_id`) REFERENCES `clinics` (`id`);

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`clinic_id`) REFERENCES `clinics` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
