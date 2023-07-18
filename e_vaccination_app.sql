-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2022 at 06:56 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `evaccination_django`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_user'),
(22, 'Can change user', 6, 'change_user'),
(23, 'Can delete user', 6, 'delete_user'),
(24, 'Can view user', 6, 'view_user'),
(25, 'Can add appointment', 7, 'add_appointment'),
(26, 'Can change appointment', 7, 'change_appointment'),
(27, 'Can delete appointment', 7, 'delete_appointment'),
(28, 'Can view appointment', 7, 'view_appointment'),
(29, 'Can add childinfo', 8, 'add_childinfo'),
(30, 'Can change childinfo', 8, 'change_childinfo'),
(31, 'Can delete childinfo', 8, 'delete_childinfo'),
(32, 'Can view childinfo', 8, 'view_childinfo'),
(33, 'Can add user reg', 9, 'add_userreg'),
(34, 'Can change user reg', 9, 'change_userreg'),
(35, 'Can delete user reg', 9, 'delete_userreg'),
(36, 'Can view user reg', 9, 'view_userreg');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_bin DEFAULT NULL,
  `object_repr` varchar(200) COLLATE utf8_bin NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8_bin NOT NULL,
  `model` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(5, 'sessions', 'session'),
(7, 'vaccination', 'appointment'),
(8, 'vaccination', 'childinfo'),
(6, 'vaccination', 'user'),
(9, 'vaccination', 'userreg');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-11-24 14:21:50.086238'),
(2, 'contenttypes', '0002_remove_content_type_name', '2021-11-24 14:21:50.180632'),
(3, 'auth', '0001_initial', '2021-11-24 14:21:50.427508'),
(4, 'auth', '0002_alter_permission_name_max_length', '2021-11-24 14:21:50.490002'),
(5, 'auth', '0003_alter_user_email_max_length', '2021-11-24 14:21:50.505667'),
(6, 'auth', '0004_alter_user_username_opts', '2021-11-24 14:21:50.521258'),
(7, 'auth', '0005_alter_user_last_login_null', '2021-11-24 14:21:50.536880'),
(8, 'auth', '0006_require_contenttypes_0002', '2021-11-24 14:21:50.536880'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2021-11-24 14:21:50.552500'),
(10, 'auth', '0008_alter_user_username_max_length', '2021-11-24 14:21:50.568124'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2021-11-24 14:21:50.583742'),
(12, 'auth', '0010_alter_group_name_max_length', '2021-11-24 14:21:50.646238'),
(13, 'auth', '0011_update_proxy_permissions', '2021-11-24 14:21:50.661906'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2021-11-24 14:21:50.677534'),
(15, 'vaccination', '0001_initial', '2021-11-24 14:21:51.286398'),
(16, 'admin', '0001_initial', '2021-11-24 14:21:51.407600'),
(17, 'admin', '0002_logentry_remove_auto_add', '2021-11-24 14:21:51.423227'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2021-11-24 14:21:51.438911'),
(19, 'sessions', '0001_initial', '2021-11-24 14:21:51.503541'),
(20, 'vaccination', '0002_auto_20211124_2055', '2021-11-24 15:25:31.238432'),
(21, 'vaccination', '0003_rename_notes_appointment_vaccine_name', '2021-11-25 14:07:11.537363'),
(22, 'vaccination', '0004_alter_appointment_status', '2021-11-25 14:10:23.315174'),
(23, 'vaccination', '0005_appointment_age', '2021-11-25 14:59:42.415440');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_bin NOT NULL,
  `session_data` longtext COLLATE utf8_bin NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0079ntntbftzy41d8e3r4hmet9j1z448', '.eJxVjMEOwiAQRP-FsyFdWBA8evcbyHYBqRpISnsy_rtt0oPeJvPezFsEWpcS1p7mMEVxESBOv91I_Ex1B_FB9d4kt7rM0yh3RR60y1uL6XU93L-DQr1saw8WMDrFDMOWwHiTUaG2NMTsiKPJZyBvtNNaZUBy3mP2aLVRGhnF5wuvTDZa:1mq5rE:vNfbbAAmuAcB_KAhFG-HNXKLt4neywjyaBSjqQUvYBc', '2021-12-09 03:55:36.275490'),
('25ffss56k5b30waa60fm60r96kplqolm', '.eJxVjMEOwiAQRP-FsyFdWBA8evcbyHYBqRpISnsy_rtt0oPeJvPezFsEWpcS1p7mMEVxESBOv91I_Ex1B_FB9d4kt7rM0yh3RR60y1uL6XU93L-DQr1saw8WMDrFDMOWwHiTUaG2NMTsiKPJZyBvtNNaZUBy3mP2aLVRGhnF5wuvTDZa:1mq81A:RzPRjoAD3G19WAOugezI8PjCRlchDJ03R5g3MpUAUmQ', '2021-12-09 06:14:00.496418'),
('7j216ejtt4m7d4sgkg19wr2fh3mw17qm', '.eJxVjMEOwiAQRP-FsyFdWBA8evcbyHYBqRpISnsy_rtt0oPeJvPezFsEWpcS1p7mMEVxESBOv91I_Ex1B_FB9d4kt7rM0yh3RR60y1uL6XU93L-DQr1saw8WMDrFDMOWwHiTUaG2NMTsiKPJZyBvtNNaZUBy3mP2aLVRGhnF5wuvTDZa:1mqG7J:vTuMZiQisjubjBHwKBrIfU9A1OWQhgbk2sPo2qMI49E', '2021-12-09 14:52:53.066953'),
('8y0mote7r11owfqsz78s3iohgnwco799', '.eJxVjDsOwjAQBe_iGln-fyjpOYO1692QAIqlOKkQd4dIKaB9M_NeosC2jmXrvJSJxFlYcfrdEOqD5x3QHeZbk7XN6zKh3BV50C6vjfh5Ody_gxH6-K2DMuR4UDoNMWBwiKAjgY9RO5VzJvTasmZCS6CM8c7UTN4lmxzHiuL9AdoBN58:1mqFL0:ms4dpd51535pQlxBKSobG6247Ar_e-c_q0M1NZF3LxQ', '2021-12-09 14:02:58.534468'),
('9zgxc6vh2g94ixi9cds6jp3a3mbqgvh2', '.eJxVjEEOwiAQRe_C2hCGYSi4dO8ZCAxUqoYmpV0Z765NutDtf-_9lwhxW2vYelnClMVZgDj9binyo7Qd5Htst1ny3NZlSnJX5EG7vM65PC-H-3dQY6_fOg2OCByAZ5PYxowjaYfeeEUxFWeJwSBgUaRHtg4HzCo5r8GA0oDi_QG64DZI:1ot0Y9:T6hALvILtIZVc9hxwWyBVQCIOooz8-ebobfIKoNaY_8', '2022-11-24 05:56:29.428997'),
('fgge4oz5whq90yhalrznixyhubua6mj3', '.eJxVjMEOwiAQRP-FsyFdWBA8evcbyHYBqRpISnsy_rtt0oPeJvPezFsEWpcS1p7mMEVxESBOv91I_Ex1B_FB9d4kt7rM0yh3RR60y1uL6XU93L-DQr1saw8WMDrFDMOWwHiTUaG2NMTsiKPJZyBvtNNaZUBy3mP2aLVRGhnF5wuvTDZa:1mq88k:WlbGJLQQexYUDV1f2mQCk3x76VRHn3XFIeFWHn06slA', '2021-12-09 06:21:50.261534'),
('hoftl4di0pegooixxfnqxgbr4u0cuqq2', '.eJxVjDsOwjAQBe_iGln-fyjpOYO1692QAIqlOKkQd4dIKaB9M_NeosC2jmXrvJSJxFlYcfrdEOqD5x3QHeZbk7XN6zKh3BV50C6vjfh5Ody_gxH6-K2DMuR4UDoNMWBwiKAjgY9RO5VzJvTasmZCS6CM8c7UTN4lmxzHiuL9AdoBN58:1mqFf7:YHm02OenIXRWetEIWcAh3KTqMUfySx3Yad6hU1Qxrqc', '2021-12-09 14:23:45.406896'),
('ji2qhrqzi7x8cvulsjf7n7tfb7yes7mw', '.eJxVjDEOAiEQRe9CbQgg4I6lvWcgwwzIqoFk2a2Md1eSLbT8_728lwi4rSVsPS1hZnEWVhx-v4j0SHUAvmO9NUmtrssc5VDkTru8Nk7Py-7-BQr2MrLWZ8saFE3MBNkZNREaZ0D5TOw5IoC2QKccvyOjZqvUUSXtdHSZxPsD7wM4XQ:1mqGEY:X-E26_WEsm6K0MAVakJTSBP6nOrfjCcFdj9CC65yr0I', '2021-12-09 15:00:22.144458'),
('m9rw3ifhnqbq4shq8x87c38d00ztwoib', '.eJxVjMEOwiAQRP-FsyFdWBA8evcbyHYBqRpISnsy_rtt0oPeJvPezFsEWpcS1p7mMEVxESBOv91I_Ex1B_FB9d4kt7rM0yh3RR60y1uL6XU93L-DQr1saw8WMDrFDMOWwHiTUaG2NMTsiKPJZyBvtNNaZUBy3mP2aLVRGhnF5wuvTDZa:1mqG3I:aryu0ZOp-BG0rmWEf-drVx0Su1HloE6_2HORAWtbYNA', '2021-12-09 14:48:44.726515'),
('un1n3xuuf0w6gwisu2cjkq4bj9k6hxu4', '.eJxVjDEOAiEQRe9CbQgg4I6lvWcgwwzIqoFk2a2Md1eSLbT8_728lwi4rSVsPS1hZnEWVhx-v4j0SHUAvmO9NUmtrssc5VDkTru8Nk7Py-7-BQr2MrLWZ8saFE3MBNkZNREaZ0D5TOw5IoC2QKccvyOjZqvUUSXtdHSZxPsD7wM4XQ:1ohlWC:UFL0pAOIsyXJE2JiRvx1kcwDpm26UtLG_dS7ui6Rbbc', '2022-10-24 05:40:00.638716');

-- --------------------------------------------------------

--
-- Table structure for table `vaccination_appointment`
--

CREATE TABLE `vaccination_appointment` (
  `id` bigint(20) NOT NULL,
  `Childname` varchar(20) COLLATE utf8_bin NOT NULL,
  `Contactno` varchar(10) COLLATE utf8_bin NOT NULL,
  `Appointmentdate` date NOT NULL,
  `Time` time(6) NOT NULL,
  `Aadharno` varchar(12) COLLATE utf8_bin NOT NULL,
  `hospitalbranch` varchar(50) COLLATE utf8_bin NOT NULL,
  `status` varchar(50) COLLATE utf8_bin NOT NULL,
  `vaccine_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `appointmentcreateuser` varchar(50) COLLATE utf8_bin NOT NULL,
  `loggeduser` varchar(50) COLLATE utf8_bin NOT NULL,
  `Age` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `vaccination_appointment`
--

INSERT INTO `vaccination_appointment` (`id`, `Childname`, `Contactno`, `Appointmentdate`, `Time`, `Aadharno`, `hospitalbranch`, `status`, `vaccine_name`, `appointmentcreateuser`, `loggeduser`, `Age`) VALUES
(1, 'Ragul', '9564446453', '2021-11-26', '18:00:00.000000', '464766555675', 'Apolla-Bangalore', 'Booked', 'Pneumococcal Conjugate Vaccine (PCV 2)', 'Apolla', 'user1', '1'),
(2, 'zoya', '9757576777', '2021-11-27', '12:00:00.000000', '578758678686', 'jipmer-pudhucherry', 'Booked', 'Hepatitis B (HB 1)', 'jipmer', 'user1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `vaccination_childinfo`
--

CREATE TABLE `vaccination_childinfo` (
  `id` bigint(20) NOT NULL,
  `Childname` varchar(20) COLLATE utf8_bin NOT NULL,
  `Dateofbirth` date NOT NULL,
  `Age` varchar(50) COLLATE utf8_bin NOT NULL,
  `Contactno` varchar(10) COLLATE utf8_bin NOT NULL,
  `Gender` varchar(50) COLLATE utf8_bin NOT NULL,
  `Bloodtype` varchar(50) COLLATE utf8_bin NOT NULL,
  `Height_in_cm` varchar(50) COLLATE utf8_bin NOT NULL,
  `Weight_in_kg` varchar(50) COLLATE utf8_bin NOT NULL,
  `Hospital` varchar(50) COLLATE utf8_bin NOT NULL,
  `loggeduser` varchar(50) COLLATE utf8_bin NOT NULL,
  `vaccine_1` date DEFAULT NULL,
  `vaccine_2` date DEFAULT NULL,
  `vaccine_3` date DEFAULT NULL,
  `vaccine_4` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `vaccination_childinfo`
--

INSERT INTO `vaccination_childinfo` (`id`, `Childname`, `Dateofbirth`, `Age`, `Contactno`, `Gender`, `Bloodtype`, `Height_in_cm`, `Weight_in_kg`, `Hospital`, `loggeduser`, `vaccine_1`, `vaccine_2`, `vaccine_3`, `vaccine_4`) VALUES
(1, 'rosy', '2021-11-05', '2', '9757576777', 'Female', 'A+', '66', '3', 'Apolla', 'user1', '2022-01-04', '2022-03-05', '2022-05-04', '2022-06-03'),
(2, 'ram', '2017-06-23', '6', '8567567557', 'Male', 'O+', '33', '6', 'Apolla', 'user1', '2017-08-22', '2017-10-21', '2017-12-20', '2018-01-19'),
(3, 'ashmi', '2016-10-19', '2', '9335656546', 'Female', 'O+', '66', '8', 'Apolla', 'user1', '2016-12-18', '2017-02-16', '2017-04-17', '2017-05-17'),
(5, 'zoya', '2021-11-19', '2', '9876786768', 'Female', 'B+', '55', '7', 'Apolla', 'user1', '2022-01-18', '2022-03-19', '2022-05-18', '2022-06-17'),
(6, 'test', '2022-10-10', '23', '1234567980', 'Male', 'A+', '150', '20', 'Apolla', 'user1', '2022-12-09', '2023-02-07', '2023-04-08', '2023-05-08');

-- --------------------------------------------------------

--
-- Table structure for table `vaccination_user`
--

CREATE TABLE `vaccination_user` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) COLLATE utf8_bin NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_bin NOT NULL,
  `first_name` varchar(150) COLLATE utf8_bin NOT NULL,
  `last_name` varchar(150) COLLATE utf8_bin NOT NULL,
  `email` varchar(254) COLLATE utf8_bin NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `is_hospital` tinyint(1) NOT NULL,
  `is_user` tinyint(1) NOT NULL,
  `location` varchar(50) COLLATE utf8_bin NOT NULL,
  `hospitalbranch` varchar(50) COLLATE utf8_bin NOT NULL,
  `validhospital` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `vaccination_user`
--

INSERT INTO `vaccination_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `is_hospital`, `is_user`, `location`, `hospitalbranch`, `validhospital`) VALUES
(1, 'pbkdf2_sha256$320000$BREuyRvVq6sX1mbteYF3zM$vTp7+YGmz3P1fkvUlDKWwOuUq9gEINhqSSF1/1kIfYY=', '2022-11-10 05:56:29.413372', 0, 'user1', 'anu', 'priya', 'user1@gmail.com', 0, 1, '2021-11-24 14:22:38.617693', 0, 1, 'Enter the Address', 'Enter hospital name and branch', 'approved'),
(2, 'pbkdf2_sha256$260000$w3e8JLCYp2NPwTJo71MnOt$vVQ6DLy+nFLOlJHJqB6Oak1D7gVTskA9i1DebZR4jGI=', '2021-11-25 13:58:38.173431', 0, 'Apolla', 'ram', 'kumar', 'apolla@gmail.com', 0, 1, '2021-11-25 05:49:03.683460', 1, 0, 'Bangalore', 'Apolla-Bangalore', 'approved'),
(3, 'pbkdf2_sha256$320000$ePQCfMDlAJnw8aJVBCKScK$5HZpkaHSMxSIHKCaHVMiRK+zFx/sH0M80c/P688Cztc=', '2022-11-10 05:47:13.583300', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2021-11-25 14:02:47.000688', 0, 0, 'Enter the Address', 'Enter hospital name and branch', 'pending'),
(4, 'pbkdf2_sha256$260000$3ovU2EdPo2RTrrsMN5U7gO$TfGDHhgscjJjg9zuJv8bHtTfDsY49isbMLtoNFe4GAg=', '2022-10-10 05:40:00.633733', 0, 'jipmer', 'david', 'kumar', 'jipmer@gmail.com', 0, 1, '2021-11-25 14:28:38.575556', 1, 0, 'pudhucherry', 'jipmer-pudhucherry', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `vaccination_userreg`
--

CREATE TABLE `vaccination_userreg` (
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `vaccination_userreg`
--

INSERT INTO `vaccination_userreg` (`user_id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `vaccination_user_groups`
--

CREATE TABLE `vaccination_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `vaccination_user_user_permissions`
--

CREATE TABLE `vaccination_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_vaccination_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `vaccination_appointment`
--
ALTER TABLE `vaccination_appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vaccination_childinfo`
--
ALTER TABLE `vaccination_childinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vaccination_user`
--
ALTER TABLE `vaccination_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `vaccination_userreg`
--
ALTER TABLE `vaccination_userreg`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `vaccination_user_groups`
--
ALTER TABLE `vaccination_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vaccination_user_groups_user_id_group_id_de6f59e0_uniq` (`user_id`,`group_id`),
  ADD KEY `vaccination_user_groups_group_id_f05b1a65_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `vaccination_user_user_permissions`
--
ALTER TABLE `vaccination_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vaccination_user_user_pe_user_id_permission_id_11bef841_uniq` (`user_id`,`permission_id`),
  ADD KEY `vaccination_user_use_permission_id_5efce027_fk_auth_perm` (`permission_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `vaccination_appointment`
--
ALTER TABLE `vaccination_appointment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vaccination_childinfo`
--
ALTER TABLE `vaccination_childinfo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vaccination_user`
--
ALTER TABLE `vaccination_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vaccination_user_groups`
--
ALTER TABLE `vaccination_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vaccination_user_user_permissions`
--
ALTER TABLE `vaccination_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_vaccination_user_id` FOREIGN KEY (`user_id`) REFERENCES `vaccination_user` (`id`);

--
-- Constraints for table `vaccination_userreg`
--
ALTER TABLE `vaccination_userreg`
  ADD CONSTRAINT `vaccination_userreg_user_id_c1d602d1_fk_vaccination_user_id` FOREIGN KEY (`user_id`) REFERENCES `vaccination_user` (`id`);

--
-- Constraints for table `vaccination_user_groups`
--
ALTER TABLE `vaccination_user_groups`
  ADD CONSTRAINT `vaccination_user_groups_group_id_f05b1a65_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `vaccination_user_groups_user_id_622bb384_fk_vaccination_user_id` FOREIGN KEY (`user_id`) REFERENCES `vaccination_user` (`id`);

--
-- Constraints for table `vaccination_user_user_permissions`
--
ALTER TABLE `vaccination_user_user_permissions`
  ADD CONSTRAINT `vaccination_user_use_permission_id_5efce027_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `vaccination_user_use_user_id_4db4ad76_fk_vaccinati` FOREIGN KEY (`user_id`) REFERENCES `vaccination_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
