-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2024 at 07:26 AM
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
-- Database: `insurance-test`
--

-- --------------------------------------------------------

--
-- Table structure for table `accident_person_data`
--

CREATE TABLE `accident_person_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `assign_work_id` bigint(20) UNSIGNED NOT NULL,
  `accident_person_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`accident_person_images`)),
  `accident_person_aadhaar_card_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`accident_person_aadhaar_card_images`)),
  `accident_person_written_statment_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`accident_person_written_statment_images`)),
  `accident_person_voice` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`accident_person_voice`)),
  `executive_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assign_work_data`
--

CREATE TABLE `assign_work_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `case_id` bigint(20) UNSIGNED NOT NULL,
  `garage_reassign_status` varchar(255) DEFAULT NULL,
  `garage_re_assign_count` varchar(255) DEFAULT NULL,
  `driver_reassign_status` varchar(255) DEFAULT NULL,
  `driver_re_assign_count` varchar(255) DEFAULT NULL,
  `spot_reassign_status` varchar(255) DEFAULT NULL,
  `spot_re_assign_count` varchar(255) DEFAULT NULL,
  `owner_reassign_status` varchar(255) DEFAULT NULL,
  `owner_re_assign_count` varchar(255) DEFAULT NULL,
  `accident_person_reassign_status` varchar(255) DEFAULT NULL,
  `accident_person_re_assign_count` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `case_assignments`
--

CREATE TABLE `case_assignments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `case_id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `executive_driver` bigint(20) UNSIGNED NOT NULL,
  `executive_garage` bigint(20) UNSIGNED NOT NULL,
  `executive_spot` bigint(20) UNSIGNED NOT NULL,
  `executive_meeting` bigint(20) UNSIGNED NOT NULL,
  `executive_accident_person` bigint(20) UNSIGNED DEFAULT NULL,
  `date` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `other` text DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `case_status` varchar(255) NOT NULL,
  `craete_by` varchar(255) NOT NULL,
  `update_by` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `driver_data`
--

CREATE TABLE `driver_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `assign_work_id` bigint(20) UNSIGNED NOT NULL,
  `driver_name` varchar(255) DEFAULT NULL,
  `driver_image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`driver_image`)),
  `driving_licence_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`driving_licence_images`)),
  `rc_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`rc_images`)),
  `driver_aadhaar_card_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`driver_aadhaar_card_images`)),
  `driver_voice` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`driver_voice`)),
  `executive_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `garage_data`
--

CREATE TABLE `garage_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `assign_work_id` bigint(20) UNSIGNED NOT NULL,
  `garage_gate_entry` varchar(255) DEFAULT NULL,
  `garage_job_card` varchar(255) DEFAULT NULL,
  `garage_gate_entry_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`garage_gate_entry_images`)),
  `garage_job_card_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`garage_job_card_images`)),
  `vehicle_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`vehicle_images`)),
  `garage_voice` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`garage_voice`)),
  `executive_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `insurance_cases`
--

