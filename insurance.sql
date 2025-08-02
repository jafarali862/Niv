-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2025 at 01:46 PM
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
-- Database: `insurance`
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
  `medical_report` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`medical_report`)),
  `hospital_report` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`hospital_report`)),
  `ration_card` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`ration_card`)),
  `fir_vers_accdnt` text DEFAULT NULL,
  `claiment_vers_aaccdnt` text DEFAULT NULL,
  `chrgesheet_con` text DEFAULT NULL,
  `relation_insured_and_claiment` varchar(255) DEFAULT NULL,
  `age_injured_person` varchar(255) DEFAULT NULL,
  `profession_injured` varchar(255) DEFAULT NULL,
  `diff_in_rider_ver_injured` text DEFAULT NULL,
  `name_address_hospital` text DEFAULT NULL,
  `distance_from_site_hospital` varchar(255) DEFAULT NULL,
  `details_big_hospital_near_site` text DEFAULT NULL,
  `zebra_cross_on_site` tinyint(1) DEFAULT NULL,
  `injury_record_details` text DEFAULT NULL,
  `name_witness` varchar(255) DEFAULT NULL,
  `name_informer` varchar(255) DEFAULT NULL,
  `vehicle_no_fir` varchar(255) DEFAULT NULL,
  `name_accused` varchar(255) DEFAULT NULL,
  `injured_name` varchar(255) DEFAULT NULL,
  `injured_phone` varchar(255) DEFAULT NULL,
  `injured_address` text DEFAULT NULL,
  `injured_pedstrian_or_traveller` varchar(255) DEFAULT NULL,
  `injured_hospital_report` text DEFAULT NULL,
  `injured_admited_hospital_details` text DEFAULT NULL,
  `gd_no` varchar(255) DEFAULT NULL,
  `police_station` varchar(255) DEFAULT NULL,
  `gd_date` date DEFAULT NULL,
  `gd_pdf` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`gd_pdf`)),
  `accident_date_time` datetime DEFAULT NULL,
  `accident_description` text DEFAULT NULL,
  `accident_downloads` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`accident_downloads`)),
  `sp_case` int(11) DEFAULT NULL,
  `latitude_and_longitude` varchar(255) DEFAULT NULL,
  `wound_certi_coment` text DEFAULT NULL,
  `no_injured` int(11) DEFAULT NULL,
  `no_dead` int(11) DEFAULT NULL,
  `no_tppd` int(11) DEFAULT NULL,
  `comperhensive` text DEFAULT NULL,
  `dob_injured` date DEFAULT NULL,
  `aadhar_no_injured` text DEFAULT NULL,
  `pan_no` text DEFAULT NULL,
  `period_leave_avail` int(11) DEFAULT NULL,
  `source_income` text DEFAULT NULL,
  `month_incom` decimal(8,2) DEFAULT NULL,
  `wound_certificate_short_disc` text DEFAULT NULL,
  `injured_exami_date_on_woundcerti` date DEFAULT NULL,
  `injury_place_on_wound_certi` text DEFAULT NULL,
  `person_name_who_brought_injured` text DEFAULT NULL,
  `hospitalised_from_date` date DEFAULT NULL,
  `hospitalised_to_date` date DEFAULT NULL,
  `ip_days` int(11) DEFAULT NULL,
  `verified_treament_records` text DEFAULT NULL,
  `details_postmortam_report` text DEFAULT NULL,
  `legal_heirs_name` text DEFAULT NULL,
  `heirs_age` int(11) DEFAULT NULL,
  `heirs_rel_deseased` text DEFAULT NULL,
  `marital_status_heirs` text DEFAULT NULL,
  `heirs_residing_address` text DEFAULT NULL,
  `heirs_occupation` text DEFAULT NULL,
  `heirs_employer_address` text DEFAULT NULL,
  `executive_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `no_occupants` int(11) DEFAULT NULL,
  `complnt_rel_injured` varchar(255) DEFAULT NULL,
  `descrition_accused` varchar(255) DEFAULT NULL,
  `accused_identifed` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `fir_no` varchar(255) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `date_time_fir` varchar(255) DEFAULT NULL,
  `delay_in_fir` varchar(255) DEFAULT NULL,
  `gist_fir` text DEFAULT NULL,
  `court_where_chargesheet_filled` varchar(255) DEFAULT NULL,
  `date_chargesheet` varchar(255) DEFAULT NULL,
  `section_chargesheet` varchar(255) DEFAULT NULL,
  `who_charged_with` varchar(255) DEFAULT NULL,
  `gist_chargesheet` text DEFAULT NULL,
  `petty_case_charged` varchar(255) DEFAULT NULL,
  `status_criminal_case` varchar(255) DEFAULT NULL,
  `accident_genuine` varchar(255) DEFAULT NULL,
  `opnion_disablement` varchar(255) DEFAULT NULL,
  `opnion_dl_validity` varchar(255) DEFAULT NULL,
  `dl_extract_obtained` varchar(255) DEFAULT NULL,
  `injured_established_fir` varchar(255) DEFAULT NULL,
  `insured_vehicle_establ_fir` varchar(255) DEFAULT NULL,
  `comment_defence_evidence` varchar(255) DEFAULT NULL,
  `wound_certificate` text DEFAULT NULL,
  `helment_details` varchar(255) DEFAULT NULL,
  `verification_medical_report` varchar(255) DEFAULT NULL,
  `discussion_family_neighbour` varchar(255) DEFAULT NULL,
  `role_injured` varchar(255) DEFAULT NULL,
  `discussion_injured` varchar(255) DEFAULT NULL,
  `discussion_employeer_injured` varchar(255) DEFAULT NULL,
  `discussion_rider` varchar(255) DEFAULT NULL,
  `discussion_financial` varchar(255) DEFAULT NULL,
  `fact_findings` text DEFAULT NULL,
  `conclusion` text DEFAULT NULL,
  `opnion_injured` varchar(255) DEFAULT NULL,
  `accident_cause_more_vehicle` varchar(255) DEFAULT NULL,
  `name_complainant` varchar(255) DEFAULT NULL,
  `name_add_num_employeer` text DEFAULT NULL,
  `edu_injured` varchar(255) DEFAULT NULL,
  `gap_sequencial_event` text DEFAULT NULL,
  `date_time_hospital_addmission` varchar(255) DEFAULT NULL,
  `doc_name_and_first_aid` text DEFAULT NULL,
  `record_found_first_aid_hospital` text DEFAULT NULL,
  `fir_named_or_not` varchar(255) DEFAULT NULL,
  `absence_chargesheet` text DEFAULT NULL,
  `damage_per_od_claim` text DEFAULT NULL,
  `date_discharge` varchar(255) DEFAULT NULL,
  `period_absence_from_work` varchar(255) DEFAULT NULL,
  `permanent_disablity` text DEFAULT NULL,
  `present_condition_injury` text DEFAULT NULL,
  `amount_medical_expenceses` text DEFAULT NULL,
  `status_rembur_med_expense_employeer` text DEFAULT NULL,
  `other_information` text DEFAULT NULL,
  `date_panachanama` text DEFAULT NULL,
  `opnion_from_panchayath` text DEFAULT NULL,
  `date_of_death_date_pm` varchar(255) DEFAULT NULL,
  `cause_death_per_pmr` text DEFAULT NULL,
  `co_injured_name_address` text DEFAULT NULL,
  `co_injured_income` text DEFAULT NULL,
  `co_injured_age` text DEFAULT NULL,
  `co_injured_occupation` text DEFAULT NULL,
  `co_injured_relation_injured` text DEFAULT NULL,
  `co_injured_depend_or_not` text DEFAULT NULL,
  `hit_run_police_reach_conclusion` text DEFAULT NULL,
  `gaps_police_investigation` text DEFAULT NULL,
  `case_suspect_nexus` text DEFAULT NULL,
  `tp_property_damage` text DEFAULT NULL,
  `policy_details` text DEFAULT NULL,
  `insured_vehicle_paper_valid_accident_time` text DEFAULT NULL,
  `criminal_court_status_case` text DEFAULT NULL,
  `case_diary_findings` text DEFAULT NULL,
  `about_accident` text DEFAULT NULL,
  `owner_verification` text DEFAULT NULL,
  `rider_verification` text DEFAULT NULL,
  `details_dl_validity` text DEFAULT NULL,
  `tpv_details_dl_validity` text DEFAULT NULL,
  `claim_no` varchar(255) DEFAULT NULL,
  `nature_of_claim` text DEFAULT NULL,
  `concern_matters` text DEFAULT NULL,
  `dist_from_police` text DEFAULT NULL,
  `rel_informr_claimant` text DEFAULT NULL,
  `address_different` tinyint(1) NOT NULL DEFAULT 0,
  `annual_incom_injured` decimal(15,2) DEFAULT NULL,
  `esi_coverage_details` text DEFAULT NULL,
  `status_injures_decesed` text DEFAULT NULL,
  `compass` text DEFAULT NULL,
  `pension_details` text DEFAULT NULL,
  `injured_death_on_spot` tinyint(1) NOT NULL DEFAULT 0,
  `pmr_no` text DEFAULT NULL,
  `pmr_date` date DEFAULT NULL,
  `hospital_name_pmr_carried` text DEFAULT NULL,
  `injured_compromised` tinyint(1) NOT NULL DEFAULT 0,
  `defense_fit_compromize` tinyint(1) NOT NULL DEFAULT 0,
  `injured_marital_status` varchar(255) DEFAULT NULL,
  `co_injured_marital_status` varchar(255) DEFAULT NULL,
  `accident_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accident_person_data`
--

INSERT INTO `accident_person_data` (`id`, `assign_work_id`, `accident_person_images`, `accident_person_aadhaar_card_images`, `accident_person_written_statment_images`, `accident_person_voice`, `medical_report`, `hospital_report`, `ration_card`, `fir_vers_accdnt`, `claiment_vers_aaccdnt`, `chrgesheet_con`, `relation_insured_and_claiment`, `age_injured_person`, `profession_injured`, `diff_in_rider_ver_injured`, `name_address_hospital`, `distance_from_site_hospital`, `details_big_hospital_near_site`, `zebra_cross_on_site`, `injury_record_details`, `name_witness`, `name_informer`, `vehicle_no_fir`, `name_accused`, `injured_name`, `injured_phone`, `injured_address`, `injured_pedstrian_or_traveller`, `injured_hospital_report`, `injured_admited_hospital_details`, `gd_no`, `police_station`, `gd_date`, `gd_pdf`, `accident_date_time`, `accident_description`, `accident_downloads`, `sp_case`, `latitude_and_longitude`, `wound_certi_coment`, `no_injured`, `no_dead`, `no_tppd`, `comperhensive`, `dob_injured`, `aadhar_no_injured`, `pan_no`, `period_leave_avail`, `source_income`, `month_incom`, `wound_certificate_short_disc`, `injured_exami_date_on_woundcerti`, `injury_place_on_wound_certi`, `person_name_who_brought_injured`, `hospitalised_from_date`, `hospitalised_to_date`, `ip_days`, `verified_treament_records`, `details_postmortam_report`, `legal_heirs_name`, `heirs_age`, `heirs_rel_deseased`, `marital_status_heirs`, `heirs_residing_address`, `heirs_occupation`, `heirs_employer_address`, `executive_id`, `created_at`, `updated_at`, `location`, `no_occupants`, `complnt_rel_injured`, `descrition_accused`, `accused_identifed`, `district`, `state`, `fir_no`, `section`, `date_time_fir`, `delay_in_fir`, `gist_fir`, `court_where_chargesheet_filled`, `date_chargesheet`, `section_chargesheet`, `who_charged_with`, `gist_chargesheet`, `petty_case_charged`, `status_criminal_case`, `accident_genuine`, `opnion_disablement`, `opnion_dl_validity`, `dl_extract_obtained`, `injured_established_fir`, `insured_vehicle_establ_fir`, `comment_defence_evidence`, `wound_certificate`, `helment_details`, `verification_medical_report`, `discussion_family_neighbour`, `role_injured`, `discussion_injured`, `discussion_employeer_injured`, `discussion_rider`, `discussion_financial`, `fact_findings`, `conclusion`, `opnion_injured`, `accident_cause_more_vehicle`, `name_complainant`, `name_add_num_employeer`, `edu_injured`, `gap_sequencial_event`, `date_time_hospital_addmission`, `doc_name_and_first_aid`, `record_found_first_aid_hospital`, `fir_named_or_not`, `absence_chargesheet`, `damage_per_od_claim`, `date_discharge`, `period_absence_from_work`, `permanent_disablity`, `present_condition_injury`, `amount_medical_expenceses`, `status_rembur_med_expense_employeer`, `other_information`, `date_panachanama`, `opnion_from_panchayath`, `date_of_death_date_pm`, `cause_death_per_pmr`, `co_injured_name_address`, `co_injured_income`, `co_injured_age`, `co_injured_occupation`, `co_injured_relation_injured`, `co_injured_depend_or_not`, `hit_run_police_reach_conclusion`, `gaps_police_investigation`, `case_suspect_nexus`, `tp_property_damage`, `policy_details`, `insured_vehicle_paper_valid_accident_time`, `criminal_court_status_case`, `case_diary_findings`, `about_accident`, `owner_verification`, `rider_verification`, `details_dl_validity`, `tpv_details_dl_validity`, `claim_no`, `nature_of_claim`, `concern_matters`, `dist_from_police`, `rel_informr_claimant`, `address_different`, `annual_incom_injured`, `esi_coverage_details`, `status_injures_decesed`, `compass`, `pension_details`, `injured_death_on_spot`, `pmr_no`, `pmr_date`, `hospital_name_pmr_carried`, `injured_compromised`, `defense_fit_compromize`, `injured_marital_status`, `co_injured_marital_status`, `accident_date`) VALUES
(1, 30, '[\"accident_person\\/LyMKezZMkyUKAvTJ9xitmQL9kCeu1Z9hPRzkXuxB.jpg\"]', '[\"aadhaar\\/vgOwIbGq6wdFibqZAmpV02ZYKe42hKaJOPdSeejM.jpg\"]', '[\"written_statement\\/TXmxBVmGvS4p6BqaynNWyHaUpSz7JFvijuW9Hnka.jpg\"]', '[\"voice\\/joxZ01XNgKuY5VH1n97iBK89sRGo07DwhHoxT4Fh.aac\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"accident_downloads\\/CEoPoK41uddigymSxXcJoibNR2WegtFf8ZFqZr58.aac\"]', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2024-10-19 00:37:41', '2024-12-11 04:58:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(2, 30, '[\"accident_person\\/kOBLuEx0lEpuagHxIE2wo5ijySrpA0jqBxNiq7Rp.jpg\"]', '[\"aadhaar\\/HzvW84RpKBH2fSBW5WXOHoLakjZLzlJS7a24N7g0.jpg\"]', '[\"written_statement\\/3lo1YPxR0gZ58joXGv8hYRWTMXbcsM1Fv5N5EePi.jpg\"]', '[\"voice\\/CuUz4NIk4vzJqNOEcVH3Da3oX8vi2vZe3qhaCfjo.aac\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2024-10-19 00:40:16', '2024-10-19 00:40:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(3, 31, '[\"accident_person\\/n05HA9n2pB3pWZcC8iV796nbW4DEb925b8N82hcG.jpg\"]', '[\"aadhaar\\/ot9rQsgE0oMWflCSln0oyRkSMR7oIdgzEStpRW00.jpg\"]', '[\"written_statement\\/Pi8ktzcgD1IAdBXLC7TA5wNy16omyH9bblEK7Cd0.jpg\"]', '[\"voice\\/gdDfv7DbP7ZjsAd1o3tK5gD3nmflOY35YRq0mDBy.aac\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"accident_downloads\\/PjwtKuJOYDWbSbW9HfZoQrZPTouMF1pO95i5TL8W.mp4\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2024-10-19 01:51:30', '2024-12-17 23:17:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(4, 33, '[\"accident_person\\/n3vqWBU3tdvSeTcto07yELF89J0sDZfQAiAMo8Vn.jpg\",\"accident_person\\/pzRiblBnayPeroOoGgU3D4awzFkIK0XrksZrDqQ7.jpg\",\"accident_person\\/p4rmiN4zbMdtpmETIOLQEV8clHBgiARQfmBm3H7m.jpg\"]', '[\"aadhaar\\/GVNRczm6Ie5qWABVMk2y2DohVKKNPwt1yMme5Rc2.jpg\",\"aadhaar\\/T2OxjPC1at5IFKpO8yoKBn3fwQeV0uvDSQz0eQiM.jpg\"]', '[\"written_statement\\/olLtKIy4deIQdcmx8352yJKUKb3QU2F0PS9dk02r.jpg\",\"written_statement\\/1ZuUdyQbjuWScGtyvaUDw6R8IF2hzvaA9EcoG2fO.jpg\"]', '[\"voice\\/BcPCwNPIcnsVu0JOot8TDNQApO7BOWb7jr3Q9OgM.aac\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2024-10-21 04:36:42', '2024-10-21 04:36:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(5, 32, '[\"accident_person\\/F3WHoyWaV8ZQvTo3bqq07gGpmKtTvYwvaRRUHWfx.jpg\"]', '[\"aadhaar\\/5InciVPgUn0EVox18FlAlt5hwfsrR8XEKRS2Bbum.jpg\"]', '[\"written_statement\\/OduCYD8xleE4xuQiZoMtHlQH9WfwbOZE2Wb4T8Uy.jpg\"]', '[\"voice\\/WySl9a9M8GGfZd8GEnkPsOcYnraPvukOdBWIgytQ.aac\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11.1807484, 75.8545912', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2024-10-23 00:52:43', '2024-10-23 00:52:43', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(6, 32, '[\"accident_person\\/7q0v26JSYVSIdjgGDlqR44XJJxGysqPytO16IsfD.jpg\"]', '[\"aadhaar\\/Kz1rzLAgrW456ByMaRwsPEjS1MikXoUW8R8ldbQd.jpg\"]', '[\"written_statement\\/RL8HBtmtRICr6KkyVqI1ilJdS2WeJsOEafVZW5aN.jpg\"]', '[\"voice\\/dkkWGLJZPjeVPgdD3qqztDGg1s4WGP4zEqvx3SR3.aac\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11.1807484, 75.8545912', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2024-10-23 00:56:58', '2024-10-23 00:56:58', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(7, 32, '[\"accident_person\\/N5JdZNN1D0GCAKVmD9xTetHAPxxB17g3OnP4trWI.jpg\"]', '[\"aadhaar\\/1NGX6M5JrMbiUMyXBhiJIKDv3lzdvzGUnelnhugh.jpg\"]', '[\"written_statement\\/K8K0N1cC5SEP9cTmUna16SvE1cEZS9yk5N76PDiW.jpg\"]', '[\"voice\\/xSuPc8btoORM3mRhCuT1E7DelHS9CDStmHKJmqGt.aac\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11.1807484, 75.8545912', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2024-10-23 00:57:42', '2024-10-23 00:57:42', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(8, 30, '[\"accident_person\\/W7nLXOUvzJWWslWCeQsbXQ9nHHriegTTl81hU88S.jpg\"]', '[\"aadhaar\\/YUh75A8HoKd4Z7SWVAhMSQtV0B7C55lG9yD0r2vG.jpg\"]', '[\"written_statement\\/EnnPeY6fksNrASJaBrAZLyHN6LfLsHhnz4oOeJeW.jpg\"]', '[\"voice\\/Do3DoSmzYLCkaLGn11N9pXKrvWKaHoFEQXS05MwG.aac\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"accident_downloads\\/jYUX9C20Im61DtLbQPFq2o5QOScqtJGLIQatfJuW.jpg\"]', 0, '11.1807413, 75.8545884', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2024-10-24 03:06:30', '2024-12-11 04:59:22', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(9, 30, '[\"accident_person\\/S477b9jGdHKEtb3mWDQhh6VtZakz4n6FU9wsS5JF.jpg\"]', '[\"aadhaar\\/eaEfhFSI1PCU6Sy0c9WqCxQsc2DsfH0lwfKzB1N8.jpg\"]', '[\"written_statement\\/LQ3X6MyXg7EejFvqwZlFr8dzDELHOfj5oPHzF7im.jpg\"]', '[\"voice\\/7cpLLtqynZgh8jIBBtXQYri9HaTXVqqsEl0KmIvt.aac\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11.1807413, 75.8545884', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2024-11-03 23:52:59', '2024-11-03 23:52:59', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(10, 30, '[\"accident_person\\/p35eFhwsNV0xece1dxadO73ZIEkkseQyPdluBlUc.jpg\"]', '[\"aadhaar\\/vinrTc54MLNuxSB3Ed1jfdvNac35pFVuoy0RXmbk.jpg\"]', '[\"written_statement\\/HQ2dfEV4dLB3ShaqMxMWrFJ9hyZ6cpgPjmKUOAle.jpg\"]', '[\"voice\\/IIXG5cd7jssKDPscyuhHbsS809P7JL3ksFCBsL6j.aac\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11.1807413, 75.8545884', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2024-11-03 23:54:10', '2024-11-03 23:54:10', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(11, 36, '[\"accident_person\\/XUHBx9AJzbFZTVnbkws4dFMpZHzTPqQxLqna45Ks.jpg\"]', '[\"aadhaar\\/djTVXbTs46xsuX1oPz6bbkjmUpyaJpgErOxFf8XD.jpg\"]', '[\"written_statement\\/uGLQmAoY2tQjLbk8z7LdInyddaQyzwx8wjNcVR3H.jpg\"]', '[\"voice\\/yzBie71vJg7XLThYzko4F4FfOYCnBG2uIP9z5pg5.aac\",\"voice\\/gGz4oUkVJqOwFGr0U9TAtrcvx97o5kLC7gxnp7ji.aac\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"accident_downloads\\/ftWjbGx8k7FPDhec3smddPZZWNLigBsIwQhzsdqk.aac\"]', 0, '8.5061116, 76.9534997', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '2024-11-05 03:41:52', '2024-12-12 03:45:08', 'GX43+CC5, Palayam, Thiruvananthapuram', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(12, 35, '[\"accident_person\\/G3PGlu0C9bp64nQFfwFWFCVMN9l6RVChiVF5qgq5.jpg\"]', '[\"aadhaar\\/5hwxYhIHHz11HIDXGXRgEU5923DfqgS2tHzkoiuS.jpg\"]', '[\"written_statement\\/KNDgkyg2otTB5kdw0RRlOFvhl4G3eFb22eTnkdFh.jpg\",\"written_statement\\/37RjKToN6fmSnIrMtZXaqAWsH7abWburBroGaLHG.jpg\"]', '[\"voice\\/8oWoNVd5XqvMHKYDRcLgX9CSoLb6pHWqGxQvbSEU.aac\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"accident_downloads\\/S4RQvtAZLL0VLWbTNjFAWsPXZSfTfUmKowXAYpHS.jpg\",\"accident_downloads\\/tg42YZblXWQS01mHikkjnIlhh8RGYiWaV4j4XwPY.aac\"]', 0, '37.4219983, -122.084', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2024-11-18 05:13:08', '2024-12-11 05:11:46', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(13, 37, '[\"accident_person\\/8Kv42MKbhzc9TCRjLHrHF3yEYB901HwYtuPCU5qJ.jpg\"]', '[\"aadhaar\\/cUvNMg6TUCocTF5f1sYOOYkwHnNkxBJdV7Lbx7vr.jpg\"]', '[\"written_statement\\/ygQZwBe5jFMrop3ieOqaNguK7s6PPzskFFTXI83h.jpg\",\"written_statement\\/1SIdfgxU198peVRZ2j6pjbg9C85vXk0dcSRyYjoT.jpg\"]', '[\"voice\\/qaXpByKF0amSx1B5OseId5OKkM4IXSmxJvEM2bFZ.aac\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '37.4219983, -122.084', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2024-11-19 03:25:33', '2024-11-19 03:25:33', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(14, 38, '[\"accident_person\\/MRPT3aBxdq4U04iJXvHLskuLvixVPBJuQto9sJFo.jpg\"]', '[\"aadhaar\\/fmvPb0pRjPmfkmdrtMZweqNdW7KoseahbBUci9jm.jpg\"]', '[\"written_statement\\/e45m0M3fnvc4Kic2gUlDjoh6IAP6VJLE0BmeTpCa.jpg\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11.1807635, 75.8545964', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2024-11-19 07:12:44', '2024-11-19 07:12:44', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(15, 39, '[\"accident_person\\/fddM5oNblOcJblNTwIWqfBruLJq3KQMidke2neyK.jpg\"]', '[\"aadhaar\\/cBGkGJMR7qPbACixCti7Cv6x1MwJgcdXitboPEAj.jpg\"]', '[\"written_statement\\/TamHtBD0Pk1TvvqgzLNcgKHwyEeRngprfTizUGSL.jpg\"]', '[\"voice\\/TzFfEZayWzSpcq16JjSUkXQR8CJxZvwl4XkuEnnE.aac\"]', NULL, NULL, NULL, 'fghhhhghdhhhdhdfhh', 'hhfghghhdhdfhdfhdfhd', 'dfhhhdhdfhdfhdffhdfhdfhgh', 'hdfhdfhdfhdfhhfdhdfhh', '30', 'gfgdfhhdhdfhfdh', 'hdfhfhdfhhhhfhfhdfh', 'hhdfhhhhhhhhhh', 'hdfhdfhdfhdfhdfhdfhdfhdfhdfhfhh', 'hfhfhfhfhfhfdhdfhfhdfhfhh', 0, 'hfhfdhdfhdfhdfhhhhn  hdfhfhhh', 'hfhfdhdfhdfhdfhdfhhfhhf', 'hfhhdfhdfhfdh', '524645555', 'ghfgfgghfggg', 'gfgfggggfgggg', 'fghfghfdfghggdg', 'fgfgfgfgfgfgfgfg', 'pedstrian', 'nncvnncvnnnvnvnvnvn', 'vbnvnvnvnvnvnvnnnnn', '123456', 'pulpally', '2024-12-14', NULL, NULL, NULL, NULL, NULL, '37.4219983, -122.084', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2024-11-19 07:31:38', '2024-12-07 04:43:11', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(16, 40, '[\"accident_person\\/ws0bhedDQbWZXkyn8LiFqnXxViEo8tYxugSeQFAQ.jpg\",\"accident_person\\/Hl668CXtB47RCHGDWGaKf2gXobV1g36gazygh6VK.jpg\",\"accident_person\\/wK66EyAXp1F1txkNscwfjCFb0QArgF7xC9N53qem.jpg\",\"accident_person\\/pNkNU1u7oWmBaDr0AzccFzUmp1dND2nR6yUBP7OE.jpg\",\"accident_person\\/EBJoHtYjMmIMo2evtR0Jmvxc3FH0nnD7I3YWuT4S.jpg\",\"accident_person\\/UumdeTKosq2K1hjUSVOhCDaJksiQNSuo5eY1PC19.jpg\",\"accident_person\\/jSVJ4mxqV0obOieWLC78xa9gal7nEWx2ese6iEVS.jpg\"]', '[\"aadhaar\\/BB8qza7lmN38ypRme0GwFDNfpEwEYZTP7n1sUNbn.jpg\"]', '[\"written_statement\\/nOXTC9x5VADUeqlYQ01hO1IXFHlDyXGns8VCMXgS.jpg\"]', '[\"voice\\/bKCICMaTbSgRk1PRcHiJS9CqPlOuLswGhesGr4DJ.aac\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11.180762, 75.8545953', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2024-11-23 00:07:27', '2024-11-23 00:07:27', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(17, 41, '[\"accident_person\\/BICZwcaudT1qdjCwpAJOyYhQ61LIoxuuNdf92xIU.jpg\"]', '[\"aadhaar\\/V4mGcRSJmBljhgjGSoMm8B3hM3MkahE4CZHGFJT1.jpg\"]', '[\"written_statement\\/9TUAVDo6jhNrFdTyYHhKPPk3W2yDGvrLnYHiHMF1.jpg\"]', '[\"voice\\/6XHMC1OKnGMFEOfrgAaqCLlsI3S2jRM7mKSWxaZK.aac\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11.1807736, 75.8546051', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2024-11-23 02:24:35', '2024-11-23 02:24:35', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(18, 42, '[\"accident_person\\/Q2xMlsdcVu6zVVaVhdrXXYAGLBQSve1viWC2iGjm.jpg\",\"accident_person\\/FxxFwtMz0nvW8l1kSnCuvbXMpw7ctV59nvfjkrBN.jpg\"]', '[\"aadhaar\\/GJeBXHkMN9IG4l26FGBQWmchiX6IZMfRA9afvdNL.jpg\",\"aadhaar\\/4m1kgK1rZ7Edc2KTkWiPqhc3cPRpCiSl9AHq034R.jpg\",\"aadhaar\\/vcPjqoMfC6yvvizkyOGixPYhrUXHSHcyONMotkjG.jpg\",\"aadhaar\\/zNtghRjeGvL74URIG5okTENDYwVlHiwU2W5VLHQI.jpg\",\"aadhaar\\/QneA1QTSBJQ0FeOAcMouwDJnT8lGOWp0cPtHeJic.jpg\",\"aadhaar\\/KnBq8mSWqeoRnBjNounNmo4lNHshUrHwzduVynhY.jpg\",\"aadhaar\\/fg3oeJhPRNW0AxbgGiUvI4JyByQHAELXZmbJ2iWV.jpg\",\"aadhaar\\/9JKDCHSe6TE1Zhv9rXqb1JcRNxsVD60A8qWguDQc.jpg\",\"aadhaar\\/NiMr8L5KmTjY2hKm44Hs0jO1OcBLIBysiMXO0hYe.jpg\"]', '[\"written_statement\\/Pv1jMm8CDOdls8y9rLyjeK2GZWKCNekyJn948ss0.jpg\",\"written_statement\\/OcPDHsaU1rs7B4lgnJ6gvIgEnikvGpuH201uPY3g.jpg\",\"written_statement\\/UpNeEpFPRgOUKk0rdU9UUnrN2WGNQRtriNT31Ahs.jpg\"]', '[\"voice\\/QuvUEKmhrxJ3aIe4HpcLokLP4Pz2NbFh4eWwQmwC.aac\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11.1807604, 75.854599', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2024-11-23 02:37:08', '2024-11-23 02:37:08', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(19, 43, '[\"accident_person\\/jai9KRVjwIXtgRYeGuIxmbormGZQ7tc1Tuu2rDSm.jpg\"]', '[\"aadhaar\\/aGtquRPtdQDI8umi3wJc3Bek8n82lSrSDHyA2bFi.jpg\"]', '[\"written_statement\\/DFcWlH8dIK0T6CDQBmeUfmIsUvn35Xkl2URmlxk4.jpg\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11.1807675, 75.8546024', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2024-11-25 05:34:11', '2024-11-25 05:34:11', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(20, 43, '[\"accident_person\\/osw2Qqat7F7ubwQiOpV0l5qqnNlG78L8UVzD6JzA.jpg\"]', '[\"aadhaar\\/kEQPwwLcI7rYxitJkWR1mVWX6bHnZqYFITu4R56g.jpg\"]', '[\"written_statement\\/rYXlIYNjrHZx6H0dRNUIw4XskOtBBVU74ihYc3MP.jpg\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11.1807675, 75.8546024', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2024-11-25 06:14:50', '2024-11-25 06:14:50', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(21, 44, '[\"accident_person\\/906aFmNP1MgZ4SysGDGQqAjEeAQjOhIx6epZQLH5.jpg\"]', '[\"aadhaar\\/exXE4q4vEM5AD5GdqRyRuAhGC2a0BP4fafmt1ZsG.jpg\"]', '[\"written_statement\\/u2g1tfjKon63Vduvnd3TVYd88HxVQSSzn3MkO6ON.jpg\"]', '[\"voice\\/EyUKMBdeYyVbSq4mzSThdXDQhoh2V85Lf40hZhtY.aac\"]', '[\"medical\\/z5Ui5ko3nIcMExw8KojcInQw6tR0jBOHE5uh7599.pdf\"]', '[\"hospital\\/UDeLqL3lwHljCMihAjJi0nuoGYsSYOQ6DPsKrXoG.pdf\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11.18077, 75.8546061', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2024-11-25 23:10:07', '2024-11-25 23:10:07', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(22, 45, '[\"accident_person\\/r8yCU38YfUTGUmwu6pP6lsz2p9iM5izXQyyFHrKG.jpg\",\"accident_person\\/u4a7cFiVPkYtkkavRCXMa8iBNOqH4Triy7nYozrj.jpg\"]', '[\"aadhaar\\/85MAksfnDROfGdfN6Z6nuieOmgDk6wuM50nbqyKg.jpg\"]', '[\"written_statement\\/mByxkoCWzTXy562VK8Lkjgje4lsCdL3361Hzs0Sq.jpg\"]', '[\"voice\\/vM3JrCtckG8BKwXYtPldSGwrOcHcXdmkp6b3ayMe.aac\"]', '[\"medical\\/ze7YRt7gPVvLAInr6vpfciu3Vvx8PSN9Q1hCO1iy.pdf\"]', '[\"hospital\\/CYwirkJImngG2lQbQIhTx26UFnMwtYBZSxaXFm6D.pdf\"]', '[\"accident_pers_ration\\/qW2jWclLrasF0Gmha1xi61sRXP10hY42Dteut57u.jpg\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11.1807756, 75.854611', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2024-11-26 04:55:28', '2024-11-26 04:55:28', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(23, 45, '[\"accident_person\\/UFkGjU60CWqEYQQmdjM1bvvK7MS2XSfTOpHGkNqT.jpg\",\"accident_person\\/eipB3pFprfAcdQ3BtOTdYEy3oZui55ydRYjve2G0.jpg\"]', '[\"aadhaar\\/dxPXJhkVCn682XyDdSEsBJSDzwn9Z474paHTGVfm.jpg\"]', '[\"written_statement\\/KxQdXZMK989OPcvGbWLfc8OqN7XGAUUxbX24KSOM.jpg\"]', '[\"voice\\/MrW3Ixc6RTCE2LWVjo7fJQbog5eFZOxb0HahnbBF.aac\"]', '[\"medical\\/ARXnAyOBv7m3LJIE7mDz9EfH00ZjtMp3iwNn2hpX.pdf\"]', '[\"hospital\\/khM1vxX90ZuykCYr4UYbHIn3460tzygch9YJgymF.pdf\"]', '[\"accident_pers_ration\\/C1z0sbsI2Mr8RBwH3naY4gtB3JIGEvSd3xQpTD53.jpg\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11.1807756, 75.854611', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2024-11-26 05:03:45', '2024-11-26 05:03:45', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(24, 46, '[\"accident_person\\/npBoi4ghNYrgdAxpQ40ESI28qeGZjEz860jTnVkH.jpg\"]', '[\"aadhaar\\/rV7EDjxLYeWrOXQO1RZbT1fFSZWYLa5QbvFXqZsH.jpg\"]', '[\"written_statement\\/wdLtxgJ0HEfuXRDE5meuvV3soL8fdsSvbJF6iLpr.jpg\"]', '[\"voice\\/52NZmBOXGM9HZbnbILK0jXqcXcja73YfIEGAkB7Y.aac\"]', '[\"medical\\/UjSOJvvhUtamBPYOgsP0iZsYDbLbKrnn8yJadSnL.pdf\"]', '[\"hospital\\/GZoVA4sDVPQpNwYC0h5qO52MuzebK02AZJ9TvPVk.pdf\"]', '[\"accident_pers_ration\\/OitOhAKEB2Aub5wJKSrBBKsAK9hx4Kez1FAefBAp.jpg\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11.1807703, 75.8546008', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2024-11-26 07:21:17', '2024-11-26 07:21:17', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(25, 46, '[\"accident_person\\/PSRWOyaPeudV2gzw3LMASIxSiXx5P4cclvifRba3.jpg\"]', '[\"aadhaar\\/hSRrEEDOMfVNuzIHaYpgvzsLaN61xybs5U6cD2c9.jpg\"]', '[\"written_statement\\/OK75a1md1xJVPSJi3eaerzPjrDNjCmYF4w5YFYxU.jpg\"]', '[\"voice\\/hUADYq84WVkawy2ZPiUITBDVgr3gH2YbVQHYyXtk.aac\"]', '[\"medical\\/aDZIK8A4Pc7Gvm0Di8XWCJxRV2Lv48Bb96OD8ZM0.pdf\"]', '[\"hospital\\/FXhF9ALupkd7ejUEtTZfWhLktRO5kXO1mknxk20l.pdf\"]', '[\"accident_pers_ration\\/OyewwfHZK8rzEWMCPbVjh0VPWoFoVssMYOVkTB2X.jpg\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11.1807703, 75.8546008', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2024-11-26 07:26:40', '2024-11-26 07:26:40', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(26, 47, '[\"accident_person\\/AGbWc4S74mzT62XKbACysM0e1uiV4q8acLtLx0Fp.jpg\",\"accident_person\\/Yw31HTEMtzmq6pe17LM67fIAf9vfjzdFYoEcDKce.jpg\"]', '[\"aadhaar\\/zKH62XA0z9V2NcC2isiruWZI5YAqEhOF2IZxLZnv.jpg\",\"aadhaar\\/G36w5N4yV38Nab5wsFNeGV10AW3tcDUrLtalZta2.jpg\"]', '[\"written_statement\\/1s0zsUOQWBs05pOC7JzUQV3fgpcDVFCwnShj9iTv.jpg\",\"written_statement\\/eWcUbGrtSUCKc0OIcoPdUOWs8qfO0YLYd3Mo7m7f.jpg\"]', '[\"voice\\/iaMDdmcrtdT1yjAcGzQX6AxAyqQAnHmPFSNpx5VA.aac\"]', '[\"medical\\/KgdIO6cVIwpFnvZBTWUkwQRvYyRWqzvrP6rHJtBs.pdf\",\"medical\\/rkIIrl7yh1gGULYgyMitiYlrOqt0L9i6dDbYhVtg.pdf\"]', '[\"hospital\\/KKfoHToS97cXHITK7PUaaWYcap6zSU1OGKfugapL.pdf\",\"hospital\\/psUWeitzeMg8QOrwoFKnuqoKK0tfvalcV8YurUM5.pdf\"]', '[\"accident_pers_ration\\/YKftEolwe6oGi9TT4Vra7mXETarJ7TK7ShASBb2H.jpg\",\"accident_pers_ration\\/EkcJU0lrF25UQcNgSLpHsiBzUSPumW99YoqQfnky.jpg\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '37.4219983, -122.084', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2024-11-27 00:03:00', '2024-11-27 00:03:00', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(27, 48, '[\"accident_person\\/1GxPnw8mPMarq6ubDvkj8BX1kJIyR1jPAjO3i0k6.jpg\"]', '[\"aadhaar\\/eVkWs2uC5ZFGBvdoB4QEcFLMXpmrJHhqSlLaCFNk.jpg\"]', '[\"written_statement\\/4pRnce2Sz2rcqWNXaiy6pC2jJqBZ303B7yJZ6oWO.jpg\"]', '[\"voice\\/7I5eAEEUQj3TuSDpvT36oLScXukUUBHvQKkroPeB.aac\"]', '[\"medical\\/Cm4v4f7T2OlgbYGqNHBuGkYc0814h8ALMT0d4Oza.pdf\"]', '[\"hospital\\/Aymk4eBLaTZXCW8Ni1KwCYDw159MGJr8w31cTael.pdf\"]', '[\"accident_pers_ration\\/kKt60TSdp3JNAuzq5jPemiHsMxBM8WpuqYsNFUOB.jpg\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '37.4219983, -122.084', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2024-11-29 03:46:20', '2024-11-29 03:46:20', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(28, 48, '[\"accident_person\\/PB0bf27EXfBk5rmNMB8KiegA5P0VhFOytPulqgvg.jpg\"]', '[\"aadhaar\\/4I5BVgbOE8Lx2KF8Cc6MYpM1rBk7ymCT4qjqbSHe.jpg\"]', '[\"written_statement\\/Xku2fRuxqqhXaKlka9671IUnQonz1VH6PwqRbCUp.jpg\"]', '[\"voice\\/wB9HTQVoBZpkSzWJN3b575I2hhCqxK2xkVeyK8Di.aac\"]', '[\"medical\\/m104v21h6NfYDNiHUG3EipWUuQQpApylvkd1s3PW.pdf\"]', '[\"hospital\\/rTvZ0BS6AmY1pxfkLZxXPHn4bd24COfHutfeOuab.pdf\"]', '[\"accident_pers_ration\\/6R755vPjnobgpTL18VA02b96YG4tFoqZ92xHttNN.jpg\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fgfgfg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '37.4219983, -122.084', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2024-11-29 04:19:39', '2024-11-29 04:19:39', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(29, 48, '[\"accident_person\\/D2j6nFrwYfs8mLBIC51RLsrpytvbMG3Jpyb3Rk3D.jpg\"]', '[\"aadhaar\\/hoikK9DeqizbAlPe3DAgUZP4kZc34Z3iJHwESjYB.jpg\"]', '[\"written_statement\\/lTlJEP5IAzEci4ESJTNfrNrDMaevR1zh0Bo5IGWx.jpg\"]', '[\"voice\\/deIjBaCsTG1pbU9anRfAPBCHSowlpyTej9EK8JP8.aac\"]', '[\"medical\\/Ln7n3xUgVnT3MjTMO7Fhx1uchCH9QV3N7Ef0sSnh.pdf\"]', '[\"hospital\\/HQyejgZPYMGqnCPYkQ5bMItmKTdcfRbBVt3n102X.pdf\"]', '[\"accident_pers_ration\\/LfI0K7KMu0DAglPZoeT8Xs5qtEE9BDY4m3j07Yae.jpg\"]', 'fgfg', 'fgfgfgfg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fgfgfg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '37.4219983, -122.084', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2024-11-29 04:19:50', '2024-11-29 04:19:50', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(30, 48, '[\"accident_person\\/cWRokkUEDOLVEQILhNOiKAnDXiCy0q4OT4XKlRh4.jpg\"]', '[\"aadhaar\\/oPWutxNhH1Ujf65H6K2BPh5q57mWTxKDvGza4NhI.jpg\"]', '[\"written_statement\\/gaHsddbB5OP7A86MJSjp7JtRjqMpBktj2i7q9Dzi.jpg\"]', '[\"voice\\/GKLPkSpzw4VxArz1HwXmnrCauve9ShK4vcagRRKo.aac\"]', '[\"medical\\/dRWJEZp0mAM7Yjh14GLRQlJpNqfujHJ5pyIFIdlX.pdf\"]', '[\"hospital\\/LxxwnF7z5hJxYBrdXHipXJ1xjc5x4KdlxK81hJS2.pdf\"]', '[\"accident_pers_ration\\/XF23hk8E4i9XXbUqenz6cOABCTZszAUwVWWTJCU7.jpg\"]', 'fgfg', 'fgfgfgfg', 'fgfg', 'fgfg', NULL, 'fgfgfg', NULL, 'fgfgfgfgfg', NULL, 'fgfgfg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '37.4219983, -122.084', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2024-11-29 04:20:04', '2024-11-29 04:20:04', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(31, 48, '[\"accident_person\\/5jFLkz5Su4iqDPOStKMeCVp7geu6aMTnJSt8JEno.jpg\"]', '[\"aadhaar\\/oUvDJ8S13yVp9E6ScBpEBU8o1A8nKtg06LEH9Ix4.jpg\"]', '[\"written_statement\\/rw25jYMtJZd2fZcPz7ZvcFyYhllTxZ3upIw0smKF.jpg\"]', '[\"voice\\/R0WXn7C3jTL9pIrBiwra3gsMT2ahfXXN0Q2tL0SX.aac\"]', '[\"medical\\/9sY1IKW1acP1Cx7Zeo2rA1plwYfV8IE2G2wH2Pb0.pdf\"]', '[\"hospital\\/siKeyssN245zZ9JxXpc7h309Ggfw6qGPzsFs7uzo.pdf\"]', '[\"accident_pers_ration\\/2QI18khNmB6Sr3Pyu3wKVBVOvGH1aSZiadGh3ixa.jpg\"]', 'fgfg', 'fgfgfgfg', 'fgfg', 'fgfg', NULL, 'fgfgfg', 'fgfgfg', 'fgfgfgfgfg', 'fgfgfg', 'fgfgfg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '37.4219983, -122.084', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2024-11-29 04:20:40', '2024-11-29 04:20:40', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `accident_person_data` (`id`, `assign_work_id`, `accident_person_images`, `accident_person_aadhaar_card_images`, `accident_person_written_statment_images`, `accident_person_voice`, `medical_report`, `hospital_report`, `ration_card`, `fir_vers_accdnt`, `claiment_vers_aaccdnt`, `chrgesheet_con`, `relation_insured_and_claiment`, `age_injured_person`, `profession_injured`, `diff_in_rider_ver_injured`, `name_address_hospital`, `distance_from_site_hospital`, `details_big_hospital_near_site`, `zebra_cross_on_site`, `injury_record_details`, `name_witness`, `name_informer`, `vehicle_no_fir`, `name_accused`, `injured_name`, `injured_phone`, `injured_address`, `injured_pedstrian_or_traveller`, `injured_hospital_report`, `injured_admited_hospital_details`, `gd_no`, `police_station`, `gd_date`, `gd_pdf`, `accident_date_time`, `accident_description`, `accident_downloads`, `sp_case`, `latitude_and_longitude`, `wound_certi_coment`, `no_injured`, `no_dead`, `no_tppd`, `comperhensive`, `dob_injured`, `aadhar_no_injured`, `pan_no`, `period_leave_avail`, `source_income`, `month_incom`, `wound_certificate_short_disc`, `injured_exami_date_on_woundcerti`, `injury_place_on_wound_certi`, `person_name_who_brought_injured`, `hospitalised_from_date`, `hospitalised_to_date`, `ip_days`, `verified_treament_records`, `details_postmortam_report`, `legal_heirs_name`, `heirs_age`, `heirs_rel_deseased`, `marital_status_heirs`, `heirs_residing_address`, `heirs_occupation`, `heirs_employer_address`, `executive_id`, `created_at`, `updated_at`, `location`, `no_occupants`, `complnt_rel_injured`, `descrition_accused`, `accused_identifed`, `district`, `state`, `fir_no`, `section`, `date_time_fir`, `delay_in_fir`, `gist_fir`, `court_where_chargesheet_filled`, `date_chargesheet`, `section_chargesheet`, `who_charged_with`, `gist_chargesheet`, `petty_case_charged`, `status_criminal_case`, `accident_genuine`, `opnion_disablement`, `opnion_dl_validity`, `dl_extract_obtained`, `injured_established_fir`, `insured_vehicle_establ_fir`, `comment_defence_evidence`, `wound_certificate`, `helment_details`, `verification_medical_report`, `discussion_family_neighbour`, `role_injured`, `discussion_injured`, `discussion_employeer_injured`, `discussion_rider`, `discussion_financial`, `fact_findings`, `conclusion`, `opnion_injured`, `accident_cause_more_vehicle`, `name_complainant`, `name_add_num_employeer`, `edu_injured`, `gap_sequencial_event`, `date_time_hospital_addmission`, `doc_name_and_first_aid`, `record_found_first_aid_hospital`, `fir_named_or_not`, `absence_chargesheet`, `damage_per_od_claim`, `date_discharge`, `period_absence_from_work`, `permanent_disablity`, `present_condition_injury`, `amount_medical_expenceses`, `status_rembur_med_expense_employeer`, `other_information`, `date_panachanama`, `opnion_from_panchayath`, `date_of_death_date_pm`, `cause_death_per_pmr`, `co_injured_name_address`, `co_injured_income`, `co_injured_age`, `co_injured_occupation`, `co_injured_relation_injured`, `co_injured_depend_or_not`, `hit_run_police_reach_conclusion`, `gaps_police_investigation`, `case_suspect_nexus`, `tp_property_damage`, `policy_details`, `insured_vehicle_paper_valid_accident_time`, `criminal_court_status_case`, `case_diary_findings`, `about_accident`, `owner_verification`, `rider_verification`, `details_dl_validity`, `tpv_details_dl_validity`, `claim_no`, `nature_of_claim`, `concern_matters`, `dist_from_police`, `rel_informr_claimant`, `address_different`, `annual_incom_injured`, `esi_coverage_details`, `status_injures_decesed`, `compass`, `pension_details`, `injured_death_on_spot`, `pmr_no`, `pmr_date`, `hospital_name_pmr_carried`, `injured_compromised`, `defense_fit_compromize`, `injured_marital_status`, `co_injured_marital_status`, `accident_date`) VALUES
(32, 48, '[\"accident_person\\/odq3rzNIPAWXY1WiFGhCOXFlr5caAd6TLQpD4xMx.jpg\"]', '[\"aadhaar\\/ZEWwi1N2o59Hp1K3jFFGFaAgTGq3MRFZKFQQOlse.jpg\"]', '[\"written_statement\\/Auqgv4CNB4QuvX72wbxJmP62vGHg6Bl6KVtIcn9J.jpg\"]', '[\"voice\\/iPEVve78joRsMdiPTbrdcq7dWItHeTk06Zk07iCg.aac\"]', '[\"medical\\/3hUwIIfuilsHGKwVqdw02t51K7B2h3X5hbb9nTJh.pdf\"]', '[\"hospital\\/TZPvXGalbIkW1PDPRJ6q3kogxGNNI10XyVCYJt7c.pdf\"]', '[\"accident_pers_ration\\/wln2IX6rALqCLqdtFK756rrklnBi61K4gEm0MbxW.jpg\"]', 'fgfg', 'fgfgfgfg', 'fgfg', 'fgfg', NULL, 'fgfgfg', 'fgfgfg', 'fgfgfgfgfg', 'fgfgfg', 'fgfgfg', NULL, 'fgfgfgf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '37.4219983, -122.084', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2024-11-29 04:21:07', '2024-11-29 04:21:07', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(33, 48, '[\"accident_person\\/Wto6plvx5TEzq3AnJe4vOpscvD4kjWWWQY0sNkym.jpg\"]', '[\"aadhaar\\/vzlUNmyTiXVJ6zUZBbXRbkTJWxUngB96AYJ5eNxU.jpg\"]', '[\"written_statement\\/Uv1F5Lpp1ToiwYsev051EsHRlsGJGTd55mfSB1S1.jpg\"]', '[\"voice\\/7cksvjpaZxPPnTrWGrUrIRblIeQFnFkJD9bLQUVQ.aac\"]', '[\"medical\\/89g6HlgYHwyALYEPz4HkkASe817rv7Qam85FHXlw.pdf\"]', '[\"hospital\\/giBr9PGcOcEkd8clhoIb4Mb4QeRfv4RVCQt578ol.pdf\"]', '[\"accident_pers_ration\\/GKjkMmWH4c2oPqtq11q2koBhm66ibWNrVDDcRdpn.jpg\"]', 'fgfg', 'fgfgfgfg', 'fgfg', 'fgfg', NULL, 'fgfgfg', 'fgfgfg', 'fgfgfgfgfg', 'fgfgfg', 'fgfgfg', NULL, 'fgfgfgf', NULL, 'fgfgfg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fgfgfggf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '37.4219983, -122.084', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2024-11-29 04:21:18', '2024-11-29 04:21:18', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(34, 48, '[\"accident_person\\/CdOT9HeBseEjg95gfwRmhFJvoZHVqNm5q3IJcqcJ.jpg\"]', '[\"aadhaar\\/mv28h7UhkkujufwJOFmMlipUneXc73PsPsZyQFWZ.jpg\"]', '[\"written_statement\\/HiIcR0pn7m9FeqJpxthsgPpWTOpCnN1J6Ldk2IJ1.jpg\"]', '[\"voice\\/gBxtsyBNssEfoo8524D3MNJak48dQLSAzMra4JTK.aac\"]', '[\"medical\\/KmDP4B2FF4hLMXqV0K7Gz0wyqzfPlRhTJXODJtJE.pdf\"]', '[\"hospital\\/al6qwNNe09LN36l0BHDaWYJ5j6uBKifaWyOlTMA4.pdf\"]', '[\"accident_pers_ration\\/yO55UjAP6e22JFpul8TlW9yOEGYi9QvE5dQ0OSQ0.jpg\"]', 'fgfg', 'fgfgfgfg', 'fgfg', 'fgfg', NULL, 'fgfgfg', 'fgfgfg', 'fgfgfgfgfg', 'fgfgfg', 'fgfgfg', NULL, 'fgfgfgf', NULL, 'fgfgfg', NULL, NULL, NULL, 'fgfgfg', NULL, '1', 'fgfgfgfg', 'fgfgfggf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '37.4219983, -122.084', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2024-11-29 04:21:28', '2024-11-29 04:21:28', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(35, 48, '[\"accident_person\\/eMMTnkdY8FOjohzFALfLjSWPlcAidahY5hPCtu6H.jpg\"]', '[\"aadhaar\\/UhKBg59YsoequHZX6fgFXLmIy8qwDZQbstYkmBsi.jpg\"]', '[\"written_statement\\/W4diXT6kp9Ec9kdpYLgCTDpWMlSNv5hUzrKp7NjM.jpg\"]', '[\"voice\\/uLi6pOKqB2Q6dkLntCCUrGGo3Xfetkrv7qFg6AAo.aac\"]', '[\"medical\\/q6mcW7hTUntDDFu4h1aoiUAc4yfTdUyceK0yIAt5.pdf\"]', '[\"hospital\\/V9zehsvLEeXu52L0VdzAOHBVcw6eUpS8TFt7gMa8.pdf\"]', '[\"accident_pers_ration\\/53oVXYOjZxLpYiYHymtVD4REreDqSnSA8XOhMcVP.jpg\"]', 'fgfg', 'fgfgfgfg', 'fgfg', 'fgfg', NULL, 'fgfgfg', 'fgfgfg', 'fgfgfgfgfg', 'fgfgfg', 'fgfgfg', NULL, 'fgfgfgf', NULL, 'fgfgfg', NULL, NULL, 'gfgfgfg', 'fgfgfg', 'fgfgfgfg', '1', 'fgfgfgfg', 'fgfgfggf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '37.4219983, -122.084', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2024-11-29 04:21:39', '2024-11-29 04:21:39', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(36, 32, '[\"accident_person\\/O8atExTOdrnaBXoUOTPYhjJkdwlcyXyoo4GCvcfx.jpg\"]', '[\"aadhaar\\/z7gx5rgZsdM8WhFZ7SddGg8fwtwsUtRO02BMNP5P.jpg\"]', '[\"written_statement\\/SiwAbusKc5Bp93GJgMsEPS1mtylTxXf5jCa8C21n.jpg\"]', '[\"voice\\/Z31rThXf17gcNAJaJ6NZrx0vlOwEEGE3ApBwEQci.aac\"]', '[\"medical\\/QFswfLSUTVo0JBERGAH85YamiJltlLOjcEi4lAfk.pdf\"]', '[\"hospital\\/dZgL9zfWChk078n5KE225HF6JeFyiykTfysnL82h.pdf\"]', '[\"accident_pers_ration\\/iSaJejZhEik3sGN3NjzsdEHexU7Lo3PcBsO8TnCV.jpg\"]', 'dswfcsdfcsdfcdsfsd', 'fsdfsdfsd', 'sdfsdfsdfsdfsdfsdfsdfsdfsdf', 'sdfsdf', NULL, 'sdfsdfsd', 'fsdf', 'dsfsdfdfsfdsfdsfsdfsdfsdf', 'sdfsdfsdfsdfsdfsdf', 'sdfsdfsdfsdf', NULL, 'sdfsdfsdfsd', NULL, 'sdfsdfsdfsdfsdf', NULL, NULL, NULL, NULL, NULL, NULL, 'fsdfdsfsdf', 'dsfsdfsdfsdfsdfdsfsdfdsf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '37.4219983, -122.084', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2024-11-29 04:29:01', '2024-11-29 04:29:01', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(37, 32, '[\"accident_person\\/vzru2J4HckfluvFLtVUdg8mENc1R4RVO9szQ7smR.jpg\"]', '[\"aadhaar\\/lqeBmfs6rok4j4BFVDwUiqVGbuIbElkbfNg5VXXc.jpg\"]', '[\"written_statement\\/vw0KKCFqTeylsSTFm7EhZH2z17wNv8kULLgQWVx9.jpg\"]', '[\"voice\\/g7mUhpbLczcj3X8pZC4FkFzvkHRJTE0M5BeZFmpo.aac\"]', '[\"medical\\/c7S8EiAsWYPXgHmlzj4eOyrmxBHUTA8wSnAM4uLj.pdf\"]', '[\"hospital\\/MJO3tdMU6VDWfytQCifZtpdizdCZjiXgivuLBL70.pdf\"]', '[\"accident_pers_ration\\/nvVdmSsjRDuqpmfcMbVFhr3mOBpsvnDw77qXmDZC.jpg\"]', 'dswfcsdfcsdfcdsfsd', 'fsdfsdfsd', 'sdfsdfsdfsdfsdfsdfsdfsdfsdf', 'sdfsdf', NULL, 'sdfsdfsd', 'fsdf', 'dsfsdfdfsfdsfdsfsdfsdfsdf', 'sdfsdfsdfsdfsdfsdf', 'sdfsdfsdfsdf', NULL, 'sdfsdfsdfsd', NULL, 'sdfsdfsdfsdfsdf', NULL, NULL, 'sdfsdfsdfdsfsdf', 'sdfsdf', 'sdfsdfsdfsdfsd', '1', 'fsdfdsfsdf', 'dsfsdfsdfsdfsdfdsfsdfdsf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '37.4219983, -122.084', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2024-11-29 04:29:16', '2024-11-29 04:29:16', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(38, 32, '[\"accident_person\\/rgsaB3Nz85Sp1k1tx8t4b2Kg98yBsqtiL82Uoi2Q.jpg\"]', '[\"aadhaar\\/URE6SMkicrDlBMFLivKULhm60AxuOtPYXe7eG3TZ.jpg\"]', '[\"written_statement\\/ZX9hK7RQQDMKbbo9SGopnCkfJuVsBjULEWPkDhak.jpg\"]', '[\"voice\\/wM5106U3nisjQpR5R47osTZn9EX2Ld9MqmLmRaR6.aac\"]', '[\"medical\\/O7KRV86NIM5IY9DTOi9WRun4wzVEmAXTVElaQhlJ.pdf\"]', '[\"hospital\\/FXdS6ZGPMXPnbOjauCXbzdRRRByoUhAw3z0LUAuc.pdf\"]', '[\"accident_pers_ration\\/08QliT2RDmGyB8kuKO2be2HgHn5kNom7gUKlZD4s.jpg\"]', 'dswfcsdfcsdfcdsfsd', 'fsdfsdfsd', 'sdfsdfsdfsdfsdfsdfsdfsdfsdf', 'sdfsdf', NULL, 'sdfsdfsd', 'fsdf', 'dsfsdfdfsfdsfdsfsdfsdfsdf', 'sdfsdfsdfsdfsdfsdf', 'sdfsdfsdfsdf', NULL, 'sdfsdfsdfsd', NULL, 'sdfsdfsdfsdfsdf', NULL, NULL, 'sdfsdfsdfdsfsdf', 'sdfsdf', 'sdfsdfsdfsdfsd', '1', 'fsdfdsfsdf', 'dsfsdfsdfsdfsdfdsfsdfdsf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '37.4219983, -122.084', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2024-11-29 04:29:39', '2024-11-29 04:29:39', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(39, 32, '[\"accident_person\\/oFOV0OkFk6emXoWZ116jhDAQnIS14v2cYiTEfkpK.jpg\"]', '[\"aadhaar\\/llizWAulXvgKXXiUQlwBQU4F6SrU8N5rgbQrWu81.jpg\"]', '[\"written_statement\\/JxZFRLmK1PVGw5rEhrCPdYWDoRj68fFCPrgCZWwG.jpg\"]', '[\"voice\\/MT75EslawP81qdSneitjUcEyZOMujmIwyEAQvnON.aac\"]', '[\"medical\\/eqPNsfO52S6HE813J2TvMM9V9EcpQnHkxfskRVAr.pdf\"]', '[\"hospital\\/kzys8GhnnHZuA9mmKccBccBNFTJYkUomwlrjFybv.pdf\"]', '[\"accident_pers_ration\\/nQthIjUQDRKrqBAjlrLMrtRSHHUK4tAieXJ09lv8.jpg\"]', 'dswfcsdfcsdfcdsfsd', 'fsdfsdfsd', 'sdfsdfsdfsdfsdfsdfsdfsdfsdf', 'sdfsdf', NULL, 'sdfsdfsd', 'fsdf', 'dsfsdfdfsfdsfdsfsdfsdfsdf', 'sdfsdfsdfsdfsdfsdf', 'sdfsdfsdfsdf', 1, 'sdfsdfsdfsd', NULL, 'sdfsdfsdfsdfsdf', 'sdfsdfsdfsdfsdf', NULL, 'sdfsdfsdfdsfsdf', 'sdfsdf', 'sdfsdfsdfsdfsd', '1', 'fsdfdsfsdf', 'dsfsdfsdfsdfsdfdsfsdfdsf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '37.4219983, -122.084', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2024-11-29 04:29:52', '2024-11-29 04:29:52', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(40, 32, '[\"accident_person\\/ozFeHI0JVCOheNMIJRMtBzJSDB1lzODcSlFrwaES.jpg\"]', '[\"aadhaar\\/zF3x9OIutS6LupZIrSYrvUT1je4hYxdtEtrhRtzc.jpg\"]', '[\"written_statement\\/jH4WylSpO7XfwDWUhhqEkWj0TeMXQHDiGqtun3q3.jpg\"]', '[\"voice\\/hMEYQVU2uuuKJ6MgAPkNjgD4h1ti9DipNNv5y5An.aac\"]', '[\"medical\\/8nZjoLymYz9Lyu8eITmMs62nf2kn0cGJAPahjl4B.pdf\"]', '[\"hospital\\/Pl1Fjye3TuMXcFkW6F7tF5XPQs8YcKO598YMAOS4.pdf\"]', '[\"accident_pers_ration\\/uTuwjLChNYqf4VKHLKWFIbwOwKvs3CJOowOY4OkC.jpg\"]', 'dswfcsdfcsdfcdsfsd', 'fsdfsdfsd', 'sdfsdfsdfsdfsdfsdfsdfsdfsdf', 'sdfsdf', 'sdfsdfsdfsdfsdf', 'sdfsdfsd', 'fsdf', 'dsfsdfdfsfdsfdsfsdfsdfsdf', 'sdfsdfsdfsdfsdfsdf', 'sdfsdfsdfsdf', 1, 'sdfsdfsdfsd', NULL, 'sdfsdfsdfsdfsdf', 'sdfsdfsdfsdfsdf', 'dfsdfsd', 'sdfsdfsdfdsfsdf', 'sdfsdf', 'sdfsdfsdfsdfsd', '1', 'fsdfdsfsdf', 'dsfsdfsdfsdfsdfdsfsdfdsf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '37.4219983, -122.084', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2024-11-29 04:39:58', '2024-11-29 04:39:58', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(41, 32, '[\"accident_person\\/5nLf6AR3vgIsYWGBBL6fcNqdGOxgKChfnfxDfwmA.jpg\"]', '[\"aadhaar\\/OQBqKfZ2ya6k8Qt3sql4Eg5NYJyre5QcgsFYmDLa.jpg\"]', '[\"written_statement\\/35ahNUPOZwG64rf8GtvdAEL3AcNkmllRyjIF5ANO.jpg\"]', '[\"voice\\/KqmP6nuSwRkg6LqXLw7UhOwdSqotPrgQnJ8KJhCM.aac\",\"voice\\/STTPUEkwEaJy9sLRjSDPlX1Oyl97YL4mTw95v4SB.aac\"]', '[\"medical\\/HdY97Or73c4hOKVKjgTK1jiM93zWDBrprnJYO1rq.pdf\"]', '[\"hospital\\/bPdDGVd9sSl1UlaJEK12PymSUwN5sc9GISYO2dR3.pdf\"]', '[\"accident_pers_ration\\/xRFBqBJlnK8nbyWULiTBQpgrCZNJemXCmNmu12Ey.jpg\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '37.4219983, -122.084', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2024-11-29 04:47:36', '2024-11-29 04:47:36', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(42, 32, '[\"accident_person\\/MHpSk1oMfGNmoNFPl0aT96rVq7l7aRRMSY6XGnyJ.jpg\"]', '[\"aadhaar\\/ihL1loDO40LB1eryiDGdeUZAJaNosmSYbnU1XT68.jpg\"]', '[\"written_statement\\/iIQZCyvR8PQhmTpluSWtn3jMAsKMHqO7VHcjuCK0.jpg\"]', '[\"voice\\/wSPotvFCTYCpqo9uHeHj9Dkteu2m5FF0ql5kiyQ6.aac\"]', '[\"medical\\/U7E6uBvHE0dcM4SVuZ2ffNXIVWll4SI5Av6ccED2.pdf\"]', '[\"hospital\\/hIB8lMYknmR8gv7vjHU2umWvRYdiGfHNwnUefK9E.pdf\"]', '[\"accident_pers_ration\\/oe04S2iRcVBzMslNnInwzKM2zqcA5SKyDI7YaD3m.jpg\"]', 'dswfcsdfcsdfcdsfsd', 'fsdfsdfsd', 'sdfsdfsdfsdfsdfsdfsdfsdfsdf', 'sdfsdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '37.4219983, -122.084', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2024-11-29 04:47:54', '2024-11-29 04:47:54', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(43, 32, '[\"accident_person\\/hyomfyjZQa4SMjFzJHpqyEVdUCSOt0RHHDx2cgcM.jpg\"]', '[\"aadhaar\\/jkyo03ON5eqD3hVm2SsR1Lqyvx30PYkqjHG97Stu.jpg\"]', '[\"written_statement\\/DTeldogmlWkS1eDQdzLbi20yn7OFcrOQtYGudsWz.jpg\"]', '[\"voice\\/BQXFBvo46YbfhsJB5W5FvboPpQBSf8KEc7K0YJeu.aac\",\"voice\\/jJFxj284YQH8rMNpVfGY1GeTn4znIcOVB6LOnUbB.aac\"]', '[\"medical\\/L6xUpRSgKp0HsJdqAWuCDpVD7c60nXcTsM8jthi8.pdf\"]', '[\"hospital\\/lSxCCYuBVdg5SibNBN8ymslKCt1X1DzeMBm2wOck.pdf\"]', '[\"accident_pers_ration\\/NxBiYRu7XF6MdqOWzkTp8z3VnHWXE5gRCqVCuJvX.jpg\"]', NULL, NULL, NULL, NULL, 'dsvsdvdsvsdvsdvs', 'vsdvs', 'vsdvsdvs', 'v', 'dsvsdvsdv', 'sdvsdv', 1, 'dsvsdvsdv', NULL, 'vsdvdsvsd', 'vsdv', 'sdvsdvsdvsdvsd', 'vsdvsv', 'dvsdvsd', 'vsdvsdv', '1', 'sdvsdvs', 'sdvsdv', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '37.4219983, -122.084', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2024-11-29 04:48:27', '2024-11-29 04:48:27', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(44, 32, '[\"accident_person\\/DLWoBDCrvN0awS2BGWAhBlYhB56kVW6qx6OLRphe.jpg\"]', '[\"aadhaar\\/zAeI1o5LmcXq21Nxrtru3rOBi48A0il6SQQg9Az2.jpg\"]', '[\"written_statement\\/mndNo0SxI4nw16pU9xzkRiW1r56V6l27mUCyzZqQ.jpg\"]', '[\"voice\\/P9foHBfrsNRJHYkVA3pWnLIN4ZtYcx5rtM1FMVik.aac\",\"voice\\/Y69rH3MLR0kqcSYFR8S2MfYskM5u4pTdkDISgdht.aac\"]', '[\"medical\\/W9oxjSWgsJResdD9kMkI3bZRxIXwRTh2zqsVtLX5.pdf\"]', '[\"hospital\\/eLLeAYbDZRP5R0ZBYWT5zwoOlqxDqOQifxOL8DQ1.pdf\"]', '[\"accident_pers_ration\\/c25v1VtuzibkkIbDYOzBuAtSmxLy9is1pu5r9CAZ.jpg\"]', NULL, NULL, NULL, 'sdvsdv', 'dsvsdvdsvsdvsdvs', 'vsdvs', 'vsdvsdvs', 'v', 'dsvsdvsdv', 'sdvsdv', 1, 'dsvsdvsdv', NULL, 'vsdvdsvsd', 'vsdv', 'sdvsdvsdvsdvsd', 'vsdvsv', 'dvsdvsd', 'vsdvsdv', '1', 'sdvsdvs', 'sdvsdv', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '37.4219983, -122.084', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2024-11-29 04:48:41', '2024-11-29 04:48:41', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(45, 32, '[\"accident_person\\/H2euUWGcOCiWQVKspvvVJgpD1i5TRhm0WHZRCOf1.jpg\"]', '[\"aadhaar\\/y0v7h6VU63v2QPPOBQC20MocUlJ6ccpCShypqtfy.jpg\"]', '[\"written_statement\\/2GNWQt2ufXk15y2fbIRdUa3uCQHFiGnMjdysXwNn.jpg\"]', '[\"voice\\/lLy5ucV2dcjMywGuRnkaBV1ChDde43AfqHJRQfRw.aac\",\"voice\\/ykDzQP8u9eEjt0XNXD8lWgnuIZvsX5dVY1rKZipF.aac\"]', '[\"medical\\/Mskw2vIj2BCWcUtnV9WxlaSMi2fwOSmeUVCMhJks.pdf\"]', '[\"hospital\\/we7PiI5OLErmGdFCwcr3IcLaYErBFEyHGmPbUr2K.pdf\"]', '[\"accident_pers_ration\\/mYVkdYFN6x2MNyPDpErzDIv014H46Kq65frCULcq.jpg\"]', NULL, NULL, 'vsdvsdvsdvsdvsdv', 'sdvsdv', 'dsvsdvdsvsdvsdvs', 'vsdvs', 'vsdvsdvs', 'v', 'dsvsdvsdv', 'sdvsdv', 1, 'dsvsdvsdv', NULL, 'vsdvdsvsd', 'vsdv', 'sdvsdvsdvsdvsd', 'vsdvsv', 'dvsdvsd', 'vsdvsdv', '1', 'sdvsdvs', 'sdvsdv', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '37.4219983, -122.084', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2024-11-29 04:48:49', '2024-11-29 04:48:49', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(46, 32, '[\"accident_person\\/fFtHuOVNuYWbltskgfeGO46LBpIYwPTQt3oLHvdK.jpg\"]', '[\"aadhaar\\/m6H5AboL3XNFOr9e11hLNdYWFfSzJ3tvCCTqsAIx.jpg\"]', '[\"written_statement\\/O5sRCwIBNbYCCQOZuZkCtyAULR51pRdmEW2yS5r0.jpg\"]', '[\"voice\\/Vxn8eTp2reNqKqksJpOYyVdTqNAgrpSlDG9g3DKh.aac\",\"voice\\/06bsCCqzBOmyzBi99bErZMMlZM1iLRLnlzxiXnSF.aac\"]', '[\"medical\\/AemSThCjFCzFAojk7JKpxAfL9lfjvvVshhMq6zTs.pdf\"]', '[\"hospital\\/Zh3Ky76fd0Ryn5HA6OVe9zp85dCoPcBieKcJ1rxx.pdf\"]', '[\"accident_pers_ration\\/vi41w8JRoeoGGBZKL34FnJVUUW7YPhpX1JxRjgDT.jpg\"]', NULL, 'vsdvsdvs', 'vsdvsdvsdvsdvsdv', 'sdvsdv', 'dsvsdvdsvsdvsdvs', 'vsdvs', 'vsdvsdvs', 'v', 'dsvsdvsdv', 'sdvsdv', 1, 'dsvsdvsdv', NULL, 'vsdvdsvsd', 'vsdv', 'sdvsdvsdvsdvsd', 'vsdvsv', 'dvsdvsd', 'vsdvsdv', '1', 'sdvsdvs', 'sdvsdv', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '37.4219983, -122.084', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2024-11-29 04:48:57', '2024-11-29 04:48:57', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(47, 32, '[\"accident_person\\/mh1wuIzYGFKsvA67FsHQlfIzhgSVFzh7v3WZChue.jpg\"]', '[\"aadhaar\\/r4RjUJHCCaLs2jUTBIZjvUMT2pXemN6JMdA2tiwA.jpg\"]', '[\"written_statement\\/FrHV4r9R5laNZ5LE4qlpKkVLjSn5ycJYuiIcF5yC.jpg\"]', '[\"voice\\/cSRis2IIY7dVDJ1utpZPLcE4nleIBljFeAWjHChG.aac\"]', '[\"medical\\/DJv8inHoWTmoBXDMpFVSfwPr1zZFvr6wwJPE68Ap.pdf\"]', '[\"hospital\\/86nM2BXwJ2lvwyOA7yMLDhgOtPtLMI0ZSPR87PAI.pdf\"]', '[\"accident_pers_ration\\/svGG7tMRAoDOTUGJnT9WnT8MscpX5tvvevZMLUmF.jpg\"]', 'dswfcsdfcsdfcdsfsd', 'fsdfsdfsd', 'sdfsdfsdfsdfsdfsdfsdfsdfsdf', 'sdfsdf', 'sdfsdfsdfsdfsdf', 'sdfsdfsd', 'fsdf', 'dsfsdfdfsfdsfdsfsdfsdfsdf', 'sdfsdfsdfsdfsdfsdf', 'sdfsdfsdfsdf', 1, 'sdfsdfsdfsd', NULL, 'sdfsdfsdfsdfsdf', 'sdfsdfsdfsdfsdf', 'dfsdfsd', 'sdfsdfsdfdsfsdf', 'sdfsdf', 'sdfsdfsdfsdfsd', '1', 'fsdfdsfsdf', 'dsfsdfsdfsdfsdfdsfsdfdsf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '37.4219983, -122.084', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2024-11-29 04:52:10', '2024-11-29 04:52:10', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(48, 49, '[\"accident_person\\/RtiRYjJnSWa1pDLIb1kknw8UMUOQDDA6nqvX8vLm.jpg\"]', '[\"aadhaar\\/STGqqFOJEwPHP7t6mfVc603dY6lWj4otpAv2bWfC.jpg\"]', '[\"written_statement\\/X4jFFrKmqQ7xozKc2tEJsg2ysXFMacBVqarqA9xe.jpg\"]', '[\"voice\\/8n5NjNZIMCLRtD4IOB6BPqxPhvKp0ACuCFdPlv29.aac\"]', '[\"medical\\/5Lsg4JEpKDWT1nmYTctwbECnNJ2tRRs75dUITkrs.pdf\"]', '[\"hospital\\/KueP8p64cPUe3NkUA97wELsciS9ZrNsvMM6FzfN8.pdf\"]', '[\"accident_pers_ration\\/uJy7djoRjKlFeTQ7bgMUOBwmxKrBrncuVOu36sdG.jpg\"]', 'dfdf', 'dfdfdf', 'dfdfdf', 'dfdf', 'dfdfdf', 'dfdf', 'dfdfdf', 'dfdfdfdfdf', 'dfdfdf', 'dfdfdf', 1, 'dfdfdf', 'dfdfdfdfdf', 'dfvdfvdfvd', 'fvdfvdfvdfv', 'dfvdfvdfv', 'dfvdfvdfvdfvd', 'vdfvdfvdfv', 'dfvdfvdf', '1', 'dfrvgdsvdfvdfvdfv', 'dfvdfvdfv', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '37.4219983, -122.084', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2024-11-29 04:55:43', '2024-11-29 04:55:43', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(49, 37, '[\"accident_person\\/hvnqpH9AuUgUyebWkZWOKxflYycgviJurOSnNfFN.jpg\"]', '[\"aadhaar\\/Rht6d4TXRuAkcC2oritFcR1X1Y1ZRMvr7sBDWLUG.jpg\"]', '[\"written_statement\\/l4C5sqafrzFzi2grFX1c1e51HM7kVTMO0Vcz2yZC.jpg\"]', '[\"voice\\/GbDkg2X3SNz7pqWo6orlE16phxB1qpErLCHyMSJ6.aac\"]', '[\"medical\\/TEDCyNbVw8jhVr2h9HQ5gpU7pPYNmgAJvlmQuCnn.pdf\"]', '[\"hospital\\/IGHsYmG4xRlfAffJcvfByP7cDmdZ8doBgYKhsky7.pdf\"]', '[\"accident_pers_ration\\/b8DawTNVmxYXwq7Y37SZPLx7Rh1xNI1yKyBqILuo.jpg\"]', 'dsvsdv', 'sdvsdvdsv', 'sdvsdvsdv', 'dsvsdvsd', 'vsdvdsvsdv', 'sdvs', 'sdvsdvsd', 'sdvdsvds', 'dsvdvsdvsd', 'vsdvsdvsdv', 1, 'sdvsdvsdv', NULL, 'dsvsdvdsvs', 'vsdvsdv', 'vsdvsdvsdvsd', 'vsdvsdvsd', 'vsdvsdvsdv', 'sdvsdvsdv', '1', 'sdvsdvdsv', 'dsvdsvdsvdsv', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '37.4219983, -122.084', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2024-11-30 05:28:56', '2024-11-30 05:28:56', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(50, 51, '[\"accident_person\\/y6vK0VRYQwxUP5QgtNjMNYQCIh4HIANC4ipMXEUK.jpg\"]', '[\"aadhaar\\/Fz1Sr511W6uf2wzOHINgMjXEhkoZeQUXIx9yPxoI.jpg\"]', '[\"written_statement\\/uepm7JsSxqStR9ofIeFI7K45qU3gc3hIilWCWEbl.jpg\"]', '[\"voice\\/avCBAhtHPeoZHnIcM4xrYodD1kapWCxkEXR2shjQ.aac\"]', '[\"medical\\/fjBad7kf9VgvRqGKmQZe4wD20J19KvnioCgraWNu.pdf\"]', '[\"hospital\\/K7RG5l4ZrXap9dxWEgnbs4xk9zaEbZpKA17ChjMk.pdf\"]', '[\"accident_pers_ration\\/kUMsAaWZC4W3qN5uDqvpz6P7iYm0CaOvG7BXPszR.jpg\"]', 'ewfwefwefwef', 'ewfewf', 'wefewwefewfwefewf', 'wefwefwef', 'ewfewfweewfewf', 'wefewfe', 'fewfewfewfewf', 'fwfwefw', 'fwefewfewfwefwefew', 'fwef', 1, 'ewfwe', 'ewfwefwefewffew', 'wefwefewfewf', 'dfwefw', 'ewfwefewf', 'fwefewfew', 'fewfewfewfe', 'fwefwef', '1', 'fewfewfewfewfewfewfew', 'fwefwefewfewfwef', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '37.4219983, -122.084', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2024-12-02 01:51:42', '2024-12-02 01:51:42', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(51, 53, '[\"accident_person\\/ej0s2Y8JkTf56xAmPI6gdfQ2HvfGSE3ytKVMBrO9.jpg\"]', '[\"aadhaar\\/1NLtjwEFpGEt3FRpl6wjSbe34hKc7ehVIF2LSxqJ.jpg\"]', '[\"written_statement\\/lbGkioOqdppABcbRhiNsh0sJY6C4aXPgVCLwsx4d.jpg\"]', '[\"voice\\/eJZ4EaRRlhJ32jVl99V6ckNzNM6qKQ6mpVfM7MOo.aac\"]', NULL, NULL, '[\"accident_pers_ration\\/5hfzcKteswOWV8pm15hLHQ9ukcQR6wKhMobEtUav.jpg\"]', 'fd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '37.4219983, -122.084', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, '2024-12-02 04:34:17', '2024-12-02 04:34:17', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(52, 54, '[\"accident_person\\/8SFzlud3wSsmf9G3L0hJLY4r3hU1eqIWV0I5kXdm.jpg\"]', '[\"aadhaar\\/2mmnl7ynDDPEIutRpJZgOzGqxfUzgfm1QWkZWPtm.jpg\"]', '[\"written_statement\\/3kcGxxrFCxRPFwoYLQrLlf8pbnrZqyPW1vS7Z088.jpg\"]', '[\"voice\\/mgUZKdOztWaF2jY2NGtNIcNum5LmRIN7laFJWPKv.aac\"]', '[\"medical\\/RalWcbZKdw0OYBbjyjwGXRk0l1X5vscQC8dEDkLs.pdf\"]', '[\"hospital\\/OQ6upkW6hFXX8fQeCQSrWiN82lmFC3oJOvNkTES3.pdf\"]', '[\"accident_pers_ration\\/kh6ef1TWUmbzSHlfpa3NE2DVY0L3DToIoBMbWzhb.jpg\"]', 'dggc', 'fhjh', 'bhgc', 'gcvhfdg', 'gbhg', 'ggdc', 'vhdc', 'vffc', 'ghvc', 'nhgc', NULL, 'vrgh', 'vhh', 'hydx', 'ghfc', 'vv f', 'hyfc', 'nugc', 'hhhb', NULL, 'hgcc', 'uggg', NULL, NULL, '2024-12-07', NULL, NULL, NULL, NULL, NULL, '11.1807494, 75.8545822', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2024-12-07 01:53:58', '2024-12-07 01:53:58', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(53, 34, '[\"accident_person\\/OZ88mGDOeXDzFVgD1fxEqlTGlb57tIheMPEVyHp9.jpg\"]', '[\"aadhaar\\/Za85SRF9E2bs4pFBNnjXXIh6bohHB6Ty33YXckRK.jpg\"]', '[\"written_statement\\/54rX0bfdjsAmuwWkUZd6sG3Q8xuMaOE1pvfRSShc.jpg\"]', NULL, NULL, NULL, '[\"accident_pers_ration\\/cKsQFUv6gV2jTYOWHxc5hqSqescXEWBSWmQ8JvUa.jpg\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-12', NULL, NULL, NULL, NULL, NULL, '37.4219983, -122.084', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '2024-12-12 03:46:51', '2024-12-12 03:46:51', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(54, 30, '[\"accident_person\\/mg5IzBZpDRPgNC3I2l1K4yvtMm1W1uUlcII0LFWE.jpg\"]', '[\"aadhaar\\/1LEmTFYhb8hmdIcOktfDrNBvSR2FoZznX8MAKhjI.jpg\"]', '[\"written_statement\\/p3u7JTZfVLWv7nv6en1MjRPUe79ZA0JMvTbo9LmD.jpg\"]', NULL, NULL, NULL, '[\"accident_pers_ration\\/FVMVBRw3TaoJEFMsypck2QdPhe2ctocGT8wqtowQ.jpg\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-06', NULL, NULL, NULL, NULL, NULL, '11.180775, 75.8545333', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2025-01-06 05:36:32', '2025-01-06 05:36:32', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(55, 57, '[\"accident_person\\/BkNxmYPSJ6vszDHLPaL83CteOzZwxsQ6BQhI457W.jpg\"]', '[\"aadhaar\\/OEx0IaoDnXjNZSgMMQaoOOgUyhQ6ZCVBxgjmDea9.jpg\"]', '[\"written_statement\\/4BeDifXjNBrItrfPTIG0jpmxjWjJUFGQCm2r7K1B.jpg\"]', '[\"voice\\/3XrSHLxKDwqLJAB9ZKSsj68LdZ3wHitTfdcTfaVx.aac\"]', NULL, NULL, '[\"accident_pers_ration\\/MAe3lkllLfvRk8dFsDJ7wSozbdXEtfaP7eva5ZrG.jpg\"]', 'N/A', 'N/A', 'N/A', 'Father', '25', 'Teacher', 'N/A', 'Baby Memorial Hospital calicut', '40 KM', 'MIMS CALICUT', 0, 'N/A', 'Arjun', 'Arjun', 'KL 12A 731028', 'Jesoph', 'Shanda', '7082512360', 'Address 1', 'pedstrian', 'N/A', 'Baby Memorial Hospital Calicut', 'DFGHJKL12KL', 'Kozhikode', '2025-01-06', NULL, '2024-12-31 12:29:00', 'N/a', NULL, NULL, '11.180775, 75.8545333', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2025-01-06 07:23:51', '2025-01-09 01:28:11', 'Driver Drop Calicut, chungam, Ramanattukara', 4, 'self', 'NA', 'From Spot', 'calicut', 'Kerala', '2009/2023', '306(1) (c) PSO', '2025-01-01T12:27', '1 DAY DELAY', 'On 09.11.2023 at about 02:30 hrs,\r\nthe complainant’s husband Santhosh\r\nKumar was the driver of motor car\r\nbearing Reg. No. KL-19-D-1801 in\r\nwhich the complainant and his\r\ncolleague Sreekala were the\r\npassengers and drove through\r\nParassala-Neyyattinkara road from\r\nParassala side to Neyyattinkara side\r\nand reached near Gramam Toll gate,\r\nKadavattaram, Neyyattinkara village\r\nand vehicle unexpectedly skid and\r\nhit the back side of KL-44-C-2882\r\ntourist bus which was on the north\r\nside of the said road. Due to the\r\nimpact of the hit, complainant and\r\nothers had sustained severe injuries\r\nand fractures', 'Before the Hon’ble Judicial FirstClass Magistrate Court – I Neyyattinkara', '2025-01-12', '306 (1) (c) PSO', 'NA', 'On 09.11.2023 at about 02:30 hrs,\r\nthe complainant’s husband\r\nSanthosh Kumar was the driver\r\nof motor car bearing Reg. No.\r\nKL-19-D-1801 in which the\r\ncomplainant and his colleague\r\nSreekala were the passengers and\r\ndrove through\r\nParassalaNeyyattinkara road from\r\nParassala side to Neyyattinkara\r\nside and reached near Gramam\r\nToll gate, Kadavattaram,\r\nNeyyattinkara village. The\r\nvehicle unexpectedly skid and hit\r\nthe back side of KL-44-C-2882\r\ntourist bus which was on the\r\nnorth side of the said road. Due to\r\nthe impact of the hit, complainant\r\nand others had sustained severe\r\ninjuries and fractures. The\r\naccident happened unexpectedly,\r\nso it is registered under motor\r\noccurrence', 'NA', 'Pending', 'The accident is Genuine.', 'NA', 'NA', 'Yes', 'Yes', 'Yes', 'NA', 'Immediately after the accident, the injured Sunitha, Sreekala and Santhosh Kumar was taken to NIMS\r\nHospital, Aaralummoodu and treated there. We have collected the wound certificate of injured Sunitha and\r\nSreekala. While verifying the same it is mentioned that “A/H/o RTA (Car vs Bike) at around 02:25am at\r\nGramam on 09/11/2023”. A copy of each attached with it', 'NA', 'We have collected the wound certificate of injured\r\nSunitha and Sreekala. While verifying the same it is\r\nmentioned that “A/H/o RTA (Car vs Bike) at around\r\n02:25am at Gramam on 09/11/2023”. A Copy of each\r\nattached with it.', 'NA', 'The injured was a passenger of motor car', 'NA', 'NA', 'NA', 'NA', 'On 09.11.2023 at about 02:30 hrs, the complainant’s husband Santhosh Kumar was the driver of motor\r\ncar bearing Reg.No. KL-19-D-1801 in the which complainant and his colleague Sreekala were the\r\npassengers and drove through Parassala-Neyyattinkara road from Parassala side to Neyyattinkara side\r\nand reached near Gramam Toll gate, Kadavattaram, Neyyattinkara village and vehicle unexpectedly\r\nskid and hit the back side of KL-44-C-2882 tourist bus which was on the north side of the said road.\r\nDue to the impact of the hit, complainant and others had sustained severe injuries and fractures. The\r\naccident was happened unexpectedly hence it is registered under motor occurrence. Immediately after\r\nthe accident, the injured Sunitha, Sreekala and Santhosh Kumar was taken to NIMS Hospital,\r\nAaralummoodu and treated there. We have collected the wound certificate of injured Sunitha and\r\nSreekala. While verifying the same it is mentioned that “A/H/o RTA (Car vs Bike) at around 02:25am\r\nat Gramam on 09/11/2023”. A Copy of each attached with it. We have collected the discharge\r\nsummary of injured Mrs. Sreekala from NIMS Hospital, Aaralummoodu and a copy of the same\r\nenclosed with it. IV Details: The IV is bus bearing Reg.No. KL-44-C-2882 owned by Mr. Subin Policy\r\nDetails: The IV is insured with UNITED INDIA INSURANCE COMPANY LIMITED. Policy No:\r\n1004003123P100594371 and the period of validity cover from 14.04.2023 to13.04.2024 IV driver: The\r\nIV driver Mr. Subin who has valid DL at the time of accident', 'On the course of investigation, meeting with concerned parties and verifying the medical documents, we\r\ncome to the conclusion that the accident is genuine. The accident was happened unexpectedly hence the case\r\nis registered under motor occurrence (306 (1) (c))', 'The injured was a passenger of motor car', 'NIL', 'SELF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(56, 58, '[\"accident_person\\/zIUOLSUwggY1grWjA00MvvMzk4Yen95CJQLT4FQh.jpg\"]', '[\"aadhaar\\/buab7jtUGztcpQ3vSMljNNwcGWnessQRetwwr7du.jpg\"]', '[\"written_statement\\/peyHt86spEpUvP9rmN8lnJV1kKrUSnDu512IbDiT.jpg\"]', '[\"voice\\/aMUbVnDrmbsZxqebc2chiv1yZKWL5VIu43vHT83d.aac\"]', '[\"medical\\/g20lN3NW3yUumZpcgaJ1Dpwh1FTBu4gBTo0kgPuI.pdf\"]', '[\"hospital\\/PUgg5DS6qP9KupqJfwwvhogoeLW1XUirQtZFSoLk.pdf\"]', '[\"accident_pers_ration\\/U5Yqaj76dectnB5zj83yiFVFfCmwx69DC8H191wj.jpg\"]', 'fdbdfb', 'dfbdfb', 'bdfb', 'dfbdfbdfbdfb', 'dfbdf', 'dfbdf', 'bdfbdfbdetails_damage_vehicledfbdfb', 'thrth', 'rthrt', 'hrthrthrthtrhrthrth', 1, 'dfbdfbdfbdfbdf', 'dfbdfbdfbdfbdfb', 'dfbdfb', 'bdfbdf', 'dbdfbdfbdfb', 'bdfbdfb', 'dfbdfbdf', 'bdfbdfbdfbdfbdfbdfbdfb', '1', 'dfbdf', 'bdfbdfbdfbdfbdfb', NULL, NULL, '2025-01-07', NULL, NULL, NULL, NULL, NULL, '37.4219983, -122.084', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2025-01-07 02:28:04', '2025-01-07 02:28:04', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `accident_person_data` (`id`, `assign_work_id`, `accident_person_images`, `accident_person_aadhaar_card_images`, `accident_person_written_statment_images`, `accident_person_voice`, `medical_report`, `hospital_report`, `ration_card`, `fir_vers_accdnt`, `claiment_vers_aaccdnt`, `chrgesheet_con`, `relation_insured_and_claiment`, `age_injured_person`, `profession_injured`, `diff_in_rider_ver_injured`, `name_address_hospital`, `distance_from_site_hospital`, `details_big_hospital_near_site`, `zebra_cross_on_site`, `injury_record_details`, `name_witness`, `name_informer`, `vehicle_no_fir`, `name_accused`, `injured_name`, `injured_phone`, `injured_address`, `injured_pedstrian_or_traveller`, `injured_hospital_report`, `injured_admited_hospital_details`, `gd_no`, `police_station`, `gd_date`, `gd_pdf`, `accident_date_time`, `accident_description`, `accident_downloads`, `sp_case`, `latitude_and_longitude`, `wound_certi_coment`, `no_injured`, `no_dead`, `no_tppd`, `comperhensive`, `dob_injured`, `aadhar_no_injured`, `pan_no`, `period_leave_avail`, `source_income`, `month_incom`, `wound_certificate_short_disc`, `injured_exami_date_on_woundcerti`, `injury_place_on_wound_certi`, `person_name_who_brought_injured`, `hospitalised_from_date`, `hospitalised_to_date`, `ip_days`, `verified_treament_records`, `details_postmortam_report`, `legal_heirs_name`, `heirs_age`, `heirs_rel_deseased`, `marital_status_heirs`, `heirs_residing_address`, `heirs_occupation`, `heirs_employer_address`, `executive_id`, `created_at`, `updated_at`, `location`, `no_occupants`, `complnt_rel_injured`, `descrition_accused`, `accused_identifed`, `district`, `state`, `fir_no`, `section`, `date_time_fir`, `delay_in_fir`, `gist_fir`, `court_where_chargesheet_filled`, `date_chargesheet`, `section_chargesheet`, `who_charged_with`, `gist_chargesheet`, `petty_case_charged`, `status_criminal_case`, `accident_genuine`, `opnion_disablement`, `opnion_dl_validity`, `dl_extract_obtained`, `injured_established_fir`, `insured_vehicle_establ_fir`, `comment_defence_evidence`, `wound_certificate`, `helment_details`, `verification_medical_report`, `discussion_family_neighbour`, `role_injured`, `discussion_injured`, `discussion_employeer_injured`, `discussion_rider`, `discussion_financial`, `fact_findings`, `conclusion`, `opnion_injured`, `accident_cause_more_vehicle`, `name_complainant`, `name_add_num_employeer`, `edu_injured`, `gap_sequencial_event`, `date_time_hospital_addmission`, `doc_name_and_first_aid`, `record_found_first_aid_hospital`, `fir_named_or_not`, `absence_chargesheet`, `damage_per_od_claim`, `date_discharge`, `period_absence_from_work`, `permanent_disablity`, `present_condition_injury`, `amount_medical_expenceses`, `status_rembur_med_expense_employeer`, `other_information`, `date_panachanama`, `opnion_from_panchayath`, `date_of_death_date_pm`, `cause_death_per_pmr`, `co_injured_name_address`, `co_injured_income`, `co_injured_age`, `co_injured_occupation`, `co_injured_relation_injured`, `co_injured_depend_or_not`, `hit_run_police_reach_conclusion`, `gaps_police_investigation`, `case_suspect_nexus`, `tp_property_damage`, `policy_details`, `insured_vehicle_paper_valid_accident_time`, `criminal_court_status_case`, `case_diary_findings`, `about_accident`, `owner_verification`, `rider_verification`, `details_dl_validity`, `tpv_details_dl_validity`, `claim_no`, `nature_of_claim`, `concern_matters`, `dist_from_police`, `rel_informr_claimant`, `address_different`, `annual_incom_injured`, `esi_coverage_details`, `status_injures_decesed`, `compass`, `pension_details`, `injured_death_on_spot`, `pmr_no`, `pmr_date`, `hospital_name_pmr_carried`, `injured_compromised`, `defense_fit_compromize`, `injured_marital_status`, `co_injured_marital_status`, `accident_date`) VALUES
(57, 58, '[\"accident_person\\/zG5zjh5v2laU6ymtn0u3wuam4ItkIFmgr8IlABxA.jpg\"]', '[\"aadhaar\\/v5TAEa26BEyY0FH9MZCUFeyVkgCvTVq2xMW6BAI2.jpg\"]', '[\"written_statement\\/FgWUh2vpNXYLTqKy9Yy4ze59oK4HNW8h0MM6NOaA.jpg\"]', '[\"voice\\/KJgZswBVNOAw2RsZj6f3dtWcxPF2rtMsuKuHkpJ8.aac\"]', '[\"medical\\/FmrEaHSy6HPde7UaZwqQvjNJvJznm1XJpWxTL2AI.pdf\"]', '[\"hospital\\/6UO0uAIkrz2QqT2YnXPeFcXeWGMO0B4eGJMwhz4P.pdf\"]', '[\"accident_pers_ration\\/w79z44QuoP0DoiLdVOtPVAaERYyapQCKA0cnQogF.jpg\"]', 'fdbdfb', 'dfbdfb', 'bdfb', 'dfbdfbdfbdfb', 'dfbdf', 'dfbdf', 'bdfbdfbdetails_damage_vehicledfbdfb', 'thrth', 'rthrt', 'hrthrthrthtrhrthrth', 1, 'dfbdfbdfbdfbdf', 'dfbdfbdfbdfbdfb', 'dfbdfb', 'bdfbdf', 'dbdfbdfbdfb', 'bdfbdfb', 'dfbdfbdf', 'bdfbdfbdfbdfbdfbdfbdfb', '1', 'dfbdf', 'bdfbdfbdfbdfbdfb', NULL, NULL, '2025-01-07', NULL, NULL, NULL, NULL, NULL, '37.4219983, -122.084', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2025-01-07 03:24:05', '2025-01-07 03:24:05', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(58, 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-07', NULL, '2025-01-07 14:39:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2025-01-07 03:39:29', '2025-01-07 03:39:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(59, 59, '[\"accident_person\\/VV4HsAp4XLhgs1qIwI8hFtuHLS5mWt22K73Hr8iG.jpg\"]', '[\"aadhaar\\/fSNbMac4PVmm3EnL9T5jVnprwlVg4LemF7grWOIo.jpg\"]', '[\"written_statement\\/GHBTOAC37t5TaUgdPX1k7N9FtxOzSq7v2GVdhlJw.jpg\"]', NULL, NULL, NULL, '[\"accident_pers_ration\\/yHyxxj6hnzvsxdVvEFexyPZ4anZKzEkfFtyq9fcZ.jpg\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-07', NULL, NULL, NULL, NULL, NULL, '37.4219983, -122.084', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2025-01-07 03:41:16', '2025-01-07 03:41:16', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(60, 59, '[\"accident_person\\/KIwwDgxYpCMrVsSS0PkGH2ss7FOEA9Dfpvv6SOvv.jpg\"]', '[\"aadhaar\\/j4G6TQYiwXa3ccAGdrHEd81iT5sf57XIPurqxt0C.jpg\"]', '[\"written_statement\\/NofbIn4qh3VNwcvUHKHitX710i6sgGSN9M0sk3Xx.jpg\"]', NULL, NULL, NULL, '[\"accident_pers_ration\\/t2nnLB7cfjWg7u1fKYVuDTuzmvvb1U57EK8Lreym.jpg\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-07', NULL, NULL, NULL, NULL, NULL, '37.4219983, -122.084', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2025-01-07 03:55:30', '2025-01-07 03:55:30', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(61, 59, '[\"accident_person\\/GblAYu7QLUwyu4Vti5WsbgWZoRFbAPX0FvsDxJjH.jpg\"]', '[\"aadhaar\\/0KuInYFCQjlEwhfRNBrCBFBNhH16biJ3rCYSUh7u.jpg\"]', '[\"written_statement\\/JfztGoPD08CMBcwNmcM1xeMWXlquPcITfA6DhS1d.jpg\"]', NULL, NULL, NULL, '[\"accident_pers_ration\\/e4wngiKlup7n2YcJu7nueYGw4hjOj9jarQd9ZiYu.jpg\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-07', NULL, NULL, NULL, NULL, NULL, '37.4219983, -122.084', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2025-01-07 03:56:05', '2025-01-07 03:56:05', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(62, 59, '[\"accident_person\\/qkc6HnHTDFFhkotUnfFJKsl2EEtJSSNCu2WuUmFd.jpg\"]', '[\"aadhaar\\/uY57BNCMyjPm24KumwFO6SUljc0IW4uQ0bHoo7Za.jpg\"]', '[\"written_statement\\/8BxKun5zTSlErgkWUVotlUbdjSNPMmAJszKGBJVw.jpg\"]', NULL, NULL, NULL, '[\"accident_pers_ration\\/2N49uPKp3v5Pgfnyrix9yVJufIzjKBV2EG71nm8y.jpg\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-07', NULL, NULL, NULL, NULL, NULL, '37.4219983, -122.084', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2025-01-07 03:57:23', '2025-01-07 03:57:23', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(63, 59, '[\"accident_person\\/Evx3WBTDozqgsjz7U2Zmj9pDgBti04UF6QQjlToe.jpg\"]', '[\"aadhaar\\/HNRIlz1Prae3cpyvYbhToDSaWcOF7ONTtd5OWjFG.jpg\"]', '[\"written_statement\\/O60kGQEPSsZPGHUat9PzgP60e4ex5Oh8WYnrYdoE.jpg\"]', NULL, NULL, NULL, '[\"accident_pers_ration\\/E6wqMhGVy2YJeCOrG7Co8VuhCCiMOZGDMdGPFBZJ.jpg\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-07', NULL, NULL, NULL, NULL, NULL, '37.4219983, -122.084', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2025-01-07 03:58:07', '2025-01-07 03:58:07', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(64, 59, '[\"accident_person\\/ws6mDwWNC9V03q3hG5ZdjJja9jWYeBZEEWnvSuGU.jpg\"]', '[\"aadhaar\\/gacMrZfyaFdemPmElRTwgTyhLRSOGl3rUlIum9au.jpg\"]', '[\"written_statement\\/26yvJKuTj0xi5nGc5ubgNHrMgnZ2UihpwyyG8KwM.jpg\"]', NULL, NULL, NULL, '[\"accident_pers_ration\\/q40cbtdJsWfUBw0RxzgqjH6kShd1r8RyWFsr6OGw.jpg\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-07', NULL, '2025-01-11 00:00:00', NULL, NULL, NULL, '37.4219983, -122.084', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2025-01-07 03:58:42', '2025-01-07 03:58:42', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(65, 59, '[\"accident_person\\/HKyROmGHdkCC5j2PkEbphOLw5JjZ6afJn9MCwlxg.jpg\"]', '[\"aadhaar\\/R0iM8kaeyxHiL8xduF7ZQ7aIx1r3EqGgMX7MKY3j.jpg\"]', '[\"written_statement\\/0ZFgQLF70OWtXyZXl4Pd7Fg6Itk4f390VTWwc6lh.jpg\"]', NULL, NULL, NULL, '[\"accident_pers_ration\\/DqhVK0bwPKokDqMP4aHMUQWoa1KYaPqXpjYvqd9e.jpg\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-07', NULL, '2025-01-11 00:00:00', NULL, NULL, NULL, '37.4219983, -122.084', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2025-01-07 03:59:22', '2025-01-07 03:59:22', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(66, 60, '[\"accident_person\\/aexiWU2ZhfOhgQMBDbkjMMAaXomyJPeFDFDT5rF2.jpg\"]', '[\"aadhaar\\/O9bbIEQlDzfz4nRVjBg1KwjbrfheUjmMoWmz44aC.jpg\"]', '[\"written_statement\\/crzEuKpVQxjv0bYa4ZodXu0DSwryaVMhoP5B4JFo.jpg\"]', NULL, NULL, NULL, '[\"accident_pers_ration\\/ZilqhLOfJuMcFrSmK8YgAsJDs7bbACuiXG2CmD6O.jpg\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-08', NULL, NULL, NULL, NULL, NULL, '37.4219983, -122.084', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2025-01-08 00:30:25', '2025-01-08 00:30:25', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL);

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

--
-- Dumping data for table `assign_work_data`
--

INSERT INTO `assign_work_data` (`id`, `case_id`, `garage_reassign_status`, `garage_re_assign_count`, `driver_reassign_status`, `driver_re_assign_count`, `spot_reassign_status`, `spot_re_assign_count`, `owner_reassign_status`, `owner_re_assign_count`, `accident_person_reassign_status`, `accident_person_re_assign_count`, `created_at`, `updated_at`) VALUES
(30, 39, '0', '5', '0', '1', '0', '10', '1', '34', '1', '6', '2024-10-18 01:01:45', '2025-01-07 05:03:30'),
(31, 40, '0', '2', '1', '1', '1', '2', '1', '1', '1', '1', '2024-10-19 01:20:46', '2024-12-17 04:59:38'),
(32, 41, '1', '4', '1', '1', '1', '2', '1', '1', '1', '28', '2024-10-19 03:48:08', '2024-11-29 04:52:19'),
(33, 43, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2024-10-21 04:31:40', '2024-10-27 23:00:21'),
(34, 42, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2024-11-03 23:37:38', '2024-12-12 03:46:51'),
(35, 44, '1', '1', '1', '2', '1', '1', '1', '1', '1', '1', '2024-11-04 01:23:27', '2024-11-19 05:10:09'),
(36, 45, '1', '1', '1', '45', '1', '1', '1', '1', '1', '1', '2024-11-04 03:43:51', '2024-12-12 04:58:57'),
(37, 46, '0', '1', '0', '1', '1', '1', '1', '1', '1', '2', '2024-11-19 03:25:33', '2024-12-17 02:34:12'),
(38, 47, '1', '1', '1', '1', '1', '2', '1', '1', '1', '1', '2024-11-19 05:13:48', '2024-11-19 07:25:35'),
(39, 48, '0', '1', '0', '1', '0', '2', '1', '1', '1', '1', '2024-11-19 07:31:38', '2025-01-14 05:22:48'),
(40, 49, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2024-11-22 07:33:14', '2024-11-23 00:07:27'),
(41, 50, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2024-11-23 00:28:12', '2024-11-23 02:24:35'),
(42, 51, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2024-11-23 02:28:36', '2024-11-23 02:43:00'),
(43, 52, '1', '1', '1', '1', '1', '2', '1', '1', '1', '2', '2024-11-25 02:31:41', '2024-11-25 23:31:10'),
(44, 54, '1', '3', '1', '18', '1', '2', '1', '1', '1', '1', '2024-11-25 05:11:52', '2024-11-26 00:17:42'),
(45, 55, '1', '4', '1', '2', '1', '6', '1', '3', '1', '2', '2024-11-26 00:34:51', '2024-11-26 05:03:45'),
(46, 56, '1', '1', '1', '6', '1', '1', '1', '1', '1', '2', '2024-11-26 07:21:16', '2024-11-26 23:59:45'),
(47, 57, '1', '1', '1', '3', '1', '2', '1', '1', '1', '1', '2024-11-26 23:18:31', '2024-11-28 05:50:11'),
(48, 59, NULL, NULL, '1', '1', '1', '2', NULL, NULL, '1', '17', '2024-11-28 05:20:53', '2024-11-30 05:30:07'),
(49, 61, NULL, NULL, '0', '1', '1', '1', NULL, NULL, '1', '1', '2024-11-29 04:55:42', '2024-12-10 00:08:31'),
(50, 58, NULL, NULL, '1', '1', '1', '1', NULL, NULL, NULL, NULL, '2024-12-01 23:03:14', '2024-12-12 01:28:47'),
(51, 63, NULL, NULL, NULL, NULL, '1', '1', '1', '2', '1', '1', '2024-12-02 01:51:42', '2025-07-04 04:23:06'),
(52, 62, NULL, NULL, '1', '3', '1', '1', NULL, NULL, NULL, NULL, '2024-12-02 02:02:14', '2024-12-17 04:56:10'),
(53, 64, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2024-12-02 04:16:14', '2024-12-02 04:34:17'),
(54, 66, NULL, NULL, '1', '1', '1', '1', '1', '1', '1', '1', '2024-12-06 07:16:13', '2024-12-15 23:39:05'),
(55, 60, NULL, NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '2024-12-10 02:17:17', '2024-12-18 03:54:27'),
(56, 68, NULL, NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '2024-12-12 01:32:18', '2024-12-12 01:32:18'),
(57, 69, NULL, NULL, NULL, NULL, '1', '2', NULL, NULL, '1', '1', '2024-12-16 01:50:46', '2025-01-06 07:23:51'),
(58, 70, NULL, NULL, NULL, NULL, '1', '9', NULL, NULL, '1', '2', '2025-01-06 04:43:27', '2025-01-07 03:24:05'),
(59, 71, NULL, NULL, NULL, NULL, '0', '2', NULL, NULL, '1', '8', '2025-01-06 04:55:45', '2025-07-19 04:54:11'),
(60, 72, NULL, NULL, NULL, NULL, '1', '10', NULL, NULL, '1', '1', '2025-01-06 04:59:25', '2025-01-08 00:30:25'),
(62, 78, NULL, NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '2025-01-07 03:28:50', '2025-01-07 03:28:50'),
(63, 80, '0', '2', NULL, NULL, NULL, NULL, '1', '10', NULL, NULL, '2025-07-02 03:15:49', '2025-07-06 22:29:58'),
(64, 81, NULL, NULL, NULL, NULL, '1', '1', '1', '12', NULL, NULL, '2025-07-04 04:22:52', '2025-07-04 05:20:22'),
(65, 82, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-05 06:15:12', '2025-07-05 06:15:12'),
(66, 84, NULL, NULL, '0', '1', '0', '3', '1', '3', NULL, NULL, '2025-07-07 01:28:07', '2025-07-19 04:59:14');

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

--
-- Dumping data for table `case_assignments`
--

INSERT INTO `case_assignments` (`id`, `case_id`, `company_id`, `customer_id`, `executive_driver`, `executive_garage`, `executive_spot`, `executive_meeting`, `executive_accident_person`, `date`, `type`, `other`, `status`, `case_status`, `craete_by`, `update_by`, `created_at`, `updated_at`) VALUES
(39, 11, 10, 13, 18, 18, 18, 18, 18, '2024-10-18', 'MAC', '1st test', '1', '1', '1', '1', '2024-10-18 00:58:44', '2024-10-18 00:58:44'),
(40, 11, 10, 13, 18, 18, 18, 18, 18, '2024-10-19', 'MAC', NULL, '1', '1', '1', '1', '2024-10-19 00:50:33', '2024-10-19 00:50:33'),
(41, 1, 1, 3, 18, 18, 18, 18, 18, '2024-10-19', 'MAC', NULL, '1', '1', '1', '1', '2024-10-19 02:58:31', '2024-10-19 02:58:31'),
(42, 9, 8, 11, 4, 4, 4, 4, 4, '2024-10-21', 'MAC', NULL, '1', '1', '1', '1', '2024-10-21 03:17:02', '2024-10-21 03:17:02'),
(43, 12, 6, 14, 18, 18, 18, 18, 18, '2024-10-21', 'MAC', 'Ranga Details Collection', '1', '1', '1', '1', '2024-10-21 04:28:18', '2024-10-21 04:28:18'),
(44, 10, 8, 12, 18, 18, 18, 18, 18, '2024-11-13', 'MAC', NULL, '1', '1', '1', '1', '2024-11-03 23:52:49', '2024-11-03 23:52:49'),
(45, 8, 7, 10, 18, 4, 4, 4, 4, '2024-11-04', 'MAC', NULL, '1', '1', '1', '1', '2024-11-04 03:41:42', '2024-11-04 03:41:42'),
(46, 7, 6, 9, 18, 18, 18, 18, 18, '2024-11-18', 'MAC', NULL, '1', '1', '1', '1', '2024-11-18 05:17:19', '2024-11-18 05:17:19'),
(47, 12, 6, 14, 18, 18, 18, 18, 18, '2024-11-19', 'MAC', 'fbvfvdfx', '1', '1', '1', '1', '2024-11-19 03:39:53', '2024-11-19 03:39:53'),
(48, 12, 6, 14, 18, 18, 18, 18, 18, '2024-11-19', 'MAC', 'zcx cz xzcv cxz xc x xc xb bdxf dxf', '1', '1', '1', '1', '2024-11-19 07:26:54', '2024-11-19 07:26:54'),
(49, 12, 6, 14, 18, 18, 18, 18, 18, '2024-11-22', 'MAC', 'dfbdfbdfbdfb', '1', '1', '1', '1', '2024-11-22 04:25:46', '2024-11-22 04:25:46'),
(50, 10, 8, 12, 18, 18, 18, 18, 18, '2024-11-23', 'MAC', 'gdfd', '1', '1', '1', '1', '2024-11-23 00:15:23', '2024-11-23 00:15:23'),
(51, 4, 4, 6, 18, 18, 18, 18, 18, '2024-11-23', 'MAC', 'fgnfgn', '1', '1', '1', '1', '2024-11-23 02:26:42', '2024-11-23 02:26:42'),
(52, 6, 6, 8, 18, 18, 18, 18, 18, '2024-11-25', 'MAC', 'bgfgfgfgfgbgghghfgdfdewdrfgvbb bn bfgvdffgffg', '1', '1', '1', '1', '2024-11-24 23:40:42', '2024-11-24 23:40:42'),
(53, 13, 3, 15, 3, 3, 3, 3, 3, '2024-11-30', 'MAC', NULL, '1', '1', '1', '1', '2024-11-25 04:59:53', '2024-11-25 04:59:53'),
(54, 13, 3, 15, 18, 18, 18, 18, 18, '2024-11-30', 'MAC', NULL, '1', '1', '1', '1', '2024-11-25 05:00:38', '2024-11-25 05:00:38'),
(55, 13, 3, 15, 18, 18, 18, 18, 18, '2024-11-14', 'MAC', 'fbvdverver', '1', '1', '1', '1', '2024-11-26 00:28:53', '2024-11-26 00:28:53'),
(56, 13, 3, 15, 18, 18, 18, 18, 18, '2024-11-26', 'MAC', '159156', '1', '1', '1', '1', '2024-11-26 05:06:07', '2024-11-26 05:06:07'),
(57, 12, 6, 14, 18, 18, 18, 18, NULL, '2024-11-02', 'MAC', 'sdvsvs', '1', '1', '1', '1', '2024-11-26 05:24:33', '2024-11-26 05:24:33'),
(58, 13, 3, 15, 23, 23, 23, 23, 23, '2024-11-26', 'MAC', 'dvsvsdv', '1', '1', '1', '1', '2024-11-26 05:24:53', '2024-11-26 05:24:53'),
(59, 7, 6, 9, 18, 18, 18, 18, NULL, '2024-11-27', 'MAC', '15645646', '1', '1', '1', '1', '2024-11-27 00:57:23', '2024-11-27 00:57:23'),
(60, 13, 3, 15, 24, 24, 24, 24, 24, '2024-11-28', 'MAC', NULL, '1', '1', '1', '1', '2024-11-28 04:52:03', '2024-11-28 04:52:03'),
(61, 13, 3, 15, 18, 18, 18, 18, 18, '2024-11-29', 'MAC', 'ukyukj', '1', '1', '1', '1', '2024-11-29 04:52:55', '2024-11-29 04:52:55'),
(62, 6, 6, 8, 23, 23, 23, 23, NULL, '2024-12-02', 'MAC', '14165156516', '1', '1', '1', '1', '2024-12-01 22:58:03', '2024-12-01 22:58:03'),
(63, 8, 7, 10, 18, 18, 18, 18, NULL, '2024-12-02', 'MAC', 'ghm,ghm', '1', '1', '1', '1', '2024-12-02 01:41:09', '2024-12-02 01:41:09'),
(64, 12, 6, 14, 17, 17, 17, 17, NULL, '2024-12-02', 'MAC', 'fgnfgn', '1', '1', '1', '1', '2024-12-02 03:59:33', '2024-12-02 03:59:33'),
(65, 4, 4, 6, 24, 24, 24, 24, NULL, '2024-12-04', 'MAC', NULL, '1', '1', '1', '1', '2024-12-04 06:13:54', '2024-12-04 06:13:54'),
(66, 14, 9, 16, 18, 18, 18, 18, 18, '2024-12-05', 'MAC', '123123123', '1', '1', '1', '1', '2024-12-04 23:43:14', '2024-12-04 23:43:14'),
(67, 11, 10, 13, 3, 3, 3, 3, 3, '2024-12-12', 'MAC', '123123123', '1', '1', '1', '1', '2024-12-11 22:45:34', '2024-12-11 22:45:34'),
(68, 15, 2, 17, 23, 23, 23, 23, NULL, '2024-12-12', 'OD', 'Check Datass', '1', '1', '1', '1', '2024-12-12 01:30:51', '2024-12-12 01:30:51'),
(69, 15, 2, 17, 18, 18, 18, 18, NULL, '2024-12-16', 'OD', '124545451215644', '1', '1', '1', '1', '2024-12-15 23:45:50', '2024-12-15 23:45:50'),
(70, 15, 2, 17, 18, 18, 18, 18, NULL, '2024-12-17', 'OD', '3', '1', '1', '1', '1', '2024-12-17 02:16:38', '2024-12-17 02:16:38'),
(71, 6, 6, 8, 18, 18, 18, 18, NULL, '2024-12-17', 'MAC', '33', '1', '1', '1', '1', '2024-12-17 02:18:09', '2024-12-17 02:18:09'),
(72, 13, 3, 15, 18, 18, 18, 18, 18, '2024-12-17', 'MAC', '12356484', '1', '1', '1', '1', '2024-12-17 02:20:40', '2024-12-17 02:20:40'),
(73, 13, 3, 15, 18, 18, 18, 18, 18, '2024-12-17', 'MAC', '78994', '1', '1', '1', '1', '2024-12-17 02:23:40', '2024-12-17 02:23:40'),
(74, 1, 1, 3, 18, 18, 18, 18, NULL, '2024-12-17', 'MAC', '7822556', '1', '1', '1', '1', '2024-12-17 03:12:34', '2024-12-17 03:12:34'),
(75, 6, 6, 8, 23, 23, 23, 23, NULL, '2024-12-17', 'MAC', NULL, '1', '1', '1', '1', '2024-12-17 04:00:19', '2024-12-17 04:00:19'),
(76, 1, 1, 3, 23, 23, 23, 23, NULL, '2024-12-17', 'MAC', NULL, '1', '1', '1', '1', '2024-12-17 04:28:07', '2024-12-17 04:28:07'),
(77, 15, 2, 17, 24, 24, 24, 24, NULL, '2025-01-02', 'OD', '455', '1', '1', '1', '1', '2025-01-02 03:52:43', '2025-01-02 03:52:43'),
(78, 16, 12, 18, 18, 18, 18, 18, NULL, '2025-01-07', 'OD', '123123123', '1', '1', '1', '1', '2025-01-07 03:26:42', '2025-01-07 03:26:42'),
(79, 16, 12, 18, 7, 18, 18, 18, NULL, '2025-01-14', 'OD', 'Tst', '1', '1', '1', '1', '2025-01-14 05:17:52', '2025-01-14 05:17:52'),
(80, 17, 15, 19, 25, 25, 25, 25, NULL, '2025-07-23', 'MAC', 'nil', '1', '1', '1', '1', '2025-07-02 01:58:07', '2025-07-02 01:58:07'),
(81, 17, 15, 19, 25, 25, 25, 25, 25, '2025-07-16', 'MAC', 'nil', '1', '1', '1', '1', '2025-07-02 01:59:26', '2025-07-02 01:59:26'),
(82, 18, 16, 20, 25, 25, 25, 25, NULL, '2025-07-23', 'MAC', 'other descriptions details datas............', '1', '1', '1', '1', '2025-07-05 06:11:55', '2025-07-05 06:11:55'),
(83, 18, 16, 20, 25, 25, 25, 25, 25, '2025-07-05', 'MAC', 'ddddddddddd', '1', '1', '1', '1', '2025-07-05 06:12:26', '2025-07-05 06:12:26'),
(84, 19, 19, 21, 25, 24, 17, 25, NULL, '2025-07-28', 'MAC', 'this is other details...............', '1', '1', '1', '1', '2025-07-07 00:23:50', '2025-07-07 00:23:50'),
(85, 19, 19, 21, 25, 24, 17, 25, 25, '2025-07-07', 'MAC', 'qqqqqqw', '1', '1', '1', '1', '2025-07-07 00:24:41', '2025-07-07 00:24:41'),
(86, 20, 25, 22, 25, 25, 25, 25, NULL, '2025-07-29', 'MAC', 'RRRRRRRRR', '1', '1', '1', '1', '2025-07-08 03:45:07', '2025-07-08 03:45:07'),
(87, 21, 25, 23, 25, 25, 14, 14, NULL, '2025-07-15', 'MAC', 'qqqqqqq', '1', '1', '1', '1', '2025-07-08 04:20:34', '2025-07-08 04:20:34'),
(88, 22, 25, 24, 25, 25, 16, 16, NULL, '2025-07-30', 'MAC', 'ddddddddddddddaa', '1', '1', '1', '1', '2025-07-08 04:33:58', '2025-07-08 04:33:58'),
(89, 23, 25, 25, 25, 25, 17, 24, NULL, '2025-07-08', 'MAC', 'other descriptions data...............', '1', '1', '1', '1', '2025-07-08 04:36:40', '2025-07-08 04:36:40');

-- --------------------------------------------------------

--
-- Table structure for table `company_logos`
--

CREATE TABLE `company_logos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `place` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `template` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_logos`
--

INSERT INTO `company_logos` (`id`, `name`, `email`, `phone`, `place`, `logo`, `template`, `created_at`, `updated_at`) VALUES
(1, 'Apple', 'apple@gmail.com', '1112223334', 'USA', 'logos/Fi1hmUcdFxiMiGxfNRLcNhx4aaH9ygg3r8AxeBs6.png', '8', '2024-12-03 04:15:05', '2025-01-06 00:27:30');

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
  `co_passenger_dl` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`co_passenger_dl`)),
  `co_passenger_aadhar` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`co_passenger_aadhar`)),
  `vehical_type` varchar(255) DEFAULT NULL,
  `vehicle_permit` longtext DEFAULT NULL,
  `rc_reg_date` date DEFAULT NULL,
  `rc_exp_date` date DEFAULT NULL,
  `dl_exp_date` date DEFAULT NULL,
  `ration_card` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`ration_card`)),
  `video_call` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`video_call`)),
  `assets_pic` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`assets_pic`)),
  `rider_version_accident` varchar(255) DEFAULT NULL,
  `dl_and_rto` varchar(255) DEFAULT NULL,
  `others` varchar(255) DEFAULT NULL,
  `seating_capacity` int(11) DEFAULT NULL,
  `driver_downloads` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`driver_downloads`)),
  `sp_case` int(11) DEFAULT NULL,
  `vehicle_authorized_drive` tinyint(1) DEFAULT NULL,
  `latitude_and_longitude` varchar(255) DEFAULT NULL,
  `executive_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `opp_vehicle_insurer` varchar(255) DEFAULT NULL,
  `opp_vehicle_reg_no` varchar(255) DEFAULT NULL,
  `opp_vehicle_made_make` varchar(255) DEFAULT NULL,
  `opp_insured_name` varchar(255) DEFAULT NULL,
  `opp_insured_policy_no` varchar(255) DEFAULT NULL,
  `opp_party_insurance_start_date` date DEFAULT NULL,
  `opp_party_insurance_end_date` date DEFAULT NULL,
  `addres_opp_party` varchar(255) DEFAULT NULL,
  `opp_rc_transfered_to` varchar(255) DEFAULT NULL,
  `opp_rc_transfered_date` date DEFAULT NULL,
  `owner_rc_transfered_to` varchar(255) DEFAULT NULL,
  `owner_rc_transfered_date` date DEFAULT NULL,
  `opp_vehicle_seating_capacity` varchar(255) DEFAULT NULL,
  `opp_vehicle_eng_no` varchar(255) DEFAULT NULL,
  `opp_vehicle_chassis_no` varchar(255) DEFAULT NULL,
  `owner_permit_no` varchar(255) DEFAULT NULL,
  `opp_party_permit_no` varchar(255) DEFAULT NULL,
  `owner_authorized_state` varchar(255) DEFAULT NULL,
  `opp_party_authorized_state` varchar(255) DEFAULT NULL,
  `owner_permit_period_validity` int(11) DEFAULT NULL,
  `opp_party_permit_period_validity` int(11) DEFAULT NULL,
  `owner_permit_verified` tinyint(1) DEFAULT NULL,
  `opp_party_permit_verified` tinyint(1) DEFAULT NULL,
  `what_is_garage_badge_namedd` text DEFAULT NULL,
  `driver_age` int(11) DEFAULT NULL,
  `driver_dob` date DEFAULT NULL,
  `badge_val_from` date DEFAULT NULL,
  `badge_val_to` date DEFAULT NULL,
  `gggggggggggggggdf` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `driver_data`
--

INSERT INTO `driver_data` (`id`, `assign_work_id`, `driver_name`, `driver_image`, `driving_licence_images`, `rc_images`, `driver_aadhaar_card_images`, `driver_voice`, `co_passenger_dl`, `co_passenger_aadhar`, `vehical_type`, `vehicle_permit`, `rc_reg_date`, `rc_exp_date`, `dl_exp_date`, `ration_card`, `video_call`, `assets_pic`, `rider_version_accident`, `dl_and_rto`, `others`, `seating_capacity`, `driver_downloads`, `sp_case`, `vehicle_authorized_drive`, `latitude_and_longitude`, `executive_id`, `created_at`, `updated_at`, `location`, `opp_vehicle_insurer`, `opp_vehicle_reg_no`, `opp_vehicle_made_make`, `opp_insured_name`, `opp_insured_policy_no`, `opp_party_insurance_start_date`, `opp_party_insurance_end_date`, `addres_opp_party`, `opp_rc_transfered_to`, `opp_rc_transfered_date`, `owner_rc_transfered_to`, `owner_rc_transfered_date`, `opp_vehicle_seating_capacity`, `opp_vehicle_eng_no`, `opp_vehicle_chassis_no`, `owner_permit_no`, `opp_party_permit_no`, `owner_authorized_state`, `opp_party_authorized_state`, `owner_permit_period_validity`, `opp_party_permit_period_validity`, `owner_permit_verified`, `opp_party_permit_verified`, `what_is_garage_badge_namedd`, `driver_age`, `driver_dob`, `badge_val_from`, `badge_val_to`, `gggggggggggggggdf`) VALUES
(1, 30, 'aadfghjkl', '[\"driver\\/OulI5NfKXghZOGP2PGRSQvtObRSlHYbo4vp8QYVd.jpg\"]', '[\"driving_licence\\/6ZveNm7eQl3y2IXuWhyfJquxWWkmERMaYxMz7EXw.jpg\"]', '[\"rc\\/a5v8YVc6NOUEjelSM6ImLOZAUHUnOAEKYZUEB6GC.jpg\"]', '[\"aadhaar\\/JYxxrfkRSnkA4hM7J57w4cKveyXAzR4ImPniV8ho.jpg\"]', '[\"voice\\/qKmVgKnRZpxDFnwnE4JuaFhFRKzeSr7Hrxg6vekX.aac\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"driver_downloads\\/zrbqD9TozYTHRakUlSCpUSqgwp8FkcoCs8HVd4dC.jpg\"]', 0, NULL, NULL, 18, '2024-10-18 01:01:45', '2024-12-11 04:58:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 31, 'fdss', '[\"driver\\/IeMByO2PKspY3iKTi8dt3fzDViDHSZhYiwoqkuYM.jpg\"]', '[\"driving_licence\\/jllc7djHy1jN4FXE6jFlbbsIta3c1uJTJxXv5JY1.jpg\"]', '[\"rc\\/bxIAzilWRwgbWPkHKnvxAWtbEY7ZawEkt06PgZHB.jpg\"]', '[\"aadhaar\\/1Afu2WYIA1haNiTEbtSQMO34VgkGP4IlJW2t0jSw.jpg\"]', '[\"voice\\/eoR1JhvgOXPZh4jbYt7QEMclqGcgsGLLZwHFl0qV.aac\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2024-10-19 01:42:59', '2024-10-19 01:42:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 32, 'sb sb dj', '[\"driver\\/uXjA5jtN3rko8y5ned0QvB6g4sqfscVcQdVFjm5J.jpg\"]', '[\"driving_licence\\/1k5vROwQAxAx7l7xVP0iCRkmuQMnoir8Iv1caZdI.jpg\"]', '[\"rc\\/n9j9koO8BiKkvHhpJrZ6EmDbmScqzyBvF2y2qcnx.jpg\"]', '[\"aadhaar\\/QuTj1Zx83k4U7AgY1Cgxidg3oosBe36i4lYN3iNZ.jpg\"]', '[\"voice\\/Bht16oxeGytKka8m4CvxXFKriyl9Zkre2VcbmZM0.aac\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, '2024-10-19 03:48:08', '2024-10-19 03:48:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 33, 'ck di do', '[\"driver\\/tdPj3xmPZUW9JpGtYhOTOxIADizFOnOw1fBr4Zn1.jpg\"]', '[\"driving_licence\\/vgwx9OYc08KntoRsQ4FFi0nCPyefYxLR3LxQJD22.jpg\"]', '[\"rc\\/2EH5YxrY6AYuRozwzMrzFpiRmsmPutOQx1PScK3Z.jpg\"]', '[\"aadhaar\\/vbQxlg72D7O9kfb7BmgilVX8xCy7aZQL1rweQDqj.jpg\"]', '[\"voice\\/LSt7PY6sGrODd82uAqoMKTNc92pS83lufZSGLtZk.aac\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11.1807639, 75.8546018', 18, '2024-10-27 23:00:21', '2024-10-27 23:00:21', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 34, 'hsusb', '[\"driver\\/E14ENrsVzc8PNFOwhgWse39yqF2R29YneOnNkWUd.jpg\"]', '[\"driving_licence\\/BGufVlMqSrscusC9XNQwuw6QK1GhUyNqlLuYXfyj.jpg\"]', '[\"rc\\/jCpahrrImce6sW4HBFNwaCcMMLUxPpld43Bc688F.jpg\"]', '[\"aadhaar\\/7AFiOsVEY3VvER7WqkxjEizvuXIjMnElT77WUb0G.jpg\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"driver_downloads\\/ehRJGV8L1DhMDNvBT9JXEksX6mS7mfD0LJcaQzbv.jpg\",\"driver_downloads\\/AXAwZRZNsT333iNWVgXZvMe0Sqogsjn3X5XEfiP3.pdf\",\"driver_downloads\\/diJwIluchsgxlFGi56WcHmiHnCDiMXE3ExbWcUsT.aac\",\"driver_downloads\\/FidkM43zHHdZVMUWhzGqBzGSRkVhuhlBnHHcaXfr.aac\",\"driver_downloads\\/618evMJuWNOKXXpyEtaK7iDoFV7XFvJDBbPSgWZj.mp4\"]', 0, NULL, '11.1807415, 75.8545734', 4, '2024-11-04 01:26:30', '2024-12-11 04:35:10', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 35, 'hshsb', '[\"driver\\/ZjWTi9FlseJ91aH2EtA9PbUcEzfQIw14pgANHdf7.jpg\"]', '[\"driving_licence\\/DACxjFx0gg4HsnxwtmOOV0barL2HtChk3Ovp9AwL.jpg\"]', '[\"rc\\/Vdh8gAOnWdHcooa6u4zqYaK7dZZtPr6pUOPJR42S.jpg\"]', '[\"aadhaar\\/b8WEDa022qm2VrrAEtUh2YP8Afb8YjwDk4Pthjcy.jpg\"]', '[\"voice\\/OHTPthVNDnmE5bCqaTKPktlWEwzVHaFAzjYHz1MT.aac\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"driver_downloads\\/JfxRhNMfirSPeiIx8bVRTCwDZHcYCj5FpzSm2p4g.jpg\"]', 0, NULL, '8.5061085, 76.953491', 18, '2024-11-05 04:00:42', '2024-12-11 05:29:38', 'GX43+CC5, Palayam, Thiruvananthapuram', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 35, 'hshsb', '[\"driver\\/hbNOGog4C4EjxOIBoIiH0M5YuQBHxy5g7KAzw9sr.jpg\"]', '[\"driving_licence\\/DUnEC11NrrEsMT7TRYvEMfLFoZZnfEi20vvzNFZw.jpg\"]', '[\"rc\\/2GB9fH1JASF6qYZS9MTW8o5Z0Fwg0VmbqP2oCSaS.jpg\"]', '[\"aadhaar\\/Tktbgc7xVqA4yfxQDntBloOzzZa8sZuwf5liKW1A.jpg\"]', '[\"voice\\/m1rNJ7tnhB84hRTyaUMM1ZDoPin9sM9ZcFG9aEUW.aac\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8.5061085, 76.953491', 18, '2024-11-05 04:01:05', '2024-11-05 04:01:05', 'GX43+CC5, Palayam, Thiruvananthapuram', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 37, 'sdsv', '[\"driver\\/V32xU33csweJ24MSIi3pNYa3ixdPifFfzgdnku7Y.jpg\",\"driver\\/5lw6dlkv8SKTyW938LlvV9a4bDCTm1A4xITTkJMu.jpg\"]', '[\"driving_licence\\/YAlltSTj6cS7lWASBmJJD1TUHXq0TaWugA8HIKfk.jpg\"]', '[\"rc\\/F5X7uqvPENOmts3a5uZYlnkcKUhTjuvnwqpSncFA.jpg\"]', '[\"aadhaar\\/NmnMkkuRjbN1cluIBBeYc8idJOT20dAfXcyv8dAA.jpg\"]', '[\"voice\\/gayd4ZWeIhRtDqvWED9WiObtfu3q57naPy3Q9OCJ.aac\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"driver_downloads\\/RGqKSlme9vwMzEkC8csDWbLAHoDmn73YGJe5kOaa.aac\"]', 0, NULL, '37.4219983, -122.084', 18, '2024-11-19 05:11:59', '2024-12-11 05:12:21', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 38, '15656', '[\"driver\\/vazVkIUrn6kZpIUBwthCrThQsWFOgwrehJURz4YD.jpg\"]', '[\"driving_licence\\/q9usOHWckMznbphRbweGmU7r2WhTr80MefWIgNF5.jpg\"]', '[\"rc\\/uqFA6BKlZEDFAmHvetbmZHTKMp83sTujaWp6amk4.jpg\"]', '[\"aadhaar\\/E2o15m3xeFpG3SxyesUlu25ZD0UIKozXEiexGSg9.jpg\"]', '[\"voice\\/JHNJTH0HNuolaKoOn1qdfdqLY4aYFsibUWEKQP9M.aac\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Fetching location...', 18, '2024-11-19 07:25:35', '2024-11-19 07:25:35', 'Error fetching location: Null check operator used on a null value', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 39, 'rthrthrthrr', '[\"driver\\/NcNxTR4rplinNSj8MUFqi54GbZdO2dyqJlpzHYgD.jpg\"]', '[\"driving_licence\\/KEwYksXgjxDMBhOIf7HP331dl6zfXvK81es8P46S.jpg\"]', '[\"rc\\/pCrCPFedTuu65T5vT2QIDF305vz0BPOUWpprD69v.jpg\"]', '[\"aadhaar\\/z1ccVb4UylakQ271hOfdc09ZugZbxRrzRmb17RDG.jpg\"]', '[\"voice\\/x54KexJvy47uDtyYtZLqN4eXvfl2Mq7aXJYdXW2X.aac\",\"voice\\/llUgje1MfjdG4S6Dsb5YIsxl1DKzyu6350G28WBQ.aac\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"driver_downloads\\/0MZmGQLSpfdnWwaKwSRimIop2kM4FnCXIfkcVvE9.jpg\"]', 0, NULL, '37.4219983, -122.084', 18, '2024-11-22 07:29:11', '2024-12-13 00:32:18', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 40, 'ghin', '[\"driver\\/0togqmnvTLndcnaWsqQ3uIPdbhwDJULLqDFBqPY0.jpg\",\"driver\\/sVnn1iZLnJ7yxpRuws61ux0v8GY9VpeKRShg1O25.jpg\"]', '[\"driving_licence\\/ap0JB8d6Rc205Ab25TzwV96TM9h6QoPHYO4YU5bc.jpg\"]', '[\"rc\\/ISVLRB8I90h0GkP6nLm4vZaAtNvgpvkt5RYSu1ds.jpg\"]', '[\"aadhaar\\/U1wM4GFEBZzetnRPM3gsfnicALr6r1HAYLozhFkS.jpg\"]', '[\"voice\\/hWNpN6UfhpVuJDOFEqdVDyKVtaF91RCg5Upy4jNB.aac\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11.1807701, 75.8546048', 18, '2024-11-22 23:45:06', '2024-11-22 23:45:06', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 41, 'ftt', '[\"driver\\/ZXGX8Oh9XsThj7ddFaiWAdfzgzydWzUc1VLguDsl.jpg\",\"driver\\/EkRVFotmHuytcKJG8uudpkCxhuwqvT0YJOxdtBqs.jpg\",\"driver\\/AQnqTcP5AKGTMBnsL9RIYUwfxd2fj7kYAziByIOY.jpg\",\"driver\\/xqUupWvfU50JkOrAAPgzWrP8Gk8XBaTp0M2sfMJc.jpg\",\"driver\\/Uype3SFR3xn5Iim480RTyzzNNkXRd2dy5b6umRli.jpg\",\"driver\\/HdElhnm2za5oiTZngtQ3WPvqmGTjEjTUqo150Jfq.jpg\",\"driver\\/HHfV2XH15JBELi40N5rr09Zz9SvwXuIRU6YKTPlV.jpg\"]', '[\"driving_licence\\/ojuoAdkVBh9ZEQHO68S2RtVMtCvxo5PGC4xvod30.jpg\",\"driving_licence\\/nnGWAY3Aztk97Q8qTFURriPo2Yn6Z2dbUDKGPrzB.jpg\"]', '[\"rc\\/wy6esxp8HBhQzyReEbwFrSDhL58xeKQnPtW6GqWz.jpg\"]', '[\"aadhaar\\/hjt6hLXRjQrazODxmMAFLAOdDF2gHZnGoX7MOU1X.jpg\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11.1807605, 75.8546027', 18, '2024-11-23 00:28:12', '2024-11-23 00:28:12', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 42, 'ghagsgd', '[\"driver\\/LnLGgqqaY7RxP9LUeNxnC670UCMGYo6kq8MhpZtI.jpg\",\"driver\\/rWOA3YtybGHz7LLDmrrGxketaUhx56KjPrFQKq8F.jpg\"]', '[\"driving_licence\\/MvpNw6avmxn69lSRDS6n0dvS8zhkG5bDdOJBuDBq.jpg\",\"driving_licence\\/hv8xGaBtAVoctV7a0JsfiaYhY6ahqmF0m7UnZLc7.jpg\"]', '[\"rc\\/zHlI1E4RNCzNSVTbRt4bXkiNjtXeV0rVbUhwg1Re.jpg\",\"rc\\/Jb4so9TbznmJsnRjbQX82xiSMCyA1FJjsXgf8EO2.jpg\"]', '[\"aadhaar\\/lgX0ScJLZGQDY557yejbDmgmJnEkuxBXjacSGvA0.jpg\",\"aadhaar\\/n8PEeMWQpS8zJ8zeNORVvCTKCYlmppB4gkJtoFrK.jpg\"]', '[\"voice\\/vqkBV98xpbCnihSMO0GHRRLpjAJxVI9PETpP4NCw.aac\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"driver_downloads\\/Hs7Losx6qg3xHpehkRNpxqyc0NEHCu2qocDngUX6.jpg\"]', 0, NULL, '11.1807662, 75.8546036', 18, '2024-11-23 02:32:16', '2024-12-13 01:04:10', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 43, 'guffy', '[\"driver\\/qWgrPkl8szF47pQh4nJchEatfbeNftgYtfEp39eG.jpg\"]', '[\"driving_licence\\/G20z61eq1zwQvaGUBkQI0WRvCJvWTQs6u3Uzu0Hm.jpg\"]', '[\"rc\\/thmWDV7C89n92jVHlezEsx2TKOKreNipenj5KwNW.jpg\"]', '[\"aadhaar\\/9zsruLmx1dTdx6uBvc038mxCojlvMlR4h6RfDzqF.jpg\"]', '[\"voice\\/Kyghwa3gT28wtGRw4EnNSwaXQcXN3k6BBWbSgC8K.aac\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11.1807684, 75.8546048', 18, '2024-11-25 06:55:05', '2024-11-25 06:55:05', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 44, 'cbdfgbdfg', '[\"driver\\/LfZM4IyDfQ9pLXqea2mlrfNQXpXvpTvSWiEE3MIg.jpg\"]', '[\"driving_licence\\/SFpksiBsIgfw0QBoilCOH7oq9Mp0NTHZRyFtbv4l.jpg\",\"driving_licence\\/WTOEo4Lz3s0npxE6kpBaKDH5Z7BT7M9gQQEGwe3s.jpg\",\"driving_licence\\/rjE7wzdwLlx1YbZj7lqKAmjcjzGVcUfXrwycBJIP.jpg\"]', '[\"rc\\/lpNIE9yhXt4TmDwiDwx2DLbDEvSe99qYnOUmhl1H.jpg\"]', '[\"aadhaar\\/hhM8dLGao4mr0KzqZjkazZsv4BVlzlM0ckLVvea5.jpg\"]', '[\"voice\\/sdFDYd9mR7ylZ76p2k9l9MzjmtRd1vKuznAv9pZG.aac\"]', NULL, '[\"co_passernger_aadhar\\/3W2xH7iginlUW6G2DVFOW2ONnyCveT495WiCfrTI.jpg\"]', 'dbdfbdfbr', NULL, NULL, NULL, NULL, NULL, NULL, '[\"assets\\/0KXvnqTjdZ2vjGqMVtxjmJXIywsiU84IZaxTSrLG.jpg\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '37.4219983, -122.084', 18, '2024-11-26 00:02:39', '2024-11-26 00:02:39', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 45, 'vzvzv', '[\"driver\\/WhTtEdA4LYxA04oS02nmCYGTzyBAh1ajnzB8lnbc.jpg\"]', '[\"driving_licence\\/e51MRvZKip1LXqLrqtWDD0wNffiwPv53duwU99F6.jpg\"]', '[\"rc\\/R5PXhVMrYN4IQOkeNuvPrEhyyXH6IMvaXfwDl0er.jpg\"]', '[\"aadhaar\\/gJUnnon4QYHcWJHxUHh3pWEo8BGizQtE3sn5mDV3.jpg\"]', '[\"voice\\/HVu4VgRWgpP0zNXj4ls4HaImnVMG9qAMMLqNa4WP.aac\"]', '[\"co_passenger_dl\\/8OU17A6yOKLmXY2Cyoql2fW0kBQWYI5F0YWOAQZE.jpg\"]', '[\"co_passernger_aadhar\\/sXVI4E43GAgBnW7djBnZ8SfUpskXqYeMjEUF6Qql.jpg\"]', 'vsgs', '[\"vehicle_permit\\/J1ueLEPMIfBXrzqFUngrozJffTEb8hc6FqNRjlyZ.jpg\"]', '2024-11-26', '2024-11-26', '2024-11-26', '[\"driver_ration_card\\/MSxp6tNZRSrps6jTm6HtJzFHsyOGTgUkPuIc0mMJ.jpg\"]', NULL, '[\"assets\\/2bmJAspxTW1ANdbJsMQuRseDI3zpAbxQBRPitals.jpg\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11.1807591, 75.8545918', 18, '2024-11-26 03:47:48', '2024-11-26 03:47:48', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 45, 'deck', '[\"driver\\/ZvIdCN1lt5Uf7KgaybFd2XTm9RFSR7B9l3JGRREf.jpg\"]', '[\"driving_licence\\/tNxmWhuEk5HL7ayLbvGj3MErOkNFBPz7USLvbW2m.jpg\"]', '[\"rc\\/zVcIkSEgMA7zTX02eHY5Wz5eVGNs41qrUT4aEY67.jpg\"]', '[\"aadhaar\\/xrlq7mUSeVOHbjY3YjA6vq7z7kmNvWAkX4c8nbJZ.jpg\"]', NULL, '[\"co_passenger_dl\\/pr5AwdVPiPFXxUJEJPUs6U1ynmUDYyt0jP9523ED.jpg\"]', '[\"co_passernger_aadhar\\/eCY8eCLxTvk6mabrD63DM1FDgX559WOKK2FJ7wEc.jpg\"]', 'devo', '[\"vehicle_permit\\/4sSKJA08cn3hlsZXGSFmlo3JJvIj1KaszrWTm4Fh.jpg\"]', '2024-11-26', '2024-11-26', '2024-11-26', '[\"driver_ration_card\\/kvHIFVygJFyw1Pyl14svkT6PL8aFDSHU3Xwh94fp.jpg\"]', NULL, '[\"assets\\/iyFahBAdoBBZYcDQBMzfw0HA8vvjkNTequGAfnSG.jpg\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11.180763, 75.8546028', 18, '2024-11-26 03:54:50', '2024-11-26 03:54:50', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 46, 'nabhan', '[\"driver\\/V1EvmN1R9lk3oPtKXaIZCMOMNg7S9rrSZ12DDuhi.jpg\",\"driver\\/E0MKAV9WhduaRJysvr6BsWxEGTEtHOSwu782RB1v.jpg\",\"driver\\/Q2V3s9pLM4zlSwa0GSFC40Mlj9xGsVteQn22gTLZ.jpg\",\"driver\\/iQFnDf0sTaPwTQXxkQQxnJQtYP3Cf8UZBEQkDwzz.jpg\",\"driver\\/kC1EfnxBY6gCrJB6e8289ebZVM3eYkEYjv06vy4B.jpg\",\"driver\\/g0pyursQeIUFLcmzAo0y80agZlY66jgvqtV2C1CD.jpg\"]', '[\"driving_licence\\/LOwOphjhcGpT2JdNarRrZsFsiDokGkDpiRNRFSG2.jpg\",\"driving_licence\\/UXuTF9dV0gZXV058SnjnnSl4r3ztgrGMxwHz9a2L.jpg\",\"driving_licence\\/Lg4sl9zxBS6WiZFtMvewyztLlPGAb5hnbD97Dn6t.jpg\",\"driving_licence\\/7XK5JebstwjOSRf3d4adY5nD5qCzHQaNaSOiIRzR.jpg\"]', NULL, NULL, '[\"voice\\/gVWeBOUkNyzA5n1mjoSicna4Y83dFJivU0Cf2qE5.aac\"]', '[\"co_passenger_dl\\/NDf2yXVvoyN3zLinCdUvGpLLtspN64Pu2VfvEOk0.jpg\",\"co_passenger_dl\\/ulTXKlBIcGte4MBOU1PJeclhVws762mDZd8NmgBi.jpg\",\"co_passenger_dl\\/lj3S0mtWUa8o0DD0IuZeiJZUOsSmkSx8qbskCq4p.jpg\",\"co_passenger_dl\\/rO2D7D8Ko8isAC0jylNt6HwqHJDhVfYoczY3MdVp.jpg\"]', '[\"co_passernger_aadhar\\/JTPFXH8D0NhBLF8d4lNLBNu1SrLMZuCACaZyojc4.jpg\",\"co_passernger_aadhar\\/2oVxLEAB09qoVXx3AQUjbGc6vY2zGQyyf9g0nR0M.jpg\",\"co_passernger_aadhar\\/AMIiIvCou3MRrfgk2iIGm35il5i9FgZalZ2veMVP.jpg\",\"co_passernger_aadhar\\/JgI3VLdu9GdZGVBGLVoyFoqG59yjYUvmvXJpIksW.jpg\",\"co_passernger_aadhar\\/Y3kAFkTGthp22I3Lq38JOIsDlLJSGYIYLHPj4OPe.jpg\"]', '6 wheeler', NULL, '2024-11-27', '2024-11-27', '2024-11-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11.1807631, 75.8545979', 18, '2024-11-26 23:09:03', '2024-11-26 23:09:03', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 46, 'nabhan', '[\"driver\\/jXPGTDyDKFZQ3pwaniCkrYTaPQEUhCodPcsMnOv9.jpg\",\"driver\\/qUeCYruXiNdi5Z2EfdNjFNfy02eL7VmphY1JE9VX.jpg\",\"driver\\/vqLJU2MrYhMcqCcnhUn0cTIS8dF8YRI4vfHvO0IH.jpg\",\"driver\\/Mlncl0q6MWzfBHlF27RVLzRYe5LvQzYA4ysBzrny.jpg\",\"driver\\/t8ec9A5LBU7KrOv24QkTU1ScTdYHC6J3TfQYmDoY.jpg\",\"driver\\/Pn2otsVPnELLx0HzJzLrKQ0FmY0Mgndrt4GOGz03.jpg\"]', NULL, NULL, NULL, NULL, '[\"co_passenger_dl\\/OrVnn7GBjxNo5O4CggyaudHNg0OwFAwGYPJ3olM6.jpg\",\"co_passenger_dl\\/572pl76DXrogt0qEu866gfnY0ijXsGa53kawv57Q.jpg\",\"co_passenger_dl\\/NWFRWT2bCQhGugMEeeZOON2aRTL1tQVIvUq3OTXK.jpg\",\"co_passenger_dl\\/EllVG9xJf4kZ7XVi5JmLRmrfaDKCcyCtRqpJfowz.jpg\"]', '[\"co_passernger_aadhar\\/KIbOKfVaOqF9cr9DZg31C9drnEzcHCG2seTZqa2P.jpg\",\"co_passernger_aadhar\\/g7VVUgbu39WcyxOC0QirY2CLRBfebRydv5bkHkd0.jpg\",\"co_passernger_aadhar\\/kRXNB1nZG5LdEadsLVtLQ9K8RjxFBj2Pnxya4E69.jpg\",\"co_passernger_aadhar\\/us8zj43IK72F2Ry2cVM2MmVOL9wwjt4ayKVTKA13.jpg\",\"co_passernger_aadhar\\/wFryjv5EAN1RDgWnb4pYhTv9Owj3BkuxXx5KpEXl.jpg\"]', '6 wheeler', '[\"vehicle_permit\\/aFpuuT7P1L6B894HvPcqVeH0rl9LRm792uFEBnUx.jpg\",\"vehicle_permit\\/8xK1xJed7byWy4WrkXgdy51YX6VE8zhZLHEULrL0.jpg\",\"vehicle_permit\\/G2qoMkyZypZu7OkxoEhYcBKdQVKDLuan2yQSCnzp.jpg\",\"vehicle_permit\\/wItYwqiGs6CRjBH7KdwvKFXaLHwPZ6Qdjh9BYvfI.jpg\"]', '2024-11-27', '2024-11-27', '2024-11-27', NULL, NULL, '[\"assets\\/CbqZqAPJtqjtk9QRAExLi41WAurI4UUBm7BMhwJK.jpg\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11.1807631, 75.8545979', 18, '2024-11-26 23:11:23', '2024-11-26 23:11:23', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 46, 'nabhan', '[\"driver\\/WswQ0XAyr2GPyYqMBvHeGgpAYU12gZUpca1JzcKP.jpg\",\"driver\\/7SKDAdRKcigX18wsFuKSayXVAkfQxVlUpFrAVMn1.jpg\",\"driver\\/X22jfyCPqt3aY1u3cJvXp2OTQe1iWxViMjFNYgAD.jpg\",\"driver\\/3NyEu3rKn0qBwEScRVv7x2KNd4TXWnCbgmLqTXQZ.jpg\",\"driver\\/UErdMOz5RKbRjXr59j0ouLeY3n086EwRP2LxyKbo.jpg\",\"driver\\/0YqDGTdu95QKkLhtMOoDMpoulvftBenk8jnxFLyA.jpg\"]', NULL, NULL, NULL, NULL, '[\"co_passenger_dl\\/bDrzmL8vDiQqNlkB4U5njXieUg8qTygpvnIdV8iQ.jpg\",\"co_passenger_dl\\/YuMpfQwFaRVXV7PVcyN8Fcn6MVnaUIA9xP8lQS5h.jpg\",\"co_passenger_dl\\/a7I9RgdXu1iSDXBSZSnrMSQV7QBnNbrMlxkEOycT.jpg\",\"co_passenger_dl\\/HmBPIB201AEevdIMnT0qfViUwI9rcPe93EBaI3vM.jpg\"]', '[\"co_passernger_aadhar\\/wqG65buT02gDCKEQYR8IDuncERL4yBLrcev0IkLO.jpg\",\"co_passernger_aadhar\\/4Yr9ovAanzejHJpBwlFLPngK5kwNZPERUZZT3B02.jpg\",\"co_passernger_aadhar\\/6mLZ5Ve9NqF6V0JWBUlVWFTTLqC6Am7F38jUzJj4.jpg\",\"co_passernger_aadhar\\/BS0d1u1Z8QQUutaifJ5hI8MbViNIa7ttEwMnWmTY.jpg\",\"co_passernger_aadhar\\/VssNo3wQmyZ8V5qgLRdDLnsxMKboe0FBw2fpSR8g.jpg\"]', '6 wheeler', '[\"vehicle_permit\\/Fx328HFpqeMba0jh0GgyyNUonxb5Va0pLD1JXvpR.jpg\",\"vehicle_permit\\/AccMATD31FaeVadFdQR5wwoVVVeokQaEGTYlPVyu.jpg\",\"vehicle_permit\\/ac7PCY5UfS0lakctTXmKbNdetrsXyTbLtK8FLAC9.jpg\",\"vehicle_permit\\/wRxMNath9gcXmAqQmd5Mpx4D57zoFYsODVMTmunJ.jpg\"]', '2024-11-27', '2024-11-27', '2024-11-27', NULL, NULL, '[\"assets\\/x4jqqWecyMJO1YvemppMWFx2633eGbyMwHKtRVb9.jpg\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11.1807631, 75.8545979', 18, '2024-11-26 23:12:48', '2024-11-26 23:12:48', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 46, 'nabhan', '[\"driver\\/mkLPjcqxF1QAjlT8svQ5p5W9VmiY0dshBqCVEm6u.jpg\",\"driver\\/LQzR9y7RK9jIybyrDnqoXk1KgvShCCffE538ZZLN.jpg\",\"driver\\/ygHfm0BrxP5QSBRqdH4Gz0MAV0HN5F87zFTacR5L.jpg\",\"driver\\/AgCGjYUrvupdxZuW78YMrJCl7hWT7LjeVId6STOr.jpg\",\"driver\\/Iw9WOBNDgDnfpBlo3lYMuCqUT37nPEETFh7xYMo6.jpg\",\"driver\\/ZRZVe5AWBts3Qit3SuIiXossfU8b4iGPEwXFJLEl.jpg\"]', NULL, NULL, NULL, NULL, '[\"co_passenger_dl\\/WRPMQF4K6HgOkgKCRXblbyDUFqG9dCtyzhZEgpTI.jpg\",\"co_passenger_dl\\/HMxvipyiiHdAC0mDxsGw0FE47lGl4jr6TMkRTRPh.jpg\",\"co_passenger_dl\\/IvR2WZbvVjSmjOlLlHPVFaqfhRbHf2K4FZOWa3yG.jpg\",\"co_passenger_dl\\/o4LMj69oi8ulCb0mhCC10qDgJN9utGYOGhl9pZNo.jpg\"]', '[\"co_passernger_aadhar\\/quAuobN7DD3K1PU8qHixZKNwtyISS6OXjMNPnJj4.jpg\",\"co_passernger_aadhar\\/LOpS7EmRYP0TvMsBhbWfoO17FgOO5pgvniQIpyHU.jpg\",\"co_passernger_aadhar\\/COpTM4FR7LcrGLz4R56TCQDwGteGnu7vmN0RUaY0.jpg\",\"co_passernger_aadhar\\/shOnoFXHmnnIHixcR0gDvxQyo6DBU1UTRdtzSaM6.jpg\",\"co_passernger_aadhar\\/RZPb5qzyBcR2b7FD7Mp3LxDM6ljpKjYzvIz9qGFp.jpg\"]', '6 wheeler', '[\"vehicle_permit\\/NGrTv4duAXyNbz7YH3KNXMKngiXZPHWJ7LbODxnC.jpg\",\"vehicle_permit\\/1IDZ4RJC5EB6cxkacS7IqHm4Bh4jiMUdAGYyuDdJ.jpg\",\"vehicle_permit\\/ErXroHJd7ILW2B51ZHdBnYZgw9TWMq8QXxAGhU23.jpg\",\"vehicle_permit\\/98GUxFiPpW6B0R7sgx0A5muuX4NopFAERcxEf9J5.jpg\"]', '2024-11-27', '2024-11-27', '2024-11-27', NULL, NULL, '[\"assets\\/Xdpw4Rd3W2HBYXgHm72kURa15UGHW1u3fFrsLOo1.jpg\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11.1807631, 75.8545979', 18, '2024-11-26 23:13:14', '2024-11-26 23:13:14', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 46, 'nabhan', '[\"driver\\/lVuAl2RLLNumHw3tvbPFkG9GuZ6Dsoocuyz4MNZt.jpg\",\"driver\\/NdW5y6P5LzmfeSSrwP0AanoicqaycAS0ZRQJBjcO.jpg\",\"driver\\/7jxkS54cbRXtnNgB5sMtK4uiXpWslh7eu1DnTsqq.jpg\",\"driver\\/yzAkBuOvFPbxihJ9BKARrKaxUpD0jMHtXdsK6ijT.jpg\",\"driver\\/ji9J8mKpUOBmCpvEV6EkTkV2w98MYcC9QhJqzTfI.jpg\",\"driver\\/WQTylkkwxtIQTEa4DKq3LXQYLi1UuY5GKw7h510O.jpg\"]', NULL, NULL, NULL, NULL, '[\"co_passenger_dl\\/FSFo2va2cma7YjLxNsfnInMm9VVYPye9pFeSFzhp.jpg\",\"co_passenger_dl\\/tQPlMWKJm7AyxI3UchOoD6VkPnxYNevfYGGEyE0a.jpg\",\"co_passenger_dl\\/Ht2vXpqUbt5dvnaf8bkrLfdhrCQFQpGDjcLpTef7.jpg\",\"co_passenger_dl\\/DZeeLihJv3S333K76qP02gF7PSlQnYmvWvPOKzqO.jpg\"]', '[\"co_passernger_aadhar\\/6QSuFPkaU2CnZ6UigPi66q41yUGhlr4XoWAPsX0b.jpg\",\"co_passernger_aadhar\\/ap1wAkVHZ8PCMYOoy6K33ZblDJPcetlYQnruRjWn.jpg\",\"co_passernger_aadhar\\/HuphiQtlgUc68yQ6k4n2fp924ZEtQaZ6yMXhxvv1.jpg\",\"co_passernger_aadhar\\/y8s3oY3tnHpK0iaMddJzrStvBwWok1MiFTt6Rvrd.jpg\",\"co_passernger_aadhar\\/XN9IBych0L3YF24XnzjDptdcKHQTLCyRSsQIaea8.jpg\"]', '6 wheeler', '[\"vehicle_permit\\/KK5LR1wVJSe1dYjrWNvVR0cQMK1IEDNp4oSvf5sX.jpg\",\"vehicle_permit\\/40eqVS1reWYDOgAwpX90rWLIdD0LxhIOMMpEtLG3.jpg\",\"vehicle_permit\\/jHHe2MsjvMSEsKI0zHipVQR4ZKNB9r40rA4BSs83.jpg\",\"vehicle_permit\\/eJ6XWGuvMgb6jypkGC4HFJrgzZiwHiNGzbRNsfWs.jpg\"]', '2024-11-27', '2024-11-27', '2024-11-27', NULL, NULL, '[\"assets\\/XaWSMWcGcweNaKhNpZtYIQnlVAkcZGPpc08hoUAW.jpg\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11.1807631, 75.8545979', 18, '2024-11-26 23:14:30', '2024-11-26 23:14:30', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 47, 'Sethi', '[\"driver\\/mLZDtguMRuxdlG8qEz4Y3SvBKo712XhA8WDK2WxO.jpg\"]', '[\"driving_licence\\/xPvSWM2KTDzjc0f6U7T3X6Nmlvpkhyv964XyFcAU.jpg\"]', '[\"rc\\/faH7oX2C0hO1aPZyaQ3xUhlb8y0OAoATsBHI8b9X.jpg\"]', '[\"aadhaar\\/PImUR1MayXLXs9w4uVFe9ikMBYLjRE0yhsQ4cVOU.jpg\"]', '[\"voice\\/ZAFCa5mtlV2CjAU972a1LSq7yGdX5IC4yX3D5L3w.aac\"]', '[\"co_passenger_dl\\/zumbD2XphlqEs5at99iNh7PkektiyQBILszd6qaO.jpg\"]', '[\"co_passernger_aadhar\\/jNwLLceDznwhjIx0RYHk7WfJu78sOfatZLYvrBr9.jpg\"]', 'Sethi', '[\"vehicle_permit\\/7tuoZN0ZbsTxieauNqG7fwoCDW8Y0codU8XGBL0G.jpg\"]', '2024-11-27', '2024-11-27', '2024-11-27', '[\"driver_ration_card\\/wkGWbZxbEsIwDoLnJnRtugsGfYQUxcGnSe5Osb7k.jpg\"]', NULL, '[\"assets\\/MNigh305ihWMeO8dqRsYeP4GezSFhB5EDB05tr5h.jpg\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11.1807678, 75.8546024', 18, '2024-11-26 23:18:31', '2024-11-26 23:18:31', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 46, 'nabhan', '[\"driver\\/h8aMspOJclfATsy04C6RskdoDslwVOBbGtxmhSts.jpg\",\"driver\\/h0DJwOZHgph0PyDmzK9klHijOQBtQTdAGbh1w2kP.jpg\",\"driver\\/qwJ23muX5sdfGtPWsc30cFdut2lu74tZKqVnB6Ce.jpg\",\"driver\\/fXw8H2finrDw0P2dnmiR3rCA2oXUBNA4HbnST6p7.jpg\",\"driver\\/zChpdWnTK2WK6ckeRsFX3pixb5qccd6iHoyfh8PP.jpg\",\"driver\\/tRNi07vQdBGOHxPcnQQGdOPD9XRvdqLrgMt55dlJ.jpg\"]', NULL, NULL, NULL, NULL, '[\"co_passenger_dl\\/g7OH2NnCGul4IdWGt4V8Beu5ugJouUcvmgJAhkJj.jpg\",\"co_passenger_dl\\/ClbKj1rw3lvduRPjL4KJ9xGVN3qJOsQGhnYbTTca.jpg\",\"co_passenger_dl\\/XHUCmysKZGsWMoGZJIPxyZWBvon6WSRAsrS1L8Yq.jpg\",\"co_passenger_dl\\/bQXO9KttsXhCxdCP028TrrcJbG44tULTjF1ofGnz.jpg\"]', '[\"co_passernger_aadhar\\/QHcpGrDGmY01r7LDfN1G2jFJE1skQC2R7W7lHr2Y.jpg\",\"co_passernger_aadhar\\/3gDMMFL4o4emybqK6UC0Dj8Wlc1RVznINqj6x3NH.jpg\",\"co_passernger_aadhar\\/1NkWr5k2NRnHZs4J3AtmLBJXEkewBIhSak6Txh6B.jpg\",\"co_passernger_aadhar\\/m6q9xuCmQu4v6H198dtVWUat0XRRS0dGmKDL0XHv.jpg\",\"co_passernger_aadhar\\/wrAKpkOxV1j1cmU0d09h6ApTvDVr66pOrh3B4HYu.jpg\"]', '6 wheeler', '[\"vehicle_permit\\/Tm9ERt11A2TlhcXrVUXMlGyhgZ1baEuqqP8MQR6q.jpg\",\"vehicle_permit\\/gn5A7loxpCVfZAsE6Y3BceQkGGT8pgY2Rgmx2Dfy.jpg\",\"vehicle_permit\\/0bVuYMhfOj3eY8X15FltM7ALrOCBThFZvbfh4BGU.jpg\",\"vehicle_permit\\/WfIm40sW0jTGqT2uMRuQipJr7cGP5jMBdCz5lh5p.jpg\"]', '2024-11-27', '2024-11-27', '2024-11-27', NULL, NULL, '[\"assets\\/BzUqjQFy1ujsFlkh7cIlQBmWdo6EfzxJcF5dOvzY.jpg\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11.1807631, 75.8545979', 18, '2024-11-26 23:19:33', '2024-11-26 23:19:33', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 47, 'xxx en to', '[\"driver\\/H1ApO8Xcfc6pDQsMAI72rhPgvBlGHvH5RV8Y1CUf.jpg\",\"driver\\/Xq7bA8rqOrdxEQRr6rD37d0SakOFYlozQkYmwt0E.jpg\"]', '[\"driving_licence\\/4oWEM7bbzKi84xVyKvsbaEuIP5ouQ6laQFT2ZsKs.jpg\",\"driving_licence\\/aEFkplVVssiuwbNEBFuM0wewy7Nfw5TjRkgH3ep8.jpg\"]', '[\"rc\\/XE8fT1wQ8dDztblSymMzKp9sNnYmcMVKQNdWratc.jpg\",\"rc\\/iWF3HmFmYos6Cm5p4yMuZGGH7GWo98r6uMP0tcEe.jpg\"]', '[\"aadhaar\\/ESngofFnijXRVgk4CLkzS444m7IL9TIIQk41pfku.jpg\",\"aadhaar\\/xBXBFtLAeN2l8xdDGXHFkgGzTEOLFdNcP7d7Tn4Z.jpg\"]', '[\"voice\\/VpRWvvYgE5B4qRRWHPPNPdoDnNoomf4m1JYE4ikc.aac\"]', '[\"co_passenger_dl\\/LVKjlVeaeC1whwxY22rhejzPgnbt3vLDve7sKeyQ.jpg\",\"co_passenger_dl\\/pfC0NX7vkczPFG9t5MJfJ0RkkXbLcpf4nMDOi9Ix.jpg\"]', '[\"co_passernger_aadhar\\/oQuFZFjOfR4V28lEm7RvbZocg0o6Qlmv2FfV2cOs.jpg\",\"co_passernger_aadhar\\/1RQ9d9TAmiQhk1pI7ardcaMmbZOehSGfbj4IG59C.jpg\"]', 'by em in en', '[\"vehicle_permit\\/ESUP1pN0cD8KzMSI17c0F6YeIlUn3G7FdV8Yi389.jpg\",\"vehicle_permit\\/3j1E9R1zZRVSc5nR9Rw91X9FyT15O19wYGGxqfML.jpg\"]', '2024-11-27', '2024-11-27', '2024-11-27', '[\"driver_ration_card\\/vXfuU6UiTFJEwPgA2mdQ84vLDlPYxypmNWUIoayg.jpg\",\"driver_ration_card\\/CyRbrYwbkPavhKdXGIKHZtW0qby6PWwyIRlVdKgx.jpg\"]', NULL, '[\"assets\\/OcizG9C4Oytf0j0xTqqVcEgN9yAkfrggJRW9IG6c.jpg\",\"assets\\/FUoCY2ejj6Gns1tS9Jpf62Ncmj0IgQgHi9zc19N6.jpg\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '37.4219983, -122.084', 18, '2024-11-27 00:13:55', '2024-11-27 00:13:55', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 48, 'dsvsdv', '[\"driver\\/mHl57HqK0WvgbMzvCJSlvhT4nFD6hZtmiCM9cfRP.jpg\"]', '[\"driving_licence\\/cPbPv5Qy6SkJ9VHPs2Fm3hKvnzFlJXh9fCTpR3Z6.jpg\"]', '[\"rc\\/JIVdIuP4mFe7SjnSG9SmZwGpd76g1r2X8LZYfJoO.jpg\"]', '[\"aadhaar\\/WuIO3JjEMCxdZ9MdWPRWUK98vaWejWzcRJkVs6A5.jpg\"]', '[\"voice\\/BkyI5LywZ9NdeCB9KJ8GvplcwqLl7oGupU9hQph5.aac\",\"voice\\/CKAiHtfm6Xw4Q24ADDP0fwvvIFvfbXqt9U8jqt7C.aac\"]', '[\"co_passenger_dl\\/FMyKIKLWblkUQovlBZdjndRbw2LS5bmKmQcMqYSF.jpg\"]', '[\"co_passernger_aadhar\\/y7Yt3LM9KEcvIbOCNdLiiI7gEJmfUimehPFrXT2C.jpg\"]', 'dsvsdv', '[\"vehicle_permit\\/GW5SeS3lwBVmpgUXaM98nMKxGbLviDRq0jwYlfxY.jpg\"]', '2024-11-28', '2024-11-28', '2024-11-28', '[\"driver_ration_card\\/tEuNP0LqDxqdjM7PyHSW1xWltUjZlOydpBZGJBcf.jpg\"]', NULL, '[\"assets\\/nVI2QXQ0vtRaXCeqNSxPobQKRFgwNO8R65FhpHkg.jpg\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '37.4219983, -122.084', 18, '2024-11-28 05:26:15', '2024-11-28 05:26:15', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 47, 'fvdfvdfvdf', '[\"driver\\/whGHh51uIzErEb8EVVTHbMvhr9ld7SlHMz6mmLme.jpg\"]', '[\"driving_licence\\/wAnLTVo2M3aPJjepMcfdqZbCOEyg9ylVFR8Vtax6.jpg\"]', '[\"rc\\/OYqxuTnQdC7tV9qge2U0723KRYRkkwRyEsD4Gl6l.jpg\"]', '[\"aadhaar\\/eHUTRBCZ5IRQWh3vL9O7Eik3r71GZrWajetpxC0P.jpg\"]', '[\"voice\\/gLEQbfE8TeDVehLkPAndCcWPyaVtzVHpCgVoqgIW.aac\"]', '[\"co_passenger_dl\\/7rDRxPFTyNYLFRuW4C0kgM58gDzXv6ubpAXRpZth.jpg\"]', '[\"co_passernger_aadhar\\/uKh9VExYevrrzhN85iYqrfdPMrrdSLUVoapGiBd1.jpg\"]', 'dfvdfv', '[\"vehicle_permit\\/pGiAWswRFoW1l29N1cUWtFMPvYDiyseHxjLEOfRE.jpg\"]', '2024-11-28', '2024-11-28', '2024-11-28', '[\"driver_ration_card\\/NITSrk311wNazKC7vnDpctFYiN9VO5aiqy8GcZhO.jpg\"]', NULL, '[\"assets\\/F44tWl5jlYAP0lOk03VM9F4FAK2TASq7FQiDoxFL.jpg\"]', 'dfvdfvdffd', 'vdfvdfv', 'egererg', NULL, NULL, NULL, 1, '37.4219983, -122.084', 18, '2024-11-28 05:50:11', '2024-11-28 05:50:11', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 53, 'fsdvdssdvsdvsdv', '[\"driver\\/B9c7Jt9A0xlLOLci4mptAVIVyWGB2bgZmcKMjtm1.jpg\"]', '[\"driving_licence\\/JWCW6gJ6KVjoH1rlB2xYqLXmO1MeWhNZ8n6XFUZ4.jpg\"]', '[\"rc\\/YMJ2KVRtFIH3SZ92fq5jqwfCN59hhS5gW21n6whz.jpg\"]', '[\"aadhaar\\/PhtfjXBFlvkYAhsMZrjpeF4sHb8d79bKyDicAjTS.jpg\"]', '[\"voice\\/busQEWRf3Zro2wHWcut08pgPGPJrSZYspC99qdO4.aac\"]', '[\"co_passenger_dl\\/xud5M0BzOiEcd28sRHNdirW5OpPSS0gvS0wLmUCD.jpg\"]', '[\"co_passernger_aadhar\\/mabLiOPRniMz65ExkUJM4STDYUyiIVDJVkkb7FGb.jpg\"]', 'dscvsdvsdv', NULL, '2024-12-02', '2024-12-02', '2024-12-02', '[\"driver_ration_card\\/tiaYf0ygi5Dvx2hPQKE1rGBMN94AMyv2XcEJWByp.jpg\"]', NULL, '[\"assets\\/E2f6dK52Iw8MBV1dlOnCBEIONrFzlgqfijwA4oOx.jpg\"]', 'sdvsd', 'vsdvsd', 'dsvsdvsdvsdvsdvcsdcdsc', NULL, NULL, 1, 0, '37.4219983, -122.084', 17, '2024-12-02 04:16:14', '2024-12-10 02:35:00', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 49, 'sgg', '[\"driver\\/MclucZxQBIEB1u7NVM4oRxWsjP9jokXYfurpuVrO.jpg\"]', '[\"driving_licence\\/O8sd71yK8iyxSPO9RgPrhYtOhWGyUpRgpHmtba48.jpg\"]', '[\"rc\\/IjGEfgI8nzh0x7rfKI8FRO8HbT73zJhXAiA79iqx.jpg\"]', '[\"aadhaar\\/L0tSNstQqWZ2kyLfbaHJHq4Lit8UvSkPJTMOcZFi.jpg\"]', NULL, '[\"co_passenger_dl\\/3edETS73W2AmYwMiYFyfB3tBVb6qkPIOpvADeM4Z.jpg\"]', '[\"co_passernger_aadhar\\/sBuCbY9Lrq86kSnqBXdFiuLKLbYz0uoERme0EqNZ.jpg\"]', 'fff', NULL, '2024-12-03', '2024-12-03', '2024-12-03', '[\"driver_ration_card\\/Xy2gqhlekCN1N5WAmyRGtnUga6VkpHaTCdEyL3Eh.jpg\"]', '[\"video_call\\/CB6nKNDht8ym9Dp5GwYatb0PNZGtWeaeHqQ5G2qW.mp4\"]', '[\"assets\\/nUKV4Lu8BxU4x6xGNGRJNju2Cu8FYd8RTjqeKKWG.jpg\"]', 'gjb', 'xghh', '41919812', NULL, '[\"driver_downloads\\/VftxH9aMUCtYtPYKLLk69MsW4TBZpHh2WzFiZxvH.jpg\"]', 0, 0, '11.1807673, 75.8546025', 18, '2024-12-03 02:25:44', '2024-12-13 01:05:33', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 54, 'ghdhfh', '[\"driver\\/iPRe4FOhXqTvk0TiCVzCRnFaruz438R5CLNZON2s.jpg\"]', '[\"driving_licence\\/fXXydfx1rEE85DCjxVynssUUiv57p9p0NAachXiI.jpg\"]', '[\"rc\\/GLuNJMbicmrrLmIyrssEVObREnLrwcD9YX8cvnmg.jpg\"]', '[\"aadhaar\\/PxFYRua42b75omLIiuc2RZQ5Tf9FwKQKSbqmgtJI.jpg\"]', '[\"voice\\/PNNwU1UUQKAinT8hpMJG9OwYRYmhLMHMx5zW6xn0.aac\"]', '[\"co_passenger_dl\\/4kx3Nh5zdQ7ooN523H2jE2ReAJxJ8g0OkPNF9M2c.jpg\"]', '[\"co_passernger_aadhar\\/tI1HCrgtPtHEOACQZWsCk8fVBsOyWN9nsOvVij9J.jpg\"]', 'xds', NULL, '2024-12-17', '2024-12-10', '2024-12-06', '[\"driver_ration_card\\/Eqo5TRpvlVbwwdFqsvn7hQsGzWxKJzJcyAYSwsAp.jpg\"]', '[\"video_call\\/ucv6WxdphqFXhf3SV7sP47RfbbwAJ9i2qjidC3MT.mp4\"]', '[\"assets\\/a007nbA1absg0eEkGU5fQxl1IjmX8q5GIFRigxp2.jpg\"]', 'hgyfgg', 'dhfgfgg', 'fbfbththrhrgrh h vgf', NULL, '[\"driver_downloads\\/Zvc27WiaWn7Jsy2CJFkNEzJGLQmFhkGkpcgcdEJY.jpg\",\"driver_downloads\\/UU3GGHIyELZpGFh5V9GNmb0eTINffSTBcTT7O1l3.jpg\",\"driver_downloads\\/pWR4eHeZmPFiA7rcgUP2iFUu6BWld56iy51Fg7tp.jpg\",\"driver_downloads\\/FIFLXuYh64RzDoFmafEQkV57AxpuhUXYmBnqySds.pdf\",\"driver_downloads\\/ap25KXghZNYTGRlfeuFnB9kJEKKpXklo9pHAxU2y.pdf\",\"driver_downloads\\/kG2gyYUQNMM2yy7HotEJPn1db30TIYV7ciYrIeS1.pdf\",\"driver_downloads\\/gnEPOlrw2q1ixYrBuNiLRnz0tsZS7xAzbMa4SF4u.aac\",\"driver_downloads\\/492G3nRyzCoJ8E1P15dWuJpx3mrL289ryBzd2Ur6.aac\",\"driver_downloads\\/crNEmFsdbSA5NH39DDEarrMPASV9UYGFXj4dNgi6.aac\"]', 0, 1, '11.1807644, 75.8546017', 18, '2024-12-06 07:16:13', '2024-12-11 04:40:20', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 50, 'fhbfhgg', '[\"driver\\/Jcehx1BU00Lfqff7lRQTQhWvFKgPkBNU3ex8BfSf.jpg\"]', '[\"driving_licence\\/2ZvyPaDpf5PT5NBnQE5MDZZkp1WHHAMGKSfJBAoW.jpg\"]', '[\"rc\\/5KauGWmPuAt88dz2jbRaLmR9CyHzLiZTr9S2aCHO.jpg\"]', '[\"aadhaar\\/neXbCO39tGvGCxzkYMcOS5UVZY0Z19CnhT6ruh9y.jpg\"]', '[\"voice\\/CafF47x5LmO2lC8pjVVwttiYQXkFCCT9ySsRSN1X.aac\",\"voice\\/vHktLbgIlJ3djThAJpIEejr4Iz9yEmqhjegLmwB9.aac\",\"voice\\/u1Hx0cuEskFNDT3kQAw6OKlLWYPYCjFpLOiyNgSZ.aac\"]', '[\"co_passenger_dl\\/3klzWAFBOdY3KBf89btIzDkrxXUNlgeV2M1OHSAB.jpg\"]', '[\"co_passernger_aadhar\\/LF6e2XcCDo763kbeSxkX1rAP7gLUZ2LDXQTXmT0b.jpg\"]', 'ghg', NULL, '2024-12-28', '2024-12-20', '2024-12-12', '[\"driver_ration_card\\/Fl9517hH5DvBFs1Nk0F3iSwk9DkN1BDUAMv8sjfi.jpg\"]', '[\"video_call\\/aWoa5jQSWVp1ZY75ks3rpsojUbbjM3i2zOsNeYt9.mp4\"]', '[\"assets\\/OcCkq3zIF79Vl5KFVTMScS8G1WXkSIbQLEsKUUfP.jpg\"]', 'gggh', 'gyfgy', NULL, NULL, NULL, 1, 1, '11.1807731, 75.8546073', 23, '2024-12-12 01:28:47', '2024-12-17 04:41:27', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-12', '2024-12-12', '2024-12-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '2024-12-12 04:06:46', '2024-12-12 04:06:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-12', '2024-12-12', '2024-12-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '2024-12-12 04:08:59', '2024-12-12 04:08:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-12', '2024-12-12', '2024-12-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '2024-12-12 04:09:10', '2024-12-12 04:09:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 36, NULL, '[\"driver\\/UGNpK7W97z1YwlDtKdQ6jco5V8rsaReO7ahQ6scU.jpg\"]', '[\"driving_licence\\/xl9IiQeyq9P34S8qr2H675JttmulDuGQArlxmB7r.jpg\"]', '[\"rc\\/ZwuXrcWd7vhnEZ51aeQkGnYITwAlhBNBiYfRds1k.jpg\"]', '[\"aadhaar\\/LGtqoDeEdDdfiLK89IpZjEXathpiEmS165QEiWRp.jpg\"]', NULL, NULL, NULL, NULL, NULL, '2024-12-12', '2024-12-12', '2024-12-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '2024-12-12 04:09:48', '2024-12-12 04:09:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 36, NULL, '[\"driver\\/d9CcsugFZjzcnEH6wF6aIh1AI6SvJEGvdkYdDEDD.jpg\"]', '[\"driving_licence\\/6RBZ3jv4HzfiOyff7UcoDXgM3P87Nhqgtatfek78.jpg\"]', '[\"rc\\/6bu8T1BfwhRZMRNV1zXS12eR1yArIixveiacO81l.jpg\"]', '[\"aadhaar\\/aDeFeyMHeIur83kd1jMyEJOtrd6thJtUfpuc8Zj2.jpg\"]', NULL, NULL, NULL, NULL, NULL, '2024-12-12', '2024-12-12', '2024-12-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '2024-12-12 04:10:07', '2024-12-12 04:10:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 36, NULL, '[\"driver\\/ruLW1aVhz5kH5ID8evGKgbGmFwiG4SHVXZJCA21p.jpg\"]', '[\"driving_licence\\/izKq1fyda12CtAFWQp8dHSAGZgsiz6AAmQzJhNpj.jpg\"]', '[\"rc\\/UDr3FxxQ9kqlubgv6bvKbpmZKpD7dw6zHsNXBqlV.jpg\"]', '[\"aadhaar\\/tm8F5UpoZSCJVV4C9wrFQiBrWffOSLTAYJl0hggU.jpg\"]', NULL, NULL, NULL, NULL, NULL, '2024-12-12', '2024-12-12', '2024-12-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '2024-12-12 04:10:21', '2024-12-12 04:10:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 36, NULL, '[\"driver\\/8AO4EdBOZxkvUzpWb8kI6Tjkd1s5wGyuW67m3n7g.jpg\"]', '[\"driving_licence\\/uxnhhVg5OMRxs14QmClyJQ1JUzg8kvEQ84rZhMTx.jpg\"]', '[\"rc\\/R7iCLshqIzA6nSs74Ynctan7uEpQAWDH0QRl5p0V.jpg\"]', '[\"aadhaar\\/nkyuM3DNVIovlsA3ugqJ7xZaIsufwCOkVDbdTTGd.jpg\"]', NULL, NULL, NULL, NULL, NULL, '2024-12-12', '2024-12-12', '2024-12-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '37.4219983, -122.084', 4, '2024-12-12 04:11:00', '2024-12-12 04:11:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 36, NULL, '[\"driver\\/iHNZlnTzh030BE81pYgQlsbttyZ0z1NeFFApi8rF.jpg\"]', '[\"driving_licence\\/bsb8LxJZmCv7twzUHfP8qroGCfjmdfbuUbFxKitx.jpg\"]', '[\"rc\\/MGyqzeqthUOj2jIt86vHBOR70kYn1uSCYdialXD2.jpg\"]', '[\"aadhaar\\/BbFzPrd2gxLeYuYMAsVSGEEOyxMwOGBz8b7vB4AU.jpg\"]', NULL, NULL, NULL, NULL, NULL, '2024-12-12', '2024-12-12', '2024-12-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '37.4219983, -122.084', 4, '2024-12-12 04:11:32', '2024-12-12 04:11:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 36, NULL, '[\"driver\\/HxTgH5Y1t8hNJLbkzUV0cIxxkSSIozH9YzO6my1j.jpg\"]', '[\"driving_licence\\/jrDwGEtQRNblMYVK05LTQ6s9y2tkB1O9scUBfgFj.jpg\"]', '[\"rc\\/Ws6M0QqDg6MSfMS81LSRRdPZQE5kroE4or8dQuEG.jpg\"]', '[\"aadhaar\\/ptGu6rBK0tHv2FOakF4wEB3hCbsBQBDb3cPXNlO1.jpg\"]', NULL, NULL, NULL, NULL, NULL, '2024-12-12', '2024-12-12', '2024-12-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '37.4219983, -122.084', 4, '2024-12-12 04:11:47', '2024-12-12 04:11:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 36, NULL, '[\"driver\\/iInFM5k9pUqo91TaPgtTFBe4npCxmNiMZkvEuXld.jpg\"]', '[\"driving_licence\\/Xp0enWjryHqGHFME8MPhTnbAzpZhxgvKeudmV3i4.jpg\"]', '[\"rc\\/G236iOJDr4DNiGRhTmTeeCLtvWUhFWNZzwOy6Doi.jpg\"]', '[\"aadhaar\\/0OAvEXm1mTEKtwmz9Vt3vhRGEw5cnFSdA6AkZrzw.jpg\"]', NULL, NULL, NULL, NULL, NULL, '2024-12-12', '2024-12-12', '2024-12-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '37.4219983, -122.084', 4, '2024-12-12 04:12:01', '2024-12-12 04:12:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 36, NULL, '[\"driver\\/aXLFIPXi6LQaBsS1wKvyttS2yyGyJgR9MhhfZDIQ.jpg\"]', '[\"driving_licence\\/Qo5ls1MDnhtaUaCYzpIxDhoWw17oOq48drnA8RSq.jpg\"]', '[\"rc\\/MCLJAnq0NG9BgWVl0m0FDH5A4z3fNP2Nh15kISQj.jpg\"]', '[\"aadhaar\\/gawRwYQeDcXheDUds6GuwB8hO6BvCqEc7ohrNcFI.jpg\"]', NULL, NULL, NULL, NULL, NULL, '2024-12-12', '2024-12-12', '2024-12-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '37.4219983, -122.084', 4, '2024-12-12 04:12:45', '2024-12-12 04:12:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 36, 'sdfvdsv', '[\"driver\\/rDSLe0noQ1V6ik99miIiEcoiFPNr7xGR1nRwPiL5.jpg\"]', '[\"driving_licence\\/MKD0wwecVNzUFisDb6vxto5l198s6H5n4DBL9qyF.jpg\"]', '[\"rc\\/jK8UyFLkwByJdYaguy8zdUQBY5diRzWnDmZSbKbW.jpg\"]', '[\"aadhaar\\/7LjdrdtbTHVT4cintHJ1Pp97AdldyjnUCDTz8vU7.jpg\"]', NULL, NULL, NULL, NULL, NULL, '2024-12-12', '2024-12-12', '2024-12-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '37.4219983, -122.084', 4, '2024-12-12 04:12:59', '2024-12-12 04:12:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 36, 'sdfvdsv', '[\"driver\\/Q9RkZwXuGzBUfdnSOO079GgIeaJwPw5RZ9VxwsXL.jpg\"]', '[\"driving_licence\\/cfY8235Ijpf8v0smXo2jJurLF6UvMzFEY3qycFPT.jpg\"]', '[\"rc\\/xWMwC0Y6CQCpQZW9jHqb62AtlYEk2qYg55M2FdAT.jpg\"]', '[\"aadhaar\\/kRsl27Eqlh407U1ApMxHsJuNJATfykM5jq6CZaAA.jpg\"]', NULL, NULL, NULL, NULL, NULL, '2024-12-12', '2024-12-12', '2024-12-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '37.4219983, -122.084', 4, '2024-12-12 04:13:30', '2024-12-12 04:13:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 36, 'sdfvdsv', '[\"driver\\/nfLNvJVTu0cdvmoMOBRWVbh3FcHGTir1ekGuM6Wq.jpg\"]', '[\"driving_licence\\/YU4zygxm5pOMx9b7RxJ38AUNIZJq3p8KhPhw5yps.jpg\"]', '[\"rc\\/MpRIoviXtBoQCVmv1pMJnZh9fH37ofKL27LC70eh.jpg\"]', '[\"aadhaar\\/IUBpu9Rfch3bnE0psEqG1bmsNw31OkaB4ubolHSG.jpg\"]', NULL, NULL, NULL, NULL, NULL, '2024-12-12', '2024-12-12', '2024-12-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '37.4219983, -122.084', 4, '2024-12-12 04:22:15', '2024-12-12 04:22:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 36, 'sdfvdsv', '[\"driver\\/Eqs8hj5JPOa4VqPVriQQU76nu6Km0asWXosbjbPy.jpg\"]', '[\"driving_licence\\/dB5pGBSHwQAogIt5FWQCcS6XHXWHu2QFThaha81g.jpg\"]', '[\"rc\\/MNqWKQ4gCEnoWA6ciLkfjAeW75UTVc9Z96FACSf5.jpg\"]', '[\"aadhaar\\/9Fe2yP8ALR9KXgJwbVKNzOGOaeWexvQk31O08Yj9.jpg\"]', NULL, NULL, NULL, NULL, NULL, '2024-12-12', '2024-12-12', '2024-12-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '37.4219983, -122.084', 4, '2024-12-12 04:22:29', '2024-12-12 04:22:29', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 36, 'sdfvdsv', '[\"driver\\/3ziLPJKk5dTQ8DION36WNze3nPEiTLcHmT4GpGMq.jpg\"]', '[\"driving_licence\\/LJBtyK1yawxwV5smoR4ht8vmhbxIZRRX5b5kSQTh.jpg\"]', '[\"rc\\/FhoXPx0jweQ4CSK538uML8wHTTStMiKkwAjgqX1t.jpg\"]', '[\"aadhaar\\/wN7m9xEm2hVK3kYOIIlnpi1zLpeFDN3vEJ3dxJ61.jpg\"]', NULL, NULL, NULL, NULL, NULL, '2024-12-12', '2024-12-12', '2024-12-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '37.4219983, -122.084', 4, '2024-12-12 04:22:44', '2024-12-12 04:22:44', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 36, 'sdfvdsv', '[\"driver\\/oVJqWaQNEOkXzZWfo5pmEsDA79sAa0udbcsA5maZ.jpg\"]', '[\"driving_licence\\/ZcDUlpzBYS2nb6SGcBMhpdnEqBLNB510gh3IifsY.jpg\"]', '[\"rc\\/Wrr1XpTgwoToM8F0SBzdj1atqHxG0h4rwj9AVnOf.jpg\"]', '[\"aadhaar\\/cwCovdldfuxVRFQpzdrvqMjzbPsxv7FnTvTfn1HX.jpg\"]', NULL, NULL, NULL, NULL, NULL, '2024-12-12', '2024-12-12', '2024-12-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '37.4219983, -122.084', 4, '2024-12-12 04:24:23', '2024-12-12 04:24:23', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 36, 'sdfvdsv', '[\"driver\\/1NrM6FzzyLfCQKFBn6vh6wPqWZSCRhbZiqrQaOzT.jpg\"]', '[\"driving_licence\\/l5Azwsnd4jckG0W8KqK5SCGnH2JQUE3Do9giEzlJ.jpg\"]', '[\"rc\\/Efg1oAzxdD0R0zljOInwtGT17Nu6QK055M4Czqtc.jpg\"]', '[\"aadhaar\\/BnG8OZMsNtVNtQLubAX3Zjp7lhHvnU61cgIq80Kk.jpg\"]', NULL, NULL, NULL, NULL, NULL, '2024-12-12', '2024-12-12', '2024-12-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '37.4219983, -122.084', 4, '2024-12-12 04:25:18', '2024-12-12 04:25:18', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 36, 'sdfvdsv', '[\"driver\\/oXk6duYQnFOXdsaNDSWXIj5xYi32kckFGP4VR5dL.jpg\"]', '[\"driving_licence\\/bfggYqdNeupjeQPecFwYwe9doZzG2vDFpEkcXedl.jpg\"]', '[\"rc\\/qHaeSrUAfGgPhnE4BqTMLFQGZT858VawgG4eYGys.jpg\"]', '[\"aadhaar\\/uxlbmLPqZLcHeerg1LMeT89HlFquL1hImljytvaa.jpg\"]', NULL, NULL, NULL, NULL, NULL, '2024-12-12', '2024-12-12', '2024-12-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '37.4219983, -122.084', 4, '2024-12-12 04:25:30', '2024-12-12 04:25:30', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 36, 'fvsdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-12', '2024-12-12', '2024-12-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '2024-12-12 04:25:56', '2024-12-12 04:25:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 36, 'sds', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-12', '2024-12-12', '2024-12-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '2024-12-12 04:26:50', '2024-12-12 04:26:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 36, 'sds', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-12', '2024-12-12', '2024-11-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '2024-12-12 04:33:28', '2024-12-12 04:33:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `driver_data` (`id`, `assign_work_id`, `driver_name`, `driver_image`, `driving_licence_images`, `rc_images`, `driver_aadhaar_card_images`, `driver_voice`, `co_passenger_dl`, `co_passenger_aadhar`, `vehical_type`, `vehicle_permit`, `rc_reg_date`, `rc_exp_date`, `dl_exp_date`, `ration_card`, `video_call`, `assets_pic`, `rider_version_accident`, `dl_and_rto`, `others`, `seating_capacity`, `driver_downloads`, `sp_case`, `vehicle_authorized_drive`, `latitude_and_longitude`, `executive_id`, `created_at`, `updated_at`, `location`, `opp_vehicle_insurer`, `opp_vehicle_reg_no`, `opp_vehicle_made_make`, `opp_insured_name`, `opp_insured_policy_no`, `opp_party_insurance_start_date`, `opp_party_insurance_end_date`, `addres_opp_party`, `opp_rc_transfered_to`, `opp_rc_transfered_date`, `owner_rc_transfered_to`, `owner_rc_transfered_date`, `opp_vehicle_seating_capacity`, `opp_vehicle_eng_no`, `opp_vehicle_chassis_no`, `owner_permit_no`, `opp_party_permit_no`, `owner_authorized_state`, `opp_party_authorized_state`, `owner_permit_period_validity`, `opp_party_permit_period_validity`, `owner_permit_verified`, `opp_party_permit_verified`, `what_is_garage_badge_namedd`, `driver_age`, `driver_dob`, `badge_val_from`, `badge_val_to`, `gggggggggggggggdf`) VALUES
(54, 36, 'sds', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-12', '2024-12-12', '1000-10-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '2024-12-12 04:35:48', '2024-12-12 04:35:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 36, 'sds', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-12', '2024-12-12', '2001-10-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '2024-12-12 04:36:26', '2024-12-12 04:36:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 36, 'sdfvdsv', '[\"driver\\/VOOrGEpgHpHC3aAKxG5wCFg1OauHNFCDl1Y6Mpgu.jpg\"]', '[\"driving_licence\\/o9JQsLiaHQIsa3d1FBq0ZBjkJjSe7tuewnbLvBjh.jpg\"]', '[\"rc\\/Vdq0z9d9bqQxtCjAwmQ8kRdBAztWyroZF9PD3jD7.jpg\"]', '[\"aadhaar\\/0D5A65tsYfTaiBqZrUBXDmudqLVoEkXFKXjVBAVf.jpg\"]', NULL, NULL, NULL, NULL, NULL, '2024-12-12', '2024-12-12', '2024-12-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '37.4219983, -122.084', 4, '2024-12-12 04:39:37', '2024-12-12 04:39:37', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 36, 'sdfvdsv', '[\"driver\\/zGQvFBJTgmidFKRzp4ZkEJ6wgQvNdCih9HP6mani.jpg\"]', '[\"driving_licence\\/uM4ZaX4oZ8ZliFT9YzSK1fTdkyzA2g7J2UG4NReX.jpg\"]', '[\"rc\\/5qQoSKZuzE7tz8TgskKdf2YaQLwlncoIQjixj98a.jpg\"]', '[\"aadhaar\\/CCaowVXcsgBX3s10DFbzsoXEtOKZAXmWFHNnNG9H.jpg\"]', NULL, NULL, NULL, NULL, NULL, '2024-12-12', '2024-12-12', '2024-12-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '37.4219983, -122.084', 4, '2024-12-12 04:40:03', '2024-12-12 04:40:03', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 36, 'sdfvdsv', '[\"driver\\/iDytYq2Uj7qyvephaWuSZGBthfvBQvKGLulVXqaM.jpg\"]', '[\"driving_licence\\/jYYeehNg8Sm5rsQcovZyCgvQV2DomehuyWCqnhsg.jpg\"]', '[\"rc\\/eTDWFWLL4DB7ILdiGZUGtE6tpwHvOHBpR9X6f8c2.jpg\"]', '[\"aadhaar\\/CVGUsII9BX9v5mGWrFtj2xdPSawm0xKtb6yTDpfW.jpg\"]', NULL, NULL, NULL, NULL, NULL, '2024-12-12', '2024-12-12', '2024-12-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '37.4219983, -122.084', 4, '2024-12-12 04:54:29', '2024-12-12 04:54:29', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 36, 'sdfvdsv', '[\"driver\\/o5Eok9nHfl5hfXx3m8jAddae2ayOlv1lu4lHpHah.jpg\"]', '[\"driving_licence\\/Zhqn5tiid8YWagjBR58cccXcco8hr1izaqIT9dUJ.jpg\"]', '[\"rc\\/fW7cSMKNDXXW3qg9JH0r0ZgmoxwoOAYskRyN43YO.jpg\"]', '[\"aadhaar\\/2GRNRsFQkXuQg9iEsZeG80QFmvJY9VXgDWe0eOgJ.jpg\"]', NULL, NULL, NULL, NULL, NULL, '2024-12-12', '2024-12-12', '2024-12-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '37.4219983, -122.084', 4, '2024-12-12 04:54:50', '2024-12-12 04:54:50', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 36, 'ddddd', '[\"driver\\/9JOcPLNUwKLJoyDDGKxOxbyN6GGpL0lhXZs1WC6k.jpg\"]', '[\"driving_licence\\/Y2e6g1PbCtrvVdYeyACXT7yF2J0biosTMhnYIO3r.jpg\"]', '[\"rc\\/m0dMN5Nl7WCP5AWCDmH4ChLm6ml50okxl6pVXBoe.jpg\"]', '[\"aadhaar\\/FtX5INipOlWeqtKQfx44BniGNaiSKUdrcUzHzSiE.jpg\"]', NULL, NULL, NULL, NULL, NULL, '2024-12-12', '2024-12-12', '2024-12-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '37.4219983, -122.084', 4, '2024-12-12 04:57:37', '2024-12-12 04:57:37', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 36, 'dsvds', '[\"driver\\/S72nN1djWhOc8esq0lTpNnXu5kNZHinlAxLqU43Y.jpg\"]', '[\"driving_licence\\/6dTntza0dC1nXde18baeAYS0NgqHcMpKLbtewyIF.jpg\"]', '[\"rc\\/EWIv4xXo4E9pXjvbc7YJVzOfhEISKqZpiSOQRTy7.jpg\"]', '[\"aadhaar\\/heEIszNZnPbrd2rU8UBgUcgbBvJOWvO3iGhMbUH5.jpg\"]', NULL, NULL, NULL, NULL, NULL, '2024-12-12', '2024-12-12', '2024-12-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '37.4219983, -122.084', 4, '2024-12-12 04:58:57', '2024-12-12 04:58:57', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 65, 'driver1333', '[\"driver\\/ht5P12aK75bmfEUy1iaQoKAkJMJeMaUfdTHrYFnm.jpg\"]', '[\"driving_licence\\/HMxFQSLf4RUL0tl8KUs0HWy7v8MR9ovVaY3gwCoS.jpg\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-05', '2025-07-05', '2025-07-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25, '2025-07-05 06:15:12', '2025-07-05 06:15:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 66, 'driver786', '[\"driver\\/IyCCvzOrpwhmJavKeLD7AMGj894JmPmYKNSbMUCo.jpg\"]', NULL, NULL, '[\"driver_aadhaar\\/5sEB26cmvR3GNC427lXAqrfqqW13DIyVqXZIVI6g.jpg\"]', NULL, '[\"co_passenger_dl\\/dAp2KHQ6Z1wu29JaUiIkvNCb2Fb1UIVdj5XGIkSR.jpg\"]', '[\"co_passernger_aadhar\\/ZTwv9QrYoAIap4xRy1EfmbpZ0e2Ts6j2RvGmiPb9.jpg\"]', 'LMv', '[\"vehicle_permit\\/4DTYZU1PIxoIrNyikJgQ50YufcoHy4RReKkhHHqc.jpg\"]', '2025-07-07', '2025-07-07', '2025-07-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '120.45,115.77', 25, '2025-07-07 06:09:00', '2025-07-07 06:09:00', 'feroke12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
-- Table structure for table `fields`
--

CREATE TABLE `fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `type` text NOT NULL,
  `validation` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `final_reports`
--

CREATE TABLE `final_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ad_id` bigint(20) UNSIGNED DEFAULT NULL,
  `gd_id` bigint(20) UNSIGNED DEFAULT NULL,
  `dd_id` bigint(20) UNSIGNED DEFAULT NULL,
  `od_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sd_id` bigint(20) UNSIGNED DEFAULT NULL,
  `case_id` bigint(20) UNSIGNED DEFAULT NULL,
  `selected_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`selected_images`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `final_reports`
--

INSERT INTO `final_reports` (`id`, `ad_id`, `gd_id`, `dd_id`, `od_id`, `sd_id`, `case_id`, `selected_images`, `created_at`, `updated_at`) VALUES
(1, 49, 13, 8, 9, 15, 46, '[\"garage_gate_entry\\/7dd3DkzkIakfMD3jZpLVrhkxernCKsEbCD1plfYo.jpg\",\"garage_job_card\\/uQLX6psIDBHyu4WIxrj3rEOpKp3v9Lz8TDW6pi5T.jpg\",\"vehicle\\/MvABeoVSCiGtWwRymf7xwYYscoHeFgOvIjhmc4NQ.jpg\",\"vehicle\\/tUgXvcqa7g4rugN3AbxN7O88FhIthMUWI5SM5jDm.jpg\",\"driver\\/V32xU33csweJ24MSIi3pNYa3ixdPifFfzgdnku7Y.jpg\",\"driver\\/5lw6dlkv8SKTyW938LlvV9a4bDCTm1A4xITTkJMu.jpg\",\"driving_licence\\/YAlltSTj6cS7lWASBmJJD1TUHXq0TaWugA8HIKfk.jpg\",\"rc\\/F5X7uqvPENOmts3a5uZYlnkcKUhTjuvnwqpSncFA.jpg\",\"aadhaar\\/NmnMkkuRjbN1cluIBBeYc8idJOT20dAfXcyv8dAA.jpg\",\"spot\\/WhsU1XULhfbBFuw0bZzeEM5lbGlKp98ciC6W3hla.jpg\",\"written_statement\\/N7G87T6lH93pjpUkvQuNPUA7I6lweiOQlP2aq096.jpg\",\"aadhaar\\/d3d0g6RA8gyjdvQuQJyvPpNfnpSbums7DKwzBM86.jpg\"]', '2024-12-16 23:51:40', '2024-12-18 02:15:05'),
(2, 37, 5, 3, NULL, 6, 41, '[\"garage_gate_entry\\/UHYLOHEIFXNfVT72L40hDBRHRBc4FgfozZZ27Xl2.jpg\",\"garage_job_card\\/v1zF7iQ8w8hmbBoLo91EQy9GnF5CGeUoyturvgpe.jpg\",\"vehicle\\/KsaQA32pEnITATZ5O1GWCJXnWHFXnmmdHPl9iJ00.jpg\"]', '2024-12-16 23:57:47', '2025-01-14 05:23:27'),
(3, 11, 30, 59, 22, NULL, 45, '[\"garage_gate_entry\\/355DZoJQnWAZoBFmHfBgVvHi4NQLkaLEmVl9LjEx.jpg\",\"garage_job_card\\/SI1kwvqey1Lr2gthVbHc59foyUEMyikWbtAQrvg9.jpg\",\"vehicle\\/nRHR1BESxOjixjxqAx13IQLyu9O4CC9vCP6k0Fnu.jpg\",\"driver\\/UGNpK7W97z1YwlDtKdQ6jco5V8rsaReO7ahQ6scU.jpg\",\"driving_licence\\/xl9IiQeyq9P34S8qr2H675JttmulDuGQArlxmB7r.jpg\"]', '2024-12-16 23:58:09', '2024-12-18 01:09:34'),
(4, 15, 14, 10, 10, 16, 48, '[\"tow_vehicle\\/2xXbXpxSgBhHp0XgFCcS4lA9612BbiBXgnzD4atY.jpg\"]', '2024-12-17 00:04:33', '2024-12-17 05:40:53'),
(5, NULL, 11, 6, NULL, 11, 44, '[\"garage_gate_entry\\/isFSHCKCu1Dq7tmWcyZ2BjLBDLYSkaLnnNNdRePT.jpg\",\"garage_job_card\\/obZXhv1nxSSJl4AjevGMFtdhtg7O98mDs0B7xCvY.jpg\",\"vehicle\\/LQPBfFN5cKAQR03jBuURaLA2uQQz9vWU7Av2BbPz.jpg\",\"driver\\/ZjWTi9FlseJ91aH2EtA9PbUcEzfQIw14pgANHdf7.jpg\",\"driving_licence\\/DACxjFx0gg4HsnxwtmOOV0barL2HtChk3Ovp9AwL.jpg\",\"aadhaar\\/b8WEDa022qm2VrrAEtUh2YP8Afb8YjwDk4Pthjcy.jpg\",\"driver\\/hbNOGog4C4EjxOIBoIiH0M5YuQBHxy5g7KAzw9sr.jpg\"]', '2024-12-17 03:39:38', '2024-12-17 03:40:28'),
(6, 18, 17, 13, 13, 20, 51, '[\"garage_gate_entry\\/Ait8mtDSrKXRpVteYVN0BPYE4pJBYAiHoY5SUZOi.jpg\",\"garage_gate_entry\\/cb76biY5NhQn1HolpHW8hojNhgDq9KZMAXoEjATM.jpg\",\"garage_job_card\\/XW4R7gVKhIKerHgEUFzzCVs9vZhlFtIpcQvRjmxg.jpg\",\"vehicle\\/S7wo4FkzULmAIJHpLkHMcS12jst7LPQ8QGUttGIl.jpg\",\"driver\\/LnLGgqqaY7RxP9LUeNxnC670UCMGYo6kq8MhpZtI.jpg\",\"driving_licence\\/MvpNw6avmxn69lSRDS6n0dvS8zhkG5bDdOJBuDBq.jpg\",\"driving_licence\\/hv8xGaBtAVoctV7a0JsfiaYhY6ahqmF0m7UnZLc7.jpg\",\"rc\\/zHlI1E4RNCzNSVTbRt4bXkiNjtXeV0rVbUhwg1Re.jpg\",\"spot\\/v9MDJWnixrWj2q0IsWbuemTGaV6kDrBI3LvVVUaB.jpg\",\"written_statement\\/RXT74CQh6g9bCxGE4uQ1cyKDmaYzTC4VVFtCpU2n.jpg\",\"written_statement\\/GK7beun4BwLGR5USar3JjlW35WqIzphKFHlYJ5hP.jpg\",\"written_statement\\/pM1cs5Wa2I1bx2AfFwBMUp15JVxkarciMJDA5V0M.jpg\",\"aadhaar\\/iQfIh0VdrBEMe8M5ee1TwLcU3VeZwiMAQhjO04dp.jpg\",\"aadhaar\\/YfCHLo2BQSWcWRcjWNWJamQ2EGorvHvqIqFonoq1.jpg\",\"aadhaar\\/GJeBXHkMN9IG4l26FGBQWmchiX6IZMfRA9afvdNL.jpg\",\"aadhaar\\/4m1kgK1rZ7Edc2KTkWiPqhc3cPRpCiSl9AHq034R.jpg\"]', '2024-12-17 04:25:36', '2024-12-17 04:28:28'),
(7, NULL, 29, 5, 6, NULL, 42, '[\"garage_gate_entry\\/AcJ1w8ZK7nO5hSnK2T9FYMh3kiXhiY6zIuE5oRwI.jpg\",\"garage_job_card\\/obla3lU0c3kX8ZFhF7QhPXhucXrP4SLF2RNRm8Sp.jpg\",\"vehicle\\/8nwRFuoQOVJqrfC6io3PeizeM2Yroqx06WG3HlQs.jpg\",\"driver\\/E14ENrsVzc8PNFOwhgWse39yqF2R29YneOnNkWUd.jpg\",\"driving_licence\\/BGufVlMqSrscusC9XNQwuw6QK1GhUyNqlLuYXfyj.jpg\",\"rc\\/jCpahrrImce6sW4HBFNwaCcMMLUxPpld43Bc688F.jpg\",\"aadhaar\\/ZWnHVggEwkYZlyGeyGBEHMfNoiBvDR53zUlV65Cb.jpg\",\"written_statement\\/54rX0bfdjsAmuwWkUZd6sG3Q8xuMaOE1pvfRSShc.jpg\"]', '2024-12-17 05:42:06', '2024-12-17 05:42:43'),
(8, 55, NULL, NULL, NULL, 45, 69, '[\"spot\\/JD1mHYKlPYLlexx2Hub9Pg1RBDLy5GoJE9VtKlmL.jpg\"]', '2024-12-18 00:54:19', '2025-01-09 01:43:54'),
(9, 4, 7, 4, 5, 8, 43, '[\"garage_gate_entry\\/ye1s7DwOLmhZll6XRRCuSYs2PllSLaFwAubd8K4B.jpg\",\"garage_job_card\\/Vrd3An38xhg9217K42L3W9jMISOxapuZnnPPBQW8.jpg\",\"driver\\/tdPj3xmPZUW9JpGtYhOTOxIADizFOnOw1fBr4Zn1.jpg\",\"driving_licence\\/vgwx9OYc08KntoRsQ4FFi0nCPyefYxLR3LxQJD22.jpg\",\"rc\\/2EH5YxrY6AYuRozwzMrzFpiRmsmPutOQx1PScK3Z.jpg\",\"aadhaar\\/vbQxlg72D7O9kfb7BmgilVX8xCy7aZQL1rweQDqj.jpg\",\"spot\\/RSc9zhVr44EuZHARoOJbrsRoM1a9n7aGY2EfdJfE.jpg\",\"written_statement\\/jakjCiSu7aCt3cJjWx8esgEsWtf2xf350vUA9Rbe.jpg\",\"aadhaar\\/Hjiw5s8mIMCH7DX0lWUuujGbJ22MsCuLWQLmPvlV.jpg\",\"accident_person\\/n3vqWBU3tdvSeTcto07yELF89J0sDZfQAiAMo8Vn.jpg\",\"aadhaar\\/T2OxjPC1at5IFKpO8yoKBn3fwQeV0uvDSQz0eQiM.jpg\",\"written_statement\\/olLtKIy4deIQdcmx8352yJKUKb3QU2F0PS9dk02r.jpg\"]', '2024-12-18 01:27:38', '2025-01-07 02:25:41'),
(10, NULL, 33, NULL, NULL, NULL, 80, '[\"tow_vehicle\\/X1aioUMZGxtZwjcBtFpOjw1L6LAwlffsM1ziqJDR.jpg\"]', '2025-07-02 03:44:52', '2025-07-07 05:52:02'),
(11, NULL, NULL, 62, NULL, NULL, 82, '[\"driver\\/ht5P12aK75bmfEUy1iaQoKAkJMJeMaUfdTHrYFnm.jpg\"]', '2025-07-05 06:15:56', '2025-07-05 06:16:00'),
(12, NULL, NULL, 63, NULL, 59, 84, '[\"spot\\/DgM8thRU1KR8q8hdH49AvqTl57Vaco5FGtOn27gF.jpg\"]', '2025-07-07 05:48:59', '2025-07-07 06:09:53');

-- --------------------------------------------------------

--
-- Table structure for table `final_reports_new`
--

CREATE TABLE `final_reports_new` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ad_id` bigint(20) UNSIGNED DEFAULT NULL,
  `gd_id` bigint(20) UNSIGNED DEFAULT NULL,
  `dd_id` bigint(20) UNSIGNED DEFAULT NULL,
  `od_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sd_id` bigint(20) UNSIGNED DEFAULT NULL,
  `case_id` bigint(20) UNSIGNED DEFAULT NULL,
  `selected_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`selected_images`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `final_reports_new`
--

INSERT INTO `final_reports_new` (`id`, `ad_id`, `gd_id`, `dd_id`, `od_id`, `sd_id`, `case_id`, `selected_images`, `created_at`, `updated_at`) VALUES
(1, 49, 13, 8, 9, 15, 46, '[\"garage_gate_entry\\/7dd3DkzkIakfMD3jZpLVrhkxernCKsEbCD1plfYo.jpg\",\"garage_job_card\\/uQLX6psIDBHyu4WIxrj3rEOpKp3v9Lz8TDW6pi5T.jpg\",\"vehicle\\/MvABeoVSCiGtWwRymf7xwYYscoHeFgOvIjhmc4NQ.jpg\",\"vehicle\\/tUgXvcqa7g4rugN3AbxN7O88FhIthMUWI5SM5jDm.jpg\",\"driver\\/V32xU33csweJ24MSIi3pNYa3ixdPifFfzgdnku7Y.jpg\",\"driver\\/5lw6dlkv8SKTyW938LlvV9a4bDCTm1A4xITTkJMu.jpg\",\"driving_licence\\/YAlltSTj6cS7lWASBmJJD1TUHXq0TaWugA8HIKfk.jpg\",\"rc\\/F5X7uqvPENOmts3a5uZYlnkcKUhTjuvnwqpSncFA.jpg\",\"aadhaar\\/NmnMkkuRjbN1cluIBBeYc8idJOT20dAfXcyv8dAA.jpg\",\"spot\\/WhsU1XULhfbBFuw0bZzeEM5lbGlKp98ciC6W3hla.jpg\",\"written_statement\\/N7G87T6lH93pjpUkvQuNPUA7I6lweiOQlP2aq096.jpg\",\"aadhaar\\/d3d0g6RA8gyjdvQuQJyvPpNfnpSbums7DKwzBM86.jpg\"]', '2024-12-16 23:51:40', '2024-12-18 02:15:05'),
(2, 37, 5, 3, NULL, 6, 41, '[\"garage_gate_entry\\/UHYLOHEIFXNfVT72L40hDBRHRBc4FgfozZZ27Xl2.jpg\",\"garage_job_card\\/v1zF7iQ8w8hmbBoLo91EQy9GnF5CGeUoyturvgpe.jpg\",\"vehicle\\/KsaQA32pEnITATZ5O1GWCJXnWHFXnmmdHPl9iJ00.jpg\"]', '2024-12-16 23:57:47', '2025-01-14 05:23:27'),
(3, 11, 30, 59, 22, NULL, 45, '[\"garage_gate_entry\\/355DZoJQnWAZoBFmHfBgVvHi4NQLkaLEmVl9LjEx.jpg\",\"garage_job_card\\/SI1kwvqey1Lr2gthVbHc59foyUEMyikWbtAQrvg9.jpg\",\"vehicle\\/nRHR1BESxOjixjxqAx13IQLyu9O4CC9vCP6k0Fnu.jpg\",\"driver\\/UGNpK7W97z1YwlDtKdQ6jco5V8rsaReO7ahQ6scU.jpg\",\"driving_licence\\/xl9IiQeyq9P34S8qr2H675JttmulDuGQArlxmB7r.jpg\"]', '2024-12-16 23:58:09', '2024-12-18 01:09:34'),
(4, 15, 14, 10, 10, 16, 48, '[\"tow_vehicle\\/2xXbXpxSgBhHp0XgFCcS4lA9612BbiBXgnzD4atY.jpg\"]', '2024-12-17 00:04:33', '2024-12-17 05:40:53'),
(5, NULL, 11, 6, NULL, 11, 44, '[\"garage_gate_entry\\/isFSHCKCu1Dq7tmWcyZ2BjLBDLYSkaLnnNNdRePT.jpg\",\"garage_job_card\\/obZXhv1nxSSJl4AjevGMFtdhtg7O98mDs0B7xCvY.jpg\",\"vehicle\\/LQPBfFN5cKAQR03jBuURaLA2uQQz9vWU7Av2BbPz.jpg\",\"driver\\/ZjWTi9FlseJ91aH2EtA9PbUcEzfQIw14pgANHdf7.jpg\",\"driving_licence\\/DACxjFx0gg4HsnxwtmOOV0barL2HtChk3Ovp9AwL.jpg\",\"aadhaar\\/b8WEDa022qm2VrrAEtUh2YP8Afb8YjwDk4Pthjcy.jpg\",\"driver\\/hbNOGog4C4EjxOIBoIiH0M5YuQBHxy5g7KAzw9sr.jpg\"]', '2024-12-17 03:39:38', '2024-12-17 03:40:28'),
(6, 18, 17, 13, 13, 20, 51, '[\"garage_gate_entry\\/Ait8mtDSrKXRpVteYVN0BPYE4pJBYAiHoY5SUZOi.jpg\",\"garage_gate_entry\\/cb76biY5NhQn1HolpHW8hojNhgDq9KZMAXoEjATM.jpg\",\"garage_job_card\\/XW4R7gVKhIKerHgEUFzzCVs9vZhlFtIpcQvRjmxg.jpg\",\"vehicle\\/S7wo4FkzULmAIJHpLkHMcS12jst7LPQ8QGUttGIl.jpg\",\"driver\\/LnLGgqqaY7RxP9LUeNxnC670UCMGYo6kq8MhpZtI.jpg\",\"driving_licence\\/MvpNw6avmxn69lSRDS6n0dvS8zhkG5bDdOJBuDBq.jpg\",\"driving_licence\\/hv8xGaBtAVoctV7a0JsfiaYhY6ahqmF0m7UnZLc7.jpg\",\"rc\\/zHlI1E4RNCzNSVTbRt4bXkiNjtXeV0rVbUhwg1Re.jpg\",\"spot\\/v9MDJWnixrWj2q0IsWbuemTGaV6kDrBI3LvVVUaB.jpg\",\"written_statement\\/RXT74CQh6g9bCxGE4uQ1cyKDmaYzTC4VVFtCpU2n.jpg\",\"written_statement\\/GK7beun4BwLGR5USar3JjlW35WqIzphKFHlYJ5hP.jpg\",\"written_statement\\/pM1cs5Wa2I1bx2AfFwBMUp15JVxkarciMJDA5V0M.jpg\",\"aadhaar\\/iQfIh0VdrBEMe8M5ee1TwLcU3VeZwiMAQhjO04dp.jpg\",\"aadhaar\\/YfCHLo2BQSWcWRcjWNWJamQ2EGorvHvqIqFonoq1.jpg\",\"aadhaar\\/GJeBXHkMN9IG4l26FGBQWmchiX6IZMfRA9afvdNL.jpg\",\"aadhaar\\/4m1kgK1rZ7Edc2KTkWiPqhc3cPRpCiSl9AHq034R.jpg\"]', '2024-12-17 04:25:36', '2024-12-17 04:28:28'),
(7, NULL, 29, 5, 6, NULL, 42, '[\"garage_gate_entry\\/AcJ1w8ZK7nO5hSnK2T9FYMh3kiXhiY6zIuE5oRwI.jpg\",\"garage_job_card\\/obla3lU0c3kX8ZFhF7QhPXhucXrP4SLF2RNRm8Sp.jpg\",\"vehicle\\/8nwRFuoQOVJqrfC6io3PeizeM2Yroqx06WG3HlQs.jpg\",\"driver\\/E14ENrsVzc8PNFOwhgWse39yqF2R29YneOnNkWUd.jpg\",\"driving_licence\\/BGufVlMqSrscusC9XNQwuw6QK1GhUyNqlLuYXfyj.jpg\",\"rc\\/jCpahrrImce6sW4HBFNwaCcMMLUxPpld43Bc688F.jpg\",\"aadhaar\\/ZWnHVggEwkYZlyGeyGBEHMfNoiBvDR53zUlV65Cb.jpg\",\"written_statement\\/54rX0bfdjsAmuwWkUZd6sG3Q8xuMaOE1pvfRSShc.jpg\"]', '2024-12-17 05:42:06', '2024-12-17 05:42:43'),
(8, 55, NULL, NULL, NULL, 45, 69, '[\"spot\\/JD1mHYKlPYLlexx2Hub9Pg1RBDLy5GoJE9VtKlmL.jpg\"]', '2024-12-18 00:54:19', '2025-01-09 01:43:54'),
(9, 4, 7, 4, 5, 8, 43, '[\"garage_gate_entry\\/ye1s7DwOLmhZll6XRRCuSYs2PllSLaFwAubd8K4B.jpg\",\"garage_job_card\\/Vrd3An38xhg9217K42L3W9jMISOxapuZnnPPBQW8.jpg\",\"driver\\/tdPj3xmPZUW9JpGtYhOTOxIADizFOnOw1fBr4Zn1.jpg\",\"driving_licence\\/vgwx9OYc08KntoRsQ4FFi0nCPyefYxLR3LxQJD22.jpg\",\"rc\\/2EH5YxrY6AYuRozwzMrzFpiRmsmPutOQx1PScK3Z.jpg\",\"aadhaar\\/vbQxlg72D7O9kfb7BmgilVX8xCy7aZQL1rweQDqj.jpg\",\"spot\\/RSc9zhVr44EuZHARoOJbrsRoM1a9n7aGY2EfdJfE.jpg\",\"written_statement\\/jakjCiSu7aCt3cJjWx8esgEsWtf2xf350vUA9Rbe.jpg\",\"aadhaar\\/Hjiw5s8mIMCH7DX0lWUuujGbJ22MsCuLWQLmPvlV.jpg\",\"accident_person\\/n3vqWBU3tdvSeTcto07yELF89J0sDZfQAiAMo8Vn.jpg\",\"aadhaar\\/T2OxjPC1at5IFKpO8yoKBn3fwQeV0uvDSQz0eQiM.jpg\",\"written_statement\\/olLtKIy4deIQdcmx8352yJKUKb3QU2F0PS9dk02r.jpg\"]', '2024-12-18 01:27:38', '2025-01-07 02:25:41'),
(10, NULL, 33, NULL, NULL, NULL, 80, '[\"tow_vehicle\\/X1aioUMZGxtZwjcBtFpOjw1L6LAwlffsM1ziqJDR.jpg\"]', '2025-07-02 03:44:52', '2025-07-07 05:52:02'),
(11, NULL, NULL, 62, NULL, NULL, 82, '[\"driver\\/ht5P12aK75bmfEUy1iaQoKAkJMJeMaUfdTHrYFnm.jpg\"]', '2025-07-05 06:15:56', '2025-07-05 06:16:00'),
(12, NULL, NULL, 63, NULL, 59, 84, '[\"spot\\/DgM8thRU1KR8q8hdH49AvqTl57Vaco5FGtOn27gF.jpg\"]', '2025-07-07 05:48:59', '2025-07-07 06:09:53');

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
  `tow_vehical_report` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`tow_vehical_report`)),
  `latitude_and_longitude` varchar(255) DEFAULT NULL,
  `executive_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `garage_downloads` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`garage_downloads`)),
  `is_fitness_particular_collected` tinyint(1) NOT NULL DEFAULT 0,
  `is_permit_particular_collected` tinyint(1) NOT NULL DEFAULT 0,
  `is_dl_particular_collected` tinyint(1) NOT NULL DEFAULT 0,
  `is_any_motor_occurance` tinyint(1) NOT NULL DEFAULT 0,
  `no_vehicle_involved_acident` int(11) DEFAULT NULL,
  `damage_consist_with_accident` text DEFAULT NULL,
  `victim_occupant_or_pillion` varchar(255) DEFAULT NULL,
  `victim_employee_insured` varchar(255) DEFAULT NULL,
  `victim_owner_or_employee` varchar(255) DEFAULT NULL,
  `victim_travel_on_load_body` varchar(255) DEFAULT NULL,
  `vehicle_involve_other_accident` tinyint(1) DEFAULT 0,
  `gross_vehicle_weight` decimal(10,2) DEFAULT NULL,
  `date_vehicle_reg` date DEFAULT NULL,
  `vehicle_reg_validity` date DEFAULT NULL,
  `issuing_authority_vehicle` varchar(255) DEFAULT NULL,
  `fitness_validity_opposite_vehicle` date DEFAULT NULL,
  `fitness_validity_vehicle` date DEFAULT NULL,
  `permit_no_vehicle` varchar(255) DEFAULT NULL,
  `permit_no_opposit_vehicle` varchar(255) DEFAULT NULL,
  `issuing_authority__opposite_vehicle` varchar(255) DEFAULT NULL,
  `type_permit_vehicle` varchar(255) DEFAULT NULL,
  `type_permit_opposite_vehicle` varchar(255) DEFAULT NULL,
  `authorized_route_vehicle` varchar(255) DEFAULT NULL,
  `authorized_route_opposit_vehicle` varchar(255) DEFAULT NULL,
  `permit_validity_vehicle` date DEFAULT NULL,
  `permit_validity_opposite_vehicle` date DEFAULT NULL,
  `sp_case` int(11) DEFAULT NULL,
  `is_break_in` tinyint(1) DEFAULT NULL,
  `break_in_ins_date` date DEFAULT NULL,
  `odometer_readng_break_in` int(11) DEFAULT NULL,
  `is_any_discre_found_break_in` tinyint(1) DEFAULT NULL,
  `is_accused_elgible_drive` tinyint(1) DEFAULT NULL,
  `travel_from_to` varchar(255) DEFAULT NULL,
  `clue_aout_accident` text DEFAULT NULL,
  `car_scrap_found_on_spot` tinyint(1) DEFAULT NULL,
  `garage_name` varchar(255) DEFAULT NULL,
  `odometer_reading_service_hist` text DEFAULT NULL,
  `tp_vehicle_details` text DEFAULT NULL,
  `is_any_disc_in_garage_entry_job_crd` tinyint(1) DEFAULT NULL,
  `investi_referal_reson_1` text DEFAULT NULL,
  `referal_findings_1` text DEFAULT NULL,
  `investi_referal_rason2` text DEFAULT NULL,
  `referal_findings_2` text DEFAULT NULL,
  `questions11` varchar(255) DEFAULT NULL,
  `questions12` text DEFAULT NULL,
  `what_is_garage_badge_validity_data` date DEFAULT NULL,
  `what_is_the_height_of_tower` varchar(255) DEFAULT NULL,
  `qwssssss` varchar(255) DEFAULT NULL,
  `what_is_garage_badge_namedd` varchar(255) DEFAULT NULL,
  `qest33` varchar(255) DEFAULT NULL,
  `quest34` varchar(255) DEFAULT NULL,
  `gggggggggdfg` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `garage_data`
--

INSERT INTO `garage_data` (`id`, `assign_work_id`, `garage_gate_entry`, `garage_job_card`, `garage_gate_entry_images`, `garage_job_card_images`, `vehicle_images`, `garage_voice`, `tow_vehical_report`, `latitude_and_longitude`, `executive_id`, `created_at`, `updated_at`, `location`, `garage_downloads`, `is_fitness_particular_collected`, `is_permit_particular_collected`, `is_dl_particular_collected`, `is_any_motor_occurance`, `no_vehicle_involved_acident`, `damage_consist_with_accident`, `victim_occupant_or_pillion`, `victim_employee_insured`, `victim_owner_or_employee`, `victim_travel_on_load_body`, `vehicle_involve_other_accident`, `gross_vehicle_weight`, `date_vehicle_reg`, `vehicle_reg_validity`, `issuing_authority_vehicle`, `fitness_validity_opposite_vehicle`, `fitness_validity_vehicle`, `permit_no_vehicle`, `permit_no_opposit_vehicle`, `issuing_authority__opposite_vehicle`, `type_permit_vehicle`, `type_permit_opposite_vehicle`, `authorized_route_vehicle`, `authorized_route_opposit_vehicle`, `permit_validity_vehicle`, `permit_validity_opposite_vehicle`, `sp_case`, `is_break_in`, `break_in_ins_date`, `odometer_readng_break_in`, `is_any_discre_found_break_in`, `is_accused_elgible_drive`, `travel_from_to`, `clue_aout_accident`, `car_scrap_found_on_spot`, `garage_name`, `odometer_reading_service_hist`, `tp_vehicle_details`, `is_any_disc_in_garage_entry_job_crd`, `investi_referal_reson_1`, `referal_findings_1`, `investi_referal_rason2`, `referal_findings_2`, `questions11`, `questions12`, `what_is_garage_badge_validity_data`, `what_is_the_height_of_tower`, `qwssssss`, `what_is_garage_badge_namedd`, `qest33`, `quest34`, `gggggggggdfg`) VALUES
(1, 30, 'God', 'dude', '[\"garage_gate_entry\\/WoyjD7mQYOCKS7CU4HIr8pVHvdNs5q6omwupKV4H.jpg\"]', '[\"garage_job_card\\/iOngzGt4j0do2u1A9elcwHS1DLXXU8Ws0ITyppL1.jpg\"]', '[\"vehicle\\/JHNzt1qY1IM7pBFLhsTPm20dyQnhQ48A8u4YoGZo.jpg\"]', '[\"voice\\/MjeZAUf0VPwDOON2oQdTmmZSRK9XENaXCZg5lGIr.aac\"]', NULL, NULL, 18, '2024-10-18 05:36:19', '2024-12-12 01:58:04', NULL, '[\"garage_downloads\\/60xjLCfCxopO0kB9zdddjKfnoirF36x1A4Ox086b.jpg\",\"garage_downloads\\/4OkswGq4yjHWkwKJpTWT5jDrp0F8t1JzGtkcr9ug.aac\"]', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 30, 'God', 'dude', '[\"garage_gate_entry\\/kn66oDyya2AInDUYV7DxVCvEc4Rws4BjZ042yG55.jpg\"]', '[\"garage_job_card\\/NVxUw8NK7B9fVThFiT1bQcCSBYIIJ9zr2T2puqPh.jpg\"]', '[\"vehicle\\/z2t8ODYGZJzAYN4tmjUWXGAvDETv8PWgAiAwD8ow.jpg\"]', '[\"voice\\/E6PSstPoUF0INOb8aOGpGOFO14Dbsao2ikvI2Ijx.aac\"]', NULL, NULL, 18, '2024-10-18 05:41:21', '2024-10-18 05:41:21', NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 31, 'sub', 'Shawn', '[\"garage_gate_entry\\/AAErpLMoB6TGl9U8fgfiGEx710uDR8Y7ieBoQD73.jpg\"]', '[\"garage_job_card\\/t8ZihJ7HHeBtOo5KtRQgVKHEb4BuSD4V01iKRfcp.jpg\"]', '[\"vehicle\\/vokXHk0TCHFvtxlCQ1ui7THAz5goF7sk5AuaC0ce.jpg\"]', '[\"voice\\/TJq9iPMdO4xxP9gEILkfpRlctxvWNid3IzL3RkDk.aac\"]', NULL, NULL, 18, '2024-10-19 01:20:46', '2024-12-13 04:10:03', NULL, '[\"garage_downloads\\/UzKJAli5kzNEQ2hhuRjlMlI6W3W4IuK3plDulLgL.jpg\"]', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 31, 'hgsvs', 'fgvv', '[\"garage_gate_entry\\/6sapue7JAuW9kTUg09yS23DpK4oosQLoSIkPaRlI.jpg\"]', '[\"garage_job_card\\/gYof2vlQdpd1aFO0o6CVQfnFl2DEcWWjyOSFmcse.jpg\"]', '[\"vehicle\\/8ToyM7FwOeB4z2cC03JfsAUlZVNHIawzMAIyU5Wg.jpg\"]', '[\"voice\\/96rRghFDAz7gjyonsUvyzL7u4z5VaZHNpmfbbpu3.aac\"]', NULL, NULL, 18, '2024-10-19 01:25:03', '2024-12-17 22:45:32', NULL, '[\"garage_downloads\\/OxqFVdGz1zSTJbfsV4XphKxhIFcvGsK1yNQVTRVU.jpg\",\"garage_downloads\\/lwlW1iXXRvE6cTsWI0ZpIkuSOPCt3qBBeiUhTP7g.pdf\",\"garage_downloads\\/5RPSElPUvtNW93fPt4dgIFLGOHK4iHIA51teohqk.mp4\"]', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 32, 'dude', 'etcher turn curb', '[\"garage_gate_entry\\/UHYLOHEIFXNfVT72L40hDBRHRBc4FgfozZZ27Xl2.jpg\"]', '[\"garage_job_card\\/v1zF7iQ8w8hmbBoLo91EQy9GnF5CGeUoyturvgpe.jpg\"]', '[\"vehicle\\/KsaQA32pEnITATZ5O1GWCJXnWHFXnmmdHPl9iJ00.jpg\"]', '[\"voice\\/cfxNC8Tlt4212aezn8Vu5RYjFLa2oqN9TNVkcIzz.aac\"]', NULL, NULL, 18, '2024-10-21 00:27:13', '2024-10-21 00:27:13', NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 32, 'dude', 'etcher turn curb', '[\"garage_gate_entry\\/yIwOVv5hVNjJvWT2PJWxiA7aa25UeXy7Dgccp7eQ.jpg\"]', '[\"garage_job_card\\/PJDf096zaCCs4dWWDBH98vFzIKezje2jD40EW3J6.jpg\"]', '[\"vehicle\\/JAczOIQOleKMp7QKLY0wuiFYyc3f74wBwftETSWP.jpg\"]', '[\"voice\\/o2SYpfHN3fIgPALTh4ZL6J5TjCxk6BOedxZx3adx.aac\"]', NULL, NULL, 18, '2024-10-21 00:28:23', '2024-10-21 00:28:23', NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 33, 'cgvv', 'ddf', '[\"garage_gate_entry\\/ye1s7DwOLmhZll6XRRCuSYs2PllSLaFwAubd8K4B.jpg\"]', '[\"garage_job_card\\/Vrd3An38xhg9217K42L3W9jMISOxapuZnnPPBQW8.jpg\"]', '[\"vehicle\\/jT5l9LiuhpbCzGcXjcLsDv4JcKOIVfOHrcAz0CwW.jpg\",\"vehicle\\/Z4iMUMG9RkbfUvxOxQUMMAE6smUcsTTrDwnxziKe.jpg\"]', '[\"voice\\/VRRhKWYbk42ssaYV0SIzBhPgBnC4QW4gqHFASs5d.aac\"]', NULL, NULL, 18, '2024-10-21 04:31:40', '2024-10-21 04:31:40', NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 32, 'hhrhhd', 'guava has tsunami school TV fun sun', '[\"garage_gate_entry\\/ZLBidKE8qmuTV55YZV4b4LGLjaUeJG8qbqd3BLO4.jpg\"]', '[\"garage_job_card\\/TAYQwj4r598BuqXW7lwYP9ijy14SjF4psypFjJ2w.jpg\"]', '[\"vehicle\\/tL1rRWh0pvbkEmnACdxLfiRBIBCz5eUO0PV1f6T3.jpg\"]', '[\"voice\\/GDDiYOmzIQq2DYabfE5wodbuvEpUbKyNkKMmlie6.aac\"]', NULL, NULL, 18, '2024-10-21 23:48:15', '2024-10-21 23:48:15', NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 32, 'hhrhhd', 'guava has tsunami school TV fun sun', '[\"garage_gate_entry\\/vzX9qshSvt8b7aI1It6rAV5FVoHk3blQCEPcSF2z.jpg\"]', '[\"garage_job_card\\/xy1HDUpLfdcaxR8sV6x7O5VC2FEsNE3cfdUQ7yjB.jpg\"]', '[\"vehicle\\/jbXAJQx38oaOcZUEHBnQZfc346eDDxzuyRw6w1Vi.jpg\"]', '[\"voice\\/ZZW7GmLWy2fNHTHxlcAAk0vIDqGevGUM48AvyNvO.aac\"]', NULL, NULL, 18, '2024-10-21 23:50:02', '2024-10-21 23:50:02', NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 30, 'duck', 'she dha', '[\"garage_gate_entry\\/dcm2i709dO7CmwSpGEZIck2serd7XkRP8ySUlI9f.jpg\"]', '[\"garage_job_card\\/PVHfChFLK8CtkL3dJqsT29m5JBg8E1DpjqYKKOi7.jpg\"]', '[\"vehicle\\/XwyOH9HIh7NUKwCpYZGWD0xNpwnnbjlYxClXUEQj.jpg\",\"vehicle\\/6NnwzKxkBaTOFAG2CkeoJ7hvWL1hkOasqv4PMN16.jpg\"]', '[\"voice\\/O9lPbNtUjK32IRQAfqiYh6y2k38Dd9BAf1zvPq51.aac\"]', NULL, '11.1807486, 75.8545903', 18, '2024-10-23 03:36:42', '2024-10-23 03:36:42', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 35, 'guhfghjh', 'full dm dj fm', '[\"garage_gate_entry\\/isFSHCKCu1Dq7tmWcyZ2BjLBDLYSkaLnnNNdRePT.jpg\"]', '[\"garage_job_card\\/obZXhv1nxSSJl4AjevGMFtdhtg7O98mDs0B7xCvY.jpg\"]', '[\"vehicle\\/LQPBfFN5cKAQR03jBuURaLA2uQQz9vWU7Av2BbPz.jpg\"]', '[\"voice\\/pv0mp39lCQsPocTookvcuEqSSwhfuiUgcCCANkqW.aac\"]', NULL, '11.1807596, 75.8545999', 18, '2024-11-04 01:23:27', '2024-12-12 06:51:11', 'Driver Drop Calicut, chungam, Ramanattukara', '[\"garage_downloads\\/LMEaGNV4EF8I7JWWkwvq0H45eh4Bq57aJGxoG2VP.aac\"]', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 38, 'bhjgh', 'dfgdfgvfdgv', '[\"garage_gate_entry\\/IwsCJVmZHeVNrMZTnUSVkfxZzjElmDeQElf3PabU.jpg\"]', '[\"garage_job_card\\/5cztA8N0oGI0mZhIZA1DsrOASPL7Gj9Hme2NXYlW.jpg\"]', '[\"vehicle\\/Qen42Hcgq8pxzmgJ7dbJUzL9InbxGbYl24w9b60g.jpg\",\"vehicle\\/UswKZ2GrJWYVCZKndH6L2gPF3F1cQ0qju8R6tNdp.jpg\"]', '[\"voice\\/wV9Ip7oFW97AeFpwE8DvV1qLN0F7TB5XkCnGvOpL.aac\"]', NULL, '37.4219983, -122.084', 18, '2024-11-19 07:25:04', '2024-11-19 07:25:04', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 37, 'hnfgn', 'tyntnt', '[\"garage_gate_entry\\/7dd3DkzkIakfMD3jZpLVrhkxernCKsEbCD1plfYo.jpg\"]', '[\"garage_job_card\\/uQLX6psIDBHyu4WIxrj3rEOpKp3v9Lz8TDW6pi5T.jpg\"]', '[\"vehicle\\/MvABeoVSCiGtWwRymf7xwYYscoHeFgOvIjhmc4NQ.jpg\",\"vehicle\\/tUgXvcqa7g4rugN3AbxN7O88FhIthMUWI5SM5jDm.jpg\",\"vehicle\\/KWZm3RsjDgcFKe34sR7K3883cEJiBlFZY03tZegS.jpg\",\"vehicle\\/Eki2cG9Nr9bPlKZd2KhcgNvRHcLL6PgHbrmYV1sQ.jpg\"]', '[\"voice\\/mSBsvPIRxSwU0oCX1dodis1sQdrob6kvrFhXQz0h.aac\"]', NULL, 'Fetching location...', 18, '2024-11-22 00:04:35', '2024-12-15 23:13:46', 'Error fetching location: Null check operator used on a null value', '[\"garage_downloads\\/94xtGms0oC5ke4DZ2HmvFxxwSj9VH6pANbWUSZ5a.jpg\"]', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 39, 'ghgfg', 'fhfdyhv', '[\"garage_gate_entry\\/uiAmrc5V0hLygEiKL2kzTnnAus5kSUqdXPIAp4IF.jpg\"]', '[\"garage_job_card\\/fgw2xIJNJJB5GU5pGFzq2QrCD2UhOZS5VcsUkieb.jpg\"]', '[\"vehicle\\/O29ZTQ5yCKNCuv8vQlKu8vL8mdKRx1TMts2tATjO.jpg\"]', '[\"voice\\/ZNRVrkZ35cRSvn8o6ywOX5DSrGES3K0C9EujsM4d.aac\"]', '[\"tow_vehicle\\/2xXbXpxSgBhHp0XgFCcS4lA9612BbiBXgnzD4atY.jpg\"]', '11.1807655, 75.8546', 18, '2024-11-22 07:40:11', '2025-01-06 05:35:09', 'Driver Drop Calicut, chungam, Ramanattukara', '[\"garage_downloads\\/wXGZ5felTdHxBIU2PAjfgh3kmzax2v71JuvRkKGL.jpg\"]', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 40, 'fft', 'fft', '[\"garage_gate_entry\\/t0vzQ0XCIK9AGtDD08aDLMjp6ZGDklcDiF0UuM1C.jpg\",\"garage_gate_entry\\/gjPQl5aqBEYv2ZUVIeyRi8Gg2R108QX5olIZzc9n.jpg\"]', '[\"garage_job_card\\/0Ksfl1gXZlL2ypt8PKHbihrPzb4XD6n82JwcMmAX.jpg\"]', '[\"vehicle\\/FEUper1JOY0Ri0K3jM1MGA0S7SrU1aTKYWm9K5yr.jpg\"]', '[\"voice\\/6GnxGGIOrNdEDtcYY75NW08MmBxeUJ0c0PpauCdR.aac\"]', NULL, '11.1807617, 75.8545971', 18, '2024-11-22 23:52:53', '2024-11-22 23:52:53', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 41, 'vhh', 'fyvv', '[\"garage_gate_entry\\/AQh7vjDJ5eUZxZzQDhkdJx2ONq3rKn2zDb67dP90.jpg\",\"garage_gate_entry\\/f63lMBoYtK8gVWu8pAKhytNzAaSWSquGmFMqgmqF.jpg\",\"garage_gate_entry\\/DGHXztN9iiyttN9JIGm2IlkC7vB48ot5fsSMJDQR.jpg\",\"garage_gate_entry\\/eTZYuXYS1PR98Iz37EKVUhIAE32HllydDwA9o7oQ.jpg\",\"garage_gate_entry\\/VCscwFWwnaEvirod9SKSGAZ7noRvqlqljj5cdwvI.jpg\"]', '[\"garage_job_card\\/ULfe6kDiLNvOBTcaVsks17xK58WPLFvQoGCozuik.jpg\",\"garage_job_card\\/qn9eiHMQIebRxmfEflP2dZ0tq6tP5QSiMJP5KYfi.jpg\"]', '[\"vehicle\\/wwM3gGkTpHu8wAwCUCccJbkt91BbLRmTosqaS0OZ.jpg\",\"vehicle\\/pMKqIDOxIHYpca7KgJRjamF9UHoPYzhPYIiDRuMG.jpg\",\"vehicle\\/0U4nhO8jD2u0x8k9K8ef7b2gxrg142VaRhje8s4J.jpg\"]', '[\"voice\\/ENE0FSivV1WOuEXPd6iFx1LF4g9gvvoDiDXkvgSO.aac\"]', NULL, '11.1807673, 75.8546068', 18, '2024-11-23 01:53:02', '2024-11-23 01:53:02', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 42, 'vhfdgy', 'chhfryhh', '[\"garage_gate_entry\\/Ait8mtDSrKXRpVteYVN0BPYE4pJBYAiHoY5SUZOi.jpg\",\"garage_gate_entry\\/cb76biY5NhQn1HolpHW8hojNhgDq9KZMAXoEjATM.jpg\",\"garage_gate_entry\\/TdJXfXYgFcLiGiuaaSqsxH6zmTMzs1TCjvPwO5Z9.jpg\"]', '[\"garage_job_card\\/XW4R7gVKhIKerHgEUFzzCVs9vZhlFtIpcQvRjmxg.jpg\",\"garage_job_card\\/eoIIw3x0ddl16xzjokW98UWJUqkyUP2wSuMNksKv.jpg\"]', '[\"vehicle\\/S7wo4FkzULmAIJHpLkHMcS12jst7LPQ8QGUttGIl.jpg\",\"vehicle\\/u4PcYxd337CaEeoloUIcftmszt0JgrzmRUiBcm9b.jpg\"]', '[\"voice\\/1WpHXLoYT7hJxUJzekKBZfFmPEGxfrcVrqL9GRQF.aac\"]', NULL, '11.1807655, 75.8545999', 18, '2024-11-23 02:28:36', '2024-12-13 01:04:42', 'Driver Drop Calicut, chungam, Ramanattukara', '[\"garage_downloads\\/4MyYvWpM0OwoMWOPbcd0cHgXOu6KTNpGbcLYgfLY.jpg\"]', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 43, 'gygc', 'gifuhvh', '[\"garage_gate_entry\\/OuvCcsIaWwjLNbeOzYE4VtGTPn5EIx2vqaoLc7O6.jpg\"]', '[\"garage_job_card\\/lPPwnpqtkKkuuikuaq0xalX5lC1hDA2La6pBKnxC.jpg\"]', '[\"vehicle\\/stPn0iVSdyJnFAIQutmwbSp2VRBil8sp31Lj32KN.jpg\"]', '[\"voice\\/64xmAg0trJi7HCfEeBif5rz4cEuNwowPpCTcdq5D.aac\"]', NULL, '11.1807581, 75.8545933', 18, '2024-11-25 02:31:41', '2024-11-25 02:31:41', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 44, 'fztz', 'drtt', '[\"garage_gate_entry\\/1ULY3gAAY0gqI5H6mwxWP9ekDHdhq4DcP8fNneA5.jpg\"]', '[\"garage_job_card\\/GOs3EcijBUVEGndUG898nYzo5zGqsvhXnGcyYgcn.jpg\"]', '[\"vehicle\\/9RixUfea2QGdEatnSluxrxM7X9dRBsRe8CEvVsmo.jpg\"]', NULL, '[\"tow_vehicle\\/kMq6U0Anm47mJi1wuLDuV1PRhS6eRP7cl53cELMv.jpg\"]', '11.1807638, 75.8546001', 18, '2024-11-25 05:11:52', '2024-11-25 05:11:52', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 44, 'fztz', 'drtt', '[\"garage_gate_entry\\/gN0nXL9DGNgr7UZNHLajRvibrvR6z2HQQmQ8Pkr8.jpg\"]', '[\"garage_job_card\\/mGgJ6KdAMOyhpzHmJjC5iQ1eLmURmF2UHPA87OzJ.jpg\"]', '[\"vehicle\\/5qGd1v5pL7bQlnQsHtvozNuBotgXxnFiT2mWmeEF.jpg\"]', NULL, '[\"tow_vehicle\\/4tMXkdoRsuoTlRQpYMLCnZr51ypt1gYFGJNU7EcP.jpg\"]', '11.1807638, 75.8546001', 18, '2024-11-25 05:18:53', '2024-11-25 05:18:53', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 44, 'jk.,', 'hjh,hj,', '[\"garage_gate_entry\\/aZst9UhXBWkXdZ9g8R9eBTNQZ83PcUIZvkVQDuAf.jpg\"]', '[\"garage_job_card\\/VLHo2lQD3UNi7mdGCAygpmS5gFDrlJzXPds1swP7.jpg\"]', '[\"vehicle\\/ZVUAlmnokjQU3Z9a3ecQM3JPPOWL7fdJ3NPyxTkr.jpg\"]', '[\"voice\\/1Fn9v8qEmXqilxYzuNVNyiCAFn7U02L4o9w0kwvs.aac\"]', '[\"tow_vehicle\\/5fQR48Ic1aITI1PZBN8bkPkBT9inaHC84VG4HFYr.jpg\"]', '37.4219983, -122.084', 18, '2024-11-25 23:32:27', '2024-11-25 23:32:27', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 45, 'rftt', 'fygt', '[\"garage_gate_entry\\/ErhV9UBXctmNkEBQx10gNa9wCB4gk9OjftiVWcg9.jpg\"]', '[\"garage_job_card\\/MxrWJQKgTVjnCiLwFwIy6hj3anKg9hRmbb0EGucm.jpg\"]', '[\"vehicle\\/K8PTaxkT3i8X9yyrFoUrzqVo2KnIoWWJSFt4LIoJ.jpg\"]', '[\"voice\\/rWz5fH43OpCUBZeGws6GZJh70mSJ00c91Vv27dS2.aac\"]', '[\"tow_vehicle\\/njMafflP6hGnuulSJzca3Hk53MasZPK4lGobFTNj.jpg\"]', '11.1807593, 75.8545946', 18, '2024-11-26 00:45:07', '2024-11-26 00:45:07', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 45, 'rftt', 'fygt', '[\"garage_gate_entry\\/ESzHE0pWF8FHDDBR5aYAjIW8DwNqaYsSZ99rbxjw.jpg\"]', '[\"garage_job_card\\/67ktDC32KxwBVYHZFEGMdSQo3XI9Xduvcs4Cwi8n.jpg\"]', '[\"vehicle\\/Rw2RzxIMkbMXQjIkKF9mgXREO9Jh74JdZxtfkiYQ.jpg\"]', '[\"voice\\/qAEfq2QmjiIdg7Q3j4X55P102bUiaJtpSD0sXvMt.aac\"]', '[\"tow_vehicle\\/femOi4COgIkmXwABN852Dd39boAHdbHRpTknQipQ.jpg\"]', '11.1807593, 75.8545946', 18, '2024-11-26 00:45:29', '2024-11-26 00:45:29', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 45, 'rftt', 'fygt', '[\"garage_gate_entry\\/Y4Hjf9ukbvdyFlbgQviBlH969lzFhwAPZObVNtvG.jpg\"]', '[\"garage_job_card\\/bs5jkaM2Ba8DER9R3KshKoikWyUfOxWPpb9gXNkK.jpg\"]', '[\"vehicle\\/nhiUwmIQqRnPllhI0Z2smiJCk63dVpULOQTUaNJy.jpg\"]', '[\"voice\\/fwXWUjogN4WZ72aCbCZernrAv6ZEMj4KxdTQjki9.aac\"]', '[\"tow_vehicle\\/Y7asgpWGoEVwUwNipobVIMQiq0zG2JmFohl5Gj9r.jpg\"]', '11.1807593, 75.8545946', 18, '2024-11-26 00:46:36', '2024-11-26 00:46:36', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 45, 'rftt', 'fygt', '[\"garage_gate_entry\\/AOMARZoenRQOpxymlIkqsCmOaIz99l99KgMwt1iH.jpg\"]', '[\"garage_job_card\\/dnVoVYN1c4GOM1KtqKEKFXo6DmiM4kKxj2Q5P8jZ.jpg\"]', '[\"vehicle\\/BMMJMDDcJphY91GtgQWsfTpUpaRPi2mD4aXjkIEK.jpg\"]', '[\"voice\\/pHIwDMvIgZGCKvPoKgIOEMbpQJ04TBOYlXJgEsJT.aac\"]', '[\"tow_vehicle\\/WzWIgRnlw8pWGFwxrPHhw6efbj5BSkpbKyKmBDAm.jpg\"]', '11.1807593, 75.8545946', 18, '2024-11-26 00:47:51', '2024-11-26 00:47:51', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 46, 'xm f tm gl', 'dm dj D gl', '[\"garage_gate_entry\\/wH4mLwyW62MReuiFJ7QI5exptRJjfwzwJSFiaE8x.jpg\",\"garage_gate_entry\\/wnW8cND3Tqb3oTTOlzio9NlQyoJzCOmqWuaTcnWY.jpg\"]', '[\"garage_job_card\\/JtzIAiMnqkODkRcSg5hjy4zh296B4rQBMG1o0hEY.jpg\",\"garage_job_card\\/YTrFZrMsPK9FHWGsViX0UD5k46mKFxXtHbGDyQ1K.jpg\"]', '[\"vehicle\\/Pf2EnfTyIma5a8vnGz1jQOaLJ0s6W3kOlyFsh7Do.jpg\",\"vehicle\\/eW31cBWCgaI8IZZMbboouZ289GhsCH2oq8yiVsWX.jpg\"]', '[\"voice\\/0sCWWDqtd7szsBKqWaUOlbFn6NUa0twu03Nv72Ib.aac\"]', '[\"tow_vehicle\\/QYZdj6Wmd9K0Es90RjHLLgy4oOA5uIEUMLYefqks.jpg\",\"tow_vehicle\\/VpmShZwI5XG8mJ0ijww0CSfwKIvtKvlZfrbHQyNr.jpg\"]', '11.1807604, 75.8545996', 18, '2024-11-26 23:33:03', '2024-11-26 23:33:03', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 47, 'x DM even', 'CO DM TV week', '[\"garage_gate_entry\\/0fgJNno1CxADumennju7H1H5DYivTDCFaaY1tZzh.jpg\",\"garage_gate_entry\\/nNEdft7f8zTvbh7bvamUh1yFl1ZlpH1VZAiKnadN.jpg\"]', '[\"garage_job_card\\/UHIfSX237PQqxzkIkkz6ACPJVNjiQXeaj6cNIUsL.jpg\",\"garage_job_card\\/MV5xq4ZauoxblEjuKo5OWGAvOQVGFm8Zygp1NHLV.jpg\"]', '[\"vehicle\\/sO9cjwC4ZzquvB3IOiRIjNP3PtNoG8cS1Ey0TCZX.jpg\",\"vehicle\\/ICi4vBXh21yW9Ti3UVekHKT6yT9NmWkBp5OflrM0.jpg\"]', '[\"voice\\/dWhjIgE5SMdpzwjzSWJr4D7sctRfdHdfJsuzdq9c.aac\"]', '[\"tow_vehicle\\/s3qr4nTaQOzm11g9I51BODHfzVt6lmViW3C9Iof4.jpg\",\"tow_vehicle\\/IEJZnzrKPrVnvQfvlEMBfTZ4YwJACguW95lZnmij.jpg\"]', '37.4219983, -122.084', 18, '2024-11-27 00:01:01', '2024-11-27 00:01:01', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 53, 'sefvsdfv', NULL, '[\"garage_gate_entry\\/pWif96MkIh7ZsD9sRwAE5ymuoaPJ4bp8rSt8zER9.jpg\"]', '[\"garage_job_card\\/BXEaqQG6Ai0aQKK8LmpieHxqLFP50yrpTyHLxzjN.jpg\"]', '[\"vehicle\\/ITAVQrcV7Eh0JzgAW3dVrsUiCa89D9FVVplMg2o0.jpg\"]', NULL, NULL, '37.4219983, -122.084', 17, '2024-12-02 04:30:03', '2024-12-10 07:27:02', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 34, 'dvsdv', NULL, '[\"garage_gate_entry\\/AcJ1w8ZK7nO5hSnK2T9FYMh3kiXhiY6zIuE5oRwI.jpg\"]', '[\"garage_job_card\\/obla3lU0c3kX8ZFhF7QhPXhucXrP4SLF2RNRm8Sp.jpg\"]', '[\"vehicle\\/8nwRFuoQOVJqrfC6io3PeizeM2Yroqx06WG3HlQs.jpg\"]', NULL, NULL, '37.4219983, -122.084', 4, '2024-12-12 03:45:47', '2024-12-13 00:52:27', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 36, 'dfbdfb', NULL, '[\"garage_gate_entry\\/355DZoJQnWAZoBFmHfBgVvHi4NQLkaLEmVl9LjEx.jpg\"]', '[\"garage_job_card\\/SI1kwvqey1Lr2gthVbHc59foyUEMyikWbtAQrvg9.jpg\"]', '[\"vehicle\\/nRHR1BESxOjixjxqAx13IQLyu9O4CC9vCP6k0Fnu.jpg\"]', NULL, NULL, '37.4219983, -122.084', 4, '2024-12-12 03:50:09', '2024-12-12 03:50:09', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 30, 'ddfgghhhhhhh', 'fffgggghhhhh', '[\"garage_gate_entry\\/wCBDq9Qonlo2CQnwF50kjwogBmY0F2GQrUgqoPJx.jpg\"]', '[\"garage_job_card\\/v7tvBrcvLD94PlFpSya0f7sv9Xq7gvSSU8P3Kvsb.jpg\"]', '[\"vehicle\\/9wTM4aElaifE8rRO4k9WnfnEwQtbZPkOuii9dkAQ.jpg\"]', NULL, NULL, '11.1807735, 75.854591', 18, '2024-12-16 23:03:21', '2024-12-16 23:03:21', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 30, 'ddfgghhhhhhh', 'fffgggghhhhh', '[\"garage_gate_entry\\/1BdgYaJG5RPQpLgWQX7yv2s2JC0cyGXbPJQPhPyM.jpg\"]', '[\"garage_job_card\\/tpNvBJXtCoMcYeXfUjpHsV0jCpB4P6TJkL3dzJbu.jpg\"]', '[\"vehicle\\/lLDpT2sFKxw3zzEkU7Xge3g1Hi8gtsFuXtbL1TrD.jpg\"]', NULL, NULL, '11.1807735, 75.854591', 18, '2024-12-16 23:15:57', '2024-12-16 23:15:57', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 63, 'entry111', 'card143', '[\"garage_gate_entry\\/NhYJuMyVXNwLf7COVIQXylNIGXI5LYN4cUJnK2LG.jpg\"]', '[\"garage_job_card\\/4Pi51k56Php3h3zBWcwUUW0U48Eho1f46Dxr3aPl.jpg\"]', '[\"vehicle\\/WhASBnwcAJY9euIZlKCTrUVYhbZkyXzMXpot5a3H.jpg\"]', '[\"voice\\/bU2NTDYCqDU1FSqJ9NBellH6gPh5nuAqWbKXyd7R.jpg\"]', '[\"tow_vehicle\\/YyvKxtdWNoGIaeF3Tn2zvfAsBudGMCn2iD89JqPt.jpg\"]', '102.45,117.88', 25, '2025-07-02 03:15:49', '2025-07-19 04:27:21', 'vengara', NULL, 1, 0, 1, 1, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, '2025-07-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'garage_uploads/GAEPFi8vzGBhY8uPt7n04Yu44nxx5iUM61hq7i53.jpg', 'sachinvv', '2025-07-07', NULL, NULL, NULL, NULL, NULL, NULL),
(34, 63, 'entry55', 'card55', '[\"garage_gate_entry\\/V3dyA3qXGchSUdAkHDbiDH0uZV1GfrT1uTAy4I9I.jpg\"]', '[\"garage_job_card\\/mxF8Eu3M0EeQJYiQwYoFG1uOBvFWYRgv3yMJ7acC.jpg\"]', '[\"vehicle\\/Ym4Vw7Dy8ocob2Ts0YrUWKfJOqKRBjBF7S5wqEVb.jpg\"]', '[\"voice\\/0Ge9a2eoPBUiExZLM94YVm2rL4RM7exjP0Pq6O3O.jpg\"]', '[\"tow_vehicle\\/X1aioUMZGxtZwjcBtFpOjw1L6LAwlffsM1ziqJDR.jpg\"]', '102.45,117.88', 25, '2025-07-02 03:20:24', '2025-07-07 05:51:57', 'vengara', NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'garage_uploads/aVb8Xx0j16cuTyDqNMz3fUFmrEAbPxUfZZHIunuv.jpg', 'esterns', '2025-07-31', NULL, NULL, NULL, NULL, NULL, NULL);

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
(1, 1, 3, 'fyjfyj', 'sggrrfg', '0', '1', '2', '1', '1', '2024-09-03 03:58:24', '2024-10-03 03:58:24'),
(2, 2, 4, 'Life Insurance', 'Policy Number: LI123456, Claim filed for natural causes.', '1', NULL, '1', '1', '1', '2024-10-03 05:41:01', '2024-10-03 05:41:01'),
(3, 3, 5, 'Health Insurance', 'HI789012, Hospitalization claim for surgery.', '1', NULL, '1', '1', '1', '2024-10-03 05:41:50', '2024-10-03 05:41:50'),
(4, 4, 6, 'Auto Insurance', 'Policy Number: AI345678, Claim for accident damages.', '1', NULL, '2', '1', '1', '2024-10-03 05:42:37', '2024-10-03 05:42:37'),
(5, 5, 7, 'Property Insurance', 'Policy Number: PI901234, Claim for flood damage.', '1', NULL, '1', '1', '1', '2024-10-03 05:43:23', '2024-10-03 05:43:23'),
(6, 6, 8, 'Travel Insurance', 'Policy Number: TI567890, Claim for trip cancellation.', '1', NULL, '2', '1', '1', '2024-10-03 05:44:12', '2024-10-03 05:44:12'),
(7, 6, 9, 'Life Insurance', 'Policy Number: LI234567, Claim for accidental death.', '1', NULL, '2', '1', '1', '2024-10-03 05:45:05', '2024-10-03 05:45:05'),
(8, 7, 10, 'Health Insurance', 'Policy Number: HI890123, Claim for critical illness.', '1', NULL, '2', '1', '1', '2024-10-03 05:45:53', '2024-10-03 05:45:53'),
(9, 8, 11, 'Home Insurance', 'Policy Number: HI456789, Claim for fire damage.', '1', NULL, '2', '1', '1', '2024-10-03 05:46:41', '2024-10-03 05:46:41'),
(10, 8, 12, 'Auto Insurance', 'Policy Number: AI678901, Claim for theft.', '1', NULL, '2', '1', '1', '2024-10-03 05:47:27', '2024-10-03 05:47:27'),
(11, 10, 13, 'Travel Insurance', 'Policy Number: TI234567, Claim for lost baggage.', '1', NULL, '2', '1', '1', '2024-10-03 05:48:12', '2024-10-03 05:48:12'),
(12, 6, 14, 'Ranga KA Car', 'Ranga KA Car Accident', '1', '1', '2', '1', '1', '2024-10-21 04:27:30', '2024-10-21 04:27:30'),
(13, 3, 15, 'Duis ratione et reru', 'Nobis animi esse qu', '1', '1', '2', '1', '1', '2024-11-25 03:34:14', '2024-11-25 03:34:14'),
(14, 9, 16, 'car insurance', '123123', '1', '1', '2', '1', '1', '2024-12-04 23:42:54', '2024-12-04 23:42:54'),
(15, 2, 17, 'Vehicle insurance', 'Vehicle details', '1', '1', '2', '1', '1', '2024-12-12 01:30:12', '2024-12-12 01:30:12'),
(16, 12, 18, 'tst', '123', '1', '1', '2', '1', '1', '2025-01-07 03:26:26', '2025-01-07 03:26:26'),
(17, 15, 19, 'MAC', 'case1 descriptions can be shows here...............', '1', '1', '2', '1', '1', '2025-07-02 01:58:07', '2025-07-02 01:58:07'),
(18, 16, 20, 'single', 'case1 descriptions datas here...............', '1', '1', '2', '1', '1', '2025-07-05 06:11:55', '2025-07-05 06:11:55'),
(19, 19, 21, 'MAC type1', 'this is descriptions of case1', '1', '1', '2', '1', '1', '2025-07-07 00:23:50', '2025-07-07 00:23:50'),
(20, 25, 22, 'single', 'This is my case detailed descriptions shows here...................', '1', '1', '1', '1', '1', '2025-07-08 03:45:07', '2025-07-08 03:45:07'),
(21, 25, 23, 'single', 'qqqqqqq', '1', '1', '1', '1', '1', '2025-07-08 04:20:34', '2025-07-08 04:20:34'),
(22, 25, 24, 'MAC', 'case55', '1', '1', '1', '1', '1', '2025-07-08 04:33:58', '2025-07-08 04:33:58'),
(23, 25, 25, 'MAC', 'case44', '1', '1', '1', '1', '1', '2025-07-08 04:36:40', '2025-07-08 04:36:40');

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
  `template` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `selected_tabs` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`selected_tabs`)),
  `questionnaires` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`questionnaires`)),
  `create_by` varchar(255) NOT NULL,
  `update_by` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `insurance_companies`
--

INSERT INTO `insurance_companies` (`id`, `name`, `contact_person`, `email`, `phone`, `address`, `template`, `status`, `selected_tabs`, `questionnaires`, `create_by`, `update_by`, `created_at`, `updated_at`) VALUES
(1, 'Arjun Nai', 'djhdtjhn', 'ava.martinez@pinnacleassurance.com', '1596325874', 'sdQSDesagrahg', 2, '1', NULL, NULL, '1', '1', '2024-10-03 03:50:06', '2025-01-02 05:11:37'),
(2, 'Kerala Life Insurance', 'Ravi Nair', 'ravi.nair@keralalife.com', '9876543210', '12, MG Road, Kochi, Kerala', 2, '1', NULL, NULL, '1', '1', '2024-10-03 05:33:42', '2025-01-14 05:22:38'),
(3, 'Tamil Nadu Health Insurance', 'Meera Ramesh', 'meera.ramesh@tnhealth.com', '8765432109', '45, Anna Salai, Chennai, Tamil Nadu', 4, '1', NULL, NULL, '1', '1', '2024-10-03 05:34:09', '2025-01-07 03:06:08'),
(4, 'South India Insurance Co', 'Arun Kumar', 'arun.kumar@southindiai.com', '7654321098', '89, Beach Road, Thiruvananthapuram, Kerala', 3, '1', NULL, NULL, '1', '1', '2024-10-03 05:34:39', '2025-01-07 03:06:17'),
(5, 'Tamil Guardian Insurance', 'Priya Singh', 'priya.singh@tamilguardian.com', '6543210987', '34, West Street, Madurai, Tamil Nadu', 5, '1', NULL, NULL, '1', '1', '2024-10-03 05:35:06', '2025-01-07 03:06:27'),
(6, 'Kerala Secure Insurance', 'Anil Joseph', 'anil.joseph@keralasecure.com', '5432109876', '78, Market Road, Calicut, Kerala', 7, '1', NULL, NULL, '1', '1', '2024-10-03 05:35:36', '2025-01-07 03:06:40'),
(7, 'Tamil Shield Insurance', 'Sneha Patel', 'sneha.patel@tamilshield.com', '4321098765', '56, East Main Road, Coimbatore, Tamil Nadu', 3, '1', NULL, NULL, '1', '1', '2024-10-03 05:36:04', '2025-01-02 05:12:03'),
(8, 'Coastal Insurance Group', 'Vijay Menon', 'vijay.menon@coastalinsure.com', '3210987654', '23, Sea View Lane, Kollam, Kerala', 6, '1', NULL, NULL, '1', '1', '2024-10-03 05:36:31', '2025-01-02 05:12:13'),
(9, 'Tamil Star Insurance', 'Kavita Iyer', 'kavita.iyer@tamilstar.com', '2109876543', '90, Gandhi Road, Salem, Tamil Nadu', 8, '1', NULL, NULL, '1', '1', '2024-10-03 05:36:57', '2025-01-07 03:06:49'),
(10, 'Green Fields Insurance', 'Sameer Khan', 'sameer.khan@greenfields.com', '1098765432', '11, Rural Lane, Wayanad, Kerala', 2, '1', NULL, NULL, '1', '1', '2024-10-03 05:37:25', '2025-01-07 03:06:59'),
(11, 'Unity Insurance Services', 'Neha Rao', 'neha.rao@unityinsure.com', '0987654321', '88, South Street, Tiruchirappalli, Tamil Nadu', 8, '1', NULL, NULL, '1', '1', '2024-10-03 05:37:52', '2025-01-02 05:12:27'),
(12, 'ERG INSURANCE', 'Vijay Menon', 'midhun@gmail.com', '8075051767', 'address 2', 1, '1', '[]', '[]', '1', '1', '2025-01-02 05:44:14', '2025-07-02 01:28:14'),
(15, 'Company Test', 'Ravi Nairss', 'test@gmail.com', '9497626144', 'sssssssss', 4, '1', '[\"garage\",\"spot\",\"meeting\"]', '{\"garage\":{\"questions10\":{\"name\":\"questions10\",\"label\":\"Questions10\",\"type\":\"select\",\"required\":false},\"questions11\":{\"name\":\"questions11\",\"label\":\"Questions11\",\"type\":\"file\",\"required\":false}},\"spot\":{\"policy_description\":{\"name\":\"policy_description\",\"label\":\"Policy Description\",\"type\":\"textarea\",\"required\":false}},\"meeting\":{\"questions21\":{\"name\":\"questions21\",\"label\":\"Questions21\",\"type\":\"date\",\"required\":false}}}', '1', '1', '2025-07-02 01:42:31', '2025-07-02 01:44:45'),
(16, 'Tvm company', 'manoj john', 'john33@gmail.com', '9446546911', 'adressssssssssssssssss', 0, '1', '[\"garage\"]', '{\"garage\":{\"questions11\":{\"name\":\"questions11\",\"label\":\"Questions11\",\"type\":\"file\",\"required\":false,\"file_type\":null},\"qest33\":{\"name\":\"qest33\",\"label\":\"Qest33\",\"type\":\"file\",\"required\":false,\"file_type\":\"audio\"},\"quest34\":{\"name\":\"quest34\",\"label\":\"Quest34\",\"type\":\"select\",\"required\":false,\"options\":[{\"label\":\"Yes\",\"value\":1},{\"label\":\"No\",\"value\":0}]}}}', '1', '1', '2025-07-05 06:09:52', '2025-07-08 04:06:22'),
(19, 'Latest company', 'Assan', 'assan@gmail.com', '9497626786', 'adress12', 0, '1', '[\"garage\"]', '{\"garage\":{\"qest33\":{\"name\":\"qest33\",\"label\":\"Qest33\",\"type\":\"file\",\"required\":false},\"quest34\":{\"name\":\"quest34\",\"label\":\"Quest34\",\"type\":\"select\",\"required\":false}}}', '1', '1', '2025-07-07 00:20:59', '2025-07-08 03:47:49'),
(25, 'Company 456', 'Ravi Nair singh', 'company45@gmail.com', '9497626135', 'adress44', 0, '1', '[\"garage\",\"driver\",\"spot\",\"meeting\"]', '{\"garage\":{\"questions11\":{\"name\":\"questions11\",\"label\":\"Questions11\",\"type\":\"file\",\"required\":false,\"file_type\":null},\"questions12\":{\"name\":\"questions12\",\"label\":\"Questions12\",\"type\":\"textarea\",\"required\":false},\"what_is_garage_badge_validity_data\":{\"name\":\"what_is_garage_badge_validity_data\",\"label\":\"What Is Garage Badge Validity Data\",\"type\":\"date\",\"required\":false},\"qest33\":{\"name\":\"qest33\",\"label\":\"Qest33\",\"type\":\"file\",\"required\":false,\"file_type\":\"audio\"},\"quest34\":{\"name\":\"quest34\",\"label\":\"Quest34\",\"type\":\"select\",\"required\":false,\"options\":[{\"label\":\"Yes\",\"value\":1},{\"label\":\"No\",\"value\":0}]}},\"driver\":{\"gggggggggggggggdf\":{\"name\":\"gggggggggggggggdf\",\"label\":\"Gggggggggggggggdf\",\"type\":\"select\",\"required\":false,\"options\":[{\"label\":\"Yes\",\"value\":1},{\"label\":\"No\",\"value\":0}]}},\"spot\":{\"policy_description\":{\"name\":\"policy_description\",\"label\":\"Policy Description\",\"type\":\"textarea\",\"required\":false},\"what_is_company_policy_number\":{\"name\":\"what_is_company_policy_number\",\"label\":\"What Is Company Policy Number\",\"type\":\"text\",\"required\":false},\"what_is_the_best_roles_for_scooter\":{\"name\":\"what_is_the_best_roles_for_scooter\",\"label\":\"What Is The Best Roles For Scooter\",\"type\":\"text\",\"required\":false},\"dddddddaa\":{\"name\":\"dddddddaa\",\"label\":\"Dddddddaa\",\"type\":\"file\",\"required\":false,\"file_type\":null},\"fddddddddddddddd\":{\"name\":\"fddddddddddddddd\",\"label\":\"Fddddddddddddddd\",\"type\":\"file\",\"required\":false,\"file_type\":null},\"aaa\":{\"name\":\"aaa\",\"label\":\"Aaa\",\"type\":\"textarea\",\"required\":false}},\"meeting\":{\"questions20\":{\"name\":\"questions20\",\"label\":\"Questions20\",\"type\":\"textarea\",\"required\":false},\"questions21\":{\"name\":\"questions21\",\"label\":\"Questions21\",\"type\":\"date\",\"required\":false},\"questions22\":{\"name\":\"questions22\",\"label\":\"Questions22\",\"type\":\"file\",\"required\":false,\"file_type\":null},\"what_is_garage_badge_nameddeeeee\":{\"name\":\"what_is_garage_badge_nameddeeeee\",\"label\":\"What Is Garage Badge Nameddeeeee\",\"type\":\"file\",\"required\":false,\"file_type\":\"image\"},\"owner_documents\":{\"name\":\"owner_documents\",\"label\":\"Owner Documents\",\"type\":\"file\",\"required\":false,\"file_type\":\"image\"}}}', '1', '1', '2025-07-08 03:41:47', '2025-07-08 06:03:16');

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
  `policy_no` varchar(255) DEFAULT NULL,
  `policy_start` date DEFAULT NULL,
  `policy_end` date DEFAULT NULL,
  `insurance_type` varchar(255) DEFAULT NULL,
  `crime_number` varchar(40) DEFAULT NULL,
  `police_station` varchar(50) DEFAULT NULL,
  `intimation_report` varchar(800) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `create_by` varchar(255) NOT NULL,
  `update_by` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `insurance_customers`
--

INSERT INTO `insurance_customers` (`id`, `company_id`, `name`, `father_name`, `phone`, `emergency_contact_number`, `email`, `present_address`, `permanent_address`, `policy_no`, `policy_start`, `policy_end`, `insurance_type`, `crime_number`, `police_station`, `intimation_report`, `status`, `create_by`, `update_by`, `created_at`, `updated_at`) VALUES
(3, 1, 'Arjun Nai', 'wDFCADC', '1596325874', '1596325874', 'ava.martinez@pinnacleassurance.com', 'csdbfsxb', 'sgrsg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '2024-10-03 03:58:24', '2024-10-03 03:58:24'),
(4, 2, 'Aarav Menon', 'Raghavan Menon', '9876543210', '9876543210', 'aarav.menon@example.com', '12, Marine Drive, Kochi, Kerala', '12, Marine Drive, Kochi, Kerala', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '2024-10-03 05:41:01', '2024-10-03 05:41:01'),
(5, 3, 'Priya Nair', 'Mohan Nair', '8765432109', '8765432109', 'priya.nair@example.com', '45, MG Road, Chennai, Tamil Nadu', '45, MG Road, Chennai, Tamil Nadu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '2024-10-03 05:41:50', '2024-10-03 05:41:50'),
(6, 4, 'Arjun Iyer', 'Ravi Iyer', '7654321098', '7654321098', 'arjun.iyer@example.com', '34, College Street, Thiruvananthapuram, Kerala', '34, College Street, Thiruvananthapuram, Kerala', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '2024-10-03 05:42:37', '2024-10-03 05:42:37'),
(7, 5, 'Sneha Rao', 'Anand Rao', '6543210987', '6543210987', 'sneha.rao@example.com', '78, South Avenue, Madurai, Tamil Nadu', '78, South Avenue, Madurai, Tamil Nadu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '2024-10-03 05:43:23', '2024-10-03 05:43:23'),
(8, 6, 'Sameer Joseph', 'Thomas Joseph', '5432109876', '5432109876', 'sameer.joseph@example.com', '90, Hilltop, Calicut, Kerala', '90, Hilltop, Calicut, Kerala', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '2024-10-03 05:44:12', '2024-10-03 05:44:12'),
(9, 6, 'Kavita Ramesh', 'Suresh Ramesh', '4321098765', '4321098765', 'kavita.ramesh@example.com', '56, East Road, Coimbatore, Tamil Nadu', '56, East Road, Coimbatore, Tamil Nadu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '2024-10-03 05:45:05', '2024-10-03 05:45:05'),
(10, 7, 'Rahul Menon', 'Suresh Menon', '3210987654', '3210987654', 'rahul.menon@example.com', '23, Market Lane, Kollam, Kerala', '23, Market Lane, Kollam, Kerala', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '2024-10-03 05:45:53', '2024-10-03 05:45:53'),
(11, 8, 'Meera Patel', 'Kishore Patel', '2109876543', '2109876543', 'meera.patel@example.com', '34, West Street, Salem, Tamil Nadu', '34, West Street, Salem, Tamil Nadu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '2024-10-03 05:46:41', '2024-10-03 05:46:41'),
(12, 8, 'Anil Kumar', 'Ravi Kumar', '1098765432', '1098765432', 'anil.kumar@example.com', '11, Riverside, Wayanad, Kerala', '11, Riverside, Wayanad, Kerala', NULL, NULL, NULL, 'OD', NULL, NULL, NULL, '1', '1', '1', '2024-10-03 05:47:27', '2024-10-03 05:47:27'),
(13, 10, 'Neha Singh', 'Vikram Singh', '0987654321', '0987654321', 'neha.singh@example.com', '88, North Road, Tiruchirappalli, Tamil Nadu', '88, North Road, Tiruchirappalli, Tamil Nadu', NULL, NULL, NULL, 'MAC', NULL, NULL, NULL, '1', '1', '1', '2024-10-03 05:48:12', '2024-10-03 05:48:12'),
(14, 6, 'Ranga', 'Ranga KA Baap', '1231231230', '1231231230', 'ranga@annan.com', 'Ranga\'s Home', 'Ranga\'s Home', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '2024-10-21 04:27:30', '2024-10-21 04:27:30'),
(15, 3, 'Fleur Lancaster', 'Maggie Bird', '8075051767', '8075051767', 'gynovoxy@mailinator.com', 'Ipsa culpa praesen', 'Ipsa culpa praesen', '04-Mar-2008', '1973-07-20', '1982-11-14', 'MAC', NULL, NULL, NULL, '1', '1', '1', '2024-11-25 03:34:14', '2024-11-25 03:34:14'),
(16, 9, 'FCM key', '1231231', '1231231231', '1231231231', '1231@gmail.com', 'eqdf', 'eqdf', '13213', '2024-12-05', '2027-11-05', 'MAC', NULL, NULL, NULL, '1', '1', '1', '2024-12-04 23:42:54', '2024-12-04 23:42:54'),
(17, 2, 'Loki', 'loks', '1231231231', '1231231231', 'tc@gmail.com', '13123', '13123', '13213', '2024-12-12', '2031-09-12', 'OD', NULL, NULL, NULL, '1', '1', '1', '2024-12-12 01:30:12', '2024-12-12 01:30:12'),
(18, 12, 'tsttttt', 'ttsstt', '8075051479', '8075051479', 'admin@mail.com', '123123123', '123123123', '123123', '2025-01-07', '2028-01-28', 'OD', NULL, NULL, NULL, '1', '1', '1', '2025-01-07 03:26:26', '2025-01-07 03:26:26'),
(19, 15, 'Hassan', 'Ahammed', '9497626333', '9497626333', 'test222@gmail.com', 'address1', 'address1', '33331', '2025-06-02', '2025-06-30', 'MAC', NULL, NULL, NULL, '1', '1', '1', '2025-07-02 01:58:07', '2025-07-02 01:58:07'),
(20, 16, 'test_user', 'ahamed', '9656521122', '9656521122', 'mncd@gmail.com', 'sssssssssss', 'sssssssssss', '42222', '2025-07-05', '2025-07-12', 'MAC', NULL, NULL, NULL, '1', '1', '1', '2025-07-05 06:11:55', '2025-07-05 06:11:55'),
(21, 19, 'Ahammed', 'hassanali', '9497626177', '9497626177', 'hassanali@gmial.com', 'adrees', 'adrees', '3451235', '2025-07-07', '2025-07-14', 'MAC', NULL, NULL, NULL, '1', '1', '1', '2025-07-07 00:23:50', '2025-07-07 00:23:50'),
(22, 25, 'jamshad', 'muhamed', '9656521234', '9656521234', 'jamshad123@gmail.com', 'adress44', 'adress44', 'PL123321', '2025-07-08', '2025-07-22', 'MAC', NULL, NULL, NULL, '1', '1', '1', '2025-07-08 03:45:07', '2025-07-08 03:45:07'),
(23, 25, 'JABABR', 'abdulla', '9497626133', '9497626133', 'compny45@gmail.com', 'dddddd', 'dddddd', '123456', '2025-07-08', '2025-07-22', 'MAC', NULL, NULL, NULL, '1', '1', '1', '2025-07-08 04:20:34', '2025-07-08 04:20:34'),
(24, 25, 'razin', 'azessa', '9497626166', '9497626166', 'comp45@gmail.com', 'ssssssssss', 'ssssssssss', '123456', '2025-07-01', '2025-07-22', 'MAC', NULL, NULL, NULL, '1', '1', '1', '2025-07-08 04:33:58', '2025-07-08 04:33:58'),
(25, 25, 'Jafarqq', 'sssssss', '9656521221', '9656521221', 'jafarqqw@gmail.com', 'fffffffffffffs', 'fffffffffffffs', '345123', '2025-07-08', '2025-07-15', 'MAC', NULL, NULL, NULL, '1', '1', '1', '2025-07-08 04:36:40', '2025-07-08 04:36:40');

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
(23, '2024_10_17_065412_create_salaries_table', 6),
(24, '2024_11_22_065054_add_fields_to_insurance_customers_table', 7),
(25, '2024_11_22_101844_add_fields_to_accident_person_data', 7),
(26, '2024_11_22_105321_add_fields_to_driver_data', 7),
(27, '2024_11_22_112332_add_tow_vehical_report_to_garage_data', 7),
(28, '2024_11_22_120319_add_video_call_and_assets_pic_to_driver_data', 7),
(29, '2024_11_25_042344_add_ration_card_and_driving_lic_to_owner_data_table', 7),
(30, '2024_11_28_070841_add_columns_to_driver_data_table', 8),
(31, '2024_11_28_085026_add_columns_to_owner_data_table', 8),
(32, '2024_11_28_120135_add_columns_to_accident_person_data_table', 9),
(33, '2024_11_29_100134_modify_columns_in_accident_person_data_table', 10),
(34, '2024_12_03_050424_create_company_logos_table', 11),
(35, '2024_12_06_114002_add_gd_fields_to_accident_person_data_table', 12),
(36, '2024_12_09_044549_add_accident_downloads_to_accident_person_data_table', 13),
(37, '2024_12_09_083234_add_sp_case_to_accident_person_data_table', 13),
(38, '2024_12_09_095806_add_sp_case_to_driver_data_table', 13),
(39, '2024_12_09_095942_add_sp_case_to_garage_data_table', 13),
(40, '2024_12_09_100139_add_sp_case_to_owner_data_table', 13),
(41, '2024_12_09_100844_add_sp_case_to_spot_data_table', 13),
(42, '2024_12_12_054227_create_final_reports_table', 14),
(43, '2025_01_02_062048_add_template_to_company_logos_table', 15),
(44, '2025_01_02_100231_add_template_to_insurance_companies_table', 16),
(45, '2025_01_06_055827_add_accident_columns_to_accident_person_data_table', 17),
(46, '2025_01_06_091921_add_columns_to_spot_data_table', 17),
(47, '2025_01_06_113355_add_road_details_to_spot_data_table', 18),
(48, '2025_01_07_052711_add_seating_capacity_to_driver_data_table', 19),
(49, '2025_01_07_063417_add_columns_to_owner_data_table', 19),
(50, '2025_01_08_042852_add_no_occupants_to_accident_person_data_table', 20),
(51, '2025_01_08_073957_modify_columns_in_accident_person_data_table', 20),
(52, '2025_01_08_082555_modify_gist_fir_and_gist_chargesheet_columns_in_accident_person_data_table', 20),
(53, '2025_01_09_051938_add_name_complainant_to_accident_person_data_table', 20),
(54, '2025_01_10_071754_modify_fir_vers_accdnt_in_accident_person_data_table', 21),
(55, '2025_01_10_072159_modify_claiment_vers_aaccdnt_in_accident_person_data_table', 21),
(56, '2025_01_10_073041_modify_chrgesheet_con_diff_in_rider_ver_injured_in_accident_person_data_table', 21),
(57, '2025_01_13_094023_add_form_columns_to_spot_data_table', 21),
(58, '2025_01_14_052856_add_columns_to_accident_person_data_table', 21),
(59, '2025_01_14_090108_add_columns_to_owner_data_table', 21),
(60, '2024_11_21_040328_create_fields_table', 22),
(61, '2025_02_05_060845_add_columns_to_accident_person_data', 22),
(62, '2025_02_06_040615_add_columns_to_driver_data_table', 22),
(63, '2025_02_25_043153_add_columns_to_accident_person_data_table', 22),
(64, '2025_02_25_063300_add_columns_to_garage_data_table', 22),
(65, '2025_02_25_091335_add_columns_to_owner_data_table', 22),
(66, '2025_02_26_100327_add_columns_to_owner_data_table', 22),
(67, '2025_02_27_041106_add_columns_to_garage_data_table', 22),
(68, '2025_02_27_095048_add_social_status_and_migration_after_policy_detl_to_owner_data_table', 22),
(69, '2025_02_27_095557_add_columns_to_driver_data_table', 22),
(70, '2025_06_17_095644_create_questions_table', 22);

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
('001231314ee843fb2fc752a82ed09708698ceaca05091b4cde65cfe543f9587e8f19518c1311a4b6', 16, 1, 'Insurance API Auth', '[]', 0, '2024-10-18 01:40:13', '2024-10-18 01:40:13', '2025-10-18 07:10:13'),
('2747b5b96de9c18bada13394d5f3bbb9f9ce58227027f2724dc2d63ba3053f683172027ca8c84b71', 3, 1, 'Insurance API Auth', '[]', 0, '2024-12-11 22:43:52', '2024-12-11 22:43:52', '2025-12-12 04:13:52'),
('3a114395e4d3d7276c5429c4b53d0bf387967f2eb0870da2a251d4c2fcbddb424a85171cfd8db261', 2, 1, 'Insurance API Auth', '[]', 0, '2024-10-03 06:18:19', '2024-10-03 06:18:19', '2025-10-03 11:48:19'),
('526abd9df452e4fac9ae3fd89a328eb8d3c31d6983c88bccb12fdd6bc55aafd36fcf1c9cf2d244c7', 25, 1, 'Insurance API Auth', '[]', 0, '2025-07-07 00:25:07', '2025-07-07 00:25:08', '2026-07-07 05:55:07'),
('6fa88dfbe68d016a302d044045c244999008ee44baf5f331e33b74c8c818ca4f2ff46424339b4553', 9, 1, 'Insurance API Auth', '[]', 0, '2024-10-22 06:17:24', '2024-10-22 06:17:24', '2025-10-22 11:47:24'),
('9f2b0ef2e99ac5ffa771ac9c2800c2cce7d81463e52ccdd43d3f598d980ddaa66ed4792b5914fccf', 7, 1, 'Insurance API Auth', '[]', 0, '2024-10-07 00:29:19', '2024-10-07 00:29:19', '2025-10-07 05:59:19'),
('aaf0b2f21c8cd94215b0000741bc072ccfffba4e93d650ea94c7146fd21951438bc5e243bdb5686c', 18, 1, 'Insurance API Auth', '[]', 0, '2025-01-14 05:12:13', '2025-01-14 05:12:14', '2026-01-14 10:42:13'),
('c9e53e752412de37f5f977d5cf2bdcb3db4de09d7c4acd8490127281cd9ec7e2c7a7949b3e5dc4f9', 24, 1, 'Insurance API Auth', '[]', 0, '2024-12-10 02:16:26', '2024-12-10 02:16:26', '2025-12-10 07:46:26'),
('cb47f9b045da73b19f7275d9cc0e854784dfa191fe926c6fb37042d882ee599d6d6b88bf490b2eea', 6, 1, 'Insurance API Auth', '[]', 0, '2024-11-26 00:49:21', '2024-11-26 00:49:21', '2025-11-26 06:19:21'),
('e32181621f170f807e1097ddf27205cab24879d0df27715ed5b12d61a65522bab2264b64d8dfc0c6', 8, 1, 'Insurance API Auth', '[]', 0, '2024-10-18 01:35:47', '2024-10-18 01:35:47', '2025-10-18 07:05:47'),
('f23287c428ed54c3587f050f408c38dea08c697ad2bbee57eeb17528aa916170f4e539542f0d86d5', 23, 1, 'Insurance API Auth', '[]', 0, '2024-12-12 00:30:52', '2024-12-12 00:30:52', '2025-12-12 06:00:52');

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
  `check_in_latitude_and_longitude` varchar(255) DEFAULT NULL,
  `check_out_km` varchar(255) DEFAULT NULL,
  `check_out_image` varchar(255) DEFAULT NULL,
  `check_out_time` varchar(255) DEFAULT NULL,
  `check_out_date` varchar(255) DEFAULT NULL,
  `check_out_latitude_and_longitude` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `odometer_readings`
--

INSERT INTO `odometer_readings` (`id`, `user_id`, `check_in_km`, `check_in_image`, `check_in_time`, `check_in_date`, `check_in_latitude_and_longitude`, `check_out_km`, `check_out_image`, `check_out_time`, `check_out_date`, `check_out_latitude_and_longitude`, `status`, `created_at`, `updated_at`) VALUES
(1, 18, '500', 'odometer/ublG0qPpRHfhzcnPdX7IMk0yxV4VOmokk9oh72EU.jpg', '12:02 PM', '18-10-2024', NULL, '300', 'odometer/XENxxbTyJ6BYvoLRNTtFztq6ygaghPgMzrmxKHo6.jpg', '12:50 PM', '18-10-2024', NULL, '1', '2024-10-18 06:32:57', '2024-10-18 07:20:22'),
(2, 8, '200', 'odometer/rMKBu59ldZ3TB9WvHH60ZHAJBNFtVnWTNukEKwfg.jpg', '12:18 PM', '18-10-2024', NULL, '300', 'odometer/pbWdAyuByITGXOkbOWogjeCFIYEBzCdoaEszZCtD.jpg', '12:19 PM', '18-10-2024', NULL, '1', '2024-10-18 06:48:55', '2024-10-18 06:49:09'),
(3, 8, '200', 'odometer/0ii1GM8Xlo1QRGyI50Wtz210l51MzRdgdGyY9Lpk.jpg', '12:34 PM', '18-10-2024', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2024-10-18 07:04:48', '2024-10-18 07:04:48'),
(4, 8, '200', 'odometer/zY0yF4ZBrVqB5ipPhFXBJmMSx6F4mGvBF7UzKapt.jpg', '12:34 PM', '18-10-2024', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2024-10-18 07:04:51', '2024-10-18 07:04:51'),
(5, 8, '200', 'odometer/GtFqGqZMYhALCIQdV4y3YSxna5DkqwIKvC0b5UWX.jpg', '12:36 PM', '18-10-2024', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2024-10-18 07:06:58', '2024-10-18 07:06:58'),
(6, 8, '200', 'odometer/eZvJ9A6GPi0sK3bdcqtImnt8IcmctgUW2tlHPQdR.jpg', '12:49 PM', '18-10-2024', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2024-10-18 07:19:08', '2024-10-18 07:19:08'),
(7, 16, '500', 'odometer/G85ZKBEer6jrFD6J1SlN2neeRDxDtDWmXpHluvbV.jpg', '01:14 PM', '18-10-2024', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2024-10-18 07:44:47', '2024-10-18 07:44:47'),
(8, 16, '500', 'odometer/KoKMTi4g8ldR6vDcxg2ujVuOR8pnAj4AHYNKEzpt.jpg', '01:15 PM', '18-10-2024', NULL, '700', 'odometer/etIF6UZChlQq7NHpaOsBq564WKCHFjp8xGGW3NXX.jpg', '01:15 PM', '18-10-2024', NULL, '1', '2024-10-18 07:45:04', '2024-10-18 07:45:29'),
(9, 18, '22', 'odometer/lL5xaj7tgRmSF1IMmbCSKuKIwArs3HhvJIa9UOrF.jpg', '05:37 PM', '18-10-2024', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2024-10-18 12:07:39', '2024-10-18 12:07:39'),
(10, 18, '22', 'odometer/LeALyM1Ot0Un7Chwvu2Mow62ZYPFGE9f3rT6MLj3.jpg', '05:37 PM', '18-10-2024', NULL, '55', 'odometer/NUZMKAscZjaZ2LdD3MWFxSCalKDo9N3VTQAey4QD.jpg', '05:41 PM', '18-10-2024', NULL, '1', '2024-10-18 12:07:46', '2024-10-18 12:11:18'),
(11, 18, '22', 'odometer/iaPnA7fy12BcCqTc7Aj3YFxdQfJIgvImOUWRM87p.jpg', '05:42 PM', '18-10-2024', NULL, '55', 'odometer/5ZBgHo2vwwZ0dbnpFsVIPQMQCqPEzIyTy4K2TvBl.jpg', '05:45 PM', '18-10-2024', NULL, '1', '2024-10-18 12:12:18', '2024-10-18 12:15:44'),
(12, 18, '11', 'odometer/wbJKQeHute0RUMhNvXMIF90pht9gmUEunK1vfdcy.jpg', '05:47 PM', '18-10-2024', NULL, '111', 'odometer/Oeload4lbMkn7egvfGGzbM2ftZcKTEE6VhvVsMfy.jpg', '05:47 PM', '18-10-2024', NULL, '1', '2024-10-18 12:17:31', '2024-10-18 12:17:53'),
(13, 18, '55', 'odometer/0nEFeTE7aOHTwZMhJidSJS6kXek3r6YPZr05Kd9j.jpg', '05:50 PM', '18-10-2024', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2024-10-18 12:20:11', '2024-10-18 12:20:11'),
(14, 18, '55', 'odometer/sLqkzq09NuC61eyo2mPPBApfRn71GDHr1E4SiNgj.jpg', '05:50 PM', '18-10-2024', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2024-10-18 12:20:27', '2024-10-18 12:20:27'),
(15, 18, '88', 'odometer/NTHFdQjAviQFNulPxPUDYyD9XYQy7twpuiYWK2Be.jpg', '09:45 AM', '19-10-2024', NULL, '88', 'odometer/Y5ZCzxmzG85SZWkuMkVr1QTS70fE6Qp6QbLBFSyA.jpg', '09:47 AM', '19-10-2024', NULL, '1', '2024-10-19 04:15:51', '2024-10-19 04:17:41'),
(16, 9, '200', 'odometer/Iy2QZ8G12NZsVGFKo9YuSbRuUcGjlTk5k86FNtuV.jpg', '10:36 AM', '19-10-2024', NULL, '500', 'odometer/hmESdXVTlyOKb8kFPsdS9s74mmJNdRX7AvjPAIgx.jpg', '02:04 PM', '19-10-2024', NULL, '1', '2024-10-19 05:06:14', '2024-10-19 08:34:57'),
(17, 18, '22', 'odometer/BYnryMEOVSzQDTdTn0KiI8UzgpBT1rLQeWoslkRh.jpg', '10:40 AM', '19-10-2024', NULL, '32', 'odometer/KYOdS83awYG8DsPGFWQKFx8UCVIqpRTMBhhKcVhs.jpg', '10:41 AM', '19-10-2024', NULL, '1', '2024-10-19 05:10:30', '2024-10-19 05:11:15'),
(18, 18, '25', 'odometer/LEqQ1MbhqP6x6rkW3t2oxZC3yYQd72kBhXIkaeLG.jpg', '11:32 AM', '19-10-2024', NULL, '88', 'odometer/o6OcWo2UXPfzGG38stumA2YWfQkM3KwCxv16SeJ8.jpg', '11:33 AM', '19-10-2024', NULL, '1', '2024-10-19 06:02:47', '2024-10-19 06:03:47'),
(19, 18, '55', 'odometer/Nn5HSNQu79qFB6tDPh8HxnfQcFO8g6wQbOQQEQQq.jpg', '11:35 AM', '19-10-2024', NULL, '8080', 'odometer/OOc5hP1eQfvwM2CiwaYhLGlnmd3ae1Z0WPeHjiof.jpg', '02:30 PM', '19-10-2024', NULL, '1', '2024-10-19 06:05:56', '2024-10-19 09:00:46'),
(20, 18, '205', 'odometer/na8n6aoGk2MNXsJFtMV6ZtZaTkngSO2hcXBmWMhM.jpg', '11:15 AM', '21-10-2024', NULL, '808', 'odometer/udZJ2VM7LlScMQFF3GJwetXlgA8ge8Fi1HZriziv.jpg', '11:16 AM', '21-10-2024', NULL, '1', '2024-10-21 05:45:54', '2024-10-21 05:46:32'),
(21, 18, '555', 'odometer/MFsvwhAEA7NGUb7jrmyGN5TzMa0ZrXSSvjkdWKAU.jpg', '11:19 AM', '21-10-2024', NULL, '600', 'odometer/fy0hLFa5XXA9c4gvWKf9ntLG9BSpP9B4IaAb4xre.jpg', '01:57 PM', '21-10-2024', NULL, '1', '2024-10-21 05:49:28', '2024-10-21 08:27:55'),
(22, 18, '500', 'odometer/pUA3LM9vulzzhWZAc9ogmWmJQFVJLjNxGe7Dt9BD.jpg', '12:07 PM', '22-10-2024', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2024-10-22 06:37:33', '2024-10-22 06:37:33'),
(23, 18, '222', 'odometer/eEFETfBsrnmxUzVZom3bi0aeUOHxEKY7uQqZpTGH.jpg', '11:53 AM', '23-10-2024', '11.1807508, 75.8545927', '8888', 'odometer/9m6LrvRcA6eoSp9p7UQqrm4pAihSIjSVFNFaeYn6.jpg', '12:01 PM', '23-10-2024', '11.1807573, 75.8546012', '1', '2024-10-23 06:23:15', '2024-10-23 06:31:56'),
(24, 4, '500', 'odometer/3t9oC6rcHHzoqFnwpcuSEzqK3rQjB0aQvbo6xeLV.jpg', '10:28 AM', '04-11-2024', '11.1807416, 75.8545779', '695', 'odometer/yXVO2Vx0AUQEdHVmJrqnxGxXrGartoDOF65LAKAc.jpg', '12:23 PM', '04-11-2024', '11.1807634, 75.8545941', '1', '2024-11-04 04:58:47', '2024-11-04 06:53:25'),
(25, 4, '200', 'odometer/5BuwdV0SS0saGjX53LGTlUc4QQLRcQ5uoydlOwVY.jpg', '02:51 PM', '05-11-2024', '8.5061135, 76.9535024', '500', 'odometer/jkGUZeX0A5duRExttGjhn9dBAVTEdY7TbQQGiu5w.jpg', '02:52 PM', '05-11-2024', '8.5061135, 76.9535024', '1', '2024-11-05 09:21:40', '2024-11-05 09:22:31'),
(26, 18, '500', 'odometer/Xxc7bdzkBsxmyrfu8jpnA4iFxCgOQTe0B9tv9gTW.jpg', '11:15 AM', '03-12-2024', '11.1807614, 75.8545938', '576', 'odometer/5sSFb5Lfn8KUJXynCiU4ycXhRO6JySKF7e3duBut.jpg', '03:31 PM', '03-12-2024', '11.1807608, 75.8545971', '1', '2024-12-03 05:45:49', '2024-12-03 10:01:45'),
(27, 18, '85', 'odometer/ile6pW4kCls0XYdiYRZD7JMqpLz5aFy9xuUmikaG.jpg', '06:09 PM', '11-12-2024', '11.1807736, 75.8546007', '222', 'odometer/cmMeZvHd35nM8yrkBEQ54ctshsHdt5NuDkygeLnN.jpg', '06:10 PM', '11-12-2024', '11.1807736, 75.8546007', '1', '2024-12-11 12:39:34', '2024-12-11 12:40:45'),
(28, 18, '200', 'odometer/PkfwxUajJ0EgeF9w5ELzPZIpd1msZd47v4Yjfjn2.png', '11:00 AM', '16-12-2024', '1.555,1.20215', '322', 'odometer/jFN9ZbwpERJVRBwCBzBmNsHNIo4ILsCYyIazZFae.jpg', '11:01 AM', '16-12-2024', '37.4219983, -122.084', '1', '2024-12-16 05:30:34', '2024-12-16 05:31:22'),
(29, 18, '123', 'odometer/muIDeUNsrcUM78x0TIHYFP8cw6VKdXQEiYgZY8rQ.jpg', '11:01 AM', '16-12-2024', '37.4219983, -122.084', NULL, NULL, NULL, NULL, NULL, '0', '2024-12-16 05:31:33', '2024-12-16 05:31:33'),
(30, 18, '12', 'odometer/PRCQs3tr2yz2chNfonjPw9sIlVtp8Y2OuKhDVFbQ.png', '12:25 PM', '06-01-2025', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2025-01-06 06:55:09', '2025-01-06 06:55:09'),
(31, 18, '12', 'odometer/LaztmZfDvATabdlFnbwQZSHiq2YgiPUioGiABCTX.png', '12:25 PM', '06-01-2025', '12,12', NULL, NULL, NULL, NULL, NULL, '0', '2025-01-06 06:55:22', '2025-01-06 06:55:22'),
(32, 18, '12', 'odometer/RTKI6gwsNjyc6U0BgvZBcxtk1BrTLObPKVMP2HYo.png', '12:25 PM', '06-01-2025', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2025-01-06 06:55:32', '2025-01-06 06:55:32'),
(33, 18, '12', 'odometer/cueRhDmg4MZR5y3rWqGvbTEDSLZipfM953WoBDbC.png', '12:25 PM', '06-01-2025', '12,12', '25', 'odometer/q8zZzH4Vf8YPduViiMb51hlEJdkx8RMKhuxx16xC.jpg', '12:30 PM', '06-01-2025', '11.180775, 75.8545333', '1', '2025-01-06 06:55:36', '2025-01-06 07:00:00'),
(34, 18, '15', 'odometer/fjFazdB7vNZCu8eHsGDM9iHYEDkPR7zWGe8DSSar.jpg', '12:31 PM', '06-01-2025', '11.180775, 75.8545333', '200', 'odometer/Dn1UTajEZSpx86v5oSNlMQeiI9zns1MP4jxYHTuN.jpg', '12:32 PM', '06-01-2025', '11.180775, 75.8545333', '1', '2025-01-06 07:01:58', '2025-01-06 07:02:08'),
(35, 18, '11', 'odometer/rrFVE2LVXyUoWgZnJQvKq0RW16d8iosvstHaVJZ5.jpg', '12:35 PM', '06-01-2025', '11.180775, 75.8545333', NULL, NULL, NULL, NULL, NULL, '0', '2025-01-06 07:05:31', '2025-01-06 07:05:31'),
(36, 18, NULL, 'odometer/hExF7E0lt7FOUxpyfacMFwnxU2tx6SzY0MJi6JQn.png', '12:45 PM', '06-01-2025', '12,12', NULL, NULL, NULL, NULL, NULL, '0', '2025-01-06 07:15:31', '2025-01-06 07:15:31'),
(37, 18, '1234', 'odometer/4DEZKTDsJCKZQyxWGJdnojru8D60kvrXGUk07WQA.jpg', '10:20 AM', '07-01-2025', '11.180775, 75.8545333', NULL, NULL, NULL, NULL, NULL, '0', '2025-01-07 04:50:12', '2025-01-07 04:50:12');

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
  `ration_card` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`ration_card`)),
  `driving_lic` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`driving_lic`)),
  `latitude_and_longitude` varchar(255) DEFAULT NULL,
  `insured_version_acc` varchar(255) DEFAULT NULL,
  `insured_occupation` varchar(255) DEFAULT NULL,
  `rc_owner_name` varchar(255) DEFAULT NULL,
  `vehicle_no` varchar(255) DEFAULT NULL,
  `made_make` varchar(255) DEFAULT NULL,
  `engine_no` varchar(255) DEFAULT NULL,
  `chass_no` varchar(255) DEFAULT NULL,
  `class_of_vehicle` varchar(255) DEFAULT NULL,
  `permit_details` varchar(255) DEFAULT NULL,
  `details_opp_vehicle` varchar(255) DEFAULT NULL,
  `owner_opp_vehicle` varchar(255) DEFAULT NULL,
  `fitness_validity_from` date DEFAULT NULL,
  `fitness_validity_to` date DEFAULT NULL,
  `polution_validity_from` date DEFAULT NULL,
  `polution_validity_to` date DEFAULT NULL,
  `doa_in_policy` varchar(255) DEFAULT NULL,
  `policy_comper_tp_liability` varchar(255) DEFAULT NULL,
  `if_goodladen_details` varchar(255) DEFAULT NULL,
  `damage_goods_transport` varchar(255) DEFAULT NULL,
  `details_damage_vehicle` varchar(255) DEFAULT NULL,
  `insured_advocate` varchar(255) DEFAULT NULL,
  `accused_admited_offence` varchar(255) DEFAULT NULL,
  `type_license` varchar(255) DEFAULT NULL,
  `vehicle_auth_drive` varchar(255) DEFAULT NULL,
  `mismatch_vehicle_in_dl` varchar(255) DEFAULT NULL,
  `insured_advocate_num` varchar(255) DEFAULT NULL,
  `all_liability_covered` varchar(255) DEFAULT NULL,
  `is_close_proximity` tinyint(1) DEFAULT NULL,
  `rc_owner_insurer_same` tinyint(1) DEFAULT NULL,
  `victim_is_employee` tinyint(1) DEFAULT NULL,
  `reg_valid_doa` tinyint(1) DEFAULT NULL,
  `fitness_valid_doa` tinyint(1) DEFAULT NULL,
  `valid_permit_doa` tinyint(1) DEFAULT NULL,
  `any_violation_route_permit` tinyint(1) DEFAULT NULL,
  `opp_party_insurer_name` varchar(255) DEFAULT NULL,
  `opp_party_policy_no` varchar(255) DEFAULT NULL,
  `is_opp_party_liabile` tinyint(1) NOT NULL DEFAULT 0,
  `opp_party_period_insurance` date DEFAULT NULL,
  `opp_part_class_vehicle` varchar(255) DEFAULT NULL,
  `opp_party_rc_owner` varchar(255) DEFAULT NULL,
  `opp_engine_no` varchar(255) DEFAULT NULL,
  `opp_chassis_no` varchar(255) DEFAULT NULL,
  `cc_vehicle` int(11) DEFAULT NULL,
  `opp_party_cc_vehicle` int(11) DEFAULT NULL,
  `address_mobile_accused` varchar(255) DEFAULT NULL,
  `accused_dl_vaild_doa` tinyint(1) DEFAULT NULL,
  `rel_accused_insured` text DEFAULT NULL,
  `opp_driver_dl_valid` tinyint(1) DEFAULT NULL,
  `accused_accident_before` tinyint(1) DEFAULT NULL,
  `dl_no_owner` varchar(255) DEFAULT NULL,
  `dl_no_opp_vehicle` varchar(255) DEFAULT NULL,
  `opp_party_class_vehicle_auth_drive` varchar(255) DEFAULT NULL,
  `accused_first_issue_nt` date DEFAULT NULL,
  `opp_party_first_issue_nt` date DEFAULT NULL,
  `nt_validity__accused` date DEFAULT NULL,
  `nt_validity_opp_party` date DEFAULT NULL,
  `badge_no_accused` varchar(255) DEFAULT NULL,
  `badge_no_opp_party` varchar(255) DEFAULT NULL,
  `accused_tv_first_issue` date DEFAULT NULL,
  `opp_party_tv_first_issue` date DEFAULT NULL,
  `accused_transport_validity` date DEFAULT NULL,
  `opp_party_transport_validity` date DEFAULT NULL,
  `interact_no` varchar(255) DEFAULT NULL,
  `accident_hapn_nat_hoilday` varchar(255) DEFAULT NULL,
  `date_claim_intimated` date DEFAULT NULL,
  `reason_late_intimation` text DEFAULT NULL,
  `insured_profession` varchar(255) DEFAULT NULL,
  `is_neg_area_address` tinyint(1) NOT NULL DEFAULT 0,
  `pan_no_owner` varchar(255) DEFAULT NULL,
  `aadhar_no_owner` varchar(255) DEFAULT NULL,
  `hyp_details` text DEFAULT NULL,
  `vehicle_damages` text DEFAULT NULL,
  `comercl_vehicle_details` text DEFAULT NULL,
  `material_loss_accidnt` text DEFAULT NULL,
  `material_quantity` decimal(10,2) DEFAULT NULL,
  `is_load_recept_available` tinyint(1) NOT NULL DEFAULT 0,
  `fitness_details` text DEFAULT NULL,
  `area_covered` varchar(255) DEFAULT NULL,
  `prev_insurer` varchar(255) DEFAULT NULL,
  `prev_policy_no` varchar(255) DEFAULT NULL,
  `policy_detl` text DEFAULT NULL,
  `social_status` varchar(255) DEFAULT NULL,
  `any_clain_in_prev_policy` tinyint(1) NOT NULL DEFAULT 0,
  `is_prev_claim_photo_available` tinyint(1) NOT NULL DEFAULT 0,
  `executive_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `owner_downloads` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`owner_downloads`)),
  `sp_case` int(11) DEFAULT NULL,
  `ffffffffff` varchar(255) DEFAULT NULL,
  `questions20` text DEFAULT NULL,
  `questions21` date DEFAULT NULL,
  `questions22` varchar(255) DEFAULT NULL,
  `what_is_garage_badge_nameddeeeee` varchar(255) DEFAULT NULL,
  `owner_documents` varchar(255) DEFAULT 'NULL',
  `ddddddddddddddsds` date DEFAULT NULL,
  `abbd_questions_here` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `owner_data`
--

INSERT INTO `owner_data` (`id`, `assign_work_id`, `owner_written_statment_images`, `owner_aadhaar_card_images`, `owner_voice`, `ration_card`, `driving_lic`, `latitude_and_longitude`, `insured_version_acc`, `insured_occupation`, `rc_owner_name`, `vehicle_no`, `made_make`, `engine_no`, `chass_no`, `class_of_vehicle`, `permit_details`, `details_opp_vehicle`, `owner_opp_vehicle`, `fitness_validity_from`, `fitness_validity_to`, `polution_validity_from`, `polution_validity_to`, `doa_in_policy`, `policy_comper_tp_liability`, `if_goodladen_details`, `damage_goods_transport`, `details_damage_vehicle`, `insured_advocate`, `accused_admited_offence`, `type_license`, `vehicle_auth_drive`, `mismatch_vehicle_in_dl`, `insured_advocate_num`, `all_liability_covered`, `is_close_proximity`, `rc_owner_insurer_same`, `victim_is_employee`, `reg_valid_doa`, `fitness_valid_doa`, `valid_permit_doa`, `any_violation_route_permit`, `opp_party_insurer_name`, `opp_party_policy_no`, `is_opp_party_liabile`, `opp_party_period_insurance`, `opp_part_class_vehicle`, `opp_party_rc_owner`, `opp_engine_no`, `opp_chassis_no`, `cc_vehicle`, `opp_party_cc_vehicle`, `address_mobile_accused`, `accused_dl_vaild_doa`, `rel_accused_insured`, `opp_driver_dl_valid`, `accused_accident_before`, `dl_no_owner`, `dl_no_opp_vehicle`, `opp_party_class_vehicle_auth_drive`, `accused_first_issue_nt`, `opp_party_first_issue_nt`, `nt_validity__accused`, `nt_validity_opp_party`, `badge_no_accused`, `badge_no_opp_party`, `accused_tv_first_issue`, `opp_party_tv_first_issue`, `accused_transport_validity`, `opp_party_transport_validity`, `interact_no`, `accident_hapn_nat_hoilday`, `date_claim_intimated`, `reason_late_intimation`, `insured_profession`, `is_neg_area_address`, `pan_no_owner`, `aadhar_no_owner`, `hyp_details`, `vehicle_damages`, `comercl_vehicle_details`, `material_loss_accidnt`, `material_quantity`, `is_load_recept_available`, `fitness_details`, `area_covered`, `prev_insurer`, `prev_policy_no`, `policy_detl`, `social_status`, `any_clain_in_prev_policy`, `is_prev_claim_photo_available`, `executive_id`, `created_at`, `updated_at`, `location`, `owner_downloads`, `sp_case`, `ffffffffff`, `questions20`, `questions21`, `questions22`, `what_is_garage_badge_nameddeeeee`, `owner_documents`, `ddddddddddddddsds`, `abbd_questions_here`) VALUES
(1, 30, '[\"written_statement\\/5fMoiWn76JRzXtAT6UTuRh5ZXnbjEI1DBcbgN1c1.jpg\"]', '[\"aadhaar\\/pJrHALMNoJqxjUHuEZJeeT5RRZaLWLI0fzlEMkX8.jpg\"]', '[\"voice\\/4cpYhnZNwBjvE82usYYt0At2aW9heFyQrAL6JzRR.aac\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 18, '2024-10-19 00:36:51', '2024-10-19 00:36:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 30, '[\"written_statement\\/XndYIb5SnheEBjoaLrKas6b6K6l0CXEPpCqrnVLe.jpg\"]', '[\"aadhaar\\/gX0sqsaB4hsFNqrgU08u27en7DYG37q6RA7jZIoi.jpg\"]', '[\"voice\\/hqj7jU1C6jVwxGtN9NbhbrRRaXQNOvW7F9foR97V.aac\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 18, '2024-10-19 00:39:53', '2024-10-19 00:39:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 31, '[\"written_statement\\/FlpxPx87QyV39yKQTQ4sMKZ0vVwmkjniXzEApxDX.jpg\"]', '[\"aadhaar\\/vLGzBVM88YulkH0epBmCsnbimL5mLpTYEMYZDlJx.jpg\"]', '[\"voice\\/rhrxt1wNtB2Dm02cU7gcwPSBQL6eVzA2F0Pc8ik8.aac\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 18, '2024-10-19 01:49:56', '2024-10-19 01:49:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 32, '[\"written_statement\\/9TqUEWTi7nXDItyswui4ZRJDULo9g5tDVp7qkFwo.jpg\"]', '[\"aadhaar\\/EN0SkPUs8IhCME6TqIRXD7a3tbleAjKMdhoLVOW5.jpg\"]', '[\"voice\\/A0q3ydkCFFa7Wi8s7om0aksVqBp8FTLbeGYvi3s7.aac\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 18, '2024-10-22 01:07:01', '2024-10-22 01:07:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 33, '[\"written_statement\\/jakjCiSu7aCt3cJjWx8esgEsWtf2xf350vUA9Rbe.jpg\"]', '[\"aadhaar\\/Hjiw5s8mIMCH7DX0lWUuujGbJ22MsCuLWQLmPvlV.jpg\"]', '[\"voice\\/4rG0ldkZdclbpq6lJwNMs8zJlbiyZdwbQykKgbUs.aac\"]', NULL, NULL, '11.1807518, 75.8545946', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 18, '2024-10-27 22:50:26', '2024-10-27 22:50:26', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 34, '[\"written_statement\\/sQ0IWJBLOfzeroDxMm65YEqy4cy1FSlqFe8PSi4x.jpg\"]', '[\"aadhaar\\/ZWnHVggEwkYZlyGeyGBEHMfNoiBvDR53zUlV65Cb.jpg\"]', '[\"voice\\/q4vf8i1seaik0aFub15z07O2HnbdoqvFintqOvrX.aac\"]', NULL, NULL, '11.1807414, 75.8545729', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, '2024-11-04 01:25:04', '2024-12-12 03:44:08', 'Driver Drop Calicut, chungam, Ramanattukara', '[\"owner_downloads\\/7CvxgIlnT438UMWZEqYVGIMH9WmeAe6tcUJZNtgd.aac\"]', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 35, '[\"written_statement\\/Sn573cc1PAji2b9MB5tWPOjuuKo8clXY8m4O6vFK.jpg\",\"written_statement\\/axxrpS2K0KyruDl6odyYdkLTYfk3aDwc1akfa2Gx.jpg\"]', '[\"aadhaar\\/eshqNqy6PBM5RQKtCBVr5EtQHG8Z9GqxPboRbOzT.jpg\",\"aadhaar\\/qarwq1aNMccMqp8sEvQb3xdX5mZqVVKHx3xW1CMQ.jpg\"]', '[\"voice\\/PHpiLA3RAGV4r5Q43g4YHZDydfR5CumdEwRgaZFc.aac\"]', NULL, NULL, '37.4219983, -122.084', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 18, '2024-11-19 05:10:09', '2024-11-19 05:10:09', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 38, '[\"written_statement\\/my6fpxPhQvpSBjyd6iYJd8jthtclXOTn5WlqLCjw.jpg\"]', '[\"aadhaar\\/Bp5hxlADvfHm99vZkGxXKXEIsSkSSUhm7ErxqkGp.jpg\"]', NULL, NULL, NULL, 'Fetching location...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 18, '2024-11-19 07:06:44', '2024-11-19 07:06:44', 'Error fetching location: Null check operator used on a null value', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 37, '[\"written_statement\\/N7G87T6lH93pjpUkvQuNPUA7I6lweiOQlP2aq096.jpg\"]', '[\"aadhaar\\/d3d0g6RA8gyjdvQuQJyvPpNfnpSbums7DKwzBM86.jpg\"]', NULL, NULL, NULL, '11.1807535, 75.8545875', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 18, '2024-11-19 07:08:06', '2024-11-19 07:08:06', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 39, '[\"written_statement\\/R0mYNiFZJfCoezl1CqpUXDL5NTIR0VetrQtZYwU4.jpg\",\"written_statement\\/Aso2WtBQzMW0TrUU6KfV6WUAETwsaa5C3xcbdWS4.jpg\"]', '[\"aadhaar\\/pymsaly4i87zCLyAEelVgey8mAr7hR4862aBu9bq.jpg\"]', '[\"voice\\/hnuSBVXqj10qiXqGCmUUX6w7alz9GRIwh7R4KiFS.aac\"]', NULL, NULL, '11.1807642, 75.8546049', 'fghjnkrdtfgyhujktfgyhuj', 'dfghjmnkfghj', 'sdfguhjhjghffcgvbn', 'fghjnkmlsdfghgjkjh', 'dfcgvbhjnmnnbbvcxcvb', 'xcfgvbhjnm,mnbnbxfcg', 'vhbjnm,mnbvdxfgfhjkj', 'dfghjklhgffdddf', 'rftgujhkhgfds', 'dfghjklkhjgfdsfghj', 'dftghujkhgf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 18, '2024-11-22 23:30:17', '2024-12-07 04:47:10', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 40, '[\"written_statement\\/sTj6S3pzMTXkUTlIKMQ6bljHO07T7QSDMVkhyLFm.jpg\"]', '[\"aadhaar\\/xusS4166GETqwVQDQ3z6AxmpYL8V9cySPgUUQTJt.jpg\"]', '[\"voice\\/fF1Z0iCzw8tdVVmL1BF3au1nhvhspWUAziF3Dzz2.aac\"]', NULL, NULL, '11.1807585, 75.8545964', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 18, '2024-11-22 23:57:02', '2024-11-22 23:57:02', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 41, '[\"written_statement\\/Y0mdYDncIC3O2S5DmwHIlMINNcQDOPSxYJcXDGIY.jpg\"]', '[\"aadhaar\\/I3SaIa59sAbhgVaABpJaEhcaNDMXSO2cpFUVjjlj.jpg\"]', '[\"voice\\/JcvZv3JitWQrQcwVUFR0YPpK7SzWvBzDlDteFjnT.aac\"]', NULL, NULL, '11.1807731, 75.854605', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 18, '2024-11-23 02:12:35', '2024-11-23 02:12:35', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 42, '[\"written_statement\\/RXT74CQh6g9bCxGE4uQ1cyKDmaYzTC4VVFtCpU2n.jpg\",\"written_statement\\/GK7beun4BwLGR5USar3JjlW35WqIzphKFHlYJ5hP.jpg\",\"written_statement\\/pM1cs5Wa2I1bx2AfFwBMUp15JVxkarciMJDA5V0M.jpg\",\"written_statement\\/wEDBwoVHcEKteEmPjjcQ6fPh5d9awrTaJAMhogsE.jpg\",\"written_statement\\/aKUkSYwmvwGTPUVIXEOsM3669rLGbS07eeKr3snM.jpg\",\"written_statement\\/7stcAOgtJv8AYHF2SEX33HA4iNUUZhvpLsIhphaA.jpg\"]', '[\"aadhaar\\/iQfIh0VdrBEMe8M5ee1TwLcU3VeZwiMAQhjO04dp.jpg\",\"aadhaar\\/YfCHLo2BQSWcWRcjWNWJamQ2EGorvHvqIqFonoq1.jpg\",\"aadhaar\\/tEwDSZfNqTcZQkqiKNbYsIwrVnRTlqnzyXBTiMhG.jpg\",\"aadhaar\\/yVNl9cfl1MAu7oS4z0JxxRv3TSeKHPRH41o2XIjO.jpg\",\"aadhaar\\/0gOhTkcUnNCTovrUOl29F8AVsQMiLQ8bRA1LdMOk.jpg\",\"aadhaar\\/k2SgjEbKcqWqqyf3Z0jiVX3fwiTlRa8hmzvIhT86.jpg\",\"aadhaar\\/RhWBHN2JHtKCOn216w22cUciurQHDkjU2UXP9i2y.jpg\"]', '[\"voice\\/jSuzV1OdbLmmaLCe5IRSDTyfltEQKVJcqRREzW5I.aac\"]', NULL, NULL, '11.1807635, 75.8546046', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 18, '2024-11-23 02:41:40', '2024-11-23 02:41:40', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 43, '[\"written_statement\\/uaHjnXxPo6Niypp5qk2H78KEszyQDTW4DOZRjFuM.jpg\"]', '[\"aadhaar\\/5NvkRPqSt8mLk04row9REH1Q8Rux0EwYR91clm0N.jpg\"]', '[\"voice\\/gdKODttwCyLDJIH56QudyiNdu6z5SKUNnomtPlor.aac\"]', '[\"owner_ration\\/B98td3BLm2U7KgUy232kUwfQ2NygFPzdZ8yCuvDG.jpg\"]', '[\"default\\/DpLuyGjZrR6Gaj8g1igXN4GVMe6TyT7sDduW0cgf.jpg\"]', '37.4219983, -122.084', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 18, '2024-11-25 23:31:10', '2024-11-25 23:31:10', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 44, '[\"written_statement\\/ZYDM3OdairgpRKpHeQsIWQzjnvT1dlxohw45Q6yn.jpg\"]', '[\"aadhaar\\/spgWq2PtouxUdpXrIxS4VXA76swoeMnwS4HWInnk.jpg\"]', '[\"voice\\/FZFPb5lgPQmKyIa8yp4FjjKbhun2aN2PRWEQ4goE.aac\"]', '[\"owner_ration\\/Omp2QuF1oR655ZiKEXPsCsA4UO129hu1SUD3lxwd.jpg\"]', '[\"default\\/llFbmL7i0w00b5LuTeOzVneNXUQeg0g24DDXkX8z.jpg\"]', '37.4219983, -122.084', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 18, '2024-11-25 23:31:48', '2024-11-25 23:31:48', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 45, '[\"written_statement\\/eetx4kNZruhJoRFmSX1XXZg2NHVL32ig9Ov2sBN4.jpg\",\"written_statement\\/68Tfs7hD4i0Ccu0MhWxBBIlY5yMJhBHrmh0mcNBt.jpg\",\"written_statement\\/N3n2aBVnacBOBaJLlZ9QfqzluAaYuvinCWFK7qNW.jpg\",\"written_statement\\/v87HJIrahWNbHnmybNQu91yk8PY6rEnMq6Mtelaz.jpg\"]', '[\"aadhaar\\/9GGgIaZsjIomAHS44dBsdJGoryyQ8SoA9bQJO0ww.jpg\",\"aadhaar\\/uqKBsKph08vGisbYHSwdBacGCZxQdwD7PEkwMKxt.jpg\",\"aadhaar\\/sSMgLyk6H2fNSGkbw2NjqDhCwJCce6ADRWjlnOtq.jpg\",\"aadhaar\\/Ran6KgeiC5tkkTsybq0XkkfFbu13FDEzvrTqV137.jpg\"]', '[\"voice\\/d6akjIFJ4VxT1bUpT1U5poX67Fpzj01jhRgFhAPd.aac\"]', '[\"owner_ration\\/Ot3FhBXa1tcEJJyOdIrVabnOydENyKvJnx98F4ED.jpg\",\"owner_ration\\/W0vQlGCRv9wI8woOdSPnSHRFTfp1Eg2V8a1GvDFU.jpg\",\"owner_ration\\/7GM6N9cUILOPjxEOij2ftFMaF4hiZR6Vy1sXzEPA.jpg\"]', '[\"default\\/DrrwPWvJKd3GIlfnkCCP7OXfIElS5TP24hzWlcYv.jpg\",\"default\\/10BQdKyjH9jtz1suxSMQLMc9jsRsLoavqBEWldsl.jpg\",\"default\\/wcxYiByfU8TMrWEQYjqpFIDfNcZhPgVWu2DNyn37.jpg\",\"default\\/gU6SGVgbKObrMOS8I9w1zGxUkvh4EY9Z7l32PpuW.jpg\"]', '11.1807587, 75.8545892', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 18, '2024-11-26 03:25:02', '2024-11-26 03:25:02', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 45, '[\"written_statement\\/8MZNQ3j630Dp0srOeHDSaVsEwn1qlNdsLC2LRqDt.jpg\",\"written_statement\\/ROggc7eh700EXvr8xa9mMTmmsy7bOYqE4K2xHXoI.jpg\",\"written_statement\\/UtFDZYqYQnPf8ZFAZna2dpPerSGacLdUZXPL3tqZ.jpg\",\"written_statement\\/3Fh64pXqMWT8O5j8Rruz5bZHtXu5GwDa5368AyDA.jpg\"]', '[\"aadhaar\\/12HdhtRdzR17CogI9jKWqt1ExafnjpHsF0Zl7Qr8.jpg\",\"aadhaar\\/CCSCihaUTgfwJgJsMQfweqNieSQqslvAsqpEz0Qq.jpg\",\"aadhaar\\/TRhPolghjXAPxwuSA6aGRfP4z64RfSvcAndgl3iY.jpg\",\"aadhaar\\/ACPMnJ8ClJiYXfnMXHwwM949Y3FyBR3v5P9ebg3C.jpg\"]', '[\"voice\\/B1e0GuaGsNJVJS96L4pUvouDvLkzFffGdFXvLO6h.aac\"]', '[\"owner_ration\\/4eU28rewtHywiCbdXUzmbwWtphxalerfT1eEYcLx.jpg\",\"owner_ration\\/MOVEqnC0c9wbC2S18qOyupJ0vjcFcXRjXvYp3Gb6.jpg\",\"owner_ration\\/7zRSIfWshkfm39HP6rJku3cWXyYOCbt7OKgf6O8R.jpg\"]', NULL, '11.1807587, 75.8545892', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 18, '2024-11-26 03:27:10', '2024-11-26 03:27:10', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 45, '[\"written_statement\\/1gCu162i6X7bZkOdKyL2ubIxXOj5ErRgnQ1kFCkH.jpg\",\"written_statement\\/kYnm6dx79HRQZXlwIeY6p41ZwrvcfMdpoqwThIJV.jpg\",\"written_statement\\/WJeGfA8PXco8jPrKjMHxXze251kcYtif6bPRJs8D.jpg\",\"written_statement\\/yw85PAMg4Ap2Jy4zdS0tQMSzDlH1pvmXYWQdkxLL.jpg\"]', '[\"aadhaar\\/AOwDPvbLFZOCXHD5LCDkZpuWY7rhusPXrVZKdoR3.jpg\",\"aadhaar\\/YSStscR5nNdjCZkSiqAIKgwnXNO0oX9i1SDxZ9fS.jpg\",\"aadhaar\\/K1wDkVXVkB5m7siKYFfkF3Zi3RLsS4tEGu6DXaXj.jpg\",\"aadhaar\\/rzxBWf6kyCaHbxM5egyAzaHsUUdHr1ZBM3QUgbYB.jpg\"]', '[\"voice\\/jGSlRp1lUeO6ZAYNZnvBUhBa8CpmvtSwf8HiQr7w.aac\"]', '[\"owner_ration\\/aNWl1heX1Y1igQnIRx9RfSlZDHjn1wFtfSnVWRgi.jpg\",\"owner_ration\\/u7kDVSFMrCa1619PrNmQVEBipGOfnK6UmL36r7zf.jpg\",\"owner_ration\\/VF6SXC5rUWkvecCOufXpVcCwtPGhE42OOqEJ4P9z.jpg\"]', NULL, '11.1807587, 75.8545892', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 18, '2024-11-26 03:27:49', '2024-11-26 03:27:49', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 46, '[\"written_statement\\/K4EPtkRgQuXVwrpNillIQ5SFbQNPY8phVZ9pc60t.jpg\",\"written_statement\\/V5wpxDxaqBnolnBNGCHPBhCqtuMSubkpV5ICxPfT.jpg\"]', '[\"aadhaar\\/eE2ON4jkI0YTRtsHfZb7hjyLR54z1pOysJXvCgkW.jpg\",\"aadhaar\\/zkgBbAhcYk266fjOQRLfLp26vhpHDIlz0zrJQdcv.jpg\"]', '[\"voice\\/0ABtSOUrCFMaBTB41SL605rB3CFqAJassToaB5e1.aac\"]', '[\"owner_ration\\/7oNwX5V4Vh99BIA3VfcYbWn9BpqqcIgLFth8fj73.jpg\",\"owner_ration\\/JcL6B9LS3dEyDISBqaQM0cTNexTssWRc6lTRSuhI.jpg\"]', '[\"default\\/mEFrCUPfqMzrISbyqxd0i3DMmz0Hw6R0jMIHqlCn.jpg\",\"default\\/yVXPJNpeEQqTDT08JIPiUkw1egEurwu2RpJFQEJU.jpg\"]', '37.4219983, -122.084', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 18, '2024-11-26 23:59:45', '2024-11-26 23:59:45', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 47, '[\"written_statement\\/6A7PNqXEeSUk4JUEXVtCslrRtcls0zsAzG1HJmM7.jpg\"]', '[\"aadhaar\\/splYAO77RmFGIhNgj4avqWXFLoPhjW402XAI8p4e.jpg\"]', '[\"voice\\/brjOSASdzgmFd8xQGBFzpxAJOZ7OittHk3CRXOvx.aac\"]', '[\"owner_ration\\/v814WmcQuX14ogmGJ6soNMKjNf5CZ2hdNj8nHbJM.jpg\"]', '[\"default\\/fMyrYzBbaWIB66xxOW33AOdUz1uDvL1xkRd3AFVd.jpg\"]', '37.4219983, -122.084', 'dsvsdvs', 'sdvsdv', 'dsvsdvs', 'dvsvsv', 'dsvsdvs', 'dsvdsvds', 'sdvsdv', 'Agricultural Vehicle', 'sdvsdvds', 'sdvsdv', 'sdvsdvs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 18, '2024-11-28 05:47:23', '2024-11-28 05:47:23', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 53, '[\"written_statement\\/c94JyREcsvMgRyQn7mXsPQPxO6gxZ1SQQY8a3x9u.jpg\"]', '[\"aadhaar\\/lAZERgUM4nZr1Oavz0oRNMrhf9Iiwxj2mZ01eVX3.jpg\"]', '[\"voice\\/Mt4aswr94Di4LL9XicWcMi4UHvlVzGuUeFCvfjWK.aac\"]', '[\"owner_ration\\/SzIk50ZTdFCVGNePzLSY6gFOmMIkqwMZUtzL9efF.jpg\"]', '[\"default\\/ZbgCUx3PxKxM4Q8xZ7VwPFNlgpfL5jbuxHTCoRxY.jpg\"]', '37.4219983, -122.084', 'sdvsdvsdvs', 'vsdvsdv', 'dsvdsvsdv', 'sdvsdvsdvsdv', 'sdvsdvsdv', 'dsvsdvsdv', 'bfdbfdbfd', 'Quadricycle', 'bfdbfdbfdbfdbfdb', 'fdbfbfdbfdbfd', 'fdbfdb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 17, '2024-12-02 04:32:00', '2024-12-02 04:32:00', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 36, '[\"written_statement\\/L7bJcFWcbKgP37MyMVHwEtGWrtymHEfc9MNxvIw6.jpg\"]', '[\"aadhaar\\/AN2ADvyFYSI3yKccTt686itllsaq43J3U00i0dtP.jpg\",\"aadhaar\\/XH01zOxgtmKOiHFxHSCrHoqrjH2khbc8ExSMAG4b.jpg\"]', NULL, NULL, NULL, '37.4219983, -122.084', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, '2024-12-12 03:50:52', '2024-12-12 03:50:52', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 54, '[\"written_statement\\/PAgGV1sMbpLBp1sSBOk1OprOLpQcpiPkz2MQJuPG.jpg\",\"written_statement\\/t5W7CGY7DGvhWW6ldWeXeh2Qt1XA23TZE7R3QUNC.jpg\",\"written_statement\\/CsfE8SyXGG0h91VeSnAzA83HDi3E0jhOBdJV8cKi.jpg\",\"written_statement\\/fedg7rGbZoUJukO3NzXUfmmqRSnJ6sn3vTHqmUfr.jpg\",\"written_statement\\/2S8dwL4bGUO4bNw3DXKtLtYOSwQ5Ez5hi6pai4yQ.jpg\"]', '[\"aadhaar\\/By7Kh1n7IzvodDMrG6KxZRY9PAMwAvyPzqx1XMuv.jpg\",\"aadhaar\\/IUN5AFUbvz0hY9atCUdqZPumzEVkTw2IDQ5WHh9Y.jpg\"]', '[\"voice\\/uuXEdK5GVudCVct8me3YOEOd6xZWygZZPGiS9CjQ.aac\"]', '[\"owner_ration\\/SkODijYkz4UVnwCxzhT84c8IyWDcn1muyquvOcw8.jpg\",\"owner_ration\\/UQCM2kRQOSbHeJGVLW4VPR3bcENWKiwqnq89D0L6.jpg\"]', '[\"owner_dl\\/5Op4j1u9SOueAXZoRgTFoSpIOrmSLOZjKDcSlleF.jpg\",\"owner_dl\\/as81TvJV91dl5BBDLvNW0Lf5V1GPcKuOAn4ELwck.jpg\"]', '37.4219983, -122.084', 'qweqwe', 'qweqwe', 'qweqwe', 'asdasdasd', 'asdasdasd', 'asdasd', 'asdasd', 'Construction Vehicle', 'sadasd', 'asdasf', 'asdfasd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 18, '2024-12-15 23:39:05', '2024-12-15 23:39:05', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-23', '2021-02-23', '2021-02-23', '2021-02-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 18, '2025-01-07 03:46:28', '2025-01-07 03:46:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-23', '2021-02-23', '2021-02-23', '2021-02-23', 'yes', 'no', 'notapp', 'ttt', 'ggggg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 18, '2025-01-07 03:47:13', '2025-01-07 03:47:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 30, '[\"written_statement\\/m2PL7E76nYusWATY2jPrtzEuWZEBhkj93pYaAoTA.jpg\"]', '[\"aadhaar\\/nLSfH4YQ6PNBMMEKJZceQfA3RJmSSp9frbxKlRlE.jpg\"]', '[\"voice\\/cNPWZEbIuPIg2GuZRWwquRkFjKJJt4XHJEMTYYGc.aac\"]', '[\"owner_ration\\/hb4CB75yS4Erj5Vh5ZU7PZ6UxzxKh0H08i184Okm.jpg\"]', '[\"owner_dl\\/aG6ou3m9XkPfluVuD6jT2FWJuBpQZpAYvgawebWi.jpg\"]', '37.4219983, -122.084', 'dfvdfvdfvdfvd', 'vdfvdfv', 'fdbvd', 'dfbdfbdfb', 'dfbdfb', 'dfbdfb', 'bdfbdfbdfb', 'Construction Vehicle', 'dfbdfbd', 'dfbdfb', 'dfbdfb', NULL, NULL, NULL, NULL, 'Yes', 'No', 'sdfsdf', 'dfsdfsdf', 'dsfdsfsd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 18, '2025-01-07 03:49:52', '2025-01-07 03:49:52', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 30, '[\"written_statement\\/SYmXeXQ7Jcx1YrnRsmwN2ET3BPgYdkomoELIHQLL.jpg\"]', '[\"aadhaar\\/so9DziXjutydnJwRj5FH88QaC8ZnqH61aCgimnZk.jpg\"]', '[\"voice\\/fPmcTOsM4IHYyleUNSY6mN2YmywRq2f8eVdOlDGO.aac\"]', '[\"owner_ration\\/SiA4iS61jYKk9ENSowkiZ24knniGxP5954H8IhDg.jpg\"]', '[\"owner_dl\\/STArV0XhezzT78LE862rDZKg0igF3g9cePKocoEd.jpg\"]', '37.4219983, -122.084', 'dfvdfvdfvdfvd', 'vdfvdfv', 'fdbvd', 'dfbdfbdfb', 'dfbdfb', 'dfbdfb', 'bdfbdfbdfb', 'Construction Vehicle', 'dfbdfbd', 'dfbdfb', 'dfbdfb', NULL, NULL, NULL, NULL, NULL, 'No', 'sdfsdf', 'dfsdfsdf', 'dsfdsfsd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 18, '2025-01-07 04:44:39', '2025-01-07 04:44:39', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 30, '[\"written_statement\\/dtxxitwBa54dYemKITVLZytJnMZthsFtMZlNu3LX.jpg\"]', '[\"aadhaar\\/WmfUgLDOog5n0jfPuubYndKRq0tozCm9QA50F0ty.jpg\"]', '[\"voice\\/tl5tXkax9wAjxfGn3AaKEx57dLCLV7BiMH9nMZFA.aac\"]', '[\"owner_ration\\/wtWIM6mJgZSvfb8BCtZoduZSCOASWJhkZSuh2h27.jpg\"]', '[\"owner_dl\\/FtMTZ3eUGHubNuIwZOM25o6SqgWjhnHgbDZBAHJS.jpg\"]', '37.4219983, -122.084', 'dfvdfvdfvdfvd', 'vdfvdfv', 'fdbvd', 'dfbdfbdfb', 'dfbdfb', 'dfbdfb', 'bdfbdfbdfb', 'Construction Vehicle', 'dfbdfbd', 'dfbdfb', 'dfbdfb', NULL, NULL, NULL, NULL, NULL, 'No', 'sdfsdf', 'dfsdfsdf', 'dsfdsfsd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 18, '2025-01-07 04:45:00', '2025-01-07 04:45:00', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 30, '[\"written_statement\\/p8DOajqZ1Gj1br0J7n2W0QqKfzQo34OXKIFTgROZ.jpg\"]', '[\"aadhaar\\/Ms7GEsZblQpv1dRUmWEOmfN0Ynuzg1aGE0KJkenV.jpg\"]', '[\"voice\\/p7BXM06R5HXE1ui84hYraxwMRpMAR8f8cdFtf6Gi.aac\"]', '[\"owner_ration\\/Yl16I1wUN1IN9LOrN60Jj2gDPy6eUjVRfzBJiFP4.jpg\"]', '[\"owner_dl\\/BDHpAxGhhIoKpfOv3iGxiW3J8vHeR0sQPZovx2CK.jpg\"]', '37.4219983, -122.084', 'dfvdfvdfvdfvd', 'vdfvdfv', 'fdbvd', 'dfbdfbdfb', 'dfbdfb', 'dfbdfb', 'bdfbdfbdfb', 'Construction Vehicle', 'dfbdfbd', 'dfbdfb', 'dfbdfb', NULL, NULL, NULL, NULL, NULL, 'No', 'sdfsdf', 'dfsdfsdf', 'dsfdsfsd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 18, '2025-01-07 04:45:15', '2025-01-07 04:45:15', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 30, '[\"written_statement\\/svg5x8808h2kT9Jwgn42atIaVOhZH3zU41mb6ydS.jpg\"]', '[\"aadhaar\\/LAm5zgR1I9ujk7exoIAlyMWVKaEPmLUe1clKzruO.jpg\"]', '[\"voice\\/DS658MPZZsRxQ0cTnGoGU80gDiGGjWuDHpjbqKbU.aac\"]', '[\"owner_ration\\/ibVs0C3kGtVmFqpkYdFKc3nMHHlMyT4fUixweidE.jpg\"]', '[\"owner_dl\\/cF36aRpztxp5tfP6tVg6rmpx3pMNHVWY22loFTBS.jpg\"]', '37.4219983, -122.084', 'dfvdfvdfvdfvd', 'vdfvdfv', 'fdbvd', 'dfbdfbdfb', 'dfbdfb', 'dfbdfb', 'bdfbdfbdfb', 'Construction Vehicle', 'dfbdfbd', 'dfbdfb', 'dfbdfb', NULL, NULL, NULL, NULL, NULL, 'No', 'sdfsdf', 'dfsdfsdf', 'dsfdsfsd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 18, '2025-01-07 04:45:28', '2025-01-07 04:45:28', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 30, '[\"written_statement\\/HbjSKk7XvPQjwq1zlKZZ51awrThUBJ7RdKA1cw3n.jpg\"]', '[\"aadhaar\\/zJN97hjFWVBB3I1RthrSJsGEaUuoxknzwrUHxIba.jpg\"]', '[\"voice\\/OT4zKd620gfYj6uwM3yBPfuiCWSLP1rxPuSDzC2Y.aac\"]', '[\"owner_ration\\/wFWQGOsBFcIuOn2gLsRXPR1mnCcuTl4PgyswmxZc.jpg\"]', '[\"owner_dl\\/BgMySNplz900Bko3sfYvYMWMXnR2Zkpg0UZwv2Vu.jpg\"]', '37.4219983, -122.084', 'dfvdfvdfvdfvd', 'vdfvdfv', 'fdbvd', 'dfbdfbdfb', 'dfbdfb', 'dfbdfb', 'bdfbdfbdfb', 'Construction Vehicle', 'dfbdfbd', 'dfbdfb', 'dfbdfb', NULL, NULL, NULL, NULL, 'Yes', 'No', 'sdfsdf', 'dfsdfsdf', 'dsfdsfsd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 18, '2025-01-07 04:46:03', '2025-01-07 04:46:03', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 30, '[\"written_statement\\/8jn1PslZBzxq5EyXwyh08nm5rJ0aSgkmWgGa68Rs.jpg\"]', '[\"aadhaar\\/JKYMRImOYIN4FbuA4tNCpI30q8CIq0NvxTEBZTDY.jpg\"]', '[\"voice\\/g3N160my3PUL4CQmybRTVd7kVqthKcdUAG5lpZgn.aac\"]', '[\"owner_ration\\/tVSo9uWvNciSaufzzVFBfCNHtUsXJNjCUYKqavV9.jpg\"]', '[\"owner_dl\\/4OoGq9NhNAvjFbuSFzrLKQbZw4cghe4WJ9H6LM2x.jpg\"]', '37.4219983, -122.084', 'dfvdfvdfvdfvd', 'vdfvdfv', 'fdbvd', 'dfbdfbdfb', 'dfbdfb', 'dfbdfb', 'bdfbdfbdfb', 'Construction Vehicle', 'dfbdfbd', 'dfbdfb', 'dfbdfb', NULL, NULL, NULL, NULL, 'Yes', 'No', 'sdfsdf', 'dfsdfsdf', 'dsfdsfsd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 18, '2025-01-07 04:46:58', '2025-01-07 04:46:58', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 18, '2025-01-07 04:49:53', '2025-01-07 04:49:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 30, '[\"written_statement\\/CJrSRxJuFL4RvmsQCxR2azYNvXo9uvv8pTv3Hxy5.jpg\"]', '[\"aadhaar\\/MM8o6uyYfcxb8mh0kP0oHZPLUMB7MNJPfV8KqSJb.jpg\"]', '[\"voice\\/vZfoc5ktt6yizAc1yLIVMVfwdOWAKPTVR4lmPFaH.aac\"]', '[\"owner_ration\\/vVfvVLNnWXbPVYmxSzaZKU3O8HwoRZCFg4NwhiXI.jpg\"]', '[\"owner_dl\\/HV2P9Peu2DApv8MERN6i4uY8ouKeG0fOCgI6mIL2.jpg\"]', '37.4219983, -122.084', 'dfvdfvdfvdfvd', 'vdfvdfv', 'fdbvd', 'dfbdfbdfb', 'dfbdfb', 'dfbdfb', 'bdfbdfbdfb', 'Construction Vehicle', 'dfbdfbd', 'dfbdfb', 'dfbdfb', NULL, NULL, NULL, NULL, 'Yes', 'No', 'sdfsdf', 'dfsdfsdf', 'dsfdsfsd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 18, '2025-01-07 04:50:54', '2025-01-07 04:50:54', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 30, '[\"written_statement\\/CSTfo33g9614wM3lyLlEL5KndxqTPcQM6jeYa9rY.jpg\"]', '[\"aadhaar\\/L8pfjc1KhAraDTyVyq08ksVVCyOOS1YSPz8OpiZo.jpg\"]', '[\"voice\\/T7J0MsdURIWo7anmqTZgAWbO0sMro0h8dR0WIqYV.aac\"]', '[\"owner_ration\\/MHnEJyMqpUHbsNCatp71VCpTaz682FEkjDnrXN8H.jpg\"]', '[\"owner_dl\\/tXp4ETIRu1FnscgE4SklBeGLkYBYvllx9gzt44ye.jpg\"]', '37.4219983, -122.084', 'dfvdfvdfvdfvd', 'vdfvdfv', 'fdbvd', 'dfbdfbdfb', 'dfbdfb', 'dfbdfb', 'bdfbdfbdfb', 'Construction Vehicle', 'dfbdfbd', 'dfbdfb', 'dfbdfb', NULL, NULL, NULL, NULL, 'Yes', 'No', 'sdfsdf', 'dfsdfsdf', 'dsfdsfsd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 18, '2025-01-07 04:53:53', '2025-01-07 04:53:53', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 30, '[\"written_statement\\/ZuzCI5uxF4KIewB3R9GRRJCafTJYrOPWZaUvsCCx.jpg\"]', '[\"aadhaar\\/r5eZsXYTvKHWenmv1wow7tIPjDdpaOObLgkz5sYc.jpg\"]', '[\"voice\\/zS6GOWXVPJHLuZBagEGzhcjhoG2MU7IHnq3shisQ.aac\"]', '[\"owner_ration\\/YezWjb6wBxfG3ge49P57lCHtWU4fzpkv22fTmYkO.jpg\"]', '[\"owner_dl\\/x1zY2K4u79gGFiCl37gKqYWuN4lCp3Fgme1pBNsM.jpg\"]', '37.4219983, -122.084', 'dfvdfvdfvdfvd', 'vdfvdfv', 'fdbvd', 'dfbdfbdfb', 'dfbdfb', 'dfbdfb', 'bdfbdfbdfb', 'Construction Vehicle', 'dfbdfbd', 'dfbdfb', 'dfbdfb', NULL, NULL, NULL, NULL, 'Yes', 'No', 'sdfsdf', 'dfsdfsdf', 'dsfdsfsd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 18, '2025-01-07 04:56:31', '2025-01-07 04:56:31', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 30, '[\"written_statement\\/s3EKL1WqoIfa37Vevj0g3eeAUn8qswm9neix587S.jpg\"]', '[\"aadhaar\\/7KH6QsF6njerZ7AXgJRW9TIi0CB7UlTEKDDDST0t.jpg\"]', '[\"voice\\/vTfZZmejr9R7UZORMBBB90pt0xKbkpSdHDe39V0m.aac\"]', '[\"owner_ration\\/NhngFL9QNAx27SSzZqtwcAEgeJnoe8SbZws0Zm6b.jpg\"]', '[\"owner_dl\\/YMYTqNWrvnX4EEd0DJnPo9rMSXbbh0DUTxIxVKBz.jpg\"]', '37.4219983, -122.084', 'dfvdfvdfvdfvd', 'vdfvdfv', 'fdbvd', 'dfbdfbdfb', 'dfbdfb', 'dfbdfb', 'bdfbdfbdfb', 'Construction Vehicle', 'dfbdfbd', 'dfbdfb', 'dfbdfb', NULL, NULL, NULL, NULL, 'Yes', 'No', 'sdfsdf', 'dfsdfsdf', 'dsfdsfsd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 18, '2025-01-07 04:57:48', '2025-01-07 04:57:48', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 30, '[\"written_statement\\/uitfQvXWoTUxnKUXC279Rv7rTmx5juvvuadQIxeu.jpg\"]', '[\"aadhaar\\/TyPNZ98rMHgt7YQdU0Rbi2Vt09QR3hkElM1ZnChb.jpg\"]', '[\"voice\\/mrkdcTbmXPJq5Kw7Udn7QD5YJdzGGgEANZkNGwv6.aac\"]', '[\"owner_ration\\/FzYtPCUBV5hZ3GjzppFVNB5GB151PCiWPO1FylBf.jpg\"]', '[\"owner_dl\\/xsTxeGTpPIbQl50m6vyyNsctAEJhXNrfEz5bdJaF.jpg\"]', '37.4219983, -122.084', 'dfvdfvdfvdfvd', 'vdfvdfv', 'fdbvd', 'dfbdfbdfb', 'dfbdfb', 'dfbdfb', 'bdfbdfbdfb', 'Construction Vehicle', 'dfbdfbd', 'dfbdfb', 'dfbdfb', NULL, NULL, NULL, NULL, 'Yes', 'No', 'sdfsdf', 'dfsdfsdf', 'dsfdsfsd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 18, '2025-01-07 04:58:21', '2025-01-07 04:58:21', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 30, '[\"written_statement\\/Zud8VXCTxrVj6LqYlejQSpXXJiD46eG56CYHniJF.jpg\"]', '[\"aadhaar\\/oy7t1qJfz8BcBD7Fw3UzGeEqCU2J2RpGe7DaFmiI.jpg\"]', '[\"voice\\/7BzppoeeaHgYFXVhJc6itSoiUzyeSK1lTR5eUIlP.aac\"]', '[\"owner_ration\\/PEhhXiXJdWFIKZqIGnUR5PEORo5llgWEnALgDG9E.jpg\"]', '[\"owner_dl\\/AseSjx1CKaundaao8k4VHzqT3y2AN2VIwC3oF6uf.jpg\"]', '37.4219983, -122.084', 'dfvdfvdfvdfvd', 'vdfvdfv', 'fdbvd', 'dfbdfbdfb', 'dfbdfb', 'dfbdfb', 'bdfbdfbdfb', 'Construction Vehicle', 'dfbdfbd', 'dfbdfb', 'dfbdfb', NULL, NULL, NULL, NULL, 'Yes', 'No', 'sdfsdf', 'dfsdfsdf', 'dsfdsfsd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 18, '2025-01-07 04:59:29', '2025-01-07 04:59:29', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 30, '[\"written_statement\\/CiDaEqIg9QaDO2z0WKJhdXmOrPaRUS4J9BRevhY2.jpg\"]', '[\"aadhaar\\/acUJv4meDZcxEEQvEtPWDVJB2w6whmmVJg4dNfcH.jpg\"]', '[\"voice\\/kvVcpTxIneV9k2fOvfOn982gIBfj2ksnHx73Myxu.aac\"]', '[\"owner_ration\\/RsaX6TwoRdDfRtXVe1gzVKLQkhZvyvFThA3jaQzv.jpg\"]', '[\"owner_dl\\/BMGZBimYg3sK3OSoTcscfSNd4uBpxxrQ2cq56dhT.jpg\"]', '37.4219983, -122.084', 'dfvdfvdfvdfvd', 'vdfvdfv', 'fdbvd', 'dfbdfbdfb', 'dfbdfb', 'dfbdfb', 'bdfbdfbdfb', 'Construction Vehicle', 'dfbdfbd', 'dfbdfb', 'dfbdfb', '2025-01-07', '2025-01-07', '2025-01-07', '2025-01-07', 'Yes', 'No', 'sdfsdf', 'dfsdfsdf', 'dsfdsfsd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 18, '2025-01-07 05:03:30', '2025-01-07 05:03:30', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
(6, 5, 'deepa', '15-10-2024', '2', '2024-10-15 09:09:09', '2024-10-15 06:21:14'),
(7, 18, '1234', '18-10-2024', '0', '2024-10-18 06:34:44', '2024-10-18 01:05:49'),
(8, 18, '123', '05-11-2024', '0', '2024-11-05 09:30:49', '2024-12-13 05:47:50'),
(9, 18, '1234', '06-01-2025', '0', '2025-01-06 06:30:07', '2025-01-06 01:03:03'),
(10, 18, '123', '06-01-2025', '1', '2025-01-06 06:46:02', '2025-01-06 06:46:02');

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
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) NOT NULL,
  `input_type` varchar(255) NOT NULL,
  `data_category` varchar(255) NOT NULL,
  `column_name` varchar(255) NOT NULL,
  `unique_key` varchar(500) DEFAULT NULL,
  `file_type` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `input_type`, `data_category`, `column_name`, `unique_key`, `file_type`, `created_at`, `updated_at`) VALUES
(2, 'Policy descriptions?', 'textarea', 'spot_data', 'policy_description', NULL, NULL, '2025-07-01 23:44:47', '2025-07-02 00:02:54'),
(3, 'what is company policy number ?', 'text', 'spot_data', 'what_is_company_policy_number', NULL, NULL, '2025-07-02 00:13:41', '2025-07-02 00:13:41'),
(5, 'Questions11', 'file', 'garage_data', 'questions11', NULL, NULL, '2025-07-02 01:38:38', '2025-07-02 01:38:38'),
(6, 'Questions12', 'textarea', 'garage_data', 'questions12', NULL, NULL, '2025-07-02 01:38:48', '2025-07-02 01:38:48'),
(7, 'Questions20', 'textarea', 'owner_data', 'questions20', NULL, NULL, '2025-07-02 01:39:24', '2025-07-02 01:39:24'),
(8, 'Questions21', 'date', 'owner_data', 'questions21', NULL, NULL, '2025-07-02 01:39:40', '2025-07-02 01:39:40'),
(9, 'Questions22', 'file', 'owner_data', 'questions22', NULL, NULL, '2025-07-02 01:39:50', '2025-07-02 01:39:50'),
(10, 'what is garage badge  validity data?', 'date', 'garage_data', 'what_is_garage_badge_validity_data', '91e5d320a6526e8bc4ca9c60f9ee9540269bcd27e36a19c59101f3719cd3ddc7', NULL, '2025-07-03 06:10:46', '2025-07-03 06:10:46'),
(25, 'what is the best roles for scooter?', 'text', 'spot_data', 'what_is_the_best_roles_for_scooter', '#BE7YJ59', NULL, '2025-07-04 23:49:42', '2025-07-04 23:49:42'),
(37, 'dddddddaa', 'file', 'spot_data', 'dddddddaa', NULL, NULL, '2025-07-07 03:15:37', '2025-07-07 03:15:37'),
(39, 'fddddddddddddddd', 'file', 'spot_data', 'fddddddddddddddd', NULL, NULL, '2025-07-07 04:33:58', '2025-07-07 04:33:58'),
(41, 'aaa', 'textarea', 'spot_data', 'aaa', NULL, NULL, '2025-07-07 04:38:04', '2025-07-07 04:38:04'),
(42, 'what is garage badge nameddeeeee', 'file', 'owner_data', 'what_is_garage_badge_nameddeeeee', NULL, 'image', '2025-07-07 04:38:20', '2025-07-07 04:38:20'),
(45, 'qest33', 'file', 'garage_data', 'qest33', '#M0OV696', 'audio', '2025-07-08 03:32:45', '2025-07-08 03:32:45'),
(46, 'owner documents', 'file', 'owner_data', 'owner_documents', '#SNZA398', 'image', '2025-07-08 03:33:25', '2025-07-08 04:31:13'),
(47, 'gggggggggggggggdf', 'select', 'driver_data', 'gggggggggggggggdf', '#YHGEG16', NULL, '2025-07-08 03:33:39', '2025-07-08 03:33:39'),
(48, 'quest34', 'select', 'garage_data', 'quest34', '#PGCXV10', NULL, '2025-07-08 03:37:00', '2025-07-08 03:37:00'),
(49, 'Accident date', 'date', 'accident_person_data', 'accident_date', '#1BBWC88', NULL, '2025-07-08 04:29:54', '2025-07-08 04:29:54'),
(52, 'Abbd Questions here?', 'text', 'owner_data', 'abbd_questions_here', '#UDOV081', NULL, '2025-07-09 22:36:41', '2025-07-09 22:36:41');

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

--
-- Dumping data for table `salaries`
--

INSERT INTO `salaries` (`id`, `user_id`, `basic`, `allowance`, `bonus`, `total`, `month_year`, `date`, `created_at`, `updated_at`) VALUES
(1, 18, '45000', '3000', '2000', '50000', '2024-10', '18-10-2024', '2024-10-18 08:46:49', '2024-10-18 08:46:49'),
(2, 9, '15000', '2500', '2500', '20000', '2024-10', '18-10-2024', '2024-10-18 09:35:52', '2024-10-18 09:35:52'),
(3, 9, '10000', '2000', '1000', '13000', '2024-10', '18-10-2024', '2024-10-18 09:36:48', '2024-10-18 09:36:48'),
(4, 2, '21212121212', '12122112', '12121212', '21236364536', '1221-12', '21-10-2024', '2024-10-21 09:55:16', '2024-10-21 09:55:16'),
(5, 4, '10000', '1000', '100', '11100', '2024-10', '21-10-2024', '2024-10-21 10:38:35', '2024-10-21 10:38:35');

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
  `latitude_and_longitude` varchar(255) DEFAULT NULL,
  `executive_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `road_details` text DEFAULT NULL,
  `investigation_date` date DEFAULT NULL,
  `investigation_submission_date` date DEFAULT NULL,
  `op_no` varchar(255) DEFAULT NULL,
  `advocate_name` varchar(255) DEFAULT NULL,
  `court` varchar(255) DEFAULT NULL,
  `case_title` varchar(255) DEFAULT NULL,
  `case_claim` varchar(255) DEFAULT NULL,
  `cause_loss` varchar(255) DEFAULT NULL,
  `od_claim` varchar(255) DEFAULT NULL,
  `spot_downloads` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`spot_downloads`)),
  `sp_case` int(11) DEFAULT NULL,
  `investigation_bill_no` varchar(255) DEFAULT NULL,
  `investigation_report` varchar(255) DEFAULT NULL,
  `loss_minimization_sheet` varchar(255) DEFAULT NULL,
  `policy_copy` varchar(255) DEFAULT NULL,
  `driving_license_extract` varchar(255) DEFAULT NULL,
  `permit_copy` varchar(255) DEFAULT NULL,
  `fitness_certificate_copy` varchar(255) DEFAULT NULL,
  `rc_book` varchar(255) DEFAULT NULL,
  `insured_statement` varchar(255) DEFAULT NULL,
  `claimant_statement` varchar(255) DEFAULT NULL,
  `seizure_memo_copy` varchar(255) DEFAULT NULL,
  `arrest_memo_copy` varchar(255) DEFAULT NULL,
  `mvi_report` varchar(255) DEFAULT NULL,
  `age_proof` varchar(255) DEFAULT NULL,
  `income_proof` varchar(255) DEFAULT NULL,
  `occupation_proof` varchar(255) DEFAULT NULL,
  `family_photograph` varchar(255) DEFAULT NULL,
  `spot_panchnama_copy` varchar(255) DEFAULT NULL,
  `accident_site_map` varchar(255) DEFAULT NULL,
  `inquest_panchnama` varchar(255) DEFAULT NULL,
  `paper_cutting` varchar(255) DEFAULT NULL,
  `fir` varchar(255) DEFAULT NULL,
  `final_report_charge_sheet` varchar(255) DEFAULT NULL,
  `death_certificate` varchar(255) DEFAULT NULL,
  `post_mortem_report` varchar(255) DEFAULT NULL,
  `viscera_report` varchar(255) DEFAULT NULL,
  `od_status` varchar(255) DEFAULT NULL,
  `tp_vehicle_insurance_details` varchar(255) DEFAULT NULL,
  `tp_driving_license` varchar(255) DEFAULT NULL,
  `tp_insurer_confirmation` varchar(255) DEFAULT NULL,
  `notice_u_s_134c` varchar(255) DEFAULT NULL,
  `what_is_company_policy_number` varchar(255) DEFAULT NULL,
  `what_is_the_best_roles_for_scooter` varchar(255) DEFAULT NULL,
  `sssssssssdd` varchar(255) DEFAULT NULL,
  `dddddddaa` varchar(255) DEFAULT NULL,
  `ggggggggggdfgd` varchar(255) DEFAULT NULL,
  `fddddddddddddddd` varchar(255) DEFAULT NULL,
  `dddddddddddddddf` varchar(255) DEFAULT NULL,
  `aaa` text DEFAULT NULL,
  `dsfffffffff` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spot_data`
--

INSERT INTO `spot_data` (`id`, `assign_work_id`, `spot_address`, `spot_images`, `spot_voice`, `latitude_and_longitude`, `executive_id`, `created_at`, `updated_at`, `location`, `road_details`, `investigation_date`, `investigation_submission_date`, `op_no`, `advocate_name`, `court`, `case_title`, `case_claim`, `cause_loss`, `od_claim`, `spot_downloads`, `sp_case`, `investigation_bill_no`, `investigation_report`, `loss_minimization_sheet`, `policy_copy`, `driving_license_extract`, `permit_copy`, `fitness_certificate_copy`, `rc_book`, `insured_statement`, `claimant_statement`, `seizure_memo_copy`, `arrest_memo_copy`, `mvi_report`, `age_proof`, `income_proof`, `occupation_proof`, `family_photograph`, `spot_panchnama_copy`, `accident_site_map`, `inquest_panchnama`, `paper_cutting`, `fir`, `final_report_charge_sheet`, `death_certificate`, `post_mortem_report`, `viscera_report`, `od_status`, `tp_vehicle_insurance_details`, `tp_driving_license`, `tp_insurer_confirmation`, `notice_u_s_134c`, `what_is_company_policy_number`, `what_is_the_best_roles_for_scooter`, `sssssssssdd`, `dddddddaa`, `ggggggggggdfgd`, `fddddddddddddddd`, `dddddddddddddddf`, `aaa`, `dsfffffffff`) VALUES
(1, 30, 'do so do', '[\"spot\\/r1PMjb3hRtn4nHvCZze0rdo46ca937ZWDa8KMnGt.jpg\"]', '[\"voice\\/6jGozLsLboBr5pz1sglXEhNJU4LwuVz2KWtSmblV.aac\"]', NULL, 18, '2024-10-18 05:37:43', '2024-10-18 05:37:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 30, 'do so do', '[\"spot\\/3opL1602QI3RNEfUO8GNKniHYDSHZE3OsoVigDz0.jpg\"]', '[\"voice\\/CKm0yLLVbmA7H1c3wn8n318id170GtYjOWUKjwb3.aac\"]', NULL, 18, '2024-10-18 05:41:38', '2024-10-18 05:41:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 30, 'do so do', '[\"spot\\/IT1L23tppfTkD7OVqMEUAOzEyKUlM0sHMCauH88F.jpg\"]', '[\"voice\\/Ogheb7PpU0MhKfMOsW8ZxsWUVJMWk8NrKzbaUGOo.aac\"]', NULL, 18, '2024-10-18 05:42:27', '2024-10-18 05:42:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 31, 'DJ di do', '[\"spot\\/csf48HtOEPqszTAjgxvHS2cE8xeOKZJdxNZjVEoJ.jpg\"]', '[\"voice\\/SgDaFMnbgctyg9543jwlrxAgllezQ8c5kfg6NY80.aac\"]', NULL, 18, '2024-10-19 01:40:14', '2024-10-19 01:40:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 31, 'DJ di do', '[\"spot\\/8R4ab41MrPchVpbDNrDuufgLw6k7dtVf4h3WzF97.jpg\"]', '[\"voice\\/m1CxKPIWMtp9auuSQSDUQeVNtPdrQZXxxeZIdhst.aac\"]', NULL, 18, '2024-10-19 01:40:47', '2024-10-19 01:40:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 32, 'sb dj di', '[\"spot\\/6ES56ycctl4ZLDiD6oFEmzGRJY5kyz8P0yF9BF94.jpg\"]', '[\"voice\\/LmyGnhsclUaPtMNZ6w1g8eBlPRGZ69K11d4Kxzkv.aac\"]', NULL, 18, '2024-10-21 00:28:07', '2025-01-06 04:53:06', NULL, NULL, '2025-01-01', '2025-01-08', '123/14', 'vinod', 'Manathavady', 'Edi thoyai', '308', 'injury', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 32, 'sb dj di', '[\"spot\\/h0uVLwkPUWs0ISi8aFL9kCwvJZZb3Uo0FjZjp9OF.jpg\"]', '[\"voice\\/yfGPNyFUfarUikN19fvsMJWKIybO7o0QvzwRIiTZ.aac\"]', NULL, 18, '2024-10-21 00:28:30', '2024-10-21 00:28:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 33, 'so seen em sm sm', '[\"spot\\/RSc9zhVr44EuZHARoOJbrsRoM1a9n7aGY2EfdJfE.jpg\"]', '[\"voice\\/U9KIVcclqMBLx3y7lVFRHVrtyFNx27TgaDegeaY8.aac\"]', NULL, 18, '2024-10-21 23:58:31', '2024-10-21 23:58:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 30, 'yooi', '[\"spot\\/1KCxSu4xLyu0nMcoGSipqBgS04bced8g5FPrcqfu.jpg\"]', '[\"voice\\/mK9UknidvG4t5cf0fsfSwIKloCxXzlFynwtJkHRF.aac\"]', '11.1807495, 75.8545957', 18, '2024-10-23 03:38:42', '2024-10-23 03:38:42', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 34, 'bsbsh', '[\"spot\\/uw2YzxPnI4xvn94I7xvrbsyBnDr3CIyvRLpAx8ys.jpg\"]', '[\"voice\\/zzFpoub88LfT7Ve5FiZbC0zCAqI5Hsgg0nDGCYKw.aac\"]', '11.1807573, 75.8545927', 4, '2024-11-03 23:37:38', '2024-12-12 03:44:08', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"spot_downloads\\/xuiSaFPqA8yWcdZ29G1VwSaSUAiFNB7yGmDDcNsv.aac\"]', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 35, 'so sell so so', '[\"spot\\/9hqQ0lUDC2PMO8AYFPOSMNOkfJW4zdgdHn3163jF.jpg\"]', '[\"voice\\/PPg6anYt85A6ImppW8XbxzowWdOjrMGFTlpRnHQ2.aac\"]', '11.1807566, 75.8545994', 18, '2024-11-04 01:27:52', '2024-12-11 05:08:30', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"spot_downloads\\/rkOCW7Iu2lGPlQsr0m6YtAI7rd1R4SGU7v9tIgp8.aac\"]', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 36, 'jdjhrjr', '[\"spot\\/p4BHYH0Tj0qNEiMWiZ3py6RoItwJGeZYZIuocvu1.jpg\"]', '[\"voice\\/hPTyqKKdVx10neXbJLnSC7dRdDEfYGQN99kNYNM7.aac\",\"voice\\/1g5uO6MnqtsrnsfEReOv9Y40bWQfZ6xKgn6MsANU.aac\",\"voice\\/mu9hIbkkSS8XdrbgGuw0G6xUglFVpT5sZw97umB7.aac\"]', '11.1807638, 75.8545921', 4, '2024-11-04 03:43:51', '2024-12-12 03:44:58', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"spot_downloads\\/g8TjbyBHyzhywy36Lzok49nG8QdWnwI9yWyfnkZf.aac\"]', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 38, 'ewewewewew', '[\"spot\\/s3A8BCKSnaJcV195NqB5a9pqk6IzUmvNbzv1qbN5.jpg\"]', '[\"voice\\/DIC4gfI1v4wmGKvqANJywA8ZjI2SDnqb90Md0C2S.aac\"]', '37.4219983, -122.084', 18, '2024-11-19 05:13:48', '2024-11-19 05:13:48', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 38, 'ewewewewew', '[\"spot\\/j3tLQNYC7MuwHcVECQW3giBSahZjigtVKUbRBS8k.jpg\"]', '[\"voice\\/tC9Omq75yJAvoQXsQ8v4pkrAV7Uh7w5DS3EYkGpp.aac\"]', '37.4219983, -122.084', 18, '2024-11-19 05:14:31', '2024-11-19 05:14:31', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 37, 'gshsys', '[\"spot\\/WhsU1XULhfbBFuw0bZzeEM5lbGlKp98ciC6W3hla.jpg\"]', NULL, '11.1807756, 75.8546038', 18, '2024-11-19 06:45:41', '2024-11-19 06:45:41', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 39, 'gbfdgbdbfd', '[\"spot\\/EhAoASQbTyxDuf5Ng7t6R480qIQL9nFPgIlTArYA.jpg\"]', '[\"voice\\/0eJxGuL4adGOb28NhQFxKI1FvKu2iU7VqqvVb234.aac\"]', '37.4219983, -122.084', 18, '2024-11-22 07:24:21', '2024-11-22 07:24:21', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 39, 'gbfdgbdbfd', '[\"spot\\/ttR0ZjrbydoxgsE8GbCRyTteFu2jCLxvvuEAEHLY.jpg\"]', '[\"voice\\/tAtVoNWDTSGayzMnqoLaHYgoJpbMdVyNVQltKabP.aac\"]', '37.4219983, -122.084', 18, '2024-11-22 07:25:36', '2024-11-22 07:25:36', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 40, 'fhgdghvff', '[\"spot\\/KMyxs2dIAuqjAe0nHJEgl0h0kx1Zj0yQM5Mg2xAU.jpg\"]', '[\"voice\\/2dAhB5HLCQjR8BV20OxPoZDwUjX2aVah88R6n8PJ.aac\",\"voice\\/GHS6w0rQIeO81M2AKAohjvr1Ncci8QHFHz4ZUgs9.aac\"]', '11.1807582, 75.8545965', 18, '2024-11-22 07:33:14', '2024-11-22 07:33:14', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 41, 'gushdvd', '[\"spot\\/J941BYJpeJcnYIejZuHj9MqW9HpgEdCc6o9o0F3v.jpg\"]', '[\"voice\\/3eSwpiFLUOOhKrecQ2FDVbBKqGMpX4Ox066g4G3j.aac\"]', '11.1807504, 75.8545879', 18, '2024-11-23 01:58:11', '2024-11-23 01:58:11', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 42, 'ghffgh', '[\"spot\\/v9MDJWnixrWj2q0IsWbuemTGaV6kDrBI3LvVVUaB.jpg\"]', '[\"voice\\/HJCzWvXOOEvxolfoGfDtG7WbN7uyP9jXzXUTgyA1.aac\"]', '11.1807647, 75.8545985', 18, '2024-11-23 02:43:00', '2024-11-23 02:43:00', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 43, 'gfxfhh', '[\"spot\\/D9orhls8M8eWKKfjaJiVeU5T5f8zaR31BuFy0gtO.jpg\"]', '[\"voice\\/YSFqhdzUjwsyI2jf0K2RHKc6ofzYi3gOTSPKDHh3.aac\"]', '11.1807595, 75.8545998', 18, '2024-11-25 23:01:36', '2024-11-25 23:01:36', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 43, 'gfxfhh', '[\"spot\\/R7VfaqB5SmSEJr7k9EsLlGeUXQQkmjHUmCE8zY6E.jpg\"]', '[\"voice\\/qo9CrZElnmF5H8xzDNtB6mKoR6CN5sN327e8C2Jm.aac\"]', '11.1807595, 75.8545998', 18, '2024-11-25 23:02:07', '2024-11-25 23:02:07', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 44, 'jh,h', '[\"spot\\/Lj0LvMVzk1KT3EWzYLfR7fJpJIorMtOebnY6N4DV.jpg\"]', '[\"voice\\/QDpKVpp0P8NVdtIIpMfbiWx9i6oCCos8pWW6LqOP.aac\"]', '37.4219983, -122.084', 18, '2024-11-25 23:31:31', '2024-11-25 23:31:31', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 44, 'yeusbsg', '[\"spot\\/m8E1aKcnZY4eSgCOAVa6kmNpeXIa9F9YTLnTSQzT.jpg\",\"spot\\/GST7dSyQIaeYMABzDaL7EgcNAbEWgGNienIYwUHQ.jpg\",\"spot\\/iRbp53zzQ6z1PfhaQx4a4SaPmjcg0wRyrStcioLC.jpg\"]', '[\"voice\\/oGvKjRoe1kOXLk8n1ktLoC4aCZHBPOvmm18w1dAZ.aac\"]', '11.1807677, 75.854597', 18, '2024-11-26 00:17:42', '2024-11-26 00:17:42', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 45, 'gygfcc', '[\"spot\\/hdxJKkHmDl1N5HjK5BhC37AYHtgKKxJofc8Ul6hJ.jpg\"]', '[\"voice\\/CwZRG4ZmXY6OBh1CMrpHCxqHc9JSjdb1HySOCGto.aac\"]', '11.1807592, 75.854595', 18, '2024-11-26 00:34:51', '2024-11-26 00:34:51', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 45, 'gygfcc', '[\"spot\\/pb8fM8OUnSV1TsErTJflLIUwEAGiVrSBVkquSswN.jpg\"]', '[\"voice\\/H4VelaBl1ejNmXlAZyxjaF85lApGVx06RH8gw5uo.aac\"]', '11.1807592, 75.854595', 18, '2024-11-26 00:36:56', '2024-11-26 00:36:56', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 45, 'gygfcc', '[\"spot\\/u83zzCHdw0uoRdUc6JikRx1miN4wJMpTOlhzmWVR.jpg\"]', '[\"voice\\/Or5w4DCFkCTyojr8TDQmG0lGphiCqraIy6BiUTt4.aac\"]', '11.1807592, 75.854595', 18, '2024-11-26 00:37:48', '2024-11-26 00:37:48', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 45, 'gygfcc', '[\"spot\\/OBSqwK7nRcIINiVmhGLKG5jWtxj6QfJkllvSW80W.jpg\"]', '[\"voice\\/oNzqxlnrC7iYJqADhmWTKiiPvlpxBeawHIcP1ORm.aac\"]', '11.1807592, 75.854595', 18, '2024-11-26 00:37:53', '2024-11-26 00:37:53', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 45, 'gygfcc', '[\"spot\\/DISpquYYDBa0gqAvV6futnG7KWT6BN67e3lo6Rpd.jpg\"]', '[\"voice\\/gCKTZpwpKOG5P2Pll1qIYjp2j01iBDY4KTWVtJ6t.aac\"]', '11.1807592, 75.854595', 18, '2024-11-26 00:38:42', '2024-11-26 00:38:42', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 45, 'gygfcc', '[\"spot\\/CzAtoxcNk6nMz0hp5Vu2P5QWwLv8qNCai30Z9BSu.jpg\"]', '[\"voice\\/p8EhXfT2bnRAjDc2Jja89KBXtiqZchzbic6ZREwa.aac\"]', '11.1807592, 75.854595', 18, '2024-11-26 00:39:23', '2024-11-26 00:39:23', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 46, 'chl dil fil', '[\"spot\\/yOwxmjzLAiejoygKfsEQF8nCOcW75wdXvJshgKSZ.jpg\",\"spot\\/be6ICrBl2UpcS9zlMLhywu7GpCJnBM9nFQHuBMVb.jpg\"]', '[\"voice\\/i4vr5MErWiH4hgKMZI9D0lpD4nnbIE4sKaisoBUy.aac\"]', '11.1807576, 75.8545891', 18, '2024-11-26 23:51:00', '2024-11-26 23:51:00', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 47, 'xxx the TV in', '[\"spot\\/JlbNPvbM7Od8dbWxu0hPrJRy6ynmdSpr3UhSo7eL.jpg\"]', '[\"voice\\/TcjZtOlVkly5Cyc2rF3GNuYxLr9jgV7m7Ye8jr4H.aac\"]', '37.4219983, -122.084', 18, '2024-11-27 00:04:43', '2024-11-27 00:04:43', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 47, 'CRM em', '[\"spot\\/ZX8FrsjjtmCaD7L2SjpffYKntb1kxugTGnwbgCml.jpg\"]', '[\"voice\\/TFLCWm3zxW2dUIKXkFVp8BIrxmWVhwClQWQbz3aO.aac\"]', '37.4219983, -122.084', 18, '2024-11-27 00:07:59', '2024-11-27 00:07:59', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 48, 'dghj', '[\"spot\\/otMNmqpFTxWLf9rFpW4lmxlnvWUGfKvvEPioTpH8.jpg\"]', '[\"voice\\/AZWJKvcXsM6i3fWTYVGbsEqNPZYmSx4uC52ruqJp.aac\"]', '11.1807512, 75.8545931', 18, '2024-11-28 05:20:53', '2024-11-28 05:20:53', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 48, 'dfgvdfv', '[\"spot\\/YmVRc2GCwyZwgO1rIJ38fWnT5YVJPAa2SfokaOcn.jpg\",\"spot\\/XsuWImEaG6LrezFTpBpvvFPcoDu1JOwA6xFIP3RH.jpg\"]', '[\"voice\\/lvySOg05Ibd0Q5F3lIOTkIJbpaGfOgNEVqZ4ETHl.aac\"]', '...', 18, '2024-11-30 05:30:07', '2024-11-30 05:30:07', '...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 50, 'fhfgcg', '[\"spot\\/XtGXwIZd1XH0QFzOytYW8zUZtyr9yMyD95RRCNKJ.jpg\"]', '[\"voice\\/7IbnjxMnx00DgblICxWBWDLNj0r5nKAsT9RxKkPt.aac\"]', '11.1807636, 75.8545962', 23, '2024-12-01 23:03:14', '2024-12-12 01:58:32', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"spot_downloads\\/dzGLjAvaqnzoocVBwS1MtYSwXYikIROlCfqBt2Rn.jpg\",\"spot_downloads\\/kDlHDooXIKNWwwbEBMfERSyW1YSTfdPxCcrL4wHl.jpg\",\"spot_downloads\\/xE8x4o6Qe66e9vtn653T33KpL1cx5zeDJ1kb5d2v.pdf\",\"spot_downloads\\/z4xYt2Lv5IStslswkI8gn08ZSyrl4CRzhpAYCzDx.aac\",\"spot_downloads\\/8P79y2gciF71lqP4GKTTQAivkSKrWqfu3Jkcn5bd.mp4\"]', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 49, 'dfgdfgdfg', '[\"spot\\/l1aykKBSCADRakBbmI1iiN2fFT3VeHodH17SQPGL.jpg\"]', '[\"voice\\/ufyHHMwCl0PI3Vqi4iA7Lk4gZPCD4noTOvSVKrVT.aac\"]', '37.4219983, -122.084', 18, '2024-12-02 01:39:56', '2024-12-13 00:44:56', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"spot_downloads\\/GMoOLted9N1V7XrG3F9j4Z02sPpaY4PbrpjcVdDV.pdf\"]', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 52, 'ftyyy', '[\"spot\\/OG5QwQ8B52q5j7yOASaBOiPCIY3QHVzLsg0oJhFv.jpg\"]', '[\"voice\\/InVryQ9L2vRC6Ky8KvaAWl0Yw2AQVW13CmpIykFE.aac\"]', '11.1807209, 75.8545584', 23, '2024-12-02 02:02:14', '2024-12-11 04:40:21', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"spot_downloads\\/yO1Kex6PpICB8nLjzHyATmxpHHXn6r3FednwatTf.jpg\"]', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 53, 'fbvdxfb', '[\"spot\\/HYN4vlkRVkZytsx9QyNWJayAhOfxwbm7KTKNxauI.jpg\"]', '[\"voice\\/yfQWWkJe0oZEDYojlNoUQAV83xkh0T7FLyQXqToE.aac\"]', '37.4219983, -122.084', 17, '2024-12-02 04:30:23', '2024-12-10 02:35:17', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 54, 'hfdfgghhhhhggh', '[\"spot\\/e4MyhmKMahofC6heV13MnwFi7LgFxgk0OKxYboAU.jpg\"]', '[\"voice\\/Z1LzzmCoQqaxC54R9D9p36ecOmRyCjWVUOx2M6ZQ.aac\",\"voice\\/8BsqXxsIDCYxrRra4E0nxvMFjBn7igdT10c787UA.aac\"]', '11.1807518, 75.8545867', 18, '2024-12-07 01:33:52', '2024-12-07 01:33:52', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 55, 'Kozhikode', '[\"spot\\/Gi986nNuSxzc0wOgLOfqH2UvL6LV9arEUvnpxuOo.jpg\"]', '[\"voice\\/BbUshiT9jriOKemIlWQJzpMap6RtBp2GrA0N0v3g.aac\",\"voice\\/oa60KGpcmlROtFxxeHktWZkwPkyjIufiJOQrH3nN.aac\",\"voice\\/zdfPZbFTjCoZYm3Kb0tp5pzQ9HUTJQIiLn8wsDOC.aac\"]', '11.180773, 75.854609', 24, '2024-12-10 02:17:17', '2024-12-18 03:53:48', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 56, 'drffuu', '[\"spot\\/CIQRU8oKjZuRum1lGur4QXmuvNuZbf3UEyxGPR0B.jpg\"]', '[\"voice\\/JMsqLDIgbru54ZiAX5Sr2x3kinLuTqpSxHjS0zio.aac\"]', '11.1807706, 75.8546071', 23, '2024-12-12 01:32:18', '2024-12-15 23:12:47', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 51, 'ghg', '[\"spot\\/JUeVzIVO2IxukpiHRQ1dMeWcqibwWRYo5ctTGTMU.jpg\"]', NULL, '11.1807705, 75.8546018', 18, '2024-12-13 04:04:44', '2024-12-13 04:04:44', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 57, '123456', '[\"spot\\/lirbmPxwFdGgREPVFIgZAD9oNLyUgoO9g3utdTMP.jpg\"]', '[\"voice\\/GMPQwpVrocepRYSQQjQOy0i8VNyrY0b8kB7nlJNF.aac\"]', '37.4219983, -122.084', 18, '2024-12-16 01:50:46', '2024-12-16 01:50:46', '1600 Amphitheatre Pkwy Building 43, , Mountain View', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 57, '123456', '[\"spot\\/JD1mHYKlPYLlexx2Hub9Pg1RBDLy5GoJE9VtKlmL.jpg\"]', '[\"voice\\/QiTgbgVbcjRyBY6BDMSUK2H48T6f3UVBY9FcZqUl.aac\"]', '37.4219983, -122.084', 18, '2024-12-16 01:50:52', '2025-01-09 01:43:40', '1600 Amphitheatre Pkwy Building 43, , Mountain View', 'High way', '2025-01-01', '2025-01-09', '123/14', 'vinod', 'Kozhikode', 'Hit and Run', '216/80', 'Injury', 'No Claim', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 58, '123123123', '[\"spot\\/5AYnlkZpUYbfUgiQBWwz4xBAaPTQvB1YY1MAIdJw.jpg\",\"spot\\/YAD4Ri3AACAMmiZmVfben9SUD82jOW4ByV1IQPYn.jpg\"]', '[\"voice\\/6JcWrIQcu0bSEtmOufau8PJW7kuEXRiwyn2UXphm.aac\"]', '11.180775, 75.8545333', 18, '2025-01-06 04:43:27', '2025-01-06 04:43:27', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 60, 'lllllllllllll', NULL, NULL, NULL, 18, '2025-01-06 05:18:36', '2025-01-06 05:18:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 60, '121234565', '[\"spot\\/EIgz8E4OuTru4ZHxL6aFzjcHi24UQzIxBDCsYCmI.jpg\"]', '[\"voice\\/xnUAwJ9kJwaEOEnGOuuUAgyasqusuqGVdG5g6qP0.aac\"]', '11.180775, 75.8545333', 18, '2025-01-06 05:18:43', '2025-01-06 05:18:43', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 59, '1234564', '[\"spot\\/JJkBWsZxoPzAezSzcIPmBXdaspsgASL8NudBGuLc.jpg\"]', '[\"voice\\/c7foaFT6jmHROPobHxGQQI6BW9XgKYuxow3BDf7J.aac\"]', '11.180775, 75.8545333', 18, '2025-01-06 05:18:44', '2025-01-06 05:18:44', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 30, '21234315126548', '[\"spot\\/htjQ0oD5Sk0Cm2WkQWo0TiGJImVsxb0B5iHesep9.jpg\"]', '[\"voice\\/x7uX9S31aeCBwPrkyGRLNz748899fosM0WTVeokd.aac\"]', '11.180775, 75.8545333', 18, '2025-01-06 05:18:46', '2025-01-06 05:18:46', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 58, '123123123', '[\"spot\\/SCJbVrnjnRmOTTZU34cZL7WUKaWAFDHTM7y7aQj8.jpg\",\"spot\\/0ATmhxMdPj0sgp5ORjIiZt7BBPHwCyboaWXFa4Pt.jpg\"]', '[\"voice\\/IhRjl8MkDRq8gkOlImSh7P7bJyiG7eflZGqz9Uvb.aac\"]', '11.180775, 75.8545333', 18, '2025-01-06 05:18:50', '2025-01-06 05:18:50', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 58, '123123123', '[\"spot\\/olKJSIFGQtZIxO9FHGuZlQNepWjUJewnWcTrBPDE.jpg\",\"spot\\/OwFvuO6nqJdL045h1YKtWnqthE8a9BLnmLIwodEo.jpg\"]', '[\"voice\\/1r6ohx3CnpXHCWlx8uuuSL7Ass5Bw2dRdf3d2xJu.aac\"]', '11.180775, 75.8545333', 18, '2025-01-06 05:22:22', '2025-01-06 05:22:22', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 58, '123123123', '[\"spot\\/6Sm1zFDOKL43NYpJ6HtYWZEivgOatZvz7vfriVqb.jpg\",\"spot\\/TLRs3QXqtWV53hvkCEdzPbBeOsXnq2tQNrnWReKN.jpg\"]', '[\"voice\\/7tmIMpyANtFgETPfG6KwqSYCZ6RcFx5PwD2WwcCi.aac\"]', '11.180775, 75.8545333', 18, '2025-01-06 05:23:44', '2025-01-06 05:23:44', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 58, '123456789', '[\"spot\\/STxKd7BGVRZXHPNvN95PTU9qR16ySBAPYVWlYOcy.jpg\",\"spot\\/mEr0Uhj3uwDTVSwR5UEc3U9fs1GpdoYIn8yOPhEL.jpg\"]', '[\"voice\\/DL4uVrKPQRajZQNt2z3dRBjoqagJK9UGB4Gcyg6W.aac\"]', '11.180775, 75.8545333', 18, '2025-01-06 05:25:41', '2025-01-06 05:25:41', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 30, 'dvsdvsdvsdv', '[\"spot\\/hJAMjouo6HGeciqbutSQ1nM2rNaE8cpsbxP4bmv7.jpg\"]', '[\"voice\\/9SeQSLCD5rWKqj34MDpXTo7ASxEeiht6irmPQN5C.aac\"]', '11.180775, 75.8545333', 18, '2025-01-06 07:17:44', '2025-01-06 07:17:44', 'Driver Drop Calicut, chungam, Ramanattukara', 'sdsds', '2025-01-06', '2025-01-30', 'sdsdsv', 'sdsd', NULL, 'sdvsdvsdv', 'sdvsdvsdv', 'sdvsdvsdv', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 58, '123123123', '[\"spot\\/XNErjKzFzru5fBvNO8q0mYqNCaW0sEIukDW0oBYv.jpg\",\"spot\\/P3aDf6Fxz2WN2Jd02NNZJrwXpLEtRVG5iA26E7Zr.jpg\"]', '[\"voice\\/f74NLUYOtJVhXySyEUjAHWUSMC6k6ryxMqs0ENzN.aac\"]', '11.180775, 75.8545333', 18, '2025-01-06 23:19:55', '2025-01-06 23:19:55', 'Driver Drop Calicut, chungam, Ramanattukara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 62, 'fbdfbdfb', '[\"spot\\/9xtXA2uYmqXdxKsjXhoPzCaFBzUU7o6WNCJL03CM.jpg\"]', '[\"voice\\/MW8ONPYXu9ieTSy8if21toktiNiLiLgZPSGVW30d.aac\"]', '37.4219983, -122.084', 18, '2025-01-07 03:28:50', '2025-01-07 03:28:50', '1600 Amphitheatre Pkwy Building 43, , Mountain View', 'dfbdfb', '2025-01-07', '2025-01-07', 'dfbfdbdd', 'bdfbdfb', 'dfbdfb', 'dfbdfbdfb', 'dfbdfb', 'dfbdfb', 'fdbdfbdfb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 64, 'addrees', '[\"spot\\/VI0AvvsQbKpPyztDaRjXt2mfd5RjF4LTPiPSnxHd.jpg\"]', NULL, NULL, 25, '2025-07-04 04:33:07', '2025-07-04 04:33:07', 'location22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 66, 'test addressesyyrr', '[\"spot\\/DgM8thRU1KR8q8hdH49AvqTl57Vaco5FGtOn27gF.jpg\"]', NULL, '120.45,115.77', 25, '2025-07-07 01:28:38', '2025-07-07 05:50:00', 'feroke', NULL, '2024-05-10', '2024-05-11', '112244', 'hassu', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 66, NULL, NULL, NULL, '120.45,115.77', 25, '2025-07-07 06:08:30', '2025-07-07 06:08:30', 'feroke12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
(3, 'Anjali Nair', '9876543210', 'anjali.nair@example.com', 'Thiruvananthapuram', NULL, '$2y$12$2X7bm9xv2t.5NBfANYC2FucPuwYirftDaThBXragQYpKC480IO9yC', '3', 0, NULL, '1', '1', '1', NULL, '2024-10-03 05:23:23', '2024-12-11 22:44:07'),
(4, 'Rajesh Menon', '9123456780', 'rajesh.menon@example.com', 'Kochi', NULL, '$2y$12$8K9/1X1fSNS9XSl9RfHWMuSXO5i2b3n9wBxN0bZvaWiU5ImiZjbP6', '3', 0, 'Unknown', '1', '1', '1', NULL, '2024-10-03 05:24:07', '2024-12-12 03:43:52'),
(5, 'Deepa Pillai', '9988776655', 'deepa.pillai@example.com', 'Kozhikode', NULL, '$2y$12$6UO3hWzi4EjJQhP0NeV8texYjnUFvdu3bNBjLAVzo4qFY5L6bDQXO', '3', 0, 'SP1A.210812.016', '1', '1', '1', NULL, '2024-10-03 05:25:08', '2024-12-03 04:50:03'),
(6, 'Suresh Kumar', '8765432109', 'suresh.kumar@example.com', 'Kottayam', NULL, '$2y$12$4pVPRXq7WqmXuPam0qb.Wue9m9Yt8hwC5khcwbeZZWCpK3P/enbT.', '3', 0, 'SP1A.210812.016', '1', '1', '1', NULL, '2024-10-03 05:25:29', '2024-11-26 04:04:42'),
(7, 'Neha Varma', '9871234567', 'neha.varma@example.com', 'Malappuram', NULL, '$2y$12$3VOcekSeah3EZJElQV8a2.PJYhGsNGR5HgVREmqrIlQPB1K6UV91y', '3', 0, NULL, '1', '1', '1', NULL, '2024-10-03 05:25:51', '2024-10-07 04:30:23'),
(8, 'Arun Gopinath', '9156784321', 'arun.gopinath@example.com', 'Thrissur', NULL, '$2y$12$1lJIwjZvyazxdx6g8qpYNeqekLGkbPnV1dXcmsH2OMBqkAsyKMU2m', '3', 0, NULL, '1', '1', '1', NULL, '2024-10-03 05:26:15', '2024-10-18 01:36:28'),
(9, 'Sneha Ramesh', '9012345678', 'sneha.ramesh@example.com', 'Palakkad', NULL, '$2y$12$kRhVbacoNiboI8y8qaBCrujfqJvMwsppR.Sh0r.2h7guwa.XtzKOS', '3', 0, 'SP1A.210812.016', '1', '1', '1', NULL, '2024-10-03 05:26:41', '2024-10-22 06:18:11'),
(10, 'Vinod Suresh', '9345678901', 'vinod.suresh@example.com', 'Kannur', NULL, '$2y$12$Zul2.3myN2xPPoEPLIfFtOwUu8ebofm1cP.mzFOr57XT7Y3WBO.Qu', '3', 0, NULL, '1', '1', '1', NULL, '2024-10-03 05:27:03', '2024-10-03 05:27:03'),
(11, 'Priya Thomas', '9498765432', 'priya.thomas@example.com', 'Ernakulam', NULL, '$2y$12$l/8Z/GeGOA7G0W3GYfpWDemC32qaOypMu8Z79/XgFONVNO6wMr9OC', '3', 0, 'PKQ1.181203.001', '1', '1', '1', NULL, '2024-10-03 05:27:26', '2024-10-18 01:30:03'),
(12, 'Ashok Nair', '9823456780', 'ashok.nair@example.com', 'Alappuzha', NULL, '$2y$12$g/uu6NHXkEnNmHatjlOUKeqfdzUV9H.y3eIkEf3z/j1A3x0uDCyEq', '3', 0, NULL, '1', '1', '1', NULL, '2024-10-03 05:27:51', '2024-10-03 05:27:51'),
(13, 'Rani Menon', '9654321098', 'rani.menon@example.com', 'Pathanamthitta', NULL, '$2y$12$K2Xuj.tH9Z1kTKodR19tmuRuQlehd/wWa/rIixb3qYpGYHCNxJnFG', '3', 0, NULL, '1', '1', '1', NULL, '2024-10-03 05:28:11', '2024-10-03 05:28:11'),
(14, 'Mohan Das', '9182736450', 'mohan.das@example.com', 'Idukki', NULL, '$2y$12$HVk0.sd4t8lqjeAJSqyNEuhLEoifRf7zV3dWP7fIapc86j8JvdStu', '3', 0, NULL, '1', '1', '1', NULL, '2024-10-03 05:28:32', '2024-10-03 05:28:32'),
(15, 'Sita Lakshmi', '9098765432', 'sita.lakshmi@example.com', 'Wayanad', NULL, '$2y$12$5wQkxzvae5oN.AkaLxNj5.n09Jm.pc/M18LLGcAysQRAltAlnJH8i', '3', 0, NULL, '1', '1', '1', NULL, '2024-10-03 05:28:54', '2024-10-03 05:28:54'),
(16, 'Kiran P', '9976543210', 'kiran.p@example.com', 'Kollam', NULL, '$2y$12$9yz03kL5o7.sXA/DirgQROd3yISq4LGwIFgkg0N.5eQqVAfI/8f7u', '3', 0, 'PKQ1.181203.001', '1', '1', '1', NULL, '2024-10-03 05:29:19', '2024-10-18 01:40:21'),
(17, 'Reshma R', '9643210987', 'reshma@gmail.com', 'Kasaragod', NULL, '$2y$12$6DJKPxFQcMoWNMAI21T/N.ug8f4H5o4/W2PiOqikkzGrTE7qnDcrG', '3', 0, 'UE1A.230829.036.A2', '1', '1', '1', NULL, '2024-10-03 05:29:45', '2024-12-11 02:55:54'),
(18, 'User', '1236547890', 'user@gmail.com', 'Thiruvananthapuram', NULL, '$2y$12$DcIgmmtmqGAWvFCHDaOjg.Z4v8fQs.95.b39U.om/i69LEocTUx5m', '3', 0, 'Unknown', '1', '1', '1', NULL, '2024-10-03 05:30:02', '2025-01-14 05:12:20'),
(19, 'ZUnjUOGU', '5762988555', 'oayalakr@gmail.com', NULL, NULL, '$2y$12$RHiSVnbIgHIGEiSJ50bXhujGXlfWOQNKfASarTNVsrz2M21oVWAhW', '1', 0, NULL, '1', NULL, NULL, NULL, '2024-10-25 19:36:58', '2024-10-25 19:36:58'),
(20, 'EVQDEvYQnB', '8534213681', 'vsloanlc@gmail.com', NULL, NULL, '$2y$12$ogp6rT.S4/8SZ1eUVN2T7.2qjXuu97T6GCeUyDlZ0d5j9zD0U7Oie', '1', 0, NULL, '1', NULL, NULL, NULL, '2024-10-25 19:38:17', '2024-10-25 19:38:17'),
(21, 'pHqghUme', '1XNXsYAcO', 'testing@example.com', NULL, NULL, '$2y$12$2bhk1spiXjOx9eHa77DWn.H/CvAYdW0N.NBoiU8.6QqRIbbi5xc9q', '1', 0, NULL, '1', NULL, NULL, NULL, '2024-10-26 00:34:19', '2024-10-26 00:34:19'),
(22, 'BzqkSNVIVyV', '6741156274', 'wlennint@gmail.com', NULL, NULL, '$2y$12$KOIx6As9ArURNzMtmPaMS.9pDM/BzlwilPn59XCAUziIOnsEygpdC', '1', 0, NULL, '1', NULL, NULL, NULL, '2024-10-29 20:10:23', '2024-10-29 20:10:23'),
(23, 'John Cena', '1231231231', 'john123@union.com', 'claindsv', NULL, '$2y$12$zJsuK71WCkXywVfszSUmaOo8AxdJk7ep6.ldJJzTRdobES8d55a52', '3', 0, 'PKQ1.181203.001', '1', '1', '1', NULL, '2024-11-26 04:08:00', '2024-12-12 00:30:57'),
(24, 'Executive', '1478520369', 'executive@gmail.com', 'Kanyakumari', NULL, '$2y$12$i20yap..VRr.V5esPnoc5.49qfXd/am7lveW2EnGpubp5HVWBaBXK', '3', 0, 'SP1A.210812.016', '1', '1', '1', NULL, '2024-11-28 04:49:57', '2024-12-10 02:16:31'),
(25, 'Test_executive', '9446546925', 'exec@gmail.com', 'mlpm', NULL, '$2y$12$XbpeGeZTCtoLxnWnfTvmg.0H7aU6S7EsxwigBggWn9WfofPqhwVFe', '3', 0, NULL, '1', '1', '1', NULL, '2025-07-02 01:55:35', '2025-07-07 00:25:34');

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
-- Indexes for table `company_logos`
--
ALTER TABLE `company_logos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `company_logos_email_unique` (`email`);

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
-- Indexes for table `fields`
--
ALTER TABLE `fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `final_reports`
--
ALTER TABLE `final_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `final_reports_ad_id_foreign` (`ad_id`),
  ADD KEY `final_reports_gd_id_foreign` (`gd_id`),
  ADD KEY `final_reports_dd_id_foreign` (`dd_id`),
  ADD KEY `final_reports_od_id_foreign` (`od_id`),
  ADD KEY `final_reports_sd_id_foreign` (`sd_id`),
  ADD KEY `final_reports_case_id_foreign` (`case_id`);

--
-- Indexes for table `final_reports_new`
--
ALTER TABLE `final_reports_new`
  ADD PRIMARY KEY (`id`),
  ADD KEY `final_reports_ad_id_foreign` (`ad_id`),
  ADD KEY `final_reports_gd_id_foreign` (`gd_id`),
  ADD KEY `final_reports_dd_id_foreign` (`dd_id`),
  ADD KEY `final_reports_od_id_foreign` (`od_id`),
  ADD KEY `final_reports_sd_id_foreign` (`sd_id`),
  ADD KEY `final_reports_case_id_foreign` (`case_id`);

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
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `assign_work_data`
--
ALTER TABLE `assign_work_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `case_assignments`
--
ALTER TABLE `case_assignments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `company_logos`
--
ALTER TABLE `company_logos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `driver_data`
--
ALTER TABLE `driver_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fields`
--
ALTER TABLE `fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `final_reports`
--
ALTER TABLE `final_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `final_reports_new`
--
ALTER TABLE `final_reports_new`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `garage_data`
--
ALTER TABLE `garage_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `insurance_cases`
--
ALTER TABLE `insurance_cases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `insurance_companies`
--
ALTER TABLE `insurance_companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `insurance_customers`
--
ALTER TABLE `insurance_customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `owner_data`
--
ALTER TABLE `owner_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `password_reset_requests`
--
ALTER TABLE `password_reset_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `re_assign_work_data`
--
ALTER TABLE `re_assign_work_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salaries`
--
ALTER TABLE `salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `spot_data`
--
ALTER TABLE `spot_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

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
-- Constraints for table `final_reports`
--
ALTER TABLE `final_reports`
  ADD CONSTRAINT `final_reports_ad_id_foreign` FOREIGN KEY (`ad_id`) REFERENCES `accident_person_data` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `final_reports_case_id_foreign` FOREIGN KEY (`case_id`) REFERENCES `case_assignments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `final_reports_dd_id_foreign` FOREIGN KEY (`dd_id`) REFERENCES `driver_data` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `final_reports_gd_id_foreign` FOREIGN KEY (`gd_id`) REFERENCES `garage_data` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `final_reports_od_id_foreign` FOREIGN KEY (`od_id`) REFERENCES `owner_data` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `final_reports_sd_id_foreign` FOREIGN KEY (`sd_id`) REFERENCES `spot_data` (`id`) ON DELETE CASCADE;

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