CREATE TABLE `insurance_cases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `insurance_type` varchar(255) NOT NULL,
  `case_details` text NOT NULL,
  `status` varchar(255) NOT NULL,
  `assigned_status` varchar(255) DEFAULT NULL,
  `case_status` varchar(255) NOT NULL,
  `create_by` varchar(255) NOT NULL,
  `update_by` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `insurance_cases`
--

INSERT INTO `insurance_cases` (`id`, `company_id`, `customer_id`, `insurance_type`, `case_details`, `status`, `assigned_status`, `case_status`, `create_by`, `update_by`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'fyjfyj', 'sggrrfg', '0', '1', '1', '1', '1', '2024-09-03 03:58:24', '2024-10-03 03:58:24'),
(2, 2, 4, 'Life Insurance', 'Policy Number: LI123456, Claim filed for natural causes.', '1', NULL, '1', '1', '1', '2024-10-03 05:41:01', '2024-10-03 05:41:01'),
(3, 3, 5, 'Health Insurance', 'HI789012, Hospitalization claim for surgery.', '1', NULL, '1', '1', '1', '2024-10-03 05:41:50', '2024-10-03 05:41:50'),
(4, 4, 6, 'Auto Insurance', 'Policy Number: AI345678, Claim for accident damages.', '1', NULL, '1', '1', '1', '2024-10-03 05:42:37', '2024-10-03 05:42:37'),
(5, 5, 7, 'Property Insurance', 'Policy Number: PI901234, Claim for flood damage.', '1', NULL, '1', '1', '1', '2024-10-03 05:43:23', '2024-10-03 05:43:23'),
(6, 6, 8, 'Travel Insurance', 'Policy Number: TI567890, Claim for trip cancellation.', '1', NULL, '1', '1', '1', '2024-10-03 05:44:12', '2024-10-03 05:44:12'),
(7, 6, 9, 'Life Insurance', 'Policy Number: LI234567, Claim for accidental death.', '1', NULL, '1', '1', '1', '2024-10-03 05:45:05', '2024-10-03 05:45:05'),
(8, 7, 10, 'Health Insurance', 'Policy Number: HI890123, Claim for critical illness.', '1', NULL, '1', '1', '1', '2024-10-03 05:45:53', '2024-10-03 05:45:53'),
(9, 8, 11, 'Home Insurance', 'Policy Number: HI456789, Claim for fire damage.', '1', NULL, '1', '1', '1', '2024-10-03 05:46:41', '2024-10-03 05:46:41'),
(10, 8, 12, 'Auto Insurance', 'Policy Number: AI678901, Claim for theft.', '1', NULL, '1', '1', '1', '2024-10-03 05:47:27', '2024-10-03 05:47:27'),
(11, 10, 13, 'Travel Insurance', 'Policy Number: TI234567, Claim for lost baggage.', '1', NULL, '1', '1', '1', '2024-10-03 05:48:12', '2024-10-03 05:48:12');

-- --------------------------------------------------------

--
-- Table structure for table `insurance_companies`
--

CREATE TABLE `insurance_companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact_person` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `status` varchar(255) NOT NULL,
  `create_by` varchar(255) NOT NULL,
  `update_by` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `insurance_companies`
--

INSERT INTO `insurance_companies` (`id`, `name`, `contact_person`, `email`, `phone`, `address`, `status`, `create_by`, `update_by`, `created_at`, `updated_at`) VALUES
(1, 'Arjun Nai', 'djhdtjhn', 'ava.martinez@pinnacleassurance.com', '1596325874', 'sdQSDesagrahg', '0', '1', '1', '2024-10-03 03:50:06', '2024-10-13 22:44:37'),
(2, 'Kerala Life Insurance', 'Ravi Nair', 'ravi.nair@keralalife.com', '9876543210', '12, MG Road, Kochi, Kerala', '1', '1', '1', '2024-10-03 05:33:42', '2024-10-03 05:33:42'),
(3, 'Tamil Nadu Health Insurance', 'Meera Ramesh', 'meera.ramesh@tnhealth.com', '8765432109', '45, Anna Salai, Chennai, Tamil Nadu', '1', '1', '1', '2024-10-03 05:34:09', '2024-10-03 05:34:09'),
(4, 'South India Insurance Co', 'Arun Kumar', 'arun.kumar@southindiai.com', '7654321098', '89, Beach Road, Thiruvananthapuram, Kerala', '1', '1', '1', '2024-10-03 05:34:39', '2024-10-03 05:34:39'),
(5, 'Tamil Guardian Insurance', 'Priya Singh', 'priya.singh@tamilguardian.com', '6543210987', '34, West Street, Madurai, Tamil Nadu', '1', '1', '1', '2024-10-03 05:35:06', '2024-10-03 05:35:06'),
(6, 'Kerala Secure Insurance', 'Anil Joseph', 'anil.joseph@keralasecure.com', '5432109876', '78, Market Road, Calicut, Kerala', '1', '1', '1', '2024-10-03 05:35:36', '2024-10-03 05:35:36'),
(7, 'Tamil Shield Insurance', 'Sneha Patel', 'sneha.patel@tamilshield.com', '4321098765', '56, East Main Road, Coimbatore, Tamil Nadu', '1', '1', '1', '2024-10-03 05:36:04', '2024-10-03 05:36:04'),
(8, 'Coastal Insurance Group', 'Vijay Menon', 'vijay.menon@coastalinsure.com', '3210987654', '23, Sea View Lane, Kollam, Kerala', '1', '1', '1', '2024-10-03 05:36:31', '2024-10-03 05:36:31'),
(9, 'Tamil Star Insurance', 'Kavita Iyer', 'kavita.iyer@tamilstar.com', '2109876543', '90, Gandhi Road, Salem, Tamil Nadu', '1', '1', '1', '2024-10-03 05:36:57', '2024-10-03 05:36:57'),
(10, 'Green Fields Insurance', 'Sameer Khan', 'sameer.khan@greenfields.com', '1098765432', '11, Rural Lane, Wayanad, Kerala', '1', '1', '1', '2024-10-03 05:37:25', '2024-10-03 05:37:25'),
(11, 'Unity Insurance Services', 'Neha Rao', 'neha.rao@unityinsure.com', '0987654321', '88, South Street, Tiruchirappalli, Tamil Nadu', '1', '1', '1', '2024-10-03 05:37:52', '2024-10-03 05:37:52');

-- --------------------------------------------------------

--
-- Table structure for table `insurance_customers`
--

CREATE TABLE `insurance_customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `father_name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `emergency_contact_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `present_address` text NOT NULL,
  `permanent_address` text NOT NULL,
  `status` varchar(255) NOT NULL,
  `create_by` varchar(255) NOT NULL,
  `update_by` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `insurance_customers`
--

INSERT INTO `insurance_customers` (`id`, `company_id`, `name`, `father_name`, `phone`, `emergency_contact_number`, `email`, `present_address`, `permanent_address`, `status`, `create_by`, `update_by`, `created_at`, `updated_at`) VALUES
(3, 1, 'Arjun Nai', 'wDFCADC', '1596325874', '1596325874', 'ava.martinez@pinnacleassurance.com', 'csdbfsxb', 'sgrsg', '1', '1', '1', '2024-10-03 03:58:24', '2024-10-03 03:58:24'),
(4, 2, 'Aarav Menon', 'Raghavan Menon', '9876543210', '9876543210', 'aarav.menon@example.com', '12, Marine Drive, Kochi, Kerala', '12, Marine Drive, Kochi, Kerala', '1', '1', '1', '2024-10-03 05:41:01', '2024-10-03 05:41:01'),
(5, 3, 'Priya Nair', 'Mohan Nair', '8765432109', '8765432109', 'priya.nair@example.com', '45, MG Road, Chennai, Tamil Nadu', '45, MG Road, Chennai, Tamil Nadu', '1', '1', '1', '2024-10-03 05:41:50', '2024-10-03 05:41:50'),
(6, 4, 'Arjun Iyer', 'Ravi Iyer', '7654321098', '7654321098', 'arjun.iyer@example.com', '34, College Street, Thiruvananthapuram, Kerala', '34, College Street, Thiruvananthapuram, Kerala', '1', '1', '1', '2024-10-03 05:42:37', '2024-10-03 05:42:37'),
(7, 5, 'Sneha Rao', 'Anand Rao', '6543210987', '6543210987', 'sneha.rao@example.com', '78, South Avenue, Madurai, Tamil Nadu', '78, South Avenue, Madurai, Tamil Nadu', '1', '1', '1', '2024-10-03 05:43:23', '2024-10-03 05:43:23'),
(8, 6, 'Sameer Joseph', 'Thomas Joseph', '5432109876', '5432109876', 'sameer.joseph@example.com', '90, Hilltop, Calicut, Kerala', '90, Hilltop, Calicut, Kerala', '1', '1', '1', '2024-10-03 05:44:12', '2024-10-03 05:44:12'),
(9, 6, 'Kavita Ramesh', 'Suresh Ramesh', '4321098765', '4321098765', 'kavita.ramesh@example.com', '56, East Road, Coimbatore, Tamil Nadu', '56, East Road, Coimbatore, Tamil Nadu', '1', '1', '1', '2024-10-03 05:45:05', '2024-10-03 05:45:05'),
(10, 7, 'Rahul Menon', 'Suresh Menon', '3210987654', '3210987654', 'rahul.menon@example.com', '23, Market Lane, Kollam, Kerala', '23, Market Lane, Kollam, Kerala', '1', '1', '1', '2024-10-03 05:45:53', '2024-10-03 05:45:53'),
(11, 8, 'Meera Patel', 'Kishore Patel', '2109876543', '2109876543', 'meera.patel@example.com', '34, West Street, Salem, Tamil Nadu', '34, West Street, Salem, Tamil Nadu', '1', '1', '1', '2024-10-03 05:46:41', '2024-10-03 05:46:41'),
(12, 8, 'Anil Kumar', 'Ravi Kumar', '1098765432', '1098765432', 'anil.kumar@example.com', '11, Riverside, Wayanad, Kerala', '11, Riverside, Wayanad, Kerala', '1', '1', '1', '2024-10-03 05:47:27', '2024-10-03 05:47:27'),
(13, 10, 'Neha Singh', 'Vikram Singh', '0987654321', '0987654321', 'neha.singh@example.com', '88, North Road, Tiruchirappalli, Tamil Nadu', '88, North Road, Tiruchirappalli, Tamil Nadu', '1', '1', '1', '2024-10-03 05:48:12', '2024-10-03 05:48:12');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2024_09_09_092412_create_insurance_companies_table', 1),
(11, '2024_09_11_043415_create_insurance_customers_table', 1),
(12, '2024_09_11_043437_create_insurance_cases_table', 1),
(13, '2024_09_19_105113_create_case_assignments_table', 1),
(14, '2024_09_26_091615_create_assign_work_data_table', 1),
(15, '2024_10_11_045640_create_odometer_readings_table', 2),
(16, '2024_10_15_045625_create_password_reset_requests_table', 3),
(17, '2024_10_16_035512_create_re_assign_work_data_table', 4),
(18, '2024_10_16_113324_create_garage_data_table', 5),
(19, '2024_10_16_113335_create_driver_data_table', 5),
(20, '2024_10_16_113357_create_spot_data_table', 5),
(21, '2024_10_16_113411_create_owner_data_table', 5),
(22, '2024_10_16_113437_create_accident_person_data_table', 5),
(23, '2024_10_17_065412_create_salaries_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('015b2f6b8604a95ae6b32f5b998fddfa5d0ce555e6602dbee251a5d3e4bc0341937518f537e46d6f', 4, 1, 'Insurance API Auth', '[]', 0, '2024-10-11 05:25:38', '2024-10-11 05:25:38', '2025-10-11 10:55:38'),
('0846cc9f98cbdc4b440b319132668ac061f06959a0501bec64b62c17f99a931c86ccb60e6e35c931', 5, 1, 'Insurance API Auth', '[]', 0, '2024-10-15 03:38:38', '2024-10-15 03:38:38', '2025-10-15 09:08:38'),
('1357da251468000699d33ad476db80ad98e1ef0afec714a0267a4f8a38f8dc5dab88df0d115c869c', 8, 1, 'Insurance API Auth', '[]', 0, '2024-10-17 23:54:48', '2024-10-17 23:54:48', '2025-10-18 05:24:48'),
('3a114395e4d3d7276c5429c4b53d0bf387967f2eb0870da2a251d4c2fcbddb424a85171cfd8db261', 2, 1, 'Insurance API Auth', '[]', 0, '2024-10-03 06:18:19', '2024-10-03 06:18:19', '2025-10-03 11:48:19'),
('3fb1cbc1c88a35c463360fc4b2fb2522c967bab13b28ca15c68b42dc5b5370c78c75eac0e083a53a', 11, 1, 'Insurance API Auth', '[]', 0, '2024-10-07 04:35:10', '2024-10-07 04:35:10', '2025-10-07 10:05:10'),
('736da37fea7f11f5bc0c139d42ada35968ab6adf083968c7e26e2d39fe30096455abc523871e728f', 3, 1, 'Insurance API Auth', '[]', 0, '2024-10-14 00:25:14', '2024-10-14 00:25:14', '2025-10-14 05:55:14'),
('8263d35ff64e46e1faeee854c55dd66cd0f7e12ae61d48980679af1e3957d462cb58c773331060be', 18, 1, 'Insurance API Auth', '[]', 0, '2024-10-17 04:59:29', '2024-10-17 04:59:29', '2025-10-17 10:29:29'),
('9f2b0ef2e99ac5ffa771ac9c2800c2cce7d81463e52ccdd43d3f598d980ddaa66ed4792b5914fccf', 7, 1, 'Insurance API Auth', '[]', 0, '2024-10-07 00:29:19', '2024-10-07 00:29:19', '2025-10-07 05:59:19');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'Dq2WEAwdzwOdRAUfgJxi7LqJlIPFoWax991iHSJq', NULL, 'http://localhost', 1, 0, 0, '2024-10-03 04:46:00', '2024-10-03 04:46:00'),
(2, NULL, 'Laravel Password Grant Client', 'u2vaZAb7Q3B81MEgtknU41fgcJmm642cLxoDOsb1', 'users', 'http://localhost', 0, 1, 0, '2024-10-03 04:46:00', '2024-10-03 04:46:00');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-10-03 04:46:00', '2024-10-03 04:46:00');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `odometer_readings`
--

CREATE TABLE `odometer_readings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `check_in_km` varchar(255) DEFAULT NULL,
  `check_in_image` varchar(255) DEFAULT NULL,
  `check_in_time` varchar(255) DEFAULT NULL,
  `check_in_date` varchar(255) DEFAULT NULL,
  `check_out_km` varchar(255) DEFAULT NULL,
  `check_out_image` varchar(255) DEFAULT NULL,
  `check_out_time` varchar(255) DEFAULT NULL,
  `check_out_date` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `owner_data`
--

CREATE TABLE `owner_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `assign_work_id` bigint(20) UNSIGNED NOT NULL,
  `owner_written_statment_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`owner_written_statment_images`)),
  `owner_aadhaar_card_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`owner_aadhaar_card_images`)),
  `owner_voice` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`owner_voice`)),
  `executive_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_requests`
--

CREATE TABLE `password_reset_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `password` varchar(255) NOT NULL,
  `request_date` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_requests`
--

INSERT INTO `password_reset_requests` (`id`, `user_id`, `password`, `request_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 5, 'deepa', '15-10-2024', '0', '2024-10-15 05:30:59', '2024-10-15 01:37:01'),
(2, 5, 'deepa', '15-10-2024', '0', '2024-10-15 07:29:14', '2024-10-15 02:35:05'),
(3, 5, 'deepa', '15-10-2024', '2', '2024-10-15 08:05:43', '2024-10-15 03:10:41'),
(4, 5, 'deepa', '15-10-2024', '2', '2024-10-15 08:43:53', '2024-10-15 03:14:06'),
(5, 5, 'deepa', '15-10-2024', '0', '2024-10-15 08:44:19', '2024-10-15 03:15:35'),
(6, 5, 'deepa', '15-10-2024', '2', '2024-10-15 09:09:09', '2024-10-15 06:21:14');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `re_assign_work_data`
--

CREATE TABLE `re_assign_work_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `assign_work_id` bigint(20) UNSIGNED NOT NULL,
  `garage_gate_entry_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`garage_gate_entry_images`)),
  `garage_job_card_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`garage_job_card_images`)),
  `vehicle_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`vehicle_images`)),
  `garage_voice` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`garage_voice`)),
  `driver_image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`driver_image`)),
  `driving_licence_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`driving_licence_images`)),
  `rc_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`rc_images`)),
  `driver_aadhaar_card_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`driver_aadhaar_card_images`)),
  `driver_voice` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`driver_voice`)),
  `spot_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`spot_images`)),
  `spot_voice` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`spot_voice`)),
  `owner_written_statment_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`owner_written_statment_images`)),
  `owner_aadhaar_card_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`owner_aadhaar_card_images`)),
  `owner_voice` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`owner_voice`)),
  `accident_person_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`accident_person_images`)),
  `accident_person_aadhaar_card_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`accident_person_aadhaar_card_images`)),
  `accident_person_written_statment_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`accident_person_written_statment_images`)),
  `accident_person_voice` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`accident_person_voice`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salaries`
--

CREATE TABLE `salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `basic` varchar(255) DEFAULT NULL,
  `allowance` varchar(255) DEFAULT NULL,
  `bonus` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `month_year` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spot_data`
--

CREATE TABLE `spot_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `assign_work_id` bigint(20) UNSIGNED NOT NULL,
  `spot_address` varchar(255) DEFAULT NULL,
  `spot_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`spot_images`)),
  `spot_voice` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`spot_voice`)),
  `executive_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `place` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `login_request` tinyint(1) NOT NULL DEFAULT 0,
  `imei` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `place`, `email_verified_at`, `password`, `role`, `login_request`, `imei`, `status`, `create_by`, `update_by`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Libin K K', '7708782197', 'admin@mail.com', NULL, NULL, '$2y$12$6hERzWTNcZaQLzgkm4ea.uFsdz1kLmbKVvsAgXz3WXxwiKjthYAqa', '1', 0, NULL, '1', NULL, NULL, NULL, '2024-10-03 03:41:07', '2024-10-03 03:41:07'),
(2, 'Libin K K', '1596325874', 'libin@mail.com', 'Kozhikode', NULL, '$2y$12$1BDU/IF79By2ZCg.Mm9pTeBOhr/gngxn2/CYVoeojWejJh8VtHQFm', '2', 0, NULL, '1', '1', '1', NULL, '2024-10-03 03:43:28', '2024-10-03 06:18:37'),
(3, 'Anjali Nair', '9876543210', 'anjali.nair@example.com', 'Thiruvananthapuram', NULL, '$2y$12$2X7bm9xv2t.5NBfANYC2FucPuwYirftDaThBXragQYpKC480IO9yC', '3', 0, NULL, '1', '1', '1', NULL, '2024-10-03 05:23:23', '2024-10-14 00:25:42'),
(4, 'Rajesh Menon', '9123456780', 'rajesh.menon@example.com', 'Kochi', NULL, '$2y$12$8K9/1X1fSNS9XSl9RfHWMuSXO5i2b3n9wBxN0bZvaWiU5ImiZjbP6', '3', 0, NULL, '1', '1', '1', NULL, '2024-10-03 05:24:07', '2024-10-11 05:26:28'),
(5, 'Deepa Pillai', '9988776655', 'deepa.pillai@example.com', 'Kozhikode', NULL, '$2y$12$6UO3hWzi4EjJQhP0NeV8texYjnUFvdu3bNBjLAVzo4qFY5L6bDQXO', '3', 0, NULL, '1', '1', '1', NULL, '2024-10-03 05:25:08', '2024-10-15 03:38:58'),
(6, 'Suresh Kumar', '8765432109', 'suresh.kumar@example.com', 'Kottayam', NULL, '$2y$12$4pVPRXq7WqmXuPam0qb.Wue9m9Yt8hwC5khcwbeZZWCpK3P/enbT.', '3', 0, NULL, '1', '1', '1', NULL, '2024-10-03 05:25:29', '2024-10-03 05:25:29'),
(7, 'Neha Varma', '9871234567', 'neha.varma@example.com', 'Malappuram', NULL, '$2y$12$3VOcekSeah3EZJElQV8a2.PJYhGsNGR5HgVREmqrIlQPB1K6UV91y', '3', 0, NULL, '1', '1', '1', NULL, '2024-10-03 05:25:51', '2024-10-07 04:30:23'),
(8, 'Arun Gopinath', '9156784321', 'arun.gopinath@example.com', 'Thrissur', NULL, '$2y$12$1lJIwjZvyazxdx6g8qpYNeqekLGkbPnV1dXcmsH2OMBqkAsyKMU2m', '3', 0, NULL, '1', '1', '1', NULL, '2024-10-03 05:26:15', '2024-10-17 23:56:04'),
(9, 'Sneha Ramesh', '9012345678', 'sneha.ramesh@example.com', 'Palakkad', NULL, '$2y$12$kRhVbacoNiboI8y8qaBCrujfqJvMwsppR.Sh0r.2h7guwa.XtzKOS', '3', 0, NULL, '1', '1', '1', NULL, '2024-10-03 05:26:41', '2024-10-03 05:26:41'),
(10, 'Vinod Suresh', '9345678901', 'vinod.suresh@example.com', 'Kannur', NULL, '$2y$12$Zul2.3myN2xPPoEPLIfFtOwUu8ebofm1cP.mzFOr57XT7Y3WBO.Qu', '3', 0, NULL, '1', '1', '1', NULL, '2024-10-03 05:27:03', '2024-10-03 05:27:03'),
(11, 'Priya Thomas', '9498765432', 'priya.thomas@example.com', 'Ernakulam', NULL, '$2y$12$l/8Z/GeGOA7G0W3GYfpWDemC32qaOypMu8Z79/XgFONVNO6wMr9OC', '3', 0, 'UE1A.230829.036.A2', '1', '1', '1', NULL, '2024-10-03 05:27:26', '2024-10-07 04:38:48'),
(12, 'Ashok Nair', '9823456780', 'ashok.nair@example.com', 'Alappuzha', NULL, '$2y$12$g/uu6NHXkEnNmHatjlOUKeqfdzUV9H.y3eIkEf3z/j1A3x0uDCyEq', '3', 0, NULL, '1', '1', '1', NULL, '2024-10-03 05:27:51', '2024-10-03 05:27:51'),
(13, 'Rani Menon', '9654321098', 'rani.menon@example.com', 'Pathanamthitta', NULL, '$2y$12$K2Xuj.tH9Z1kTKodR19tmuRuQlehd/wWa/rIixb3qYpGYHCNxJnFG', '3', 0, NULL, '1', '1', '1', NULL, '2024-10-03 05:28:11', '2024-10-03 05:28:11'),
(14, 'Mohan Das', '9182736450', 'mohan.das@example.com', 'Idukki', NULL, '$2y$12$HVk0.sd4t8lqjeAJSqyNEuhLEoifRf7zV3dWP7fIapc86j8JvdStu', '3', 0, NULL, '1', '1', '1', NULL, '2024-10-03 05:28:32', '2024-10-03 05:28:32'),
(15, 'Sita Lakshmi', '9098765432', 'sita.lakshmi@example.com', 'Wayanad', NULL, '$2y$12$5wQkxzvae5oN.AkaLxNj5.n09Jm.pc/M18LLGcAysQRAltAlnJH8i', '3', 0, NULL, '1', '1', '1', NULL, '2024-10-03 05:28:54', '2024-10-03 05:28:54'),
(16, 'Kiran P', '9976543210', 'kiran.p@example.com', 'Kollam', NULL, '$2y$12$9yz03kL5o7.sXA/DirgQROd3yISq4LGwIFgkg0N.5eQqVAfI/8f7u', '3', 0, NULL, '1', '1', '1', NULL, '2024-10-03 05:29:19', '2024-10-03 05:29:19'),
(17, 'Reshma R', '9643210987', 'reshma.r@example.com', 'Kasaragod', NULL, '$2y$12$6DJKPxFQcMoWNMAI21T/N.ug8f4H5o4/W2PiOqikkzGrTE7qnDcrG', '3', 0, NULL, '1', '1', '1', NULL, '2024-10-03 05:29:45', '2024-10-03 05:29:45'),
(18, 'User', '1236547890', 'user@gmail.com', 'Thiruvananthapuram', NULL, '$2y$12$k2pimNQPMPacs6qO4BT2pODqvmCw7f4k7B/YFITwRh/IPrkLoRCny', '3', 0, 'UE1A.230829.036.A2', '1', '1', '1', NULL, '2024-10-03 05:30:02', '2024-10-17 05:00:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accident_person_data`
--
ALTER TABLE `accident_person_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accident_person_data_assign_work_id_foreign` (`assign_work_id`),
  ADD KEY `accident_person_data_executive_id_foreign` (`executive_id`);

--
-- Indexes for table `assign_work_data`
--
ALTER TABLE `assign_work_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assign_work_data_case_id_foreign` (`case_id`);

--
-- Indexes for table `case_assignments`
--
ALTER TABLE `case_assignments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `case_assignments_executive_driver_foreign` (`executive_driver`),
  ADD KEY `case_assignments_executive_garage_foreign` (`executive_garage`),
  ADD KEY `case_assignments_executive_spot_foreign` (`executive_spot`),
  ADD KEY `case_assignments_executive_meeting_foreign` (`executive_meeting`),
  ADD KEY `case_assignments_executive_accident_person_foreign` (`executive_accident_person`),
  ADD KEY `case_assignments_company_id_foreign` (`company_id`),
  ADD KEY `case_assignments_customer_id_foreign` (`customer_id`),
  ADD KEY `case_assignments_case_id_foreign` (`case_id`);

--
-- Indexes for table `driver_data`
--
ALTER TABLE `driver_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `driver_data_assign_work_id_foreign` (`assign_work_id`),
  ADD KEY `driver_data_executive_id_foreign` (`executive_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `garage_data`
--
ALTER TABLE `garage_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `garage_data_assign_work_id_foreign` (`assign_work_id`),
  ADD KEY `garage_data_executive_id_foreign` (`executive_id`);

--
-- Indexes for table `insurance_cases`
--
ALTER TABLE `insurance_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insurance_cases_company_id_foreign` (`company_id`),
  ADD KEY `insurance_cases_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `insurance_companies`
--
ALTER TABLE `insurance_companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `insurance_customers`
--
ALTER TABLE `insurance_customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insurance_customers_company_id_foreign` (`company_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `odometer_readings`
--
ALTER TABLE `odometer_readings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `odometer_readings_user_id_foreign` (`user_id`);

--
-- Indexes for table `owner_data`
--
ALTER TABLE `owner_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owner_data_assign_work_id_foreign` (`assign_work_id`),
  ADD KEY `owner_data_executive_id_foreign` (`executive_id`);

--
-- Indexes for table `password_reset_requests`
--
ALTER TABLE `password_reset_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_reset_requests_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `re_assign_work_data`
--
ALTER TABLE `re_assign_work_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `re_assign_work_data_assign_work_id_foreign` (`assign_work_id`);

--
-- Indexes for table `salaries`
--
ALTER TABLE `salaries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salaries_user_id_foreign` (`user_id`);

--
-- Indexes for table `spot_data`
--
ALTER TABLE `spot_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `spot_data_assign_work_id_foreign` (`assign_work_id`),
  ADD KEY `spot_data_executive_id_foreign` (`executive_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accident_person_data`
--
ALTER TABLE `accident_person_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assign_work_data`
--
ALTER TABLE `assign_work_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `case_assignments`
--
ALTER TABLE `case_assignments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `driver_data`
--
ALTER TABLE `driver_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `garage_data`
--
ALTER TABLE `garage_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `insurance_cases`
--
ALTER TABLE `insurance_cases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `insurance_companies`
--
ALTER TABLE `insurance_companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `insurance_customers`
--
ALTER TABLE `insurance_customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `odometer_readings`
--
ALTER TABLE `odometer_readings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `owner_data`
--
ALTER TABLE `owner_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `password_reset_requests`
--
ALTER TABLE `password_reset_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `re_assign_work_data`
--
ALTER TABLE `re_assign_work_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salaries`
--
ALTER TABLE `salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spot_data`
--
ALTER TABLE `spot_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accident_person_data`
--
ALTER TABLE `accident_person_data`
  ADD CONSTRAINT `accident_person_data_assign_work_id_foreign` FOREIGN KEY (`assign_work_id`) REFERENCES `assign_work_data` (`id`),
  ADD CONSTRAINT `accident_person_data_executive_id_foreign` FOREIGN KEY (`executive_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `assign_work_data`
--
ALTER TABLE `assign_work_data`
  ADD CONSTRAINT `assign_work_data_case_id_foreign` FOREIGN KEY (`case_id`) REFERENCES `case_assignments` (`id`);

--
-- Constraints for table `case_assignments`
--
ALTER TABLE `case_assignments`
  ADD CONSTRAINT `case_assignments_case_id_foreign` FOREIGN KEY (`case_id`) REFERENCES `insurance_cases` (`id`),
  ADD CONSTRAINT `case_assignments_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `insurance_companies` (`id`),
  ADD CONSTRAINT `case_assignments_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `insurance_customers` (`id`),
  ADD CONSTRAINT `case_assignments_executive_accident_person_foreign` FOREIGN KEY (`executive_accident_person`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `case_assignments_executive_driver_foreign` FOREIGN KEY (`executive_driver`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `case_assignments_executive_garage_foreign` FOREIGN KEY (`executive_garage`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `case_assignments_executive_meeting_foreign` FOREIGN KEY (`executive_meeting`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `case_assignments_executive_spot_foreign` FOREIGN KEY (`executive_spot`) REFERENCES `users` (`id`);

--
-- Constraints for table `driver_data`
--
ALTER TABLE `driver_data`
  ADD CONSTRAINT `driver_data_assign_work_id_foreign` FOREIGN KEY (`assign_work_id`) REFERENCES `assign_work_data` (`id`),
  ADD CONSTRAINT `driver_data_executive_id_foreign` FOREIGN KEY (`executive_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `garage_data`
--
ALTER TABLE `garage_data`
  ADD CONSTRAINT `garage_data_assign_work_id_foreign` FOREIGN KEY (`assign_work_id`) REFERENCES `assign_work_data` (`id`),
  ADD CONSTRAINT `garage_data_executive_id_foreign` FOREIGN KEY (`executive_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `insurance_cases`
--
ALTER TABLE `insurance_cases`
  ADD CONSTRAINT `insurance_cases_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `insurance_companies` (`id`),
  ADD CONSTRAINT `insurance_cases_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `insurance_customers` (`id`);

--
-- Constraints for table `insurance_customers`
--
ALTER TABLE `insurance_customers`
  ADD CONSTRAINT `insurance_customers_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `insurance_companies` (`id`);

--
-- Constraints for table `odometer_readings`
--
ALTER TABLE `odometer_readings`
  ADD CONSTRAINT `odometer_readings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `owner_data`
--
ALTER TABLE `owner_data`
  ADD CONSTRAINT `owner_data_assign_work_id_foreign` FOREIGN KEY (`assign_work_id`) REFERENCES `assign_work_data` (`id`),
  ADD CONSTRAINT `owner_data_executive_id_foreign` FOREIGN KEY (`executive_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `password_reset_requests`
--
ALTER TABLE `password_reset_requests`
  ADD CONSTRAINT `password_reset_requests_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `re_assign_work_data`
--
ALTER TABLE `re_assign_work_data`
  ADD CONSTRAINT `re_assign_work_data_assign_work_id_foreign` FOREIGN KEY (`assign_work_id`) REFERENCES `assign_work_data` (`id`);

--
-- Constraints for table `salaries`
--
ALTER TABLE `salaries`
  ADD CONSTRAINT `salaries_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `spot_data`
--
ALTER TABLE `spot_data`
  ADD CONSTRAINT `spot_data_assign_work_id_foreign` FOREIGN KEY (`assign_work_id`) REFERENCES `assign_work_data` (`id`),
  ADD CONSTRAINT `spot_data_executive_id_foreign` FOREIGN KEY (`executive_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
